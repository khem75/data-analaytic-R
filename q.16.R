# Install if not already
install.packages("ggplot2")
install.packages("cluster")
install.packages("factoextra")  # for elegant clustering visuals

# Load libraries
library(ggplot2)
library(cluster)
library(factoextra)

data(iris)

# Remove the species column (unsupervised learning)
iris_data <- iris[, -5]

fviz_nbclust(iris_data, kmeans, method = "wss") + 
  labs(title = "Elbow Method for Optimal k")

set.seed(123)  # reproducibility
k3 <- kmeans(iris_data, centers = 3, nstart = 25)

# View clustering result
print(k3)
table(k3$cluster, iris$Species)  # compare with actual labels

fviz_cluster(k3, data = iris_data, geom = "point", ellipse.type = "norm") +
  labs(title = "K-Means Clustering (k=3)")

