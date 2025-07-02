iris_data <- iris[,1:4]
head(iris_data)

set.seed(123)
kmeans_result <- kmeans(iris_data,centers = 3)

kmeans_result$cluster

table(iris$Species, kmeans_result$cluster)

predict_species <-factor(kmeans_result$cluster, levels=c(1,2,3),label=c("vericolor"))
predict_species

confusionMatrix(predict_species, iris$Species)

iris_with_clusters<-iris
head(iris_with_clusters)

iris_with_clusters$cluster <-as.factor(kmeans_result$cluster)
head(iris_with_clusters)

ggplot