# Load ggplot2 package
library(ggplot2)


# Example of creating a Scatter Plot between chol and trestbps
ggplot(data = heart, aes(x = chol, y = trestbps)) +
  geom_point() +
  labs(x = "Serum Cholestrol Level", y = "Resting blood pressure", title = "Scatter Plot")


# Find linear correlation coefficient between between chol and trestbps
cor(heart$chol, heart$trestbps)


# perform linear correlation test between chol and trestbps
cor.test(heart$chol, heart$trestbps)


# Add chanceHeartAttack column called "chanceHeartAttack" based on values in 'target' column
heart$chanceHeartAttack <- with(heart, ifelse(target > 0.5, 'High', 'Less'))


# Example of creating a Box Plot between chol and chanceHeartAttack
ggplot(data = heart, aes(x = chol, y = chanceHeartAttack)) +
  geom_boxplot() +
  labs(x = "serum cholestrol level", y = "likelihood of Heart Attack", title = "Box Plot")


# Perform 2 sample t-test
t.test( chol ~ chanceHeartAttack, data = heart )

