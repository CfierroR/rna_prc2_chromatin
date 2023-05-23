# RNA PRC2 chromatin

In this repository we collect all codes to bioinformatics assays in order to realize ChIP-seq and RNA-seq analysis and comparisoRn

### Quality Analysis

```
01_fastqc.sh ../data
cd ../outputs/01_fastqc
multiqc .
```

```
02_trimgalore_parallel.sh ../data
```


## RNA-seq

```

```

### Pseudocounts

## ChIP-seq / ChART-seq

### ENCODE4 Pipeline

### Get Overlaped regions

To get overlaped peaks we use the following command:

```
bedtools intersect -a malat1_peaks.bed -b suz12_peaks.bed >> intersect_malat1_vs_suz12.bed
```


