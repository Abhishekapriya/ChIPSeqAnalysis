#!/bin/bash -l
#Date:03092020
#UPPMAX commands (Uppsala Multidisciplinary Center for Advanced Computational Science)
#SBATCH -A snic2016-7-113
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 3:00:00
#SBATCH -J Abhi_BamCoverage
#SBATCH --mail-type=ALL
#SBATCH --mail-user gau.abhi213@gmail.com

cd /proj/sllstore2017022/Abhi_folder/Data/Mapping

module load bioinfo-tools
module load deepTools/3.3.2

# --bam : BAM file to process; --outFileName : output file name;
# --effectiveGenomeSIze : The effective genome size is the portion of the genome that is mappable; 
#effective genome size taken from deeptools documentation (GRCm38) https://deeptools.readthedocs.io/en/develop/content/feature/effectiveGenomeSize.html. They calculated this using the khmer program and unique-kmers.py 
# --extendReads : This parameter allows the extension of reads to fragment size; --binSize : Size of the bins, in bases, for the output of the bigwig/bigwig file. (Default: 50)
# --normlaizeUsing : Use one of the entered methods to normalize the number of reads per bin. BPM = Bins per Million mapped reads
#--outFileFormat : Output file type. Choices are "bigwig" oe "bigwig"

bamCoverage --bam CEBPA_ChIP1_01_psort_BL_mkdup_mum.bam --outFileName CEBPA_ChIP1_01.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

 bamCoverage --bam CEBPA_ChIP1_02_psort_BL_mkdup_mum.bam --outFileName CEBPA_ChIP1_02.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

 bamCoverage --bam CEBPA_ChIP1_03_psort_BL_mkdup_mum.bam --outFileName CEBPA_ChIP1_03.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

bamCoverage --bam CEBPA_ChIP2_01_psort_BL_mkdup_mum.bam --outFileName CEBPA_ChIP2_01.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

bamCoverage --bam CEBPA_ChIP2_02_psort_BL_mkdup_mum.bam --outFileName CEBPA_ChIP2_02.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

bamCoverage --bam CEBPA_ChIP2_03_psort_BL_mkdup_mum.bam --outFileName CEBPA_ChIP2_03.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

bamCoverage --bam HNF1A_ChIP1_01_psort_BL_mkdup_mum.bam --outFileName HNF1A_ChIP1_01.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

bamCoverage --bam HNF1A_ChIP1_02_psort_BL_mkdup_mum.bam --outFileName HNF1A_ChIP1_02.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

 bamCoverage --bam HNF1A_ChIP1_03_psort_BL_mkdup_mum.bam --outFileName HNF1A_ChIP1_03.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

bamCoverage --bam HNF4A_ChIP1_01_psort_BL_mkdup_mum.bam --outFileName HNF4A_ChIP1_01.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig

bamCoverage --bam HNF4A_ChIP1_02_psort_BL_mkdup_mum.bam --outFileName HNF4A_ChIP1_02.bw \
 --effectiveGenomeSize 2308125349 --extendReads 75 --binSize 50 \
 --normalizeUsing BPM --outFileFormat bigwig