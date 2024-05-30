#!/bin/bash -l
#Date:02092020
#UPPMAX commands (Uppsala Multidisciplinary Center for Advanced Computational Science)
#SBATCH -A snic2016-7-113
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J Abhi_MarkDuplicates
#SBATCH --output=02092020_MarkDuplicates.out
#SBATCH --error=02092020_MarkDuplicates.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user gau.abhi213@gmail.com

module load bioinfo-tools
module load samtools
# samtools version 1.10

cd /proj/sllstore2017022/Abhi_folder/Data/Mapping

# -n: Sort by read names (i.e., the QNAME field) rather than by chromosomal coordinates.
# -o FILE: Write the final sorted output to FILE, rather than to standard output.
# -@ INT : Set number of sorting and compression threads. By default, operation is single-threaded.

samtools sort -n -o CEBPA_ChIP1_01_nsort_BL.bam -@ 10  CEBPA_ChIP1_01_BL.bam
samtools sort -n -o CEBPA_ChIP1_02_nsort_BL.bam -@ 10  CEBPA_ChIP1_02_BL.bam
samtools sort -n -o CEBPA_ChIP1_03_nsort_BL.bam -@ 10  CEBPA_ChIP1_03_BL.bam
samtools sort -n -o CEBPA_ChIP2_01_nsort_BL.bam -@ 10  CEBPA_ChIP2_01_BL.bam
samtools sort -n -o CEBPA_ChIP2_02_nsort_BL.bam -@ 10  CEBPA_ChIP2_02_BL.bam
samtools sort -n -o CEBPA_ChIP2_03_nsort_BL.bam -@ 10  CEBPA_ChIP2_03_BL.bam
samtools sort -n -o HNF1A_ChIP1_01_nsort_BL.bam -@ 10  HNF1A_ChIP1_01_BL.bam
samtools sort -n -o HNF1A_ChIP1_02_nsort_BL.bam -@ 10  HNF1A_ChIP1_02_BL.bam
samtools sort -n -o HNF1A_ChIP1_03_nsort_BL.bam -@ 10  HNF1A_ChIP1_03_BL.bam
samtools sort -n -o HNF4A_ChIP1_01_nsort_BL.bam -@ 10  HNF4A_ChIP1_01_BL.bam
samtools sort -n -o HNF4A_ChIP1_02_nsort_BL.bam -@ 10  HNF4A_ChIP1_02_BL.bam


# fixmate – fills in mate coordinates and insert size fields
# -m: Add ms (mate score) tags. These are used by markdup to select the best reads to keep.

samtools fixmate -m CEBPA_ChIP1_01_nsort_BL.bam CEBPA_ChIP1_01_nsort_BL_fix.bam
samtools fixmate -m CEBPA_ChIP1_02_nsort_BL.bam CEBPA_ChIP1_02_nsort_BL_fix.bam
samtools fixmate -m CEBPA_ChIP1_03_nsort_BL.bam CEBPA_ChIP1_03_nsort_BL_fix.bam
samtools fixmate -m CEBPA_ChIP2_01_nsort_BL.bam CEBPA_ChIP2_01_nsort_BL_fix.bam
samtools fixmate -m CEBPA_ChIP2_02_nsort_BL.bam CEBPA_ChIP2_02_nsort_BL_fix.bam
samtools fixmate -m CEBPA_ChIP2_03_nsort_BL.bam CEBPA_ChIP2_03_nsort_BL_fix.bam
samtools fixmate -m HNF1A_ChIP1_01_nsort_BL.bam HNF1A_ChIP1_01_nsort_BL_fix.bam
samtools fixmate -m HNF1A_ChIP1_02_nsort_BL.bam HNF1A_ChIP1_02_nsort_BL_fix.bam
samtools fixmate -m HNF1A_ChIP1_03_nsort_BL.bam HNF1A_ChIP1_03_nsort_BL_fix.bam
samtools fixmate -m HNF4A_ChIP1_01_nsort_BL.bam HNF4A_ChIP1_01_nsort_BL_fix.bam
samtools fixmate -m HNF4A_ChIP1_02_nsort_BL.bam HNF4A_ChIP1_02_nsort_BL_fix.bam

samtools sort -o CEBPA_ChIP1_01_psort_BL_fix.bam -@ 10  CEBPA_ChIP1_01_nsort_BL_fix.bam
samtools sort -o CEBPA_ChIP1_02_psort_BL_fix.bam -@ 10  CEBPA_ChIP1_02_nsort_BL_fix.bam
samtools sort -o CEBPA_ChIP1_03_psort_BL_fix.bam -@ 10  CEBPA_ChIP1_03_nsort_BL_fix.bam
samtools sort -o CEBPA_ChIP2_01_psort_BL_fix.bam -@ 10  CEBPA_ChIP2_01_nsort_BL_fix.bam
samtools sort -o CEBPA_ChIP2_02_psort_BL_fix.bam -@ 10  CEBPA_ChIP2_02_nsort_BL_fix.bam
samtools sort -o CEBPA_ChIP2_03_psort_BL_fix.bam -@ 10  CEBPA_ChIP2_03_nsort_BL_fix.bam
samtools sort -o HNF1A_ChIP1_01_psort_BL_fix.bam -@ 10  HNF1A_ChIP1_01_nsort_BL_fix.bam
samtools sort -o HNF1A_ChIP1_02_psort_BL_fix.bam -@ 10  HNF1A_ChIP1_02_nsort_BL_fix.bam
samtools sort -o HNF1A_ChIP1_03_psort_BL_fix.bam -@ 10  HNF1A_ChIP1_03_nsort_BL_fix.bam
samtools sort -o HNF4A_ChIP1_01_psort_BL_fix.bam -@ 10  HNF4A_ChIP1_01_nsort_BL_fix.bam
samtools sort -o HNF4A_ChIP1_02_psort_BL_fix.bam -@ 10  HNF4A_ChIP1_02_nsort_BL_fix.bam

# markdup – mark duplicate alignments in a coordinate sorted file

samtools markdup CEBPA_ChIP1_01_psort_BL_fix.bam CEBPA_ChIP1_01_psort_BL_mkdup.bam
samtools markdup CEBPA_ChIP1_02_psort_BL_fix.bam CEBPA_ChIP1_02_psort_BL_mkdup.bam
samtools markdup CEBPA_ChIP1_03_psort_BL_fix.bam CEBPA_ChIP1_03_psort_BL_mkdup.bam
samtools markdup CEBPA_ChIP2_01_psort_BL_fix.bam CEBPA_ChIP2_01_psort_BL_mkdup.bam
samtools markdup CEBPA_ChIP2_02_psort_BL_fix.bam CEBPA_ChIP2_02_psort_BL_mkdup.bam
samtools markdup CEBPA_ChIP2_03_psort_BL_fix.bam CEBPA_ChIP2_03_psort_BL_mkdup.bam
samtools markdup HNF1A_ChIP1_01_psort_BL_fix.bam HNF1A_ChIP1_01_psort_BL_mkdup.bam
samtools markdup HNF1A_ChIP1_02_psort_BL_fix.bam HNF1A_ChIP1_02_psort_BL_mkdup.bam
samtools markdup HNF1A_ChIP1_03_psort_BL_fix.bam HNF1A_ChIP1_03_psort_BL_mkdup.bam
samtools markdup HNF4A_ChIP1_01_psort_BL_fix.bam HNF4A_ChIP1_01_psort_BL_mkdup.bam
samtools markdup HNF4A_ChIP1_02_psort_BL_fix.bam HNF4A_ChIP1_02_psort_BL_mkdup.bam


# Multi mapping region removal
# -b: Output in the BAM format
# -q INT: Skip alignments with MAPQ smaller than INT
# -@ INT: Number of BAM compression threads to use in addition to main thread
# -o FILE: Output to FILE

samtools view -b -q 20 -@ 10 CEBPA_ChIP1_01_psort_BL_mkdup.bam -o CEBPA_ChIP1_01_psort_BL_mkdup_mum.bam 
samtools view -b -q 20 -@ 10 CEBPA_ChIP1_02_psort_BL_mkdup.bam -o CEBPA_ChIP1_02_psort_BL_mkdup_mum.bam
samtools view -b -q 20 -@ 10 CEBPA_ChIP1_03_psort_BL_mkdup.bam -o CEBPA_ChIP1_03_psort_BL_mkdup_mum.bam
samtools view -b -q 20 -@ 10 CEBPA_ChIP2_01_psort_BL_mkdup.bam -o CEBPA_ChIP2_01_psort_BL_mkdup_mum.bam
samtools view -b -q 20 -@ 10 CEBPA_ChIP2_02_psort_BL_mkdup.bam -o CEBPA_ChIP2_02_psort_BL_mkdup_mum.bam
samtools view -b -q 20 -@ 10 CEBPA_ChIP2_03_psort_BL_mkdup.bam -o CEBPA_ChIP2_03_psort_BL_mkdup_mum.bam
samtools view -b -q 20 -@ 10 HNF1A_ChIP1_01_psort_BL_mkdup.bam -o HNF1A_ChIP1_01_psort_BL_mkdup_mum.bam
samtools view -b -q 20 -@ 10 HNF1A_ChIP1_02_psort_BL_mkdup.bam -o HNF1A_ChIP1_02_psort_BL_mkdup_mum.bam
samtools view -b -q 20 -@ 10 HNF1A_ChIP1_03_psort_BL_mkdup.bam -o HNF1A_ChIP1_03_psort_BL_mkdup_mum.bam
samtools view -b -q 20 -@ 10 HNF4A_ChIP1_01_psort_BL_mkdup.bam -o HNF4A_ChIP1_01_psort_BL_mkdup_mum.bam
samtools view -b -q 20 -@ 10 HNF4A_ChIP1_02_psort_BL_mkdup.bam -o HNF4A_ChIP1_02_psort_BL_mkdup_mum.bam


# Flagstat to get counts of the number of alignments for each FLAG type

samtools flagstat CEBPA_ChIP1_01_psort_BL_mkdup_mum.bam -@ 10 -O tsv > CEBPA_ChIP1_01_final.tsv
samtools flagstat CEBPA_ChIP1_02_psort_BL_mkdup_mum.bam -@ 10 -O tsv > CEBPA_ChIP1_02_final.tsv
samtools flagstat CEBPA_ChIP1_03_psort_BL_mkdup_mum.bam -@ 10 -O tsv > CEBPA_ChIP1_03_final.tsv
samtools flagstat CEBPA_ChIP2_01_psort_BL_mkdup_mum.bam -@ 10 -O tsv > CEBPA_ChIP2_01_final.tsv
samtools flagstat CEBPA_ChIP2_02_psort_BL_mkdup_mum.bam -@ 10 -O tsv > CEBPA_ChIP2_02_final.tsv
samtools flagstat CEBPA_ChIP2_03_psort_BL_mkdup_mum.bam -@ 10 -O tsv > CEBPA_ChIP2_03_final.tsv
samtools flagstat HNF1A_ChIP1_01_psort_BL_mkdup.bam -@ 10 -O tsv > HNF1A_ChIP1_01_final.tsv
samtools flagstat HNF1A_ChIP1_02_psort_BL_mkdup.bam -@ 10 -O tsv > HNF1A_ChIP1_02_final.tsv
samtools flagstat HNF1A_ChIP1_03_psort_BL_mkdup.bam -@ 10 -O tsv > HNF1A_ChIP1_03_final.tsv
samtools flagstat HNF4A_ChIP1_01_psort_BL_mkdup.bam -@ 10 -O tsv > HNF4A_ChIP1_01_final.tsv
samtools flagstat HNF4A_ChIP1_02_psort_BL_mkdup.bam -@ 10 -O tsv > HNF4A_ChIP1_02_final.tsv

samtools flagstat Aligned_CEBPA_ChIP1_01.bam -@ 10 -O tsv > CEBPA_ChIP1_01_initial.tsv
samtools flagstat Aligned_CEBPA_ChIP1_02.bam -@ 10 -O tsv > CEBPA_ChIP1_02_initial.tsv
samtools flagstat Aligned_CEBPA_ChIP1_03.bam -@ 10 -O tsv > CEBPA_ChIP1_03_initial.tsv
samtools flagstat Aligned_CEBPA_ChIP2_01.bam -@ 10 -O tsv > CEBPA_ChIP2_01_initial.tsv
samtools flagstat Aligned_CEBPA_ChIP2_02.bam -@ 10 -O tsv > CEBPA_ChIP2_02_initial.tsv
samtools flagstat Aligned_CEBPA_ChIP2_03.bam -@ 10 -O tsv > CEBPA_ChIP2_03_initial.tsv
samtools flagstat Aligned_HNF1A_ChIP1_01.bam -@ 10 -O tsv > HNF1A_ChIP1_01_initial.tsv
samtools flagstat Aligned_HNF1A_ChIP1_02.bam -@ 10 -O tsv > HNF1A_ChIP1_02_initial.tsv
samtools flagstat Aligned_HNF1A_ChIP1_03.bam -@ 10 -O tsv > HNF1A_ChIP1_03_initial.tsv
samtools flagstat Aligned_HNF4A_ChIP1_01.bam -@ 10 -O tsv > HNF4A_ChIP1_01_initial.tsv
samtools flagstat Aligned_HNF4A_ChIP1_02.bam -@ 10 -O tsv > HNF4A_ChIP1_02_initial.tsv
