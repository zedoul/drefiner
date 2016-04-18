\name{drefiner}
\alias{drefiner}
\title{Refining data table using a set of formulas}
\description{
  \code{drefiner()} performs a data refinement through R script eval function using a formula table.}
\usage{
    drefiner(.data, formulas)
}
\arguments{
  \item{.data}{A data table}
  \item{formulas}{A data table that describes a set of formulas. It is supposed
to have only two columns: \code{Name} and \code{Formula} respectively.}
}
\examples{
  library(drefiner)
  formulas <- rbind(c(Name = "Length",
                      Formula = "Sepal.Length + Petal.Length"),
                    c(Name = "Width",
                      Formula = "Sepal.Width + Petal.Width"))
  res <- drefiner(iris, formulas)
}  
\author{Kim Seonghyun}
\keyword{refinement}
