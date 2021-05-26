# takes input from the user (name and age) and display the values.
Name <- readline("Enter your name:")
Input.Age <- readline("Enter your age:")
Age <- as.numeric(Input.Age)+ 1
Output <-paste("Hello", Name,"!","you will be", Age, "for your next birthday")


#get the details of the objects in memory
name = "David"
age = 10
height = 5.5
age.friends = c(11,9,10,12)
print (ls())
print ("Details of the object in memory:")
print (ls(str()))
print (ls(decimal()))
print (ls(int()))



#creates a sequence of numbers, finds mean and sum of numbers
print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 60:")
print(mean(20:60))
print("Sum of numbers from 51 to 91:")
print(sum(51:91))


#creates a vector which contains 10 random integer values between -50 and +50
x = sample(-50:50, 10)
print("numbers in vector:")
print("10 random values between -50 and +50:")
print(x)
