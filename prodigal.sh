#!/bin/bash
for file in $( ls *_contigs_1*.fasta);do
     echo file: $file
     fname=$(basename $file .fasta)
     echo basename: $fname
     time prodigal -p meta -a $fname.faa -i $file
done