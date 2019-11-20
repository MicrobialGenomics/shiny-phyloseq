################################################################################
# Define list of package names and required versions.
################################################################################
deppkgs = c(phyloseq = "1.16.0",
            biomformat = "1.0.0",
            shiny = "0.13.2",
            shinythemes = "1.0.1",
            ggplot2 = "2.1.0",
            data.table = "1.9.6",
            networkD3 = "0.2.10",
            genefilter = "1.54.0",
            grid = "3.3.0",
            gridExtra = "2.2.1",
            markdown = "0.7.7",
            rmarkdown = "0.9.6",
            png = "0.1.7",
            RColorBrewer = "1.1.2",
            scales = "0.4.0")

################################################################################
# Load packages that must be fully-loaded 
################################################################################
for(i in names(deppkgs)){
  library(i, character.only = TRUE)
  message(i, " package version:\n", packageVersion(i))
}
################################################################################
