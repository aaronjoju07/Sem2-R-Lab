help("t.test")
# Generate custom data
set.seed(123)  # for reproducibility
group1 <- rnorm(30, mean = 50, sd = 10)
group2 <- rnorm(25, mean = 55, sd = 12)

before_training=c(22,20,19,24,25,25,28,22,30,27,24,18,16,19,19,28,24,25,25,23)
after_trainig=c(24,22,29,22,28,26,28,24,30,29,25,20,17,18,18,28,26,27,27,24)
x_diff = before_training - after_trainig
maenDiff=mean(x_diff);maenDiff

# Conduct a two-sample t-test
t_test_result <- t.test(group1, group2)

# Print the results
print(t_test_result)


################################################################################################
# Data
x <- c(10, 9, 8, 7.5, 8.5, 9, 10, 8, 8, 9)
y <- c(8, 9, 10, 8, 8.5, 7, 9.5, 9, 7, 10)
z <- c(9, 8, 7, 10, 9, 8, 7, 10, 9, 8)

# Means
xmean <- mean(x)
ymean <- mean(y)
zmean <- mean(z)
#Diff x-xmean
diffa=x-xmean
diffa
diffb=y-ymean
diffb
diffc=z-zmean
diffc
#square of diff
sqaurea=diffa*diffa
sum(sqaurea)

sqaureb=diffb*diffb
sum(sqaureb)

sqaurec=diffc*diffc
sum(sqaurec)

#varience within the samples

sum(sqaurea)+sum(sqaureb)+sum(sqaurec)

variance_x <- sum((x - xmean)^2) / (length(x) - 1)
variance_y <- sum((y - ymean)^2) / (length(y) - 1)
variance_z <- sum((z - zmean)^2) / (length(z) - 1)


total_variance <- variance_x + variance_y + variance_z


cat("Variance for x:", variance_x, "\n")
cat("Variance for y:", variance_y, "\n")
cat("Variance for z:", variance_z, "\n")
cat("Total variance between the samples:", total_variance, "\n")


#Null Hypo : m1=m2=m3 and alternative Hypo : m1!=m2!=m3

#Step:1   Calculate the mean fro each group
a=c(6,8,4,5,3,4)
b=c(8,12,9,11,6,8)
c=c(13,9,11,8,7,12)

meanA=mean(a);meanA
meanB=mean(b);meanB
meanC=mean(c);meanC
#Step:2   Calculate the totlal mean.This done by adding all the mean and dividing it by total number of mean
total_mean = (meanA+meanB+meanC)/3;total_mean
#step:3.  Calculate the SSB
SSB =6* sum(c((meanA - total_mean)^2, (meanB - total_mean)^2, (meanC - total_mean)^2));SSB
#Step:4.  Calculate the between groups degree of freedom
k = 3  # Number of groups
df_between = k - 1;df_between
#step:5.  Calculate the SSE
SSE = sum(c(sum((a - meanA)^2), sum((b - meanB)^2), sum((c - meanC)^2)));SSE
#step6:   caluclate the degrees of freedom of errors
N = length(a) + length(b) + length(c)  # Total number of observations
df_within = N - k
df_within
#step7:   determine the MSB AND MSE
#step8:   find the f test statistis
#step9:   using the f table for the specified level of significance ,a,find the critical value  .this is given by f(a,df1,df2).
#sep10:   if f> F THEN REjECT THE NULL HYPOTHESIS.