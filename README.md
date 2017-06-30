# aspacer

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
![GitHub 0.0.1.9600](https://img.shields.io/badge/GitHub-0.0.1.9600-blue.svg)

ArchiveSpace API R client

[ArchiveSpace API docs](https://github.com/archivesspace/archivesspace/blob/4c26d82b1b0e343b7e1aea86a11913dcf6ff5b6f/docs/slate/source/index.md)

## Package status and installation

[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/ropensci/aspacer?branch=master&svg=true)](https://ci.appveyor.com/project/ropensci/aspacer)
[![Travis-CI Build Status](https://travis-ci.org/ropensci/aspacer.svg?branch=master)](https://travis-ci.org/)
``` r 
library("devtools")
use_coverage(pkg = "aspacer", type = c("codecov", "coveralls"))
```
[![rstudio mirror downloads](http://cranlogs.r-pkg.org/badges/aspacer?color=blue)](https://github.com/metacran/cranlogs.app)

__Installation instructions__
__Development version__


```r
devtools::install_github("ropenscilabs/aspacer")
```


```r
library("aspacer")
```

## setup authentication

Login using `asp_login()`. Before logging in: You can pass in your username and password to the function. We strongly recommend not doing that though, and instead storing your credentials as environment variables, that are then read in within the package like `Sys.getenv('ARCHIVESPACE_USER')`. Store two env vars in your `.Renviron` file (create it if you don't have one): `ARCHIVESPACE_USER` and `ARCHIVESPACE_PWD`. You can alternatively use R options that are stored in your `.Rprofile` file as `archivespace_user` and `archivespace_pwd`, but env vars are preferred. You can 
optionally set env vars during the R session by running `Sys.setenv(ARCHIVESPACE_USER = 'your user name')` and 
`Sys.setenv(ARCHIVESPACE_PWD = 'your password')`, or similarly with R options like 
`options(archivespace_user = 'your user name')` and 
`options(archivespace_pwd = 'your password')` - but these only last for the 
current R session.

You can logout with `asp_logout()`

## Meta

* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
