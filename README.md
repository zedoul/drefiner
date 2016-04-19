refnr
==============================================================================

#### An easy-to-use R package for data refinement

This package provides an easy way to refine data table.
For example, you want to apply complex formulas such as
``(yen.dollar + dollar.yen) / (yen.exchange.rate)``
to data table?
Maintaining those formulas can be hard, and oftenly maintained in Excel sheet,
not R code. The package aims to solve this difficulty, and you can refine any
data table with a formula table.

You can install this package from github with

  ```r
  devtools::install_github("zedoul/refnr")
  ```

You can refine a data table as follows:

  ```r
  head(iris)

  #>     Sepal.Length Sepal.Width Petal.Length Petal.Width Species
  #>   1          5.1         3.5          1.4         0.2  setosa
  #>   2          4.9         3.0          1.4         0.2  setosa
  #>   3          4.7         3.2          1.3         0.2  setosa
  #>   4          4.6         3.1          1.5         0.2  setosa
  #>   5          5.0         3.6          1.4         0.2  setosa
  #>   6          5.4         3.9          1.7         0.4  setosa

  library(refnr)
  formulas <- rbind(c(Name = "Length",
                      Formula = "Sepal.Length + Petal.Length"),
                    c(Name = "Width",
                      Formula = "Sepal.Width + Petal.Width"))
  res <- refnr(iris, formulas)
  head(res)

  #>    Length Width
  #>  1    6.5   3.7
  #>  2    6.3   3.2
  #>  3    6.0   3.4
  #>  4    6.1   3.3
  #>  5    6.4   3.8
  #>  6    7.1   4.3
  ```
