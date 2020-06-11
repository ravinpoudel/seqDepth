#!/bin/bash
# align bft faa file. 
muscle -in bft.faa -out bft_aln.faa 

# use hmmbuild to create a hmm profile with align bft file
hmmbuild bft.hmm bft_aln.faa 

# hmmsearch of metagenome.faa with hmm profile
for file in $( ls *_contigs_1*.faa);do
     echo file: $file
     fname=$(basename $file .faa)
     echo basename: $fname
     time hmmsearch --tblout $fname.bft.txt -E 1e-6 --cpu 16 bft.hmm $file
done