#!/usr/bin/env bash

BAMDIR=path/to/bam-files

for BAM in $(ls $BAMDIR); do
bedtools genomecov -ibam $BAM -bg > $BAM.histogram.bed
bedtools coverage -a virulence-genes-Nichols.bed -b $BAM.histogram.bed -hist | awk '$4==1' > $BAM.virulence_only1.bed
bedtools coverage -a virulence-genes-Nichols.bed -b $BAM.histogram.bed -hist | awk '$4==0' | awk '$7==1.0000000' > $BAM.virulence_only0.bed
sed 's/\t1.0000000/\t0.0000000/g' $BAM.virulence_only0.bed > $BAM.virulence_only0_with0.bed
cat $BAM.virulence_only1.bed $BAM.virulence_only0_with0.bed > $BAM.virulence.bed
bedtools sort -i $BAM.virulence.bed > $BAM.virulence_sorted_def.bed
awk '{print $1$7}' $BAM.virulence_sorted_def.bed | sed 's/NC_021490.2/NC_021490.2\t/g' > $BAM.virulence.bed.filtered.bed

done

