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
remotes::install_github("rbchan/unmarked")
install.packages("exifr")
install.packages("cvms")

remotes::install_version("reticulate", version = "1.21", repos = "http://cran.us.r-project.org")

reticulate::use_condaenv("computorbuild")
remotes::install_github('eagerai/fastai')
fastai::install_fastai(gpu = FALSE, cuda_version = '10', overwrite = FALSE)


