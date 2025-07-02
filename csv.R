# Load required package
install.packages("dplyr")  # Install dplyr if not installed
install.packages("tidyr")  # Install tidyr if not installed
library(dplyr)
library(tidyr)

# Step 1: Create a dataset with missing values
data <- data.frame(
  ID = c(1, 2, 3, 4),
  Age = c(25, NA, 30, 28),  # Missing value in Age
  Salary = c(50000, 55000, NA, 60000)  # Missing value in Salary
)

# Step 2: Save dataset as a CSV file
write.csv(data, "dataset.csv", row.names = FALSE)

# Step 3: Impute missing values
# a) Mean Imputation
data$Age[is.na(data$Age)] <- mean(data$Age, na.rm = TRUE)
data$Salary[is.na(data$Salary)] <- mean(data$Salary, na.rm = TRUE)

# b) Median Imputation
data$Age[is.na(data$Age)] <- median(data$Age, na.rm = TRUE)
data$Salary[is.na(data$Salary)] <- median(data$Salary, na.rm = TRUE)

# c) Mode Imputation (Custom Function)
mode_function <- function(x) {
  unique_x <- unique(x[!is.na(x)])
  return(unique_x[which.max(tabulate(match(x, unique_x)))])
}
data$Age[is.na(data$Age)] <- mode_function(data$Age)
data$Salary[is.na(data$Salary)] <- mode_function(data$Salary)

# d) Upward Filling (Replace NA with previous value)
data <- data %>% fill(Age, Salary, .direction = "up")

# e) Downward Filling (Replace NA with next value)
data <- data %>% fill(Age, Salary, .direction = "down")

# Step 4: Save the imputed dataset
write.csv(data, "imputed_dataset.csv", row.names = FALSE)

# Print final dataset
print(data)
