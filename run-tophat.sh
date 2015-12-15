#!/bin/bash
#PBS -l walltime=12:00:00,nodes=1:ppn=12,mem=32gb
#PBS -m e
#PBS -M twaddlac@gmail.com
#PBS -j oe


module load tophat/intel/2.0.12
module load bowtie2
#module switch samtools/intel/0.1.19 samtools/intel/1.2

cd /scratch/at120/shared/laura-alan/2015-10-01_C68Y0ACXX-redo/staph-tophat

tophat2 -o $fastq-tophat -p 12 --microexon-search --b2-very-sensitive -G staph-aureus-nctc-8325/staph-nctc-8325.gff3 staph-aureus-nctc-8325/staph-nctc-8325.fa $fastq.r1.fastq.gz $fastq.r2.fastq.gz
