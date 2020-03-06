library(rpart)
#library(datasets)
library(rpart.plot)
library(dplyr)
library(caret)
library(e1071)

bicis = read.csv2(file = "~/Desktop/TAI/Data/BICICLETAS_2019.csv", header = TRUE)
acc_bicis = read.csv2(file = "~/Desktop/TAI/Data/AccidentesBicicletas_2019.csv", header = TRUE)
summary(acc_bicis)


class(fo <- DISTRITO ~ BICICLETAS) # "formula"
terms(fo)


bicis.tree <- rpart(fo, data = bicis, method = "class")
bicis.tree
prp(bicis.tree, type = 2, extra ="auto", nn = TRUE, branch = 1, varlen = 0, yesno = 2)
