#
# demo for real dataset
#
library(PISA2009lite)

# Let's calculate weighted averages in MATH, based on PV1MATH for all countries
means <- unclass(by(
  student2009[,c("PV1MATH","W_FSTUWT")], 
  student2009[,"CNT"], 
  function(x) weighted.mean(x[,1], x[,2])))

# sort them and plot with the dotchart
means <- sort(means)
dotchart(means, pch=19)

# add names with the use of dictionaries,
# here the dictionary for CNT variable is in the PISA2009lite$CNT vectoe
names(means) <- student2009dict$CNT[names(means)]
dotchart(means, pch=19)
