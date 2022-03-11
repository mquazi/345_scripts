
#Here we will learn how to get probabilities for distributions. 
set.seed(2020) ## generates same random numbers 

dbinom(4,size=20,prob=0.3)
dbinom(0,size=20,prob=0.3)+dbinom(1,size=20,prob=0.3)+
dbinom(2,size=20,prob=0.3)+dbinom(3,size=20,prob=0.3)+
dbinom(4,size=20,prob=0.3)
pbinom(4,size=20,prob=0.3)##cdf at 4

ppois(4,lambda=2)##cdf at 4
ppois(4,lambda=2,lower=FALSE)
ppois(4,lambda=2)+ppois(4,lambda=2,lower=FALSE)


x<-runif(10000,1,5)
hist(x)
mean(x)
hist(x,nclass=5,prob=T)
plot(density(x))

pexp(2,rate=1/3)##cdf at 2
x<-rexp(10000,5)
mean(x)
hist(x,nclass=100)
y<-seq(0,1,0.01)
yy<-dexp(y,rate=5)
plot(yy,type="l",lwd=2) ##type="n" or "l"......
points(yy,col="blue",pch=17) #pch=......

y<-seq(0,1,0.01)
yyy<-pexp(y,rate=5)
plot(yyy)


pnorm(43, mean=23, sd=15.2)
x<-rnorm(10000,1,5) ### N(1,5^2)
mean(x)
var(x)
hist(x)
hist(x,nclass=100,probability=T)
plot(density(x))
pnorm(2.6,0,1)-pnorm(-0.6,0,1) ## P(Z < 2.6)-P(Z < -0.6)
pnorm(2.6,0,1) 
1-pnorm(0.53,0,1) ## 1-P(Z < 0.53) = P(Z > 0.53) 



2*(1-pt(1.67,24)) ##2*(1-P(T < 1.67))=2*P(T > 1.67)
x<-rt(10000,12) ### t with df=(12)
mean(x) ### E(X)=0 for t distribution
var(x) ### Var(X)=df/(df-2)
hist(x) 
hist(x,nclass=5,probability=T)
plot(density(x))




