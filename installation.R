#install bio conductors and check version
install.packages("BiocManager")
BiocManager::version()
BiocManager::install("3.15")


# install Bioconductor packages
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19")
BiocManager::install(c("genefilter","geneplotter"))

# load installed packages
library(BSgenome)

library(UCSC)
library(geneplotter)
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19")


BiocManager::install(c("genefu",
                       "COPDSexualDimorphism",
                       "gwascat",
                       "hgu133a.db",
                       "genomicsclass/tissuesGeneExpression"))



# inspect objects, classes and methods
library(Biobase)    # load one of the core Bioconductor package
library(genefu)
data("sig.gene70")
dim(sig.gene70)

head(sig.gene70)[,1:6]

#how many components of the signature have a missing value for the NCBI gene symbol
NAsub <- subset(sig.gene70, NCBI.gene.symbol == NA)

dim(NAsub)

sum(is.na(sig.gene70$NCBI.gene.symbol))
dim(NAsub)

#how many of the members of the 70 gene signature are genes coding for kinase
index <- grep("kinase", sig.gene70$Description)
sig.gene70$Description[index]
