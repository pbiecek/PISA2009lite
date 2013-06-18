\name{school2009}
\alias{school2009}
\alias{school2009dict}
\docType{data}
\title{Date from school questionnaire PISA 2009}
\description{
  The english version of school questionnaire PISA 2009 is avaliable here \code{http://pisa2009.acer.edu.au/downloads/PISA09_School_questionnaire.pdf}.

  There is 18641 rows/schools and 247 columns/variables.

  The \code{school2009} dataset is imported from this file \code{http://pisa2009.acer.edu.au/downloads/INT_SCQ09_Dec11.zip}.

  The codebook for this dataset is avaliable here \code{http://pisa2009.acer.edu.au/downloads/Codebook_SCQ09_DEC11.pdf}.
  
  The variable names are avaliable in the named vector \code{school2009dict$colnames}.
  
  The dictionaries for \code{school2009} data set are avaliable as list of named vectors \code{school2009}.
}
\usage{data(school2009)}
\references{
  http://pisa2009.acer.edu.au/downloads.php
}
\author{
 Dataset created by OECD, transformed by Przemyslaw Biecek
}
\seealso{\code{\link{student2009}}, \code{\link{item2009}}, \code{\link{parent2009}}}
\examples{
library(PISA2009lite)

# first few rows
school2009[1:5,1:10]
head(school2009dict$colnames)
head(school2009dict$CNT)

# averages in MATH, based on PV1MATH
means <- unclass(by(
    student2009[,c("PV1MATH","W_FSTUWT")], 
    student2009[,"CNT"], 
    function(x) weighted.mean(x[,1], x[,2])))
means <- sort(means)
dotchart(means, pch=19)

# add names with the use of dictionaries
names(means) <- student2009dict$CNT[names(means)]
dotchart(means, pch=19)
}
\keyword{datasets}
