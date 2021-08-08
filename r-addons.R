## ====================================================
## R packages needed not available via mini-conda
## ====================================================

## ____________________________________________________
## Setting-up the source repository
local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cloud.r-project.org"
  options(repos = r)
})
## ____________________________________________________

## ____________________________________________________
## Additional R packages needed by the user (CRAN)
## example: remote
## install.packages("anRpackage")
install.packages("exifr")

## ____________________________________________________

## ____________________________________________________
## Additional R packages needed by the user ()
reticulate::install_miniconda()
reticulate::conda_create('r-reticulate')
devtools::install_github('eagerai/fastai')
fastai::install_fastai(gpu = FALSE, cuda_version = '10', overwrite = FALSE)
## ____________________________________________________
