# Load required package
install.packages("dplyr")  # Install dplyr if not installed
library(dplyr)

# Step 1: Create a simple data frame
data <- data.frame(
  ID = c(1, 2),
  Age = c(25, NA),  # Missing value in Age
  Salary = c(50000, 55000)  # No missing value in Salary
)

# Step 2: Access elements
print(data)  # Print entire data frame
print(data$Age)  # Access Age column
print(data[1,])  # Access first row
print(data[1,2])  # Access first row, second column

# Step 3: Modify elements
data$Age[2] <- 30  # Update missing Age value
print(data)

# Step 4: Delete a column
data$Salary <- NULL  # Remove Salary column
print(data)

# Step 5: Delete a row
data <- data[-1, ]  # Remove first row
print(data)

# Step 6: Save the modified dataset
write.csv(data, "modified_dataset.csv", row.names = FALSE)
