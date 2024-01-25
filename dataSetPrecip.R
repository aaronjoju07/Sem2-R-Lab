str(precip)
precip[1:4]
str(rivers)
rivers[1:6]
str(discoveries)
discoveries[1:9]

help("stripchart")
#quantitative and discrete data
stripchart(precip,xlab = "Rainfall")
stripchart(precip,xlab = "length",method = "jitter")
stripchart(precip,xlab = "length",method = "stack")
stripchart(precip,xlab = "length",method = "overplot")

help("hist")
hist(precip,main = "precip")
hist(precip,freq = TRUE,main = "precip")
hist(precip,freq = FALSE)
hist(precip,breaks = 10,main = "precip")
hist(precip,breaks = 100,main = "precip")
#using mtcars dataSet
#stripchart
str(mtcars)
stripchart(mtcars$mpg,xlab = "mtCars-MPG",method = "jitter")
stripchart(mtcars$mpg,xlab = "mtCars-MPG",method = "stack")
stripchart(mtcars$mpg,xlab = "mtCars-MPG",method = "overplot")
#hist
hist(mtcars$mpg,main = "MT-Cars",freq = TRUE)
hist(mtcars$mpg,main = "MT-Cars",freq = TRUE,breaks = 20)
carData = mtcars
carData$am = as.factor(carData$am);carData$am
carData$gear = as.ordered(carData$gear);carData$gear
str(carData)
carData$cyl = as.ordered(carData$cyl);carData$cyl
carData$vs = as.factor(carData$vs)
carData$carb = as.ordered(carData$carb)
str(carData)
barplot(height = table(carData$gear))
barplot(height = table(carData$am))
stripchart(mtcars$mpg,xlab = "mtCars-MPG",method = "jitter")