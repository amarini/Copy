#!/bin/bash

DEST=/eos/cms/store/user/amarini/nanoaqgc
DATASET=/WPJJZJJjj_EWK_LO_NPle1_aQGC_TuneCP5_13TeV-madgraph-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM
DNAME=$(echo -n $DATASET | cut -d'/' -f 2)
mkdir -p $DEST/$DNAME

TMPDIR=$(mktemp -d )
echo "Using TMPDIR $TMPDIR"

echo "copying dataset in $DEST"
for f in $(dasgoclient -query "file dataset=$DATASET" ); do
    #[ -f $DEST/$DNAME/${f##*/} ]  && { echo "skipping transfer for $f"; } || { xrdcp "root://xrootd-cms.infn.it//$f" $DEST/$DNAME/ ; }
    #python addBranch.py  -f "root://xrootd-cms.infn.it//$f" -u $DEST/$DNAME/${f##*/} --minME "fs0_0p00" --maxME "ft9_2p50"  --xrdcp

    xrdcp "root://xrootd-cms.infn.it//$f" $TMPDIR/ ; 
    python addBranch.py  -f "root://xrootd-cms.infn.it//$f" -u $TMPDIR/${f##*/} --minME "fs0_0p00" --maxME "ft9_2p50"  --xrdcp

    mv -v $TMPDIR/${f##*/} $DEST/$DNAME/
    #-a branch,1 
done

echo DONE

