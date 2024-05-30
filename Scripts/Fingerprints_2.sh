#!/bin/bash -l
#Date:03092020
#UPPMAX commands (Uppsala Multidisciplinary Center for Advanced Computational Science)
#SBATCH -A snic2016-7-113
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:30:00
#SBATCH -J Abhi_BamFingerprint
#SBATCH --mail-type=ALL
#SBATCH --mail-user gau.abhi213@gmail.com


cd /proj/sllstore2017022/Abhi_folder/Data/Mapping/MultiMappers

module load bioinfo-tools
module load deepTools/3.3.2

plotFingerprint \
-b CEBPA_ChIP1_01_psort_BL_mkdup_mum.bam CEBPA_ChIP1_02_psort_BL_mkdup_mum.bam CEBPA_ChIP1_03_psort_BL_mkdup_mum.bam CEBPA_ChIP2_01_psort_BL_mkdup_mum.bam CEBPA_ChIP2_02_psort_BL_mkdup_mum.bam CEBPA_ChIP2_03_psort_BL_mkdup_mum.bam \
--labels CEBPA_ChIP1_01 CEBPA_ChIP1_02 CEBPA_ChIP1_03 CEBPA_ChIP2_01 CEBPA_ChIP2_02 CEBPA_ChIP2_03 \
--minMappingQuality 30 --skipZeros \
--numberOfSamples 50000 \
-T "Fingerprints of CEBPA in Mouse Liver"  \
--plotFile Fingerprints_CEBPA.pdf \
--outRawCounts Fingerprints_CEBPA.tab

plotFingerprint \
-b HNF1A_ChIP1_01_psort_BL_mkdup_mum.bam HNF1A_ChIP1_02_psort_BL_mkdup_mum.bam HNF1A_ChIP1_03_psort_BL_mkdup_mum.bam \
--labels HNF1A_ChIP1_01 HNF1A_ChIP1_02 HNF1A_ChIP1_03 \
--minMappingQuality 30 --skipZeros \
--numberOfSamples 50000 \
-T "Fingerprints of HNF1A in Mouse Liver"  \
--plotFile Fingerprints_HNF1A.pdf \
--outRawCounts Fingerprints_HNF1A.tab

plotFingerprint \
-b HNF4A_ChIP1_01_psort_BL_mkdup_mum.bam HNF4A_ChIP1_02_psort_BL_mkdup_mum.bam \
--labels HNF4A_ChIP1_01 HNF4A_ChIP1_02 \
--minMappingQuality 30 --skipZeros \
--numberOfSamples 50000 \
-T "Fingerprints of HNF4A in Mouse Liver"  \
--plotFile Fingerprints_HNF4A.pdf \
--outRawCounts Fingerprints_HNF4A.tab


