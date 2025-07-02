my_list <- list("R Programming", 42, TRUE, c(1, 2, 3))
print(my_list) #create

print(my_list[[1]])  
print(my_list[[4]][2])  #access

my_list[[2]] <- 100  
print(my_list)  #modify


my_list <- NULL
print(my_list)  #delete
