colors <- factor(c("Red", "Blue", "Green", "Red", "Blue"))
print(colors)   #Create

print(colors[1])  # access

levels(colors) <- c("Red", "Blue", "Green", "Yellow")  # modify
print(colors)

colors <- NULL
print(colors)  # delete