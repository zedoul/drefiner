\name{refnr}
\alias{refnr}
\title{Refining Data Table using a Set of Formulas}
\description{
  \code{refnr()} performs a data refinement through R script eval function using a formula table.}
\usage{
    refnr(.data, formulas)
}
\arguments{
  \item{.data}{A data table}
  \item{formulas}{A data table that describes a set of formulas. It is supposed
to have only two columns: \code{Name} and \code{Formula} respectively.}
}
\examples{
  library(refnr)
  formulas <- rbind(c(Name = "Length",
                      Formula = "Sepal.Length + Petal.Length"),
                    c(Name = "Width",
                      Formula = "Sepal.Width + Petal.Width"))
  res <- refnr(iris, formulas)
}
\author{Kim Seonghyun}
\keyword{refinement}
