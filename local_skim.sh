#!/bin/bash
SRC=/eos/cms/store/group/phys_higgs/cmshmm/amarini/nano/2018/TTTo2L2Nu_SuperSet
DEST=/eos/cms/store/group/phys_higgs/cmshmm/amarini/nano/2018/TTTo2L2Nu_SuperSet_SKIM

mkdir $DEST

cd $SRC
find . -type f| while read f ; do

mkdir -p ${DEST}/${f%/*}
echo python copyNano.py -v -f ${f} -o $DEST/${f} -s 'nFatJet >0 || MET_pt > 200'

done
