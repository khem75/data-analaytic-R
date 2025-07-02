df <- data.frame(Name = c("khem", "Binod", "Chetan"),
                 Age = c(25, 30, 35),
                 Score = c(90, 85, 88))
print(df)    #create

print(df$Name)    # Access
print(df[2, ])    # Access 
print(df[ ,2]) 

df$Score[2] <- 95  
print(df)   #modify

df <- NULL
print(df)  #delete