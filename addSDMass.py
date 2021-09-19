from __future__ import print_function
import sys,os
import math
import numpy as np
from subprocess import call, check_output

from optparse import OptionParser
parser=OptionParser()
parser.add_option("-f","--file",dest="files",type="string",help="Input file (nanoAOD). Specials: JSON num, PARENT (use the list below instead of figuring out with das)",default=[],action='append')
parser.add_option("-p","--parents",dest="parents",type="string",help="Parent files (force, default figure it out)",default=[],action='append')
parser.add_option("-u","--output",dest="output",type="string",help="Output file to update (nanoAOD) [%default]",default="nano.root")
parser.add_option("-x","--xrdcp",dest="xrdcp",action="store_true",help="Use first xrdcp",default=False)
parser.add_option("-v","--verbose",dest="verbose",type="int",help="Verbose [%default]",default=1)
opts, args=parser.parse_args()

## re-handle file in json format. These are the original nanoAOD, will use edm/das tools to convert it to miniAOD
if opts.files[0] == 'JSON':
    jobNum = int(opts.files[1])
    #job_input_file_list_12
    import json
    with open('job_input_file_list_%d.txt'%jobNum) as fin:
        data=json.load(fin)
        opts.files=[f if 'root://' in f else 'root://xrootd-cms.infn.it//' + f for f in data]
    print ("JSON 'job_input_file_list_%d.txt' changed file list to: "%jobNum,','.join(opts.files))

# import root in batch mode
oldargv = sys.argv[:]
sys.argv = [ '-b-' ]
import ROOT
ROOT.gROOT.SetBatch(True)
sys.argv = oldargv

##
def deltaPhi(phi1, phi2):
    x = phi1 - phi2
    while (x >= math.pi): x -= 2*math.pi
    while (x < -math.pi): x += 2*math.pi
    return abs(x)

## c++ data formats
from array import array

# load FWLite C++ libraries
ROOT.gSystem.Load("libFWCoreFWLite.so");
ROOT.gSystem.Load("libDataFormatsFWLite.so");
ROOT.FWLiteEnabler.enable()

ROOT.gSystem.Load("FastJet/bin/libFastjetInterface.so")
fi=ROOT.fastjet_interface()

# load FWlite python libraries
from DataFormats.FWLite import Handle, Events

sdmass={} ## run,lumi,evt -> [ (pt,eta,phi, value), ]

if opts.xrdcp:
    tmp=check_output(["mktemp","-d"]).replace('\n','')
    print ("temporary directory is",tmp)

for ifile,fnamenano in enumerate(opts.files):
    if fnamenano =='PARENT':
        parents=opts.parents
    else:
        fname_logical=fnamenano[fnamenano.find('/store'):]  
        #find parent
        cmd="dasgoclient -query 'parent file=%s'"%fname_logical
        out=check_output(cmd,shell=True)


        parents = [ 'root://xrootd-cms.infn.it//' + x for x in out.split() if '/store/' in x ]
    print ("-> Runnig on ",fnamenano,"parents",','.join(parents))
    for ifile2,fname in enumerate(parents):
        if opts.xrdcp:
            ## copy and swap fname
            cmd=['xrdcp',fname,tmp+"/"+fname.split('/')[-1] ]
            st=call(cmd)
            if st !=0:  
                print ("DEBUG","CMD",' '.join(cmd))
                print ("DEBUG","status",st)
                raise RuntimeError("Unable to transfer file "+fname+" with xrdcp" )
            # now use local version
            fname=tmp+"/"+fname.split('/')[-1]
        print ("->Opening file",fname,"parent",ifile2,"/",len(parents), "of", fnamenano, ifile,"/",len(opts.files))
        events = Events(fname)
        #lhe,lheLabel = Handle("LHEEventProduct"),"externalLHEProducer"
        fat,fatLabel=Handle("std::vector<pat::Jet>"),"slimmedJetsAK8"

        for iev,event in enumerate(events):
            if event.eventAuxiliary().event() % 1000 ==1:
                print ("-> Event %d: run %6d, lumi %4d, event %12d" % (iev,event.eventAuxiliary().run(), event.eventAuxiliary().luminosityBlock(),event.eventAuxiliary().event()))
            event.getByLabel(fatLabel, fat)
            
            sdmass[ (event.eventAuxiliary().run(), event.eventAuxiliary().luminosityBlock(),event.eventAuxiliary().event() ) ] = [ ]
            for j in fat.product():
                input_particles=ROOT.std.vector(ROOT.fastjet.PseudoJet)()
                for k in j.getJetConstituentsQuick ():
                    input_particles.push_back(ROOT.fastjet.PseudoJet(k.px(),k.py(),k.pz(),k.energy()))
                sdmass[ (event.eventAuxiliary().run(), event.eventAuxiliary().luminosityBlock(),event.eventAuxiliary().event() ) ] . append ( (j.pt(),j.eta(),j.phi(), fi.getMass(input_particles) ) )
            #event loop 
        if opts.xrdcp: #clean
            cmd=['rm','-v',fname]
            st=call(cmd)
        
        ## parents loop
    ## file loop

# Open Output in R/W and add a new branch
fout=ROOT.TFile.Open(opts.output,"UPDATE")
tree = fout.Get("Events")
name = 'FatJet_sdmass_chs'
MAX_N_JET=20
values = array('d',MAX_N_JET*[0.]) ## 
branch=tree.Branch(name,values,name+"[nFatJet]/D")
branch.SetTitle("softdrop mass with param 1, 0.15 R=0.8 for CHS candidates")

## loop over entries
for i in range(0,tree.GetEntries()):
    tree.GetEntry(i)
    w = (tree.run, tree.luminosityBlock, tree.event)
    sd = sdmass[w]
    for ij in range(0,min(tree.nFatJet,MAX_N_JET)):
        pt=tree.FatJet_pt[ij] 
        eta=tree.FatJet_eta[ij]
        phi=tree.FatJet_phi[ij]

        sd_mass= 0.0
        
        for pt2,eta2,phi2,sd_mass2 in sd:
            if math.sqrt(deltaPhi(phi,phi2)**2 + (eta2-eta)**2)> 0.4 : continue ## dR >0.1
            if 2*(pt -pt2)/(pt+pt2)> 0.2 : 
                print ("DELTA R MATCHING JET, FAILED PT",pt,eta,phi,"-",pt2,eta2,phi2)
                continue
            #MATCHED
            sd_mass=sd_mass2
        values[ij] = sd_mass
    #values[i][0] = weights[w][i] #if w in weights else -99. ### Raise Exception
    branch.Fill()
tree.Write("",ROOT.TObject.kOverwrite);

## close
fout.Close()
