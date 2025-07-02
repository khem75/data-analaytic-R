# Install if not already
install.packages("ggplot2")
install.packages("caret")   # for performance metrics
install.packages("e1071")   # caret dependency

# Load libraries
library(ggplot2)
library(caret)

data(mtcars)
head(mtcars)

# We'll use 'mpg' as the target and 'wt', 'hp', 'disp' as predictors
model_data <- mtcars[, c("mpg", "wt", "hp", "disp")]

# Build the model
model <- lm(mpg ~ wt + hp + disp, data = model_data)

# Summary of the model
summary(model)

# Predict on the training data itself
predictions <- predict(model, model_data)

# Actual vs Predicted
comparison <- data.frame(Actual = model_data$mpg, Predicted = predictions)
print(comparison)

# Calculate RMSE and R-squared
postResample(predictions, model_data$mpg)


ggplot(comparison, aes(x = Actual, y = Predicted)) +
  geom_point(color = "blue", size = 3) +
  geom_abline(slope = 1, intercept = 0, color = "red", linetype = "dashed") +
  labs(title = "Actual vs Predicted MPG", x = "Actual MPG", y = "Predicted MPG") +
  theme_minimal()


