# Install if not already
install.packages("rpart")
install.packages("rpart.plot")
install.packages("caret")
install.packages("nnet")   # for multinomial logistic regression

# Load libraries
library(rpart)
library(rpart.plot)
library(caret)
library(nnet)


data(iris)
head(iris)
summary(iris)

set.seed(123)  # for reproducibility

# 80% training, 20% testing
index <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
train_data <- iris[index, ]
test_data <- iris[-index, ]

tree_model <- rpart(Species ~ ., data = train_data, method = "class")
rpart.plot(tree_model)

tree_pred <- predict(tree_model, test_data, type = "class")
confusionMatrix(tree_pred, test_data$Species)

log_model <- multinom(Species ~ ., data = train_data)
summary(log_model)


log_pred <- predict(log_model, test_data)
confusionMatrix(log_pred, test_data$Species)




