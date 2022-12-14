% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/character_get.method.R
\name{get.method}
\alias{get.method}
\title{get.method}
\usage{
get.method(x, add = NULL, cermine = FALSE)
}
\arguments{
\item{x}{text to extract statistical methods from.}

\item{add}{possible new end words of method as vector.}

\item{cermine}{Logical. If TRUE CERMINE specific letter conversion will be performed.}
}
\value{
Character. Vector with identified statistical method/s
}
\description{
Extracts statistical methods mentioned in text.
}
\examples{
x<-"We used multiple regression analysis and 
two sample t tests to evaluate our results."
get.method(x)
}
\seealso{
\code{\link[JATSdecoder]{study.character}} for extracting multiple study characteristics at once.
}
