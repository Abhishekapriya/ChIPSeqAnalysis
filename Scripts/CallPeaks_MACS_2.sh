#!/bin/bash -l
#Date:03092020
#UPPMAX commands (Uppsala Multidisciplinary Center for Advanced Computational Science)
#SBATCH -A snic2016-7-113
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:30:00
#SBATCH -J Abhi_CallPeaks
#SBATCH --mail-type=ALL
#SBATCH --mail-user gau.abhi213@gmail.com

module load bioinfo-tools
module load MACS/2.1.2

cd /proj/uppstore2018110/Chris/Christian_highly_temp/191129_ChIP_Seq_analysis/

# -t : treatment file; -c : control file; -n : name of the string experiment ; --outdir : output directory name; -g : Effective genome size ; -q : The q-value (minimum FDR) cutoff to call significant regions, Default is 0.05;
#effective genome size taken from deeptools documentation (GRCm38) https://deeptools.readthedocs.io/en/develop/content/feature/effectiveGenomeSize.html. They calculated this using the khmer program and unique-kmers.py 


macs2 callpeak -t CEBPA_ChIP1_01_psort_BL_mkdup_mum.bam CEBPA_ChIP1_02_psort_BL_mkdup_mum.bam CEBPA_ChIP1_03_psort_BL_mkdup_mum.bam -c /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_CEBPA_ChIP1 -g 2308125349 -q 0.05

macs2 callpeak -t CEBPA_ChIP2_01_psort_BL_mkdup_mum.bam CEBPA_ChIP2_02_psort_BL_mkdup_mum.bam CEBPA_ChIP2_03_psort_BL_mkdup_mum.bam -c /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_CEBPA_ChIP2 -g 2308125349 -q 0.05

macs2 callpeak -t HNF1A_ChIP1_01_psort_BL_mkdup_mum.bam HNF1A_ChIP1_02_psort_BL_mkdup_mum.bam HNF1A_ChIP1_03_psort_BL_mkdup_mum.bam -c /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_HNF1A -g 2308125349 -q 0.05

macs2 callpeak -t HNF4A_ChIP1_01_psort_BL_mkdup_mum.bam HNF4A_ChIP1_02_psort_BL_mkdup_mum.bam -c /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_HNF4A -g 2308125349 -q 0.05

macs2 callpeak -t CEBPA_ChIP1_01_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_CEBPA_ChIP1_01 -g 2308125349 -q 0.05

macs2 callpeak -t CEBPA_ChIP1_02_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_CEBPA_ChIP1_02 -g 2308125349 -q 0.05

macs2 callpeak -t CEBPA_ChIP1_03_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_CEBPA_ChIP1_03 -g 2308125349 -q 0.05

macs2 callpeak -t CEBPA_ChIP2_01_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_CEBPA_ChIP2_01 -g 2308125349 -q 0.05

macs2 callpeak -t CEBPA_ChIP2_02_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_CEBPA_ChIP2_02 -g 2308125349 -q 0.05

macs2 callpeak -t CEBPA_ChIP2_03_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_CEBPA_ChIP2_03 -g 2308125349 -q 0.05

macs2 callpeak -t HNF1A_ChIP1_01_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_HNF1A_01 -g 2308125349 -q 0.05

macs2 callpeak -t HNF1A_ChIP1_02_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_HNF1A_02 -g 2308125349 -q 0.05

macs2 callpeak -t HNF1A_ChIP1_03_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_HNF1A_03 -g 2308125349 -q 0.05

macs2 callpeak -t HNF4A_ChIP1_01_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_HNF4A_01 -g 2308125349 -q 0.05

macs2 callpeak -t HNF4A_ChIP1_02_psort_BL_mkdup_mum.bam -c  /crex/proj/sllstore2017022/Abhi_folder/Data/FoxA1_2/5_Multimappers/Input_2_psort_BL_mkdup_mum.bam -n MACS2_PeakCalling --outdir MACS2_HNF4A_02 -g 2308125349 -q 0.05
