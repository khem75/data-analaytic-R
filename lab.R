v <- c(10, 20, 30, 40)
v[2] <- 25  
print(v)  


v <- c(10, 20, 30, 40)
v[c(1, 3)] <- c(15, 35) 
print(v)

v <- c(10, 20, 30)
v[5] <- 50  
print(v) 

v <- c(a = 10, b = 20, c = 30)
names(v)[names(v) == "b"] <- "beta"  
print(v)




v <- c(10, 20, 30)
rm(v)  
print(v)  

v <- c(10, 20, 30)
v <- NULL  
print(v)  

x <- c(1, 2, 3)
y <- c(4, 5, 6)
rm(x, y)  

rm(list = ls())  




m <- matrix(1:9, nrow=3, ncol=3)  
print(m)

m[1,2]   
m[,2]    
m[3,]    


df <- data.frame(
  ID = c(1, 2, 3, 4),
  Name = c("Abhinav", "Binay", "Cheten", "Dinesh"),
  Age = c(25, 30, 28, 22),
  Score = c(90, 85, 88, 75)
)

print(df)  


df$Age         
df[2, 3]       
df[1, ]        
df[, "Score"] 
df[1:2, ]      


my_list <- list(
  Name = "khem",
  Age = 25,
  Scores = c(90, 85, 88),
  Passed = TRUE
)

print(my_list)  

installed.packages("HMISC"")



