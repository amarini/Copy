#!/bin/bash

DEST=/eos/cms/store/user/amarini/nanoaqgc
DATASET=/WPJJZJJjj_EWK_LO_NPle1_aQGC_TuneCP5_13TeV-madgraph-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM
DNAME=$(echo -n $DATASET | cut -d'/' -f 2)
mkdir -p $DEST/$DNAME

echo "copying dataset in $DEST"
for f in $(dasgoclient -query "file dataset=$DATASET" ); do
    xrdcp "root://xrootd-cms.infn.it//$f" $DEST/$DNAME/
    python addBranch.py  -f "root://xrootd-cms.infn.it//$f" -u $DEST/$DNAME/${f##*/} --minME "fs0_0p00" --maxME "ft9_2p50"
    #-a branch,1 
done

#echo "wait"
#wait

echo DONE

