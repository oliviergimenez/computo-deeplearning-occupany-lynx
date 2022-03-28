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

#install.packages("remotes")
#remotes::install_deps(dependencies =  TRUE)
#install.packages("reticulate")
reticulate::install_miniconda()
reticulate::conda_create('r-reticulate', python_version = '3.9')
# #devtools::install_github('eagerai/fastai')
install.packages("fastai")
# fastai::install_fastai()
remotes::install_version("reticulate", version = "1.21", repos = "http://cran.us.r-project.org")
fastai::install_fastai(gpu = FALSE, cuda_version = '10', overwrite = FALSE)


