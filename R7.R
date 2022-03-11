## Plots and ANOVA

################# Bias plot #####

databias<-read.csv(file.choose(),header=T)
databias
par(mfrow=c(1,1))
plot(databias,main="Bias of fitted values for OLS v WLS for single variable case",
     xlab="Bias for WLS estimator",ylab="Bias for OLS estimator",font.lab=2,pch=16,
     font.main=2,col="red")
box(lwd=2)
abline(0,0,v=0, col="black", lwd=3, lty=3)


### More plots ####
adata<-read.csv(file.choose(),header=T)
attach(adata)

nt<-nrow(adata)
nt
head(adata)
potato<-factor(potato)
regime<-factor(regime)
temp<-factor(temp)
tapply(leak,potato,mean)
tapply(leak,regime,mean)
tapply(leak,temp,mean)
tapply(leak,potato,var)
tapply(leak,regime,var)
tapply(leak,temp,var)
tapply(leak,potato,length)
tapply(leak,regime,length)
tapply(leak,temp,length)
summarySE(adata,measurevar="leak",groupvars=c("potato","regime","temp"))
mean(leak)
sum(leak)

boxplot(leak~potato,ylab="Damage score for ion leakage",xlab="Potato")
boxplot(leak~regime,ylab="Damage score for ion leakage",xlab="Regime")
boxplot(leak~temp,ylab="Damage score for ion leakage",xlab="Temp")
boxplot(leak~potato+regime+temp,ylab="Damage score for ion leakage",xlab="Trt",data=adata)
abline(11.2564,0,lty=2)


##Full model
fit1<-lm(leak~potato*regime*temp,contrasts=c(potato=contr.sum,
                                             regime=contr.sum,temp=contr.sum))

anova(fit1) ##Type I SS
summary(fit1)


Interaction plots
# 2-way plots

par(mfrow = c(2,2))

interaction.plot(x.factor = potato, trace.factor = regime, response = leak,
                 fun = mean, legend = F,  type = "b", lwd = 3,axes=F,
                 trace.label="regime", xlab = "Species 1 vs 2", ylab = 
                         "Damaged score for ion leakage", main = "Two-Way Plot (potato vs regime)",las=1,
                 col=1:2, pch=1:2 )
axis(1, at=1:2)
axis(2, at=seq(5,30,5))
text(1.5, 22, "cold room")
text(1.5, 9, "room temp")

interaction.plot(x.factor = potato, trace.factor = temp, response = leak,
                 fun = mean, legend = F,  type = "b", lwd = 3,axes=F,
                 trace.label="temp", xlab = "Species 1 vs 2", ylab = 
                         "Damaged score for ion leakage", main = "Two-Way Plot (potato vs cold temp)",las=1,
                 col=1:2, pch=1:2 )
axis(1, at=1:2)
axis(2, at=seq(5,30,5))
text(1.5, 22, "-4 degree c")
text(1.5, 6, "-8 degree c")

interaction.plot(x.factor = temp, trace.factor = regime, response = leak,
                 fun = mean, legend = F,  type = "b", lwd = 3,axes=F,
                 trace.label="regime", xlab = "-4 deg C vs -8 deg C", ylab = 
                         "Damaged score for ion leakage", main = "Two-Way Plot (cold temp vs regime)",las=1,
                 col=1:2, pch=1:2 )
axis(1,at=1:2)
axis(2, at=seq(5,30,5))
text(1.5, 19, "cold room")
text(1.5, 10, "room temp")

# split the data for 3-way plot
adata1 <- subset(adata, adata$temp == 1)
adata2 <- subset(adata, adata$temp == 2)

interaction.plot(x.factor = adata1$potato, trace.factor = adata1$regime, response = adata1$leak,
                 fun = mean, legend = F,  type = "b", lwd = 3,axes=F,
                 trace.label="regime", xlab = "Species", ylab = 
                         "Damaged score for ion leakage",las=1,
                 col=1:2, pch=1:2 )
title (main = "-4 degree C (potato vs regime)")
axis(1, at=1:2)
axis(2, at=seq(5,30,5))
text(1.5, 20, "cold room")
text(1.5, 6, "room temp")
interaction.plot(x.factor = adata2$potato, trace.factor = adata2$regime, response = adata2$leak,
                 fun = mean, legend = F,  type = "b", lwd = 3,axes=F,
                 trace.label="regime", xlab = "Species", ylab = 
                         "Damaged score for ion leakage",las=1,
                 col=1:2, pch=1:2 )
title (main = "-8 degree C (potato vs regime)")
axis(1, at=1:2)
axis(2, at=seq(5,30,5))
text(1.5, 25, "cold room")
text(1.5, 8, "room temp")


## Plot 
data<-read.csv(header=T,file.choose()) ###data_yn_mn
attach(data)
head(data)
par(mfrow=c(1,1))
plot(yn,mn)
plot(n,yn,cex=1.0,ylab='Yn and Mn',main='mn (line) and yn (circles) plot')
plot(n,mn)
points(mn,type='o',cex=0.5)
yn
mn
max(mn)
rm(list=ls())


