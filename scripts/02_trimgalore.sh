#!/bin/bash
function trimgalore {
    r1=$1
    r2=$2
    outdir='../analyses/trimmed_fastq'
    mkdir -p $outdir
    outfile=$(basename "$r1" | sed 's/_1.fastq.gz//g')
    mkdir -p ${outdir}/${outfile}
    #trim_galore -q 20 --phred33 --illumina --fastqc --cores 8 --paired $r1 $r2 -o ${outdir}/${outfile}
    trim_galore -q 20 --illumina  --phred33 --fastqc --cores 8 --paired $r1 $r2 -o ${outdir}/${outfile}
}

input_dir=$1
input_sample=$2

file1=$(find -L ${input_dir} -name "*.fastq.gz" | grep ${input_sample} | grep "_1.fastq.gz");
file2=$(find -L ${input_dir} -name "*.fastq.gz" | grep ${input_sample} | grep "_2.fastq.gz");
trimgalore $file1 $file2