from WMCore.Configuration import Configuration

config = config()
config.General.requestName = 'crab_projects'
config.General.workArea = 'crab_copyNano'
config.General.transferLogs = False
config.General.transferOutputs = True

config.section_('JobType')
config.JobType.psetName = 'copy_nano_cfg.py'
config.JobType.pluginName = 'Analysis'
config.JobType.disableAutomaticOutputCollection = True
config.JobType.outputFiles = ['nano.root']
config.section_('Data')
#config.Data.inputDataset = 'Run2016B/SinglePhoton/RECO/PromptReco-v2'
config.Data.inputDataset = '/SinglePhoton/Run2016B-PromptReco-v2/RECO'
config.Data.publication = True

config.Data.unitsPerJob = 10
config.Data.totalUnits = -1
config.Data.splitting = 'FileBased'

config.Data.outLFNDirBase = '/store/user/amarini/Test/'
config.Site.storageSite = 'T2_CH_CERN'
