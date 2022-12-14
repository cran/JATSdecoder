% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/JATS_get.editor.R
\name{get.editor}
\alias{get.editor}
\title{get.editor}
\usage{
get.editor(x, role = FALSE, short.names = FALSE, letter.convert = FALSE)
}
\arguments{
\item{x}{a NISO-JATS coded XML file or text.}

\item{role}{Logical. If TRUE adds role to editor name, if available.}

\item{short.names}{Logical. If TRUE reduces fully available first names to one letter abbreviation.}

\item{letter.convert}{Logical. If TRUE converts hexadecimal and HTML coded characters to Unicode.}
}
\value{
Character string with the extracted editor name/s.
}
\description{
Extracts editor tag from NISO-JATS coded XML file or text as vector of editors.
}
\seealso{
\code{\link[JATSdecoder]{JATSdecoder}} for simultaneous extraction of meta-tags, abstract, sectioned text and reference list.
}
