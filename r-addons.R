## ====================================================
## R packages needed not available via mini-conda
## ====================================================

## Setting-up the source repository
local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cloud.r-project.org"
  options(repos = r)
})

## Additional R packages needed by the user (CRAN)
install.packages("exifr")
install.packages("cvms")
remotes::install_github("rbchan/unmarked")
reticulate::install_miniconda()
reticulate::conda_create('r-reticulate')
##remotes::install_github('eagerai/fastai')
install.packages("fastai")
fastai::install_fastai(gpu = FALSE, 
                       cuda_version = '10', 
                       overwrite = FALSE)
