from CRABClient.UserUtilities import config

config = config()
config.General.requestName = 'crab_TT2016'
config.General.workArea = 'crab_copyNano'
config.General.transferLogs = False
config.General.transferOutputs = True

config.section_('JobType')
config.JobType.psetName = 'do_nothing_cfg.py'
config.JobType.scriptExe='scriptExe.sh'
config.JobType.pluginName = 'Analysis'
config.JobType.disableAutomaticOutputCollection = True
config.JobType.outputFiles = ['nano.root']
config.JobType.inputFiles = ['copyNano.py','FrameworkJobReport_ok.xml','__init__.py','haddnano.py']
config.section_('Data')
#config.Data.inputDataset = 'Run2016B/SinglePhoton/RECO/PromptReco-v2'
config.Data.inputDataset = '/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM'
config.Data.publication = True

config.Data.unitsPerJob = 1
config.Data.totalUnits = -1
config.Data.splitting = 'FileBased'

#config.Data.outLFNDirBase = '/store/user/amarini/Test/'
#config.Data.outLFNDirBase = '/store/group/phys_higgs/cmshmm/amarini/nano/2016/'
config.Data.outLFNDirBase = '/store/group/phys_smp/amarini/nano/2016/'
config.Site.storageSite = 'T2_CH_CERN'

do='xxx'
year=2016
suffix=""
if do!='xxx' :
    import re
    #config.General.requestName = 'crab_TT2016'
    if 'UL18' in do: year = 2018 ## mc
    if 'UL17' in do: year = 2017
    if 'UL16' in do: year = 2016
    if 'UL2018' in do: year = 2018 ##data
    if 'UL2017' in do: year = 2017
    if 'UL2016' in do: year = 2016
    if 'preVFP' in do: suffix='preVFP'
    if 'postVFP' in do: suffix='postVFP'
    #config.Data.outLFNDirBase = '/store/group/phys_higgs/cmshmm/amarini/nano/%d%s/' % (year,suffix)
    config.Data.outLFNDirBase = '/store/group/phys_smp/amarini/nano/%d%s/' % (year,suffix)
    extra=''
    if 'Run2016' in do or 'Run2017' in do or 'Run2018' in do:
        extra='_'+ re.sub('[_,-]$','',re.sub('UL.*','',do.split('/')[2]))
    config.General.requestName = re.sub('-','_',do.split('/')[1]) + "_%d"%year +suffix+ extra
    config.Data.inputDataset = do
