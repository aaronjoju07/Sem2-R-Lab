?cars
View(cars)
str(cars)
dim(cars)
plot(dist~speed,data=cars,xlab="speed",ylab = "Stopping Distance",main="Stopping Distance VS Speed",pch=20,cex=2,col="blue")
#speed is predicator variablw ands stopping Distance is Response Variable
x=cars$speed
y=cars$dist
#Least Square Method
sxy=sum((x-mean(x))*(y-mean(y)))
sxx=sum((x-mean(x))^2)
syy=sum((y-mean(y))^2)
c(sxy,sxx,syy)
#cal beta0 and beta1
beta_i_hat=sxy/sxx
beta0_hat=mean(y)-beta_i_hat*mean(x)
c(beta0_hat,beta_i_hat)
#possible x value in cars dataset
range(unique(cars$speed))
range(unique(cars$dist))
#makiing a prediction of distance for the speed 8 miles per hour
beta0_hat+beta_i_hat*8
#if x=21   which is not in dataset called interpolation 8%in% unique(cars$speed)
21 %in% unique(cars$speed)
8 %in% unique(cars$speed)  
min(cars$speed)<21 & 21<max(cars$speed)
#if x=50   which is not in dataset called interpolation 8%in% unique(cars$speed)
50 %in% unique(cars$speed)
min(cars$speed)<50 & 50<max(cars$speed)
#conside response =prediction+residual
cars[which(cars$speed==8),]
#epsilon
16-(beta0_hat+beta_i_hat*8)
beta_i_hat
y_hat= beta0_hat+(beta_i_hat*x);y_hat
e=y-y_hat;e
n=length(e);n
s2_e=sum(e^2)/(n-2);s2_e
s_e=sqrt(s2_e);s_e
#calc sum od square error, total sum of square
SST=sum((y-mean(y))^2)
SSReg=sum((y_hat-mean(y))^2)
SSE=sum((y-y_hat)^2)
c(SST=SST,SSReg=SSReg,SSE=SSE)
#se2=SSE/n-2
SSE/(n-2)
s2_e==SSE/(n-2) #verify with previous calculated value
#Coefficient of determination R2 is the proprortion of observation variation in y in the regresion on the model 
R2=SSReg/SST;R2
#65% of observed variability in stopping  
stop_dist_model = lm(dist~speed,data=cars)
stop_dist_model
c(beta0_hat,beta_i_hat)
plot(dist~speed,data = cars,main="Stoping Distance vs Speed",col="blue",pch=5)
abline(stop_dist_model,lwd=3,col="black")
names(stop_dist_model)
stop_dist_model$residuals
coef(stop_dist_model)
resid(stop_dist_model)
fitted(stop_dist_model)
