
# importR

![](image.jpg)

The goal of importR is to create an R data frame from external data in SAS, SPSS, or Strata binary files, Excel Workbooks, or delimited text files

## Installation

You can install the development version of importR with:

``` r
if(!require("remotes")){
  install.packages("remotes")
  library("remotes"
}
remotes::intall_github("importR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(importR)
mydata <- import()
```

