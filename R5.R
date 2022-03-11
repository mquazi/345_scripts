## Regression SENNICDATA
mydata<-read.csv(file.choose(),header=T)
attach(mydata)
View(mydata)
names(mydata)
nrow(mydata)
ncol(mydata)
cor(mydata)
cor(y,x1)


fit1<-lm(y~x1)
summary(fit1)
anova(fit1)
fit1$coefficients
fit1$residuals ###e=y-yhat
fit1$fitted.values
plot(fit1)
plot(x1,y)



fit2<-lm(y~x1+x2+x3+x4+x5+x6+x7+x8)
summary(fit2)
fit2$coefficients
resid<-fit2$residuals
fits<-fit2$fitted.values
par(mfrow=c(2,2))
plot(fit2)
par(mfrow=c(1,1))
plot(fits,resid)




