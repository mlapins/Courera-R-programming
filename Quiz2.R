
library(datasets)
data(iris)

# what is the mean of 'Sepal.Length' for the species virginica? 
#To get the answer here, you can use 'tapply' to calculate the mean of 'Sepal.Length' within each species.

#Answer but try with tapply
# The tapply function is useful when we need to break up a vector into groups 
# defined by some classifying factor, compute a function on the subsets, and return the results in a convenient form.
# EG have a column of data with factors (categories) and
#  you want to summaries each group of factors


6.588

mean(iris[iris$Species == "virginica",]$Sepal.Length)

tapply(iris$Sepal.Length, iris$Species, mean)

# OR

with(iris,tapply(Sepal.Length, Species, mean))

# Result
setosa versicolor  virginica 
5.006      5.936      6.588 

#what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
apply(iris[, 1:4], 2, mean)


library(datasets)
data(mtcars)

#How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
with(mtcars, tapply(mpg, cyl, mean))


# what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
mean(mtcars[mtcars$cyl == "8",]$hp) - mean(mtcars[mtcars$cyl == "4",]$hp)


