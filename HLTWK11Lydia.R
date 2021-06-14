#HLT1. create 3 vectors with 5 integers
aa <- c(3, 8,5,6,8)
ba <- c(15,3,16, 1,16)
ca <- c(10,5,11,2,17)

#Combine the three vectors to become a 3×5 matrix
matrix <- cbind(aa,ba,ca)
print (matrix)

#plots a graph
matplot (matrix, type ="o", pch =20, col = 1:3)




#HLT2. create a Data frames which contain details of 5 employees and display the details
                                                 
                                                 
name<-c("David", "Edward", "Peter", "Cynthia", "Lola")
age <- c("34","36","20","29","20")
gender <- c("male", "male", "male", "female", "female")
role <- c("admin_officer", "Deputy_manager", "clerk", "HRM", "coo")
lenght_of_service <- c("5.6", "7", "2", "5", "7")
frame <- data.frame(name, age, gender, role, lenght_of_service)
print(frame)



#HLT3. plot a graph using the qplot function.
#install.packages("ggplot2", dependencies = TRUE)

x <- 1:20
y <- x^2  #uses the x value above to do the calculation 

library(ggplot2)

#qplot(x,y, geom=c("point", "line")) # geom is a function that draws lines 

qplot(x,y, geom=c("point", "line"), color=I("Red")) 




#HLT4. Create a simple bar plot of five subjects
Scores = c(50, 74, 85, 90, 63)
barplot(Scores,
        main = "Comparing marks of 5 subjects",
        xlab = "Subject",
        ylab = "Scores",
        names.arg = c("Maths","French", "Science", "English", "computer"),
        border="Green",
        col="Red",
        density=10, 
        horiz = FALSE)


#HLTPROJECT
library(ggplot2)

qplot(data = economics, y = unemploy, geom = "histogram", fill= "pop", bins = 30)
?economics
economics

