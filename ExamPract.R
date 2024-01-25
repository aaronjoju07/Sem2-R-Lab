#T-test
#one sample t-test t=(xbar-mu0)/(s/sqrt(n))
data = mtcars
xbar = mean(data$wt);xbar
range(data$wt)
mu=3
s= sd(data$wt)
n =length(data$wt)
t = (xbar-mu)/(s/(sqrt(n)))
t_test=t.test(x=data$wt,mu=3,alternative = c("two.sided"),conf.level = 0.95);t_test
names(t_test)
#two sample t test
two_sample = t.test(x=data$wt,y=data$hp,mu=3,alternative = c("two.sided"),conf.level = 0.95);two_sample
#Anova
#install.packages(c("ggplot2", "ggpubr", "tidyverse", "broom", "AICcmodavg"))
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(broom)
library(AICcmodavg)
#One-way ANOVA
?aov()
data = read.csv('/Users/aaron/Downloads/CROP.csv')
onewayanova = aov(yield ~ fertilizer,data = data);onewayanova
summary(onewayanova)
#Two-way ANOVA
two.way <- aov(yield ~ fertilizer + density, data = data);two.way
summary(two.way)
#Adding interactions between variables
interaction <- aov(yield ~ fertilizer*density, data = data)
summary(interaction)
#Adding a blocking variable
blocking <- aov(yield ~ fertilizer + density + block, data = data)
summary(blocking)
#Find the best-fit model
modelList=list(onewayanova,two.way,interaction,blocking)
modelNames = c("onewayanova","two.way","interaction","blocking")
aictab(modelList,modnames=modelNames)
#The model with the lowest AIC score (listed first in the table) is the best fit for the data
####################################################################################################################
?cars
View(cars)

str(cars)
dim(cars)# 50 rows 2 columns

plot(dist~speed,data=cars,xlab="speed",ylab="stopping distance",main="stoping distances vs speed",cex=2,col="green")
#Speed = Predictor Variable(x-ind), Stopping Distance = Response Variable(y-dep)
x=cars$speed
y=cars$dist

#least sqr mthd
Sxy=sum((x-mean(x))*(y-mean(y)))
Sxy
Sxx=sum((x-mean(x))^2)
Sxx
Syy=sum((y-mean(y))^2)
Syy

beta_1=Sxy/Sxx
beta_1
beta_0=mean(y)-beta_1*mean(x)
beta_0


#Simple Linear Regression (SLR) is a statistical method used to model the relationship between a single indepdent variable x 
# and a dependent variable y.interpolation and extrapolation are two concepts related to predicting values within and beyond the observed range of the independent variable, respectively.
y_hat=beta_0+beta_1*x  
y_hat



unique(cars$speed)

#making a prediction of distance for the speed 8 miles per hour
min(cars$speed)<8 & 8<max(cars$speed)  
y_8=beta_0+beta_1*8   #true.interpolation
y_8

8%in%unique(cars$speed)# to check whether the value exists in the data set or not


min(cars$speed)<50 & 50<max(cars$speed)
y_50=beta_0+beta_1*50  #false.extrapolation
y_50
50%in%unique(cars$speed)






cars[which(cars$speed==8),]
#epsilon(residual)=actual-predicted
epsilon=16-(beta_0_hat+beta_i_hat*8)
epsilon

#If the residual is positive, it means that the actual value is higher than the predicted value.
#If it's negative, it means the actual value is lower than the predicted value.



e=y-y_hat
e

n=length(e)
s2_e=sum(e^2)/(n-2)
s2_e

s_e=sqrt(s2_e)
s_e

y

SST=sum((y-mean(y))^2)
SST
SSReg=sum((y_hat-mean(y))^2)
SSReg
SSE=sum((y-y_hat)^2)
SSE

SSE/(n-2)

s2_e==SSE/(n-2)#verify with prev calculated vlue
R2=SSReg/SST
R2#accuracy of model 65%

#lm fcn
stop_dist_model=lm(dist~speed,data=cars)
stop_dist_model

lm(formula=dist~speed,data=cars)


plot(dist~speed,data=cars,xlab="speed",ylab="stopping distance",main="stopping distance vs speed",col="purple")
abline(stop_dist_model,col="red")# line also
names(stop_dist_model)
stop_dist_model$residuals
coef(stop_dist_model)
resid(stop_dist_model)
fitted(stop_dist_model)
summary(stop_dist_model)
##################################################################################################################
[1:10 pm, 25/01/2024] Dhanwin KB Christ: Scatterplot :
  # Create sample data
  x <- 1:10
y <- x^2 + rnorm(10, 0, 5)
# Create the scatter plot
plot(x, y, main = "Scatter Plot", xlab = "x", ylab = "y")

Line Plot :
  # Create sample data
  data <- sin(seq(0, 2*pi, length.out = 100))
# Create the line plot
plot(data, type = "l", main = "Line Plot", xlab = "Time", ylab = "Value")

Bar Plots:
  # Create sample data
  counts <- table(mtcars$gear)
# Create the bar plot
barplot(counts, main = "Number of Cars by Gear", xlab = "Gear", ylab = "Count")

Histograms:
  # Create sample data
  data <- rnorm(1000)
# Create the histogram
hist(data, main = "Histogram of Normal Data", xlab = "Value")

Boxplots :
  # Create sample data
  data <- ToothGrowth$len
groups <- ToothGrowth$supp
# Create the box plot
boxplot(data ~ groups, main …
        [1:12 pm, 25/01/2024] Dhanwin KB Christ: Pie Charts :
          # Create sample data
          data <- c(20, 30, 50)
        # Create the pie chart
        pie(data, labels = c("A", "B", "C"), main = "Pie Chart", col = rainbow(3))
        
        Density Plot:
          # Create sample data
          data <- rnorm(100)
        # Create the density plot
        plot(density(data), main = "Density Plot of Normal Data", xlab = "Value")
        
        Mosaic Plot :
          # Create sample data
          data <- data.frame(
            group1 = c("A", "A", "B", "B", "C", "C"),
            group2 = c("X", "Y", "X", "Y", "X", "Y"),
            value = c(10, 20, 30, 40, 50, 60)
          )
        # Create the mosaic plot
        mosaicplot(data$group1, data$group2, data$value, 
                   main = "Mosaic Plot", color = "skyblue")