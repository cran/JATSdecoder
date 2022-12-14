% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/JATS_get.text.R
\name{get.text}
\alias{get.text}
\title{get.text}
\usage{
get.text(
  x,
  sectionsplit = "",
  grepsection = "",
  letter.convert = TRUE,
  greek2text = FALSE,
  sentences = FALSE,
  paragraph = FALSE,
  cermine = "auto",
  rm.table = TRUE,
  rm.formula = TRUE,
  rm.xref = TRUE,
  rm.media = TRUE,
  rm.graphic = TRUE,
  rm.ext_link = TRUE
)
}
\arguments{
\item{x}{a NISO-JATS coded XML file or text.}

\item{sectionsplit}{search patterns for section split (forced to lower case), e.g. c("intro", "method", "result", "discus").}

\item{grepsection}{search pattern to reduce text to specific section namings only.}

\item{letter.convert}{Logical. If TRUE converts hexadecimal and HTML coded characters to Unicode.}

\item{greek2text}{Logical. If TRUE some greek letters and special characters will be unified to textual representation (important to extract stats).}

\item{sentences}{Logical. IF TRUE text is returned as sectioned list with sentences.}

\item{paragraph}{Logical. IF TRUE "<New paragraph>" is added at the end of each paragraph to enable manual splitting at paragraphs.}

\item{cermine}{Logical. If TRUE CERMINE specific error handling and letter conversion will be applied. If set to "auto" file name ending with 'cermxml$' will set cermine=TRUE.}

\item{rm.table}{Logical. If TRUE removes <table> tag from text.}

\item{rm.formula}{Logical. If TRUE removes <formula> tags.}

\item{rm.xref}{Logical. If TRUE removes <xref> tag (citing) from text.}

\item{rm.media}{Logical. If TRUE removes <media> tag from text.}

\item{rm.graphic}{Logical. If TRUE removes <graphic> and <fig> tag from text.}

\item{rm.ext_link}{Logical. If TRUE removes <ext link> tag from text.}
}
\value{
List with two elements. 1: Character vector with section title/s, 2: Character vector with floating text of sections or list with vector of sentences per section/s if sentences=TRUE.
}
\description{
Extracts main textual content from NISO-JATS coded XML file or text as sectioned text.
}
\seealso{
\code{\link[JATSdecoder]{JATSdecoder}} for simultaneous extraction of meta-tags, abstract, sectioned text and reference list.
}
