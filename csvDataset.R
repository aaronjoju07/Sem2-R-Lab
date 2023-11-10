#Sample dataSet
student_score = data.frame(StudentId =1:100,
                           Gender = sample(c("Male","Female"),100,replace = TRUE),
                           Age = sample(18:25,100,replace = TRUE),
                           ExamScore = round(runif(100,min = 50,max = 100),1)
                           );student_score

#Create a CSV data set
write.csv(student_score,"student_score.csv",row.names = FALSE)

#CSV Files
print(getwd())
setwd("/Users/aaron/Desktop/Sem2-R-Lab")
print(getwd())
dataCsv = read.csv("student_score.csv");dataCsv
is.data.frame(dataCsv)
ncol(dataCsv)
nrow(dataCsv)

#get max age from df
maxAge = max(dataCsv$Age);maxAge

girls_above_80 = subset(dataCsv, Gender == "Female" & ExamScore > 80);girls_above_80

#write filtered data into new file
write.csv(girls_above_80,"Output.csv",row.names = FALSE)
newData = read.csv("Output.csv");newData
girlWithHighestScore = max(newData$ExamScore);girlWithHighestScore
