#install.packages("moments")
library(moments)
#positive Skew
a = c(40,41,42,43,50)
skewness(a)
den = density(a)
plot(den, frame = FALSE, col = "blue",main = "Density plot")
#Negative Skew
b = c(10,11,21,22,23,25)
skewness(b)
den = density(b)
plot(den,frame = FALSE,col="green",main = "Density plot")
#Normmal Distribution
set.seed(3548148)
x_norm = rnorm(5000)
head(x_norm)
#Hist & Density 
hist(x_norm,prob=TRUE)
lines(density(x_norm),col=2,Iwd =3)
#help("rnorm")      
#Kurtosis
kurtosis(x_norm)
#Platykurtic
x=c(rep(61,each = 10),rep(64,each=18),rep(65,each=23),rep(67,each=32),rep(70,each=27),rep(73,each=17))
kurtosis(x)
hist(x)
#MesoKurtic
x=rnorm(100)
kurtosis(x)
hist(x)
# 
data = mtcars
mean(data$mpg)
median(data$mpg)
modee = function(x)
value = unique(x)
value[which.max(tablulate(match(x,)))]
hrsPow = data$hp
s<-sqrt(sum((hrsPow-mean(hrsPow))^2/(length(hrsPow)-1)));s
#skewness of displacement val
skewness(data$disp) #Positive Skew
plot(density(data$disp),col="blue",frame=FALSE,main = "Plot") 
#
kurtosis(data$carb)
#Frequency and Proportion
clytable = table(data$cyl)
clytable
amTable = table(data$am);amTable
#boxplot for mpg
boxplot(data$mpg,
        main = "MPG",
        xlab = "",
        ylab = "")
#scatter plot
plot(data$hp,data$qsec)
