# Look at diiabetes dataset
View(diabetes)


# Add hasHypertension column called "hasHypertension" based on values in 'bp.1s' columns
diabetes$hasHypertension <- with(diabetes, ifelse(bp.1s > 140, 'Yes', 'No'))


# Add hasDiabetes column called "hasDiabetes" based on values in 'glyhb' columns
diabetes$hasDiabetes <- with(diabetes, ifelse(glyhb > 7.0, 'Yes', 'No'))


# Load ggplot2 package
library(ggplot2)


# Example of creating a scatter plot between height and weight 
ggplot(data = diabetes, aes(x = height, y = weight)) +
  geom_point() +
  labs(x = "height", y = "weight", title = "Scatter Plot") 


# Example of creating a box plot between weight and "hasDiabetes"
ggplot(data = diabetes, aes(x = diabetes$weight, y = diabetes$hasDiabetes)) +
  geom_boxplot() +
  labs(x = "weight", y = "has Diabetes?", title = "Box Plot")


# Perform 2 sample t-test
t.test( weight ~ hasDiabetes, data = diabetes )





