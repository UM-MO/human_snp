#!/bin/bash
#SBATCH --account=bphl-umbrella
#SBATCH --qos=bphl-umbrella
#SBATCH --job-name=hp_snp
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=25
#SBATCH --mem=100gb
#SBATCH --output=hp.%j.out
#SBATCH --error=hp.%j.err
#SBATCH --time=3-00

module load apptainer

nextflow run hp_snp.nf -params-file params.yaml


