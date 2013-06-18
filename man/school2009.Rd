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
school2009[1:5,1:5]
head(school2009dict$colnames)
head(school2009dict$CNT)

# merge of school and student data
means <- unclass(by(
    student2009[,c("PV1MATH","W_FSTUWT")], 
    list(student2009[,"CNT"],student2009[,"SCHOOLID"]), 
    function(x) weighted.mean(x[,1], x[,2])))

country.school.means <- na.omit(as.data.frame(as.table(means)))
boxplot(Freq~Var1, data=country.school.means, 
    horizontal=T, las=1, at=rank(tapply(country.school.means$Freq, country.school.means$Var1, mean)), pch='.')

}
\keyword{datasets}
