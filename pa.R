install.packages("rpart")
library(rpart)
iris_tree<-rpart(species~.,data = train_set,method = "class")
install.packages()
install.packages("rpart")

install.packages("rpart.plot")

install.packages("caret")
library(caret)
cm<-confusionMatrix(preditions,test)
