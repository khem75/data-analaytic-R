# Factor Operations in R

# 1. Create a Factor
colors <- factor(c("Red", "Blue", "Green", "Red"))
print(colors)

# 2. Access Elements
print(colors[2])  # Access second element

# 3. Modify a Factor Element
levels(colors) <- c("Red", "Blue", "Green", "Yellow")  # Add a new level
colors[2] <- "Yellow"  # Change "Blue" to "Yellow"
print(colors)

# 4. Delete a Level from Factor
colors <- factor(colors, levels = c("Red", "Green", "Yellow"))  # Remove "Blue"
print(colors)
