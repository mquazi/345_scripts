## Matrices


x<-c(0.5,0,0,-0.5,1,0,0,-0.5,0.5)
A<-matrix(x,nrow=3,ncol=3,byrow=T)
A
class(A)
solve(A) ## finds A inverse
det(A) ## determinant of A
l<-c(1,1,1,1,1,1,1)
l<-matrix(l,nrow=7,ncol=1,byrow=T)
l
Ainv<-solve(A)
Ainv
Ainv%*%l
x<-c(0.5,0.5,0,0,0,0,0,0,0,0,0.5,0.5,0,0,0,0,0,0,0,0,0.5,0.5,0,0,0,0,0,0,0,0,0.5,0.5,
     0.5,0.5,0,0,0,0,0,0,0,0,0.5,0.5,0,0,0,0,0,0,0,0,0.5,0.5,0,0,0,0,0,0,0,0,0.5,0.5)
mainmat<-matrix(x,nrow=8,ncol=8,byrow=T)
mainmat
hth<-mainmat[-c(8),-c(8)]
hth
I<-diag(7)
I
B<-I-hth
B
Binv<-solve(B)
Binv
solve(I)-I
l
Binv%*%l
sum(Binv%*%l)

x<-c(0,0.25,0,0.25,0.25,0.25,0.25,0,0.25,0,0.25,0.25,0,0,0,0,0,1,0,0,0,1,0,0,0.25,0.25,0,0.25,0,0.25,0,0,1,0,0,0)
mat<-matrix(x,nrow=6,ncol=6,byrow=T)
mat
library(expm)
a<-mat%^%20
b<-mat%^%50
a%*%b
a
b

