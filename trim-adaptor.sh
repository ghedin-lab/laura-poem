#!/bin/bash
#PBS -l walltime=12:00:00
#PBS -l nodes=1:ppn=12
#PBS -l mem=24gb
#PBS -m a
#PBS -M twaddlac@gmail.com
#PBS -j oe 


module load trimmomatic

cd /scratch/at120/shared/laura-alan/2015-10-01_C68Y0ACXX-redo/new-filter/final-filtered-fastq-files

java -jar /share/apps/trimmomatic/0.32/trimmomatic-0.32.jar \
PE \
$fastq.r1.fastq \
$fastq.r2.fastq \
$fastq.trimmed.r1.fastq \
$fastq.trimmed.se.r1.fastq \
$fastq.trimmed.r2.fastq \
$fastq.trimmed.se.r2.fastq \
ILLUMINACLIP:adaptors.fa:2:30:10 \
LEADING:3 \
TRAILING:3 \
SLIDINGWINDOW:4:15 \
MINLEN:28
