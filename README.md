# human_snp
## Prerequisites
Nextflow is needed. The details of installation can be found at https://github.com/nextflow-io/nextflow.

Python3 is needed. 

Singularity/APPTAINER is needed. The details of installation can be found in https://singularity-tutorial.github.io/01-installation/.

SLURM is optional.

## Recommended conda environment installation
   ```bash
   conda create -n humansnp -c conda-forge python=3.10
   
   ```
   ```bash
   conda activate humansnp
   conda install -c bioconda nextflow
   ```
## Before running
If the referene genomes donot have index, using a command below to generate their index files and to put them in the same directory before running the pipeline.
```bash
bwa index <full path to your genome fasta file> 
```
Or
```bash
singularity exec docker://staphb/bwa:0.7.17 bwa index <full path to your genome fasta file> 
```
Or
```bash
docker run staphb/bwa:0.7.17 bwa index <full path to your genome fasta file> 
```         
## How to run
1. put your data files into directory /fastqs. Your data file's name should look like "JBS22002292_1.fastq.gz", "JBS22002292_2.fastq.gz". 
2. open file "parames.yaml", set the parameters. 
3. get into the top of the pipeline directory, then run 
```bash
sbatch ./daytona_dengue.sh
```
if you use slurm       

Or
```bash
nextflow run hp_snp.nf -params-file params.yaml
```
