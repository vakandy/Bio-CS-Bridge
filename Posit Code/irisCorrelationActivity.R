# Load and view iris dataset
iris
View(iris)


# Find names of variables in the dataset
names(iris)


# Plot dataset
pairs(iris [1:5])


# Find linear correlation coefficient between 2 numerical variables
cor(iris$Sepal.Length, iris$Sepal.Width)


# Display linear correlation coefficient of all numeric variables
cor(iris[1:4])


# perform linear correlation test between 2 numeric variables
cor.test(iris$Sepal.Length, iris$Sepal.Width)


# Create a vector of colors based on the species variable in the Iris dataset
species_colors <- c("setosa" = "red", "versicolor" = "blue", "virginica" = "green")


# Create scatter plots for all variables with color based on the species variable
pairs(iris[, 1:4], col = species_colors[iris$Species])


# Calculate the correlation coefficients
setosa_corr <- cor(iris[iris$Species == "setosa", c("Sepal.Length", "Sepal.Width")])
versicolor_corr <- cor(iris[iris$Species == "versicolor", c("Sepal.Length", "Sepal.Width")])
virginica_corr <- cor(iris[iris$Species == "virginica", c("Sepal.Length", "Sepal.Width")])


# Print the correlation coefficients
setosa_corr
versicolor_corr
virginica_corr


# Perform correlation testing
setosa_corr_test <- cor.test(iris[iris$Species == "setosa", "Sepal.Length"], iris[iris$Species == "setosa", "Sepal.Width"])
versicolor_corr_test <- cor.test(iris[iris$Species == "versicolor", "Sepal.Length"], iris[iris$Species == "versicolor", "Sepal.Width"])
virginica_corr_test <- cor.test(iris[iris$Species == "virginica", "Sepal.Length"], iris[iris$Species == "virginica", "Sepal.Width"])

# Print the correlation test results
print(setosa_corr_test)
print(versicolor_corr_test)
print(virginica_corr_test)


