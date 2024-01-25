setwd("/Users/aaron/Desktop/Sem2-R-Lab/Final")
data = read.csv("Impact of Online Learning on Student Engagement and Performance .csv")

# Assuming your dataset is named 'data'
# Make sure to install and load necessary packages before running the code
# Install if not already installed
 install.packages(c("tidyverse", "car", "rstatix"))
#install.packages(c('rstatix'))
# Load libraries
library(tidyverse)
library(car)
library(rstatix)

# Assuming your data is stored in a dataframe called 'data'
# You might need to convert factors to appropriate levels if needed

# Convert factors to appropriate levels if needed
data$Gender <- as.factor(data$Gender)
data$Education_Level <- factor(data$Education_Level, ordered = TRUE)
data$How_long <- factor(data$How_long, ordered = TRUE)
data$How_often <- factor(data$How_often, ordered = TRUE)
data$Preference <- factor(data$Preference, ordered = TRUE)
data$Participation <- factor(data$Participation, ordered = TRUE)

# Section 1 tests
# One-sample t-test for preference
preference_ttest <- t.test(data$Preference, mu = 0.5)

# Two-sample t-test for preference by gender
gender_ttest <- t.test(data$Preference ~ data$Gender)

# One-way ANOVA for preference by education level
education_anova <- aov(Preference ~ Education_Level, data = data)

# Two-way ANOVA for preference by gender and education level
two_way_anova <- aov(Preference ~ Gender * Education_Level, data = data)

# Section 2 tests
# One-sample t-test for participation
participation_ttest <- t.test(data$Participation, mu = 0.5)

# Two-sample t-test for participation by collaborative activity frequency
collaboration_ttest <- t.test(data$Participation ~ data$Collaborative_Activity)

# One-way ANOVA for participation by education level
education_participation_anova <- aov(Participation ~ Education_Level, data = data)

# Two-way ANOVA for participation by education level and collaborative activity frequency
two_way_participation_anova <- aov(Participation ~ Education_Level * Collaborative_Activity, data = data)

# Print results
cat("\nSection 1 Tests:\n")
print(preference_ttest)
print(gender_ttest)
print(summary(education_anova))
print(summary(two_way_anova))

cat("\nSection 2 Tests:\n")
print(participation_ttest)
print(collaboration_ttest)
print(summary(education_participation_anova))
print(summary(two_way_participation_anova))

