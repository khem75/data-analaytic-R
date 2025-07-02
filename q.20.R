# Install required packages
install.packages("FNN")      # For KNN
install.packages("dbscan")   # For DBSCAN
install.packages("ggplot2")  # For visualization

# Load the libraries
library(FNN)
library(dbscan)
library(ggplot2)

# Load a sample dataset (Iris dataset)
data(iris)

# Preview the data
head(iris)


# KNN Anomaly Detection
knn_distances <- knn.dist(iris[, -5], k = 3)  # Calculate distances using 3 neighbors

# Calculate the average distance for each point
average_distance <- rowMeans(knn_distances)

# Set a threshold to define anomalies (e.g., points with a distance greater than a certain value)
threshold_knn <- quantile(average_distance, 0.95)  # 95th percentile

# Mark the anomalies
anomalies_knn <- which(average_distance > threshold_knn)

# Visualize the anomalies (setosa points are normal, while anomalies will be colored differently)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(aes(color = ifelse(1:nrow(iris) %in% anomalies_knn, "Anomaly", "Normal"))) +
  scale_color_manual(values = c("Normal" = "blue", "Anomaly" = "red")) +
  labs(title = "Anomaly Detection using KNN", x = "Sepal Length", y = "Sepal Width") +
  theme_minimal()

# DBSCAN Anomaly Detection
dbscan_model <- dbscan(iris[, -5], eps = 0.5, minPts = 5)

# The points labeled as 0 are considered anomalies (noise)
anomalies_dbscan <- which(dbscan_model$cluster == 0)

# Visualize the anomalies using DBSCAN results
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(aes(color = ifelse(1:nrow(iris) %in% anomalies_dbscan, "Anomaly", "Normal"))) +
  scale_color_manual(values = c("Normal" = "green", "Anomaly" = "red")) +
  labs(title = "Anomaly Detection using DBSCAN", x = "Sepal Length", y = "Sepal Width") +
  theme_minimal()

