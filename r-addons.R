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

# install.packages("remotes")
# remotes::install_deps(dependencies =  TRUE)
# install.packages("reticulate")
# reticulate::install_miniconda()
# reticulate::conda_create('r-reticulate', python_version = '3.9')
# #devtools::install_github('eagerai/fastai')
# install.packages("fastai")
# #fastai::install_fastai()
# fastai::install_fastai(version = '2.0.0',
#                        gpu = FALSE)
