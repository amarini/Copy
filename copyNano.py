from __future__ import print_function
import os,sys
import ROOT 
from optparse import OptionParser


parser=OptionParser()

#parser.add_option()
parser.add_option("-f","--file",dest="files",type="string",help="Input file. Specials: PSET, JSON num",default=[],action='append')
parser.add_option("-o","--output",dest="output",type="string",help="Output file [%default]",default="nano.root")
parser.add_option("-s","--skim",dest="skim",type="string",help="Skim",default="")
parser.add_option("-v","--verbose",dest="verbose",type="int",help="Verbose [%default]",default=1)
opts, args=parser.parse_args()

if opts.files[0] == 'PSET':
    from do_nothing_cfg import fileNames
    opts.files=[f if 'root://' in f else 'root://xrootd-cms.infn.it//' + f for f in fileNames]
    print ("PSET changed file list to: ",','.join(opts.files))

if opts.files[0] == 'JSON':
    jobNum = int(opts.files[1])
    #job_input_file_list_12
    import json
    with open('job_input_file_list_%d.txt'%jobNum) as fin:
        data=json.load(fin)
        opts.files=[f if 'root://' in f else 'root://xrootd-cms.infn.it//' + f for f in data]
    print ("JSON 'job_input_file_list_%d.txt' changed file list to: "%jobNum,','.join(opts.files))

for idx,fname in enumerate(opts.files):
    if opts.verbose: 
        print ("Opening input file:",fname)
        print ("Opening output file:","tmp%d_"%idx+opts.output)
    fIn=ROOT.TFile.Open(fname)
    fOut=ROOT.TFile.Open("tmp%d_"%idx+opts.output,"RECREATE")
    if fIn == None: 
        raise RuntimeError("No such file or directory:"+fname)
    t1=fIn.Get("Runs").CloneTree()
    t2=fIn.Get("LuminosityBlocks").CloneTree()
    t3=fIn.Get("Events").CopyTree(opts.skim,"")
    t4=fIn.Get("MetaData").CloneTree()
    t5=fIn.Get("ParameterSets").CloneTree()

    if opts.skim != "":
        print ("Copied:",t3.GetEntries(),"/",fIn.Get("Events").GetEntries(),"entries")
    
    # Additional metadata
    tn1 = ROOT.TNamed("CopyNano_Input",",".join(opts.files))
    tn2 = ROOT.TNamed("CopyNano_Selection",opts.skim)

    tn1.Write()
    tn2.Write()

    fOut.Write()
    fOut.Close()
    fIn.Close()

# merge
from glob import glob
from subprocess import call

#st=call(["hadd",opts.output] + glob("tmp*_"+opts.output))
# use haddnano
st=call(["python","haddnano.py",opts.output] +  glob("tmp*_"+opts.output))

if st !=0: 
    raise RuntimeError("Unable to merge output trees. Found file: "+','.join(glob("tmp*_"+opts.output) ))


#RunTree
#LumiTree
#EventTree
