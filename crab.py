from WMCore.Configuration import Configuration

config = config()
config.General.requestName = 'crab_projects'
config.General.workArea = 'crab_copyNano'
config.General.transferLogs = False
config.General.transferOutputs = True

config.section_('JobType')
config.JobType.psetName = 'do_nothing_cfg.py'
config.JobType.scriptExe='scriptExe.sh'
config.JobType.pluginName = 'Analysis'
config.JobType.disableAutomaticOutputCollection = True
config.JobType.outputFiles = ['nano.root']
config.section_('Data')
#config.Data.inputDataset = 'Run2016B/SinglePhoton/RECO/PromptReco-v2'
config.Data.inputDataset = '/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM'
config.Data.publication = True

config.Data.unitsPerJob = 10
config.Data.totalUnits = -1
config.Data.splitting = 'FileBased'

#config.Data.outLFNDirBase = '/store/user/amarini/Test/'
config.Data.outLFNDirBase = '/store/group/phys_higgs/cmshmm/amarini/nano/2016/'
config.Site.storageSite = 'T2_CH_CERN'
