mat <- matrix(1:9, nrow=3, ncol=3)
print(mat)  #Create

print(mat[1, 2])
print(mat[ ,3])   
print(mat[2, ])   #Access

mat[2, 3] <- 99  
print(mat)    #modify
 
mat <- NULL
print(mat)   #delete