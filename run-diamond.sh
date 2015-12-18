#!/bin/bash
#PBS -l walltime=12:00:00,nodes=1:ppn=12,mem=32gb
#PBS -m a
#PBS -M twaddlac@gmail.com
#PBS -j oe

# diamond is a faster way to blastx than the original blast implementation, though not as sensitive (i.e. doesn't find all hits).
# this is generally recommended for metagenomic like queries due to speed

module load diamond

cd /scratch/at120/shared/laura-alan/2015-10-01_C68Y0ACXX-redo/sod

diamond blastx -e 0.00005 -p 12 -k 1 -d sod-proteins.faa.dmnd -q ../$fastq.fastq.gz -a $fastq.matches.daa
