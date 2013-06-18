\name{parent2009}
\alias{parent2009}
\alias{parent2009dict}
\docType{data}
\title{Data from school questionnaire PISA 2009}
\description{
  The english version of parent questionnaire PISA 2009 is avaliable here \code{http://pisa2009.acer.edu.au/downloads/PISA09_Parent_questionnaire.pdf}.

  There is 106287 rows/parents and 90 columns/variables.

  The \code{parent2009} dataset is imported from this file \code{http://pisa2009.acer.edu.au/downloads/INT_PAR09_DEC11.zip}.

  The codebook for this dataset is avaliable here \code{http://pisa2009.acer.edu.au/downloads/Codebook_PAR09_DEC11.pdf}.
  
  The variable names are avaliable in the named vector \code{parent2009dict$colnames}.
  
  The dictionaries for \code{parent2009} data set are avaliable as list of named vectors \code{parent2009dict}.
}
\usage{data(school2009)}
\references{
  http://pisa2009.acer.edu.au/downloads.php
}
\author{
 Dataset created by OECD, transformed by Przemyslaw Biecek
}
\seealso{\code{\link{student2009}}, \code{\link{item2009}}, \code{\link{school2009}}}
\examples{
library(PISA2009lite)

# first few rows
parent2009[1:5,1:5]
head(parent2009dict$colnames)
head(parent2009dict$CNT)

barplot(table(parent2009$PQMISCED), las=1)

}
\keyword{datasets}
