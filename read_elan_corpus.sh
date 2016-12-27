#!/bin/bash

for ELAN_FILE in `find . -name \*.eaf`

do

echo "cat //TIER[@LINGUISTIC_TYPE_REF='orthT']/ANNOTATION/REF_ANNOTATION/ANNOTATION_VALUE/text()" | xmllint --shell $ELAN_FILE | grep -vwE "(-------|>)" >> elan_corpus.txt

done
