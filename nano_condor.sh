#!/bin/bash
dataset=$1

#cmsenv
cd /afs/cern.ch/work/a/amarini/ChHiggs2017/CMSSW_10_2_13/src/CopySkimNano/CMSSW_10_6_18/src
eval `scramv1 runtime -sh`

cd /afs/cern.ch/user/a/amarini/work/ChHiggs2017/CMSSW_10_2_13/src/CopySkimNano
BASE=$PWD

## copy  proxy
export X509_USER_PROXY=$PWD/x509up_u$(id -u)

echo ">Doing dataset $dataset" | tee -a log_global.txt; 
./nanoaqgc.sh ${dataset}
echo ">Done dataset $dataset" | tee -a log_global.txt; 

echo ">end"
