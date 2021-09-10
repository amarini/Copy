#!/bin/bash
#SRC=/eos/cms/store/group/phys_higgs/cmshmm/amarini/nano/2018/TTTo2L2Nu_SuperSet
#DEST=/eos/cms/store/group/phys_higgs/cmshmm/amarini/nano/2018/TTTo2L2Nu_SuperSet_SKIM
SRC=/eos/cms/store/group/phys_higgs/cmshmm/amarini/nano/2018/TTToHadronic_SuperSet
DEST=/eos/cms/store/group/phys_higgs/cmshmm/amarini/nano/2018/TTToHadronic_SuperSet_SKIM


TMP=/tmp/$USER/copyNano_tmp.root
BASE=$PWD

mkdir $DEST

cd $SRC
find . -type f| while read f ; do

[ -f $TMP ] && rm $TMP
mkdir -p ${DEST}/${f%/*}
python $BASE/copyNano2.py -f ${f} -o $TMP -s 'nFatJet >0 || MET_pt > 200'
mv -v $TMP $DEST/${f}

done

cd $BASE
