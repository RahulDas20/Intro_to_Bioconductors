library(BiocManager)
options(repos = BiocManager::repositories())
install.packages("BiocManager")
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19", ask = FALSE)

install.packages("path/to/downloaded/BSgenome.Hsapiens.UCSC.hg19_1.4.3.tar.gz", repos = NULL, type = "source")

install.packages("/home/rahul/Desktop/Data Science/Books/BSgenome.Hsapiens.UCSC.hg19_1.4.3.tar.gz")

library(BSgenome.Hsapiens.UCSC.hg19)

BSgenome.Hsapiens.UCSC.hg19

chr11seq <- BSgenome.Hsapiens.UCSC.hg19[["chr11"]]

subseq(chr11seq,start=10^6,width=25) 
