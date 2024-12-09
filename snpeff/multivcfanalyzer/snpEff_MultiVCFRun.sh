#!/bin/bash

java -Xmx10G -jar MultiVCFAnalyzer-0.85.2.jar \
snpEff-Nichols.out \
NC_021490.2_Treponema_pallidum_subsp._pallidum_str._Nichols.fasta \
NC_021490.2_Treponema_pallidum_subsp._pallidum_str._Nichols.gff3 \
output_folder \
F \
37 \
4 \
0.9 \
0.9 \
Mask_from_genotyping.gff3 \
Sample1.vcf \
Sample2.vcf \
Sample3.vcf \
Sample4.vcf \
Sample5.vcf \
Sample6.vcf \
SampleN.vcf \
