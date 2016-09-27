## Filtering text roughly to sentences

cat raw_text.txt | sed 's/\t/ /g' | sed -re 's/(\.|\!|\?) /\1\n/g' | perl -CSAD -0pe 's/\n(\p{Lowercase})/ \1/g' | sed '/^\s*$/d' 

## Example of unicode properties in Perl

echo 'AbCdEFg.' | perl -CSAD -pe 's/(\p{Ll})/x/g'
