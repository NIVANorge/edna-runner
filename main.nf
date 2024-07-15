#!/usr/bin/env nextflow
/*
 * Default pipeline parameters. They can be overriden on the command line eg.
 * given `params.foo` specify on the run command line `--foo some_value`.
 */

params.reads = "$baseDir/data/ggal/ggal_gut_{1,2}.fq"
params.updatedb = false
params.outdir = "results"


log.info """\
 NIVA eDNA   P I P E L I N E
 ===================================
 updatedb    : ${params.updatedb}
 reads        : ${params.reads}
 outdir       : ${params.outdir}
 """

// import modules

process downloadNCBI {
  output:
    stdout
  script:
    if( params.updatedb )
      """
      db_download_ncbi.R
      """
     else
      """
      echo "db_status <- 'not updated'" > db_status
      """
}

/*
 * A Python script which parses the output of the previous script
 */
process pyTask {
    publishDir params.outdir, mode:'copy'
    input:
    stdin

    output:
    file('output.txt')

    script:
    """
    process.py
    """

}

workflow {
    downloadNCBI | pyTask | view
}
