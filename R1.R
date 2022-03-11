# This is the first R tutorial. 
# Here we will learn to read variables into workspace and do some calculations. 
x<-4
x=4
# tells R that x equals 4 but we prefer x<-4 and not x=4
x
# R tells you what x is
y<-c(1,2,3,4,5)
# tells R that y is a vector of integer values 1 through 5
y<-c(1:5) 
# is just another way of reading in integer values 1 through 5
x+y
#adds x and y 
z<-x-y
#subtracts y from x and assigns variable z to the output
z
#R tells you what z is 
s<-seq(1,100,5)
#s is a sequence of every 5th number from 1 to 100. Here seq() is called a function
s
mean(s)
#gives us the mean or average for s
max(s)
min(s)
sd(s)
#standard deviation of s
std.error(s)
#standard error of mean of s, but it says it could not find the function
library(plotrix)
#this will load the required library
std.error(s)
#standard error and standard deviation are different things 
#which we will learn more about
d<-seq(1,50,0.5)
#d is a sequence of numbers from 1 to 50 with increments of 0.5
summary(d)
#this will output a 5-number summary
class(d)
class(y)
#tells us the what structure the variable has
#numeric, matrix, list, dataframe, table are some examples 
ls()
#gives us a list of variables saved in workspace
rm(x)
#deletes x variable from the workspace 
y[3]
#pulls the third value from vector y
d[50]
#pulls 50th value from d
y[-5]
#pulls everything except 5th value

