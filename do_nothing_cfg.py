import FWCore.ParameterSet.Config as cms
process = cms.Process("MAIN")

#process.source = cms.Source("EmptySource")
process.source = cms.Source ("PoolSource",
		          fileNames = cms.untracked.vstring ([
                       '/store/mc/RunIISummer20UL18NanoAODv2/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v15_L1v1-v1/40000/02AFFB52-97F2-AA49-A3B2-553596D4F5F7.root','/store/mc/RunIISummer20UL18NanoAODv2/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v15_L1v1-v1/40000/080ED33A-5FBC-E64F-AE1B-445866DB8AAB.root','/store/mc/RunIISummer20UL18NanoAODv2/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v15_L1v1-v1/40000/0AECB73A-3344-0C4C-8897-73A7A7F5D20A.root','/store/mc/RunIISummer20UL18NanoAODv2/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v15_L1v1-v1/40000/1190209A-BEEB-DB4F-9C2C-B7BB0C9E2F14.root'
                    ])
			  )

# copy in global variable
fileNames = process.source.fileNames[:]

##from subprocess import call
##
##cmd=["python","copyNano.py"]
##for f in process.source.fileNames:
##    cmd . extend(['-f',f if 'root://' in f else 'root://xrootd-cms.infn.it//' + f])
##cmd . extend (['-o','nano.root'])
##cmd . extend (['-s','FatJet_pt[0]>200']) ## skim
##
##print("calling:",' '.join(cmd))
##
##st=call(cmd)
##if st != 0: raise RuntimeError('error running copyNano')
##
##process.path= cms.Path()
##
##process.output = cms.OutputModule(
##		   "PoolOutputModule",
##		         fileName = cms.untracked.string('output.root'),
##			 )
##
##process.schedule=cms.Scedule(process.path)
##process.end = cms.EndPath(process.output)
