#!/bin/bash -l
#SBATCH -A snic2016-7-113
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J Abhi_Trim_QC
#SBATCH --mail-type=ALL
#SBATCH --mail-user gau.abhi213@gmail.com

###Trimming read files (mainly to remove adapters) using Trim galore and FastQC of Trimmed files

# Load modules

module load bioinfo-tools
module load TrimGalore
module load FastQC

trim_galore --phred33 --fastqc CEBPA_ChIP1_do70mmuC57BL68CRI01.fastq.gz
trim_galore --phred33 --fastqc CEBPA_ChIP1_do70mmuC57BL68CRI02.fastq.gz
trim_galore --phred33 --fastqc CEBPA_ChIP1_do70mmuC57BL68CRI03.fastq.gz
trim_galore --phred33 --fastqc CEBPA_ChIP2_do73mmuC57BL69CRI01.fastq.gz
trim_galore --phred33 --fastqc CEBPA_ChIP2_do73mmuC57BL69CRI02.fastq.gz
trim_galore --phred33 --fastqc CEBPA_ChIP2_do73mmuC57BL69CRI03.fastq.gz
trim_galore --phred33 --fastqc HNF1A_ChIP1_do62mmuC57AJ4CRI01.fastq.gz
trim_galore --phred33 --fastqc HNF1A_ChIP1_do62mmuC57AJ4SAN02.fastq.gz
trim_galore --phred33 --fastqc HNF1A_ChIP1_do62mmuC57AJ4SAN03.fastq.gz
trim_galore --phred33 --fastqc HNF4A_ChIP1_do27mmuC57AJ1CRI01.fastq.gz
trim_galore --phred33 --fastqc HNF4A_ChIP1_do27mmuC57AJ1CRI02.fastq.gz

