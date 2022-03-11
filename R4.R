## Reading in data
mydata<-read.csv(file.choose(),header=T) ##SENNICDATA

mydata
head(mydata)
tail(mydata)
class(mydata)
nrow(mydata)
ncol(mydata)
names(mydata)
x1
mydata$x1
mydata$x2
mean(x1)

sum(as.numeric(mydata$y>10.24 | mydata$y==10.24))/length(mydata$y)
hist(mydata$x5,probability=T)
plot(density(mydata$x1))
xaa<-mydata$x1-mydata$x4
attach(mydata)
fit<-lm(y~x1+xaa)
fit$coefficients
summary(fit)




plot(mydata$x1,mydata$y,las=1)
plot(mydata$x2,mydata$y,las=1)
cor(mydata$x1,mydata$y)
halfdata<-mydata[1:10,1:3]
nrow(halfdata)
ncol(halfdata)
class(mydata)
attach(halfdata)
plot(x1,y,las=1)
lines(x1,y)
gg<-cbind(x1)
gg
x1[order(x1)]
gg<-cbind(x1[order(x1)],y[order(x1)])
gg
halfdata
gg[,1]
gg[,2]
gg[,3]
plot(x1,y,las=1)
lines(gg[,1],gg[,2])
box(lwd=3)

halfdata*2
halfdata-halfdata
###Mathematical operations work well with dataframes...
as.matrix(halfdata)-as.matrix(halfdata)
mathalfdata<-as.matrix(halfdata)
class(mathalfdata)
mathalfdata*2
mathalfdata[,2]
halfdata[,2]
length(halfdata$x1)
getwd()
setwd()
mydata<-read.csv(file.choose(),header=T) ##SENNICDATA
attach(mydata)
mean(x2)
x2
summary(x2)
is.numeric(x2)
vv<-as.numeric(x2>4)
x2
vv
vv<-as.numeric(x2>4 | x2==4)
vv
vv<-as.numeric(x2==4)
vv


