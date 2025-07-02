if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)
if(!require(ggplot2)) install.packages("caret")
library(caret)
data(iris)
View(iris)
iris_bin <-subset(iris, Species %in% c("setosa","versicolor"))
View(iris_bin)
iris_bin$species<- factor(iris_bin$Species)
logit_model <- glm(Species ~ Petal.length + Petal.Width,
                  data = iris_bin,
                  family = "binomial",
                  control = list(maxit=550))
print(summary((logit_model)))


pred_probs <- predict(logit_model, type="response")
pred_probs <- ifelse(prep_probs > 0.5, "versicolor","setosa")
pred_probs <- factor(prep_classes, levels = levels(isir_binspecies))

conf_matrix <- confusionMatrix(pred_probs)


plot_data <-data.frame(
  petal.length=seq(min(iris_bin$Petal.Length) max())
)