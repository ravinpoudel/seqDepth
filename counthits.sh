#!/bin/bash
for file in $( ls *_[0-9]*.bft.txt);do
     echo file: $file
     fname=$(basename $file .bft.txt)
     echo basename: $fname
     nline=$(grep -vc '^#' $file)
     echo $file $nline >> countline.txt
done
