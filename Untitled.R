install.packages(c("ggplot2","ggpubr","tidyverse","broom","AICcmodavg"))
library(AICcmodavg)
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(broom)

crop.data= read_csv("/Users/aaron/Downloads/crop.data.csv")
summary(crop.data)
one.way<-aov(yield~fertilizer,data=crop.data)
summary(one.way)

two.way<-aov(yield~fertilizer+density,data=crop.data)
summary(two.way)

interaction<-aov(yield~fertilizer*density,data=crop.data)
summary(interaction)

#method 1 
set.seed(1066)



# Assuming 'data' is your dataset
library(ggplot2)

# Create a donut chart
ggplot(data, aes(x = "", fill = factor(Numeric_Usage))) +
  geom_bar(width = 1, color = "white") +
  coord_polar(theta = "y") +
  ggtitle("Donut Chart: Satisfaction Levels") +
  scale_fill_manual(values = c("#56B4E9", "#D55E00", "#CC79A7", "#0072B2", "#F0E442"),
                    labels = c("Very satisfied", "Satisfied", "Neutral", "Dissatisfied", "Very dissatisfied")) +
  theme_void()

