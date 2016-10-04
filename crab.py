from WMCore.Configuration import Configuration
from CRABClient.UserUtilities import config, getUsernameFromSiteDB

config = config()
config.General.transferOutputs = True
config.General.requestName = 'crab_projects'

config.section_('JobType')
config.JobType.psetName = 'copy_cfg.py'
config.JobType.pluginName = 'Analysis'
#config.JobType.outputFiles = ['output.root']
config.section_('Data')
#config.Data.inputDataset = 'Run2016B/SinglePhoton/RECO/PromptReco-v2'
config.Data.inputDataset = '/SinglePhoton/Run2016B-PromptReco-v2/RECO'
config.Data.publication = False
config.Data.unitsPerJob = 10
config.Data.splitting = 'LumiBased'
config.Data.outLFNDirBase = '/store/user/%s/Test/' % (getUsernameFromSiteDB())
config.Data.lumiMask = 'mycert.json'
config.Site.storageSite = 'T2_CH_CERN'
