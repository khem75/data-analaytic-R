# Creating a matrix
matrix_data <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
print("Original Matrix:")
print(matrix_data)

# Accessing elements
print("Access specific element (row 1, column 2):")
print(matrix_data[1, 2])

# Modifying an element
matrix_data[2, 3] <- 10
print("Modified Matrix:")
print(matrix_data)

# Deleting a row (excluding row 1)
matrix_data <- matrix_data[-1, ]
print("Matrix after deleting row 1:")
print(matrix_data)

# Deleting a column (excluding column 2)
matrix_data <- matrix_data[, -2]
print("Matrix after deleting column 2:")
print(matrix_data)
