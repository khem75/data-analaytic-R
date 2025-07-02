# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(corrplot)
library(GGally)

summary(mtcars)
str(mtcars)

ggplot(mtcars, aes(x=mpg)) + 
  geom_histogram(fill="steelblue", bins=10) +
  theme_minimal() + 
  labs(title="Distribution of Miles per Gallon")

ggplot(mtcars, aes(x=factor(cyl))) + 
  geom_bar(fill="darkgreen") +
  labs(title="Frequency of Cylinders", x="Cylinders")

ggplot(mtcars, aes(x=factor(am), y=mpg)) + 
  geom_boxplot(fill="orange") +
  labs(title="MPG by Transmission Type", x="Transmission (0 = Auto, 1 = Manual)")

ggplot(mtcars, aes(x=hp, y=mpg)) +
  geom_point(color="red") +
  geom_smooth(method="lm", se=FALSE) +
  labs(title="Horsepower vs MPG")

corrplot(cor(mtcars), method="color", tl.cex=0.8)

mtcars %>%
  group_by(cyl) %>%
  summarise(AvgMPG = mean(mpg)) %>%
  ggplot(aes(x=factor(cyl), y=AvgMPG)) +
  geom_col(fill="purple") +
  labs(title="Average MPG by Cylinder Count", x="Cylinders", y="Avg MPG")


