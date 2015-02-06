# debian-hmmsearch2

run hmmsearch in HMMER package with parameters(profileHMM and FASTA formatted database file).

 example: docker run -it bonohu/debian-hmmsearch2 PF00081 \ 
 ftp://ftp.ensemblgenomes.org/pub/metazoa/release-25/fasta/bombyx_mori/pep/Bombyx_mori.GCA_000151625.1.25.pep.all.fa.gz

contents of 'hmmsearch.sh' script in Dockerfile is as follows.

 #!/bin/sh  
 # get hmm  
 wget -O hmm.hmm http://pfam.xfam.org/family/$1/hmm  
 # get DB  
 wget -O db.fa.gz $2  
 # run hmmsearch with parameters  
 hmmsearch hmm.hmm db.fa.gz  
