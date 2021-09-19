#!/bin/bash
#dasgoclient -query="dataset=/*NPle1_aQGC*/*UL*NanoAODv2*/NANOAOD*"
DEST=/eos/cms/store/user/amarini/nanoaqgc2
DATASET=/WPJJZJJjj_EWK_LO_NPle1_aQGC_TuneCP5_13TeV-madgraph-pythia8/RunIISummer19UL18NanoAODv2-106X_upgrade2018_realistic_v15_L1v1-v1/NANOAODSIM

[ -n "${1}" ] && { export DATASET="$1" ; echo "DATASET is $DATASET"; } 
[ -n "${2}" ] && { export DEST="$2" ; echo "DEST is $DEST"; } 

YEAR="20XX"
[[ "$DATASET" == *"UL18"* ]] && export YEAR="mc2018"
[[ "$DATASET" == *"UL17"* ]] && export YEAR="mc2017"
[[ "$DATASET" == *"UL16"* ]] && export YEAR="mc2016"
[[ "$DATASET" == *"UL16"* ]] && [[ "$DATASET" == *"preVFP"* ]] && export YEAR="mc2016preVFP"
[[ "$DATASET" == *"UL16"* ]] && [[ "$DATASET" == *"postVFP"* ]] && export YEAR="mc2016postVFP"

DNAME="$(echo -n $DATASET | cut -d'/' -f 2)"
echo "DNAME: $DNAME | YEAR: $YEAR | DATASET: $DATASET"
mkdir -p $DEST/$DNAME/$YEAR

TMPDIR=$(mktemp -d )
echo "Using TMPDIR $TMPDIR"

## persistent temp for miniaod
mkdir -p /eos/cms/store/cmst3/user/amarini/temp/$DNAME/$YEAR

echo "copying dataset in $DEST. Quearying files with command dasgoclient -query=\"file dataset=$DATASET\""
for f in $(dasgoclient -query="file dataset=$DATASET" ); do
    #[ -f $DEST/$DNAME/${f##*/} ]  && { echo "skipping transfer for $f"; } || { xrdcp "root://xrootd-cms.infn.it//$f" $DEST/$DNAME/ ; }
    #python addBranch.py  -f "root://xrootd-cms.infn.it//$f" -u $DEST/$DNAME/${f##*/} --minME "fs0_0p00" --maxME "ft9_2p50"  --xrdcp

    xrdcp "root://xrootd-cms.infn.it//$f" $TMPDIR/ ; 
    TIME="ch ${ch}\nElapsed %e\nUser %U\nSys %S\nMem %M" time  python addBranch.py  -f "root://xrootd-cms.infn.it//$f" -u $TMPDIR/${f##*/} --minME "fs0_0p00" --maxME "ft9_2p50"  --xrdcp --persistent_temp /eos/cms/store/cmst3/user/amarini/temp/$DNAME/$YEAR

    [ "$?" == "0" ] || { echo "ERROR in addBranch" ; echo "$f" >>failed_file.txt ; continue; }

    ## add a test. the above one is not enough. Can't indent python input.
    python <<EOF || { echo "ERROR. Branch not added for file $f."; echo "$f" >>failed_file.txt ; continue; } 
import ROOT
import sys
fIn=ROOT.TFile.Open("${TMPDIR}/${f##*/}")
tIn=fIn.Get("Events")
if tIn.GetLeaf("ft9_2p50"): sys.exit(0)
else: sys.exit(1)
EOF

    echo "TRANSFERING FILE ${f##*/}"
    mv -v $TMPDIR/${f##*/} $DEST/$DNAME/$YEAR/
    #-a branch,1 
done

rm -r /eos/cms/store/cmst3/user/amarini/temp/$DNAME/$YEAR

echo DONE

