#!/bin/sh
# get hmm
wget -O hmm.hmm http://pfam.xfam.org/family/$1/hmm
# get DB
wget -O db.fa.gz $2
# run hmmsearch with parameters
hmmsearch hmm.hmm db.fa.gz
