\name{student2009}
\alias{student2009}
\alias{student2009dict}
\docType{data}
\title{Date from student questionnaire PISA 2009}
\description{
  The english version of student questionnaire PISA 2009 is avaliable here \code{http://pisa2009.acer.edu.au/downloads/PISA09_Student_questionnaire.pdf}.

  The \code{student2009} dataset is imported from this file \code{http://pisa2009.acer.edu.au/downloads/INT_STQ09_DEC11.zip}.

  The codebook for this dataset is avaliable here \code{http://pisa2009.acer.edu.au/downloads/Codebook_STQ09_DEC11.pdf}.
  
  The variable names are avaliable in the named vector \code{student2009dict$colnames}.
  
  The dictionaries for \code{student2009} data set are avaliable as list of named vectors \code{student2009}.
}
\usage{data(student2009)}
\references{
  http://pisa2009.acer.edu.au/downloads.php
}
\author{
 Dataset created by OECD, transformed by Przemyslaw Biecek
}
\seealso{\code{\link{school2009}}, \code{\link{item2009}}, \code{\link{parent2009}}}
\examples{
library(PISA2009lite)
student2009[1:5,1:10]
head(student2009dict$colnames)
head(student2009dict$CNT)
}
\keyword{datasets}
