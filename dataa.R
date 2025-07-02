
library(dplyr)   # Data manipulation
library(tidyr)   # Data cleaning
library(ggplot2) # Data visualization
library(mice)    # Missing value imputation


# Load dataset (replace with your actual dataset)
df <- read.csv("dataset.csv", stringsAsFactors = FALSE)

# View the first few rows
head(df)

# Check structure of the dataset
str(df)

# Summary statistics
summary(df)
