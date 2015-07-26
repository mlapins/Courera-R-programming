#Get working directory
getwd()

#Read in a csv file
ex <- read.csv('c:/r/ex/hw1_data.csv')

#Get column names of datafram
names(ex)

#Get size of dataframe
dim(ex) #counts total rows and columns
length(ex) # counts number of columns
length(ex$Ozone) # counts number of rows of that column

#Get rows of data
ex[47,]
#Get a value from a row and colum
ex[47,"Wind"]
ex$Wind[47]


#subset by certain values
x[c(3,5,7)]


#subset and exclude rows 2 and 10
x[-c(2,10)]

#Extract month = 5
exmth5 <- subset(ex, Month == 5)

#Summarise first column called Ozone
summary(exmth5$Ozone)

#Count number of NA
sum(is.na(ex$Ozone))

#Extract values within a range
mth6 <- subset(ex, Ozone > 31 & Temp >90)

#Mean of single column
mean(mth6$Temp)

#Find out what's in memory
> ls()

#remove everything in memory
> rm(list=ls())