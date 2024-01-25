data = read.csv("Impact of Online Learning on Student Engagement and Performance .csv")
#print(getwd())
#setwd("/Users/aaron/Desktop/Sem2-R-Lab/Impact of Online Learning on Student Engagement and Performance")
db=data
data$Gender
str(db$Age)
#Age
barplot(table(db$Age),
        main = "Bar Graph of Age",
        xlab = "Age",
        ylab = "Count",
        col = rainbow(length(unique(db$Age))))
#Gender
barplot(table(db$Gender),
        main = "Bar Graph of Gender",
        xlab = "Gender",
        ylab = "Count",
        col = rainbow(length(unique(db$Gender))))
#Education Level
barplot(table(db$Education.Level),
        main = "Bar Graph of Education Level",
        xlab = " Education Level",
        ylab = "Count",
        col = rainbow(length(unique(db$Education.Level))))
#How long have you been engaged in online learning?
barplot(table(db$How.long.have.you.been.engaged.in.online.learning.),
        main = "BHow.long.have.you.been.engaged.in.online.learning",
        xlab = "",
        ylab = "Count",
        col = rainbow(length(unique(db$How.long.have.you.been.engaged.in.online.learning.))))

