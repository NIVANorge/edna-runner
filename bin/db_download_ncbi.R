#!/usr/bin/env Rscript
library("taxizedb")

db_download_ncbi(overwrite=TRUE)
print("db_status <- 'updated'")