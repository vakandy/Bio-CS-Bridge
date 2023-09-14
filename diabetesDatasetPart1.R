# Load Diabetes dataset into Cloud
library(readxl)
diabetes <- read_excel("Diabetes Posit Cloud/diabetes.xlsx") #You may have to change this for the location of your file
View(diabetes)


# Look at diabetes dataset
head(diabetes)


# Download ggplot2 package
install.packages("ggplot2")


# Load ggplot2 (it's already integrated in Posit Cloud)
library(ggplot2)


# Create histogram of "weight" variable of diabetes dataset using ggplot
library(ggplot2)
ggplot(data = diabetes, aes(x = weight )) +
  geom_histogram(binwidth=2, color = "black", fill = "red") 


# Recreate histogram but change binwidth 
ggplot(data = diabetes, aes(x = weight )) +
  geom_histogram(binwidth=5, color = "black", fill = "red") 


#Find standard deviation of "weight" variable of diabetes dataset
sd(diabetes$weight)


# Perform Shapiro-Wilk test for normality of "weight" variable of diabetes dataset
shapiro.test(diabetes$weight)








