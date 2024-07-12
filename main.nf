#!/usr/bin/env nextflow
mode = 'run'
params.range = 100

process downloadNCBI {
  output:
    stdout
  script:
    if( mode == 'update' )
      """
      #!/usr/bin/Rscript
      
      library("taxizedb")
      
      db_download_ncbi(overwrite=TRUE)
      print("db_status <- 'updated'")
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
    input:
    stdin

    output:
    stdout

    """
    #!/usr/bin/env python3
    import sys

    x = 0
    y = 0
    lines = 0
    print(sys.argv)

    """
}

workflow {
    downloadNCBI | pyTask | view
}
