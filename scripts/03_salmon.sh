#!/bin/bash
GEO=$(echo “CON1 “CON2” “MAL1” “MAL2”)
for i in ${GEO};
do
    R1=${i}_1.fq.gz
    echo ${R1}
    R2=${i}_1.fq.gz
    echo ${R2} 
    salmon quant -l A -i Index_ensembl -1 ../outputs/02_trimgalore/${R1} -2 ../outputs/02_trimgalore/${R2} -o ../outputs/03_SALMON/${i}
done 