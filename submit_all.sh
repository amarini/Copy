#!/bin/bash

#cat 2018/crab.py | grep 'do==' | cut -d '=' -f 3 | cut -d ':' -f 1 | tr -d "'" | grep -v xxx

#LIST="/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
#
#LIST="/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
#LIST+=" /TT_Mtt-1000toInf_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
#LIST+=" /TT_Mtt-700to1000_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"

#LIST="/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /TTToHadronic_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /TT_Mtt-700to1000_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /TT_Mtt-1000toInf_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"

#LIST+=" /TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /TTToHadronic_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /TT_Mtt-1000toInf_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /TT_Mtt-700to1000_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"

#2018
#LIST="/QCD_HT50to100_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /QCD_HT100to200_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /QCD_HT200to300_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /QCD_HT300to500_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /QCD_HT500to700_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /QCD_HT700to1000_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /QCD_HT1000to1500_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /QCD_HT1500to2000_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM /QCD_HT2000toInf_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"

#2016,2017
#LIST="/QCD_HT50to100_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT100to200_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT200to300_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT200to300_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT300to500_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT500to700_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT700to1000_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT1000to1500_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT1500to2000_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT2000toInf_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM /QCD_HT50to100_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /QCD_HT100to200_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /QCD_HT200to300_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /QCD_HT300to500_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /QCD_HT700to1000_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /QCD_HT1000to1500_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /QCD_HT1500to2000_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM /QCD_HT2000toInf_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST="/QCD_HT500to700_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"

## JetHT 2016-2018
#LIST="/JetHT/Run2016B-ver1_HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2016B-ver2_HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2016C-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2016D-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2016E-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2016F-HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2016F-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2016G-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2016H-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2017B-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2017C-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2017D-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2017E-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2017F-UL2017_MiniAODv1_NanoAODv2-v2/NANOAOD"
#LIST+=" /JetHT/Run2018A-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2018B-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2018C-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /JetHT/Run2018D-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"

# MET FullRun2
#LIST=""
#
#LIST+=" /MET/Run2016B-ver1_HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2016B-ver2_HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2016C-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2016D-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2016E-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2016F-HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2016F-UL2016_MiniAODv1_NanoAODv2-v2/NANOAOD"
#LIST+=" /MET/Run2016G-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2016H-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2017A-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2017B-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2017C-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2017D-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2017E-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2017F-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2018A-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2018B-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2018C-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /MET/Run2018D-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"

#LIST=""
#LIST+=" /SingleMuon/Run2016B-ver1_HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2016B-ver2_HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2016C-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2016D-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2016E-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2016F-HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2016F-UL2016_MiniAODv1_NanoAODv2-v4/NANOAOD"
#LIST+=" /SingleMuon/Run2016G-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2016H-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#
#LIST+=" /SingleMuon/Run2017B-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2017D-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2017E-UL2017_MiniAODv1_NanoAODv2-v2/NANOAOD"
#LIST+=" /SingleMuon/Run2017F-UL2017_MiniAODv1_NanoAODv2-v2/NANOAOD"
#LIST+=" /SingleMuon/Run2017G-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2017H-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#
#LIST+=" /SingleMuon/Run2018A-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2018B-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2018C-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /SingleMuon/Run2018D-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"

LIST=""
#LIST+=" /BTagCSV/Run2016B-ver1_HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2016B-ver2_HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2016C-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2016D-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2016E-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2016F-HIPM_UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2016F-UL2016_MiniAODv1_NanoAODv2-v4/NANOAOD"
#LIST+=" /BTagCSV/Run2016G-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2016H-UL2016_MiniAODv1_NanoAODv2-v1/NANOAOD"
#
#LIST+=" /BTagCSV/Run2017B-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2017D-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2017E-UL2017_MiniAODv1_NanoAODv2-v2/NANOAOD"
#LIST+=" /BTagCSV/Run2017F-UL2017_MiniAODv1_NanoAODv2-v2/NANOAOD"
#LIST+=" /BTagCSV/Run2017G-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2017H-UL2017_MiniAODv1_NanoAODv2-v1/NANOAOD"
#
#LIST+=" /BTagCSV/Run2018A-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2018B-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2018C-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"
#LIST+=" /BTagCSV/Run2018D-UL2018_MiniAODv1_NanoAODv2-v1/NANOAOD"

#LIST=""
#LIST+=" /WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /WJetsToLNu_1J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /WJetsToLNu_2J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /WJetsToLNu_1J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /WJetsToLNu_2J_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"

LIST=""
#LIST+=" /ZJetsToNuNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"

#LIST+=" /ZJetsToNuNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /ZJetsToNuNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"


#LIST=""
#LIST+=" /TTToHadronic_mtop166p5_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_mtop169p5_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_mtop171p5_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_mtop173p5_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_mtop175p5_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_mtop178p5_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"

#LIST=""
#LIST+=" /TTToHadronic_TuneCP5down_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_TuneCP5up_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_hdampDOWN_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_hdampUP_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTToSemiLeptonic_TuneCP5down_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTToSemiLeptonic_TuneCP5up_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTToSemiLeptonic_hdampDOWN_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTToSemiLeptonic_hdampUP_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTTo2L2Nu_TuneCP5down_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTTo2L2Nu_TuneCP5up_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTTo2L2Nu_hdampDOWN_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#LIST+=" /TTTo2L2Nu_hdampUP_TuneCP5_13TeV-powheg-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
#
#LIST+=" /TTToHadronic_TuneCP5down_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_TuneCP5up_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_hdampDOWN_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToHadronic_hdampUP_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToSemiLeptonic_TuneCP5down_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToSemiLeptonic_TuneCP5up_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToSemiLeptonic_hdampDOWN_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTToSemiLeptonic_hdampUP_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTTo2L2Nu_TuneCP5down_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTTo2L2Nu_TuneCP5up_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTTo2L2Nu_hdampDOWN_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
#LIST+=" /TTTo2L2Nu_hdampUP_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"

#LIST+=" /MET/Run2017E-UL2017_MiniAODv1_NanoAODv2-v3/NANOAOD"
#LIST+=" /MET/Run2018B-UL2018_MiniAODv1_NanoAODv2-v4/NANOAOD"

LIST=""
LIST+=" /WJetsToLNu_HT-70To100_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"

LIST+=" /WJetsToLNu_HT-70To100_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL17NanoAODv2-106X_mc2017_realistic_v8-v1/NANOAODSIM"
##???? miss 2500ToInf

LIST+=" /WJetsToLNu_HT-70To100_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
LIST+=" /WJetsToLNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM"
##???? miss 2500ToInf

LIST+=" /ZJetsToNuNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /ZJetsToNuNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /ZJetsToNuNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /ZJetsToNuNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /ZJetsToNuNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
##?? miss 1200-2500
LIST+=" /ZJetsToNuNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"


#######make superSet of these 
LIST+=" /TTToSemiLeptonic_TuneCP5down_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /TTToSemiLeptonic_TuneCP5up_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /TTToSemiLeptonic_hdampDOWN_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /TTToSemiLeptonic_hdampUP_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"

LIST+=" /TTTo2L2Nu_TuneCP5down_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /TTTo2L2Nu_TuneCP5up_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /TTTo2L2Nu_hdampDOWN_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /TTTo2L2Nu_hdampUP_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"

LIST+=" /TTToHadronic_TuneCP5down_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /TTToHadronic_TuneCP5up_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /TTToHadronic_hdampDOWN_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"
LIST+=" /TTToHadronic_hdampUP_TuneCP5_13TeV-powheg-pythia8/RunIISummer20UL16NanoAODv2-106X_mcRun2_asymptotic_v15-v1/NANOAODSIM"

for what in $LIST; do
    echo "Doing $what"
    cp -v crab.py crab_tmp.py
    sed -i'' "s:do='xxx':do='$what':g" crab_tmp.py
    crab submit crab_tmp.py
    rm crab_tmp.py
done

#/QCD_HT500to700_TuneCP5_PSWeights_13TeV-madgraphMLM-pythia8/RunIISummer19UL17NanoAODv2-106X_mc2017_realistic_v8_ext1-v1/NANOAODSIM
