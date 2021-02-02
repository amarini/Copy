#!/bin/bash
echo "================= CMSRUN starting jobNum=$1 ====================" | tee -a job.log

source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=slc7_amd64_gcc700

BASE=$PWD

MYCMSSW=CMSSW_10_6_18
    echo "================= CMSRUN setting up $MYCMSSW ===================="| tee -a job.log
    if [ -r $MYCMSSW/src ] ; then 
     echo release $MYCMSSW already exists
    else
     scram p CMSSW $MYCMSSW
    fi
    cd $MYCMSSW/src
    eval `scram runtime -sh`
    scram b 
    cd $BASE


echo "================= CMSRUN starting Step 1 ====================" | tee -a job.log
#cmsRun -j step1.log step1_cfg.py jobNum=$1 $2
python copyNano.py -f 'PSET' -o 'nano.root' -s 'FatJet_pt[0]>200' && { mv -v FrameworkJobReport_ok.xml  FrameworkJobReport.xml }

echo "================= CMSRUN finished ====================" | tee -a job.log
