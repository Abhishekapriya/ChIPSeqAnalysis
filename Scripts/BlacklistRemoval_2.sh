#!/bin/bash -l
#Date:02092020
#UPPMAX commands (Uppsala Multidisciplinary Center for Advanced Computational Science)
#SBATCH -A snic2016-7-113
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:30:00
#SBATCH -J Abhi_BLacklistRem
#SBATCH --output=02092020_BlacklistRem.out
#SBATCH --error=02092020_BlacklistRem.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user gau.abhi213@gmail.com


module load bioinfo-tools
module load NGSUtils/0.5.9

cd /proj/sllstore2017022/Abhi_folder/Data/Mapping

#Note: the path to the blacklist should still work!

# bamutils filter input_file.bam output_file.bam -options
# -excludebed file.bed {nostrand}: Remove reads that are in any of the regions from the given BED file. If 'nostrand' is given, strand information from the BED file is ignored.

bamutils filter Aligned_CEBPA_ChIP1_01.bam  \
CEBPA_ChIP1_01_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_CEBPA_ChIP1_02.bam  \
CEBPA_ChIP1_02_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_CEBPA_ChIP1_03.bam  \
CEBPA_ChIP1_03_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_CEBPA_ChIP2_01.bam  \
CEBPA_ChIP2_01_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_CEBPA_ChIP2_02.bam  \
CEBPA_ChIP2_02_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_CEBPA_ChIP2_03.bam  \
CEBPA_ChIP2_03_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_HNF1A_ChIP1_01.bam  \
HNF1A_ChIP1_01_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_HNF1A_ChIP1_02.bam  \
HNF1A_ChIP1_02_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_HNF1A_ChIP1_03.bam  \
HNF1A_ChIP1_03_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_HNF4A_ChIP1_01.bam  \
HNF4A_ChIP1_01_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand

bamutils filter Aligned_HNF4A_ChIP1_02.bam  \
HNF4A_ChIP1_02_BL.bam \
-excludebed /proj/uppstore2018110/Chris/ChIP_Seq/191129_ChIP_Seq_analysis/mm10-blacklist.v2.bed  nostrand