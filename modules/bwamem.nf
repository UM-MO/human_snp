process bwamem {
    input:
        val x
    output:
        val "${x}"
        //path "pyoutputs.txt", emit: pyoutputs

    """
    
    bwa mem ${params.reference}/hg38.fa.gz ${params.output}/${x}/${x}_trim_1.fastq.gz ${params.output}/${x}/${x}_trim_2.fastq.gz > ${params.output}/${x}/aln-se.sam
   
    """
}
