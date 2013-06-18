setwd("c:/_Przemek_/PISA2009")

library(devtools)
library(SAScii)
install_github('PISAtools', 'pbiecek')  
library(PISAtools)

# School
school2009 <- extract.data('INT_SCQ09_Dec11.txt', 'INT_SCQ09_SAS_DEC11.sas')
save(school2009 , file="school2009.rda")

school2009dict <- extract.dict("INT_SCQ09_SAS_DEC11.sas")
school2009dict$colnames <-  extract.vardict("INT_SCQ09_SAS_DEC11.sas")
save(school2009dict , file="school2009dict.rda")

# Scored items
scoredItem2009 <- extract.data("INT_COG09_S_DEC11.txt", "INT_COG09_S_SAS_DEC11.sas")
save(scoredItem2009, file="scoredItem2009.rda")

scoredItem2009dict <- extract.dict("INT_COG09_S_SAS_DEC11.sas")
scoredItem2009dict$colnames <-  extract.vardict("INT_COG09_S_SAS_DEC11.sas")
save(scoredItem2009dict , file="scoredItem2009dict.rda")

# items
item2009 <- extract.data("INT_COG09_TD_DEC11.txt", "INT_COG09_TD_SAS_DEC11.sas")
save(item2009, file="item2009.RData")

item2009dict <- extract.dict("INT_COG09_TD_SAS_DEC11.sas")
item2009dict$colnames <-  extract.vardict("INT_COG09_TD_SAS_DEC11.sas")
save(item2009dict , file="item2009dict.rda")

# parent
parent2009 <- extract.data("INT_PAR09_DEC11.txt", "INT_PAR09_SAS_DEC11.sas")
save(parent2009, file="parent2009.RData")

parent2009dict <- extract.dict("INT_PAR09_SAS_DEC11.sas")
parent2009dict$colnames <-  extract.vardict("INT_PAR09_SAS_DEC11.sas")
save(parent2009dict , file="parent2009dict.rda")

# student
student2009 <- extract.data("INT_STQ09_DEC11.txt", "INT_STQ09_SAS_DEC11.sas")
save(student2009, file="student2009.RData")

student2009dict <- extract.dict("INT_STQ09_SAS_DEC11.sas")
student2009dict$colnames <-  extract.vardict("INT_STQ09_SAS_DEC11.sas")
save(student2009dict , file="student2009dict.rda")

