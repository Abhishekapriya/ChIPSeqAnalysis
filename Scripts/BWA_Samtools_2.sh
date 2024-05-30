#!/bin/bash -l
#UPPMAX commands (Uppsala Multidisciplinary Center for Advanced Computational Science)
#SBATCH -A snic2016-7-113
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J Abhi_BWA
#SBATCH --output=10082020_BWA.out
#SBATCH --error=10082020_BWA.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user gau.abhi213@gmail.com

module load bioinfo-tools
module load bwa
# bwa verison 0.7.17
module load samtools
# samtools version 1.10

#mem: aligns query sequences with the BWA-MEM algorithm (seeds alignments with maximal exact matches (MEMs), then extends seeds with Smith-Waterman algorithm (SW))
#-M: marks shorter split hits as secondary

bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/CEBPA_ChIP1_01_trim.fastq.gz > Aligned_CEBPA_ChIP1_01.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/CEBPA_ChIP1_02_trim.fastq.gz > Aligned_CEBPA_ChIP1_02.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/CEBPA_ChIP1_03_trim.fastq.gz > Aligned_CEBPA_ChIP1_03.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/CEBPA_ChIP2_01_trim.fastq.gz > Aligned_CEBPA_ChIP2_01.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/CEBPA_ChIP2_02_trim.fastq.gz > Aligned_CEBPA_ChIP2_02.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/CEBPA_ChIP2_03_trim.fastq.gz > Aligned_CEBPA_ChIP2_03.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/HNF1A_ChIP1_01_trim.fastq.gz > Aligned_HNF1A_ChIP1_01.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/HNF1A_ChIP1_02_trim.fastq.gz > Aligned_HNF1A_ChIP1_02.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/HNF1A_ChIP1_03_trim.fastq.gz > Aligned_HNF1A_ChIP1_03.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/HNF4A_ChIP1_01_trim.fastq.gz > Aligned_HNF4A_ChIP1_01.sam
bwa mem -M /crex/proj/sllstore2017022/Abhi_folder/Data/Ref/mm10_bt2_refgenome/GRCm38.p6.genome.fa /crex/proj/sllstore2017022/Abhi_folder/Data/CEBPA_HNF1A_HNF4A/Trimmomatic/HNF4A_ChIP1_02_trim.fastq.gz > Aligned_HNF4A_ChIP1_02.sam

#view: converts .sam files to .bam files
#sort: corrects the sequence alignemnts to more accurately reflect genomic alignment order
#index: uses the sorted file to enable quick extraction of overlapping alignments by indexing the genome

samtools view -bS Aligned_CEBPA_ChIP1_01.sam > Aligned_CEBPA_ChIP1_01.bam
samtools sort Aligned_CEBPA_ChIP1_01.sam > Aligned_CEBPA_ChIP1_01.bam
samtools index Aligned_CEBPA_ChIP1_01.bam

samtools view -bS Aligned_CEBPA_ChIP1_02.sam > Aligned_CEBPA_ChIP1_02.bam
samtools sort Aligned_CEBPA_ChIP1_02.sam > Aligned_CEBPA_ChIP1_02.bam
samtools index Aligned_CEBPA_ChIP1_02.bam

samtools view -bS Aligned_CEBPA_ChIP1_03.sam > Aligned_CEBPA_ChIP1_03.bam
samtools sort Aligned_CEBPA_ChIP1_03.sam > Aligned_CEBPA_ChIP1_03.bam
samtools index Aligned_CEBPA_ChIP1_03.bam

samtools view -bS Aligned_CEBPA_ChIP2_01.sam > Aligned_CEBPA_ChIP2_01.bam
samtools sort Aligned_CEBPA_ChIP2_01.sam > Aligned_CEBPA_ChIP2_01.bam
samtools index Aligned_CEBPA_ChIP2_01.bam

samtools view -bS Aligned_CEBPA_ChIP2_02.sam > Aligned_CEBPA_ChIP2_02.bam
samtools sort Aligned_CEBPA_ChIP2_02.sam > Aligned_CEBPA_ChIP2_02.bam
samtools index Aligned_CEBPA_ChIP2_02.bam

samtools view -bS Aligned_CEBPA_ChIP2_03.sam > Aligned_CEBPA_ChIP2_03.bam
samtools sort Aligned_CEBPA_ChIP2_03.sam > Aligned_CEBPA_ChIP2_03.bam
samtools index Aligned_CEBPA_ChIP2_03.bam

samtools view -bS Aligned_HNF1A_ChIP1_01.sam > Aligned_HNF1A_ChIP1_01.bam
samtools sort Aligned_HNF1A_ChIP1_01.sam > Aligned_HNF1A_ChIP1_01.bam
samtools index Aligned_HNF1A_ChIP1_01.bam

samtools view -bS Aligned_HNF1A_ChIP1_02.sam > Aligned_HNF1A_ChIP1_02.bam
samtools sort Aligned_HNF1A_ChIP1_02.sam > Aligned_HNF1A_ChIP1_02.bam
samtools index Aligned_HNF1A_ChIP1_02.bam

samtools view -bS Aligned_HNF1A_ChIP1_03.sam > Aligned_HNF1A_ChIP1_03.bam
samtools sort Aligned_HNF1A_ChIP1_03.sam > Aligned_HNF1A_ChIP1_03.bam
samtools index Aligned_HNF1A_ChIP1_03.bam

samtools view -bS Aligned_HNF4A_ChIP1_01.sam > Aligned_HNF4A_ChIP1_01.bam
samtools sort Aligned_HNF4A_ChIP1_01.sam > Aligned_HNF4A_ChIP1_01.bam
samtools index Aligned_HNF4A_ChIP1_01.bam

samtools view -bS Aligned_HNF4A_ChIP1_02.sam > Aligned_HNF4A_ChIP1_02.bam
samtools sort Aligned_HNF4A_ChIP1_02.sam > Aligned_HNF4A_ChIP1_02.bam
samtools index Aligned_HNF4A_ChIP1_02.bam