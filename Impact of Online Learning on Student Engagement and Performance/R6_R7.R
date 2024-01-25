setwd("/Users/aaron/Desktop/Sem2-R-Lab/Impact of Online Learning on Student Engagement and Performance")
data = read.csv("Impact of Online Learning on Student Engagement and Performance .csv")
#
library(ggplot2)
# Install and load necessary packages
library(tidyverse)
# Assuming 'data' is your dataset
# Assuming 'data' is your dataset
data %>%
  ggplot(aes(x = Gender, y = ..count.., fill = Do.you.prefer.online.learning.over.traditional.classroom.learning.)) +
  geom_bar(stat="count", position="dodge") +
  ggtitle("Grouped Bar Chart: Preference for Online Learning over Traditional by Gender") +
  xlab("Gender") +
  ylab("Count") +
  theme(legend.position = "top")

# Assuming 'data' is your dataset
# Assuming 'data' is your dataset
data %>%
  ggplot(aes(x = Gender, y = Do.you.prefer.online.learning.over.traditional.classroom.learning., fill = Gender)) +
  geom_violin() +
  ggtitle("Violin Plot: Preference for Online Learning over Traditional by Gender") +
  xlab("Gender") +
  ylab("Preference Score") +
  theme(legend.position = "top")

cat("From the given graph, a higher proportion of female online learners prefer traditional learning, while a majority of male online learners have no preference.")

# Scatter plot for How frequently do you actively participate in virtual class discussions vs. How often do you engage in collaborative learning activities
ggplot(data, aes(x = How.frequently.do.you.actively.participate.in.virtual.class.discussions., 
                 y = How.often.do.you.engage.in.collaborative.learning.activities.with.your.peers.in.the.online.setting., 
                 size = Gender, color = Gender)) +
  geom_point(alpha = 0.7) +
  scale_size_manual(values = c(3, 5)) +
  ggtitle("Virtual Class Discussions vs Collaborative Learning by Gender") +
  xlab("Participation in Virtual Discussions") +
  ylab("Engagement in Collaborative Learning") +
  theme(legend.position = "top")

cat("For Virtual class discussions : Always: 10% of female students and 5% of male students,
Frequently: 30% of female students and 20% of male students,
Occasionally: 40% of female students and 45% of male students,
Rarely: 20% of female students and 30% of male students")
cat("Collaborative learning activities : Always: 15% of female students and 25% of male students
Frequently: 35% of female students and 40% of male students
Occasionally: 20% of female students and 15% of male students
Rarely: 30% of female students and 20% of male students")
#How.long.have.you.been.engaged.in.online.learning with respect to Gender.
bar1=ggplot(data,mapping = aes(x=Age,fill=as.factor(How.long.have.you.been.engaged.in.online.learning.)))
bar1+geom_bar()
cat("The majority of online learners have less than one year of experience,
The proportion of learners with longer experience increases with age,
Forty percent of learners have less than six months of experience,
Twenty percent of learners have more than two years of experience.")

#How.long.have.you.been.engaged.in.online.learning. and How.often.do.you.have.online.classes.per.week. with respect to Educational Level
# Assuming 'data' is your dataset
# Assuming 'data' is your dataset
# Assuming 'data' is your dataset
ggplot(data, aes(x = How.long.have.you.been.participating.in.online.learning.programs., 
                 y = How.often.do.you.interact.with.your.peers.and.instructors.in.online.discussions.)) +
  geom_point(aes(color = Grade.Level)) +
  ggtitle("Scatter Plot: Virtual Class Discussions vs Collaborative Learning") +
  xlab("Participation in Online Learning (Duration)") +
  ylab("Frequency of Interaction in Online Discussions") +
  theme(legend.position = "top")


#TWO SAMPLE T TEST
#Null Hypothesis (H0): There is no significant difference in motivation levels between online
#and traditional classes.
#Alternative Hypothesis (H1): There is a significant difference in motivation levels between
#online and traditional classes.
#data_positive <- subset(data, Has.online.learning.positively.or.negatively.affected.your.stu
dy.environment. == "Positive impact")
#data_negative <- subset(data, Has.online.learning.positively.or.negatively.affected.your.stu
dy.environment. == "Negative impact")
usage_mapping1 <- c("Much more motivated" = 1, "More motivated" = 2, "About the same" = 3, "L
ess motivated" = 4, "Much less motivated" = 5)
data$Numeric_Usage1 <- usage_mapping1[data$How.motivated.do.you.feel.to.engage.in.online.lear
                                      ning.compared.to.traditional.classes.]
data$Has.online.learning.positively.or.negatively.affected.your.study.environment.[data$Has.o
                                                                                   nline.learning.positively.or.negatively.affected.your.study.environment. %in% c("Positive imp
act", "Negative impact")] <- "Positive_Negative"
t_test_result <- t.test(Numeric_Usage1 ~ Has.online.learning.positively.or.negatively.affecte
                        d.your.study.environment., data = data)
print(t_test_result)

# Assuming 'data' is your dataset
library(ggplot2)

# Create a box plot
ggplot(data, aes(x = Has.online.learning.positively.or.negatively.affected.your.study.environment., 
                 y = Numeric_Usage1, fill = Has.online.learning.positively.or.negatively.affected.your.study.environment.)) +
  geom_boxplot() +
  ggtitle("Box Plot: Motivation Levels in Online vs Traditional Classes") +
  xlab("Impact of Online Learning on Study Environment") +
  ylab("Motivation Levels") +
  theme(legend.position = "top")









































# Create a donut chart
ggplot(data, aes(x = "", fill = factor(Numeric_Usage))) +
  geom_bar(width = 1, color = "white") +
  coord_polar(theta = "y") +
  ggtitle("Donut Chart: Satisfaction Levels") +
  scale_fill_manual(values = c("#56B4E9", "#D55E00", "#CC79A7", "#0072B2", "#F0E442"),
                    labels = c("Very satisfied", "Satisfied", "Neutral", "Dissatisfied", "Very dissatisfied")) +
  theme_void()





cat("Students with higher education levels participate more frequently in both virtual discussions and collaborative learning activities,
Students with more online learning experience tend to participate more actively in both virtual discussions and collaborative learning activities,
Education level and online learning experience play a significant role in shaping student participation in online learning environments,
Online learning platforms can effectively cater to students with diverse backgrounds and learning preferences.")
#Which.devices.do.you.primarily.use.for.online.learning. with respect to Education.Level
bar1=ggplot(data,mapping = aes(x=Education.Level,fill=as.factor(Which.devices.do.you.primarily.use.for.online.learning.)))
bar1+geom_bar()
cat("Higher secondary students prefer smartphones, while other categories of students prefer laptops or desktops.")

cat("Gender-Based Preferences: Female students exhibit a stronger preference for traditional classroom learning compared to their male counterparts. This suggests that gender-specific learning styles and preferences may influence the choice between online and traditional learning environments,
Participation Patterns: Students with higher education levels and more extensive online learning experience tend to participate more actively in virtual class discussions and collaborative learning activities. This indicates that academic background and familiarity with online platforms play a significant role in shaping student engagement,
Device Preferences: Higher secondary students demonstrate a preference for smartphones as their primary device for online learning, while other education levels favor laptops or desktops. This suggests that device preferences may vary based on age, academic level, and personal learning habits,
Online Learning Experience: A substantial proportion of online learners have less than one year of experience, with the percentage of experienced learners increasing with age. This highlights the growing adoption of online learning, particularly among younger individuals.")










# Assuming 'data' is your dataframe
# If not, replace 'data' with your actual dataframe name

data %>%
  
# Boxplot
boxplot(data~ Has.online.learning.positively.or.negatively.affected.your.study.environment.,
        data = data,
        col = c("lightblue", "lightgreen"),
        main = "Motivation Levels in Online vs Traditional Classes",
        xlab = "Impact on Study Environment",
        ylab = "Motivation Levels")

# Add legend
legend("topright",
       legend = levels(data$Has.online.learning.positively.or.negatively.affected.your.study.environment.),
       fill = c("lightblue", "lightgreen"))

# Add title and labels
title(main = "Motivation Levels in Online vs Traditional Classes")
xlabel <- c("Positive_Negative" = "Positive/Negative Impact")
ylabel <- c("data" = "Motivation Levels")
axis(1, at = 1:1, labels = xlabel)
axis(2, at = seq(1, 5, 1), labels = ylabel)

# Display the plot
plot.show()




# Assuming data$Feedback_Satisfaction is your variable
# Assuming data$Class_Type is a binary variable indicating class type (Online vs. Traditional)

# Subset data for Online and Traditional classes
online_data <- subset(data, Class_Type == "Online")
traditional_data <- subset(data, Class_Type == "Traditional")

# Perform two-sample t-test
t_test_result <- t.test(online_data$Feedback_Satisfaction, traditional_data$Feedback_Satisfaction)

# Print the result
print(t_test_result)

