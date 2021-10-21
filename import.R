#Import external data into R data frame

install.packages("haven")
install.packages("readxl")
install.packages("vroom")

import <- function(file, ...) {
  
  if (missing(file)){
    file <- file.choose()
    print(file)
    return()
  }
  
  #get file information
  file <- tolower(file)
  basename <- basename(file)
  extension <-tools::file_ext(file)
  
  #import data based on file extension
  df <- switch(extension,
               "sas7bdat" = haven::read_sas(file, ...),
               "xslx"     = readxl::read_excel(file, ...),
               "xls"      = readxl::read_excel(file, ...),
               "sav"      = haven::read_spss(file, ...),
               "dta"      = haven::read_stata(file, ...),
               vroom::vroom(file, ...)
               )
  
  return(df)
}

email <- import("exceldata.xlsx")

spec("email")



data(mtcars)

table(mtcars$cyl)


mtcars$cyl <- as.factor(mtcars$cyl)
table(mtcars$cyl)
  
mtcars$cyl <- as.numeric(as.character(mtcars$cyl))
table(mtcars$cyl)

"cow" < 1


data(mtcars)
fit <- lm(mpg ~ wt, data=mtcars)


dif <-  data.frame(difference = mtcars$mpg - fit$fitted.values,
                   mpg = mtcars$mpg, fitted.values = fit$fitted.values,
                   residuals =fit$residuals)

dif <- dif[ ,order(names(dif)) ]

dif2 <- dif[1:5,]
dif2$difference <- NULL

print(dif2)

names <- names(dif2)

mpg <- mtcars$mpg 
mpg2 <- c(mpg$, mpg$names[2], mpg$names[3], mpg$names[4], mpg$names[5])

mtcars2 <- mtcars$""

