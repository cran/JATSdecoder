#' get.tables
#'
#' Extracts HTML tables as vector of tables.
#' @param x HTML file or html text.
#' @seealso \code{\link[JATSdecoder]{JATSdecoder}} for simultaneous extraction of meta-tags, abstract, sectioned text and reference list.
#' @return Character vector with extracted table in html coding.
#' @export

get.tables<-function(x){
  # run prechecks or readLines(x) if x is file
  x<-preCheck(x)
  
  tables<-character(0)
if(sum(grep("</table>",x))>0){
# split lines with table
tables<-paste(x,collapse=" ")
tables<-unlist(strsplit2(tables,"<table>|<table frame","before"))
tables<-unlist(strsplit2(tables,"</table>","after"))
# select lines with </caption>
tables<-grep("<table>|<table frame|</table>",tables,value=TRUE)
} 
return(unlist(tables))
}
