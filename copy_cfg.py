import FWCore.ParameterSet.Config as cms

# Give the process a name
process = cms.Process("PickEvent")

# Tell the process which files to use as the sourdce
process.source = cms.Source ("PoolSource",
		          fileNames = cms.untracked.vstring ("/store/mc/RunIISpring16MiniAODv2/WZJToLLLNu_TuneCUETP8M1_13TeV-amcnlo-pythia8/MINIAODSIM//PUSpring16RAWAODSIM_reHLT_80X_mcRun2_asymptotic_v14-v1/00000/565B0FAE-2F42-E611-9654-842B2B71EDBE.root")
			  )

# tell the process to only run over 100 events (-1 would mean run over
#  everything
process.maxEvents = cms.untracked.PSet(
		            input = cms.untracked.int32 (1000)

			    )

# Tell the process what filename to use to save the output
process.Out = cms.OutputModule("PoolOutputModule",
		         fileName = cms.untracked.string ("output.root")
			 )

# make sure everything is hooked up
process.end = cms.EndPath(process.Out)
