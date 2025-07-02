# Install (if not already)
install.packages("ggplot2")
install.packages("corrplot")
install.packages("GGally")

# Load libraries
library(ggplot2)
library(corrplot)
library(GGally)

data(mtcars)
head(mtcars)
str(mtcars)


# Compute correlation matrix
cor_matrix <- cor(mtcars)

# Visualize the correlation matrix
corrplot(cor_matrix, method = "circle", type = "upper", tl.col = "black", tl.cex = 0.8)

ggpairs(mtcars[, c("mpg", "hp", "wt", "disp", "qsec")])

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Weight vs MPG", x = "Weight (1000 lbs)", y = "Miles per Gallon") +
  theme_minimal()
