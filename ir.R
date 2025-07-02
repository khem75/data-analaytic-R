data(iris)
View(iris)
set.seed(20)
train_index<-sample(1:nrow(iris),nrow(iris)*0.7)
train_index
train_set<-iris[-train_index]
str(test_set)
