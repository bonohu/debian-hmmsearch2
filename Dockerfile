#Docker container for hmmsearch
FROM debian
MAINTAINER Hidemasa Bono, bonohu@gmail.com
# copy run script 
ADD hmmsearch.sh /usr/local/bin/run.sh
# Install packages
RUN apt-get update && \
    apt-get install -y hmmer &&\
    apt-get install -y wget &&\
    rm -rf /var/lib/apt/lists/*
#CMD ["/usr/local/bin/run.sh", "PF01126", "ftp://ftp.ensemblgenomes.org/pub/metazoa/release-25/fasta/bombyx_mori/pep/Bombyx_mori.GCA_000151625.1.25.pep.all.fa.gz"]
ENTRYPOINT ["/usr/local/bin/run.sh"]
