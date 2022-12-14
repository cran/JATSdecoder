% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_text2num.R
\name{text2num}
\alias{text2num}
\title{text2num}
\usage{
text2num(
  x,
  exponent = TRUE,
  percentage = TRUE,
  fraction = TRUE,
  e = TRUE,
  product = TRUE,
  words = TRUE
)
}
\arguments{
\item{x}{text string to process.}

\item{exponent}{Logical. If TRUE values with exponent are converted to a digit representation.}

\item{percentage}{Logical. If TRUE percentages are converted to a digit representation.}

\item{fraction}{Logical. If TRUE fractions are converted to a digit representation.}

\item{e}{Logical. If TRUE values denoted with 'number e+number' (e.g. '2e+2') or 
number*10^number are converted to a digit representation.}

\item{product}{Logical. If TRUE values products are converted to a digit representation.}

\item{words}{Logical. If TRUE written numbers are converted to a digit representation.}
}
\value{
Character. Text with unified digital representation of numbers.
}
\description{
Converts special annotated number and written numbers in a text string to a fully digit representation.
Can handle numbers with exponent, fraction, percent, e+num, products and written representation (e.g. 'fourtys-one') of all absolut numbers up to 99,999 (Note: gives wrong output for higher spelled numbers). Process is performed in the same order as its arguments.
}
\examples{
x<-c("numbers with exponent: 2^2, -2.5^2, (-3)^2, 6.25^.5, .2^-2 text.",
     "numbers with percentage: 2\%, 15 \%, 25 percent.",
     "numbers with fractions: 1/100, -2/5, -7/.1",
     "numbers with e: 10e+2, -20e3, .2E-2, 2e4",
     "numbers as products: 100*2, -20*.1, 2*10^3",
     "written numbers: twenty-two, one hundred fourty five, fifteen percent",
     "mix: one hundred ten is not 1/10 is not 10^2 nor 10\%/5")
text2num(x)
}
