#
# This function extracts information from sav file and save two rda files with data and colnames
#

library(foreign) 

prepare <- function(dataset, name) {
  name2 <- paste(name, "dict",sep="")
  colnames(dataset) <- toupper(colnames(dataset))
  for (i in 1:ncol(dataset))
    if (class(dataset[,i]) == "factor")
      dataset[,i] <- factor(dataset[,i])
  
  dict <- attributes(dataset)$variable.labels
  names(dict) <- toupper(names(dict))
  assign(x=name2, value=dict)
  assign(x=name, value=dataset)
  
  save(list=name2, file=paste(name2, ".rda", sep=""), compression_level=9, compress="xz")
  save(list=name, file=paste(name, ".rda", sep=""), compression_level=9, compress="xz")
}

#
# School and School dict
#
school2009 <- read.spss("sch.sav", to.data.frame=TRUE)
prepare(school2009, "school2009")

#
# Not all students tak all areas
# this is why there are three datasets
#

parent2009 <- read.spss("par.sav", to.data.frame=TRUE)
prepare(parent2009, "parent2009")

item2009 <- read.spss("cogTD.sav", to.data.frame=TRUE)
prepare(item2009, "item2009")

scoredItem2009 <- read.spss("cogs.sav", to.data.frame=TRUE)
prepare(scoredItem2009, "scoredItem2009")


student2009 <- read.spss("stud.sav", to.data.frame=TRUE)
prepare(student2009, "student2009")

student2009$ST09Q01 <- as.factor(PISA2009lite::student2009$ST09Q01)
student2009$ST09Q01[which(as.numeric(as.character(student2009$ST09Q01)) >= 9504)] = NA
student2009$ST13Q01[which(as.numeric(as.character(student2009$ST13Q01)) >= 9504)] = NA

save(student2009, file="student2009.rda", compression_level=9, compress="xz")  


install_github('PISA2009lite', 'pbiecek') 
library(PISA2009lite)


save(item2009, file="item2009.rda", compression_level=9, compress="xz")  
save(scoredItem2009, file="scoredItem2009.rda", compression_level=9, compress="xz")  

