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


echo "================= Extracting input_files ====================" | tee -a job.log
tar -xzf input_files.tar.gz

ls  -ltr 

echo "================= Running CopyNano ====================" | tee -a job.log
python copyNano.py -f 'JSON' -f "$1" -o 'nano.root' -s 'nFatJet >0 || MET_pt > 200' && { mv -v FrameworkJobReport_ok.xml  FrameworkJobReport.xml ; }
# use the tweak pset to figure it out
#python copyNano.py -f 'PSET' -o 'nano.root' -s 'FatJet_pt[0]>200' && { mv -v FrameworkJobReport_ok.xml  FrameworkJobReport.xml ; }

echo "================= CMSRUN finished ====================" | tee -a job.log

