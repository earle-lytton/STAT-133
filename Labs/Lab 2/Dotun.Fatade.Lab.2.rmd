setwd("C:/Users/Navier-Earle/Documents/College/1 - summer 2016/stat 133/dataset")
library(readr)
tents <- read_csv("tents.csv", col_types = "ccnniccc")
str(tents)

#What class is tents?
class (tents)

#How many rows are in tents?
nrow(tents)

#How many columns are in tents?
ncol(tents)

#What are the names of the columns?
names(tents)

#Display the first 5 rows.
head(tents)

#Display the last 4 rows.
tail(tents)

#Find out how to use quantile to find the interquartile range (75th percentile - 25th percentile) of the weights of the tents.


#Find the standard deviation of the heights of the tents. Does R use n or n-1 in the denominator when calculating standard deviation?
summary(tents$height)

#The weight is given in grams. Add a new column to the data frame called weight_lbs that contains the weight of the tents in pounds. Remember to overwrite tents with your update.
tents$weight_lbs <- tents$weight * 0.0022

#The height is given in centimeters. Add a new variable height_in to the data frame that contains the height of the tents in inches. Remember to overwrite tents with your update.
tents$height_in <- tents$height * 0.3937

#How many tents cost more than $400?
sum(tents$price < 400)

#Subset the data frame so that it only contains tents that are valued $300 or less. Assign the subsetted data frame the name so_cheap_tents.
so_cheap_tents <- subset(tents, tents$price < 300)

#Of the tents that are more than $300, what percent are big-agnes tents?
table(tents$brand)
big_agnes <- subset(so_cheap_tents, tents$brand == 'big-agnes')
big_agnes

#Select the best use column of tents in four different ways: using $, [[]], position number and [], and variable name and [].

#What is the name of the tent with the best height-to-weight ratio?

#Run table with two arguments, seasons and capacity (this should be one table). What did it do?
table(tents$seasons)
table(tents$capacity)

#What type of tent (bestuse) is the most common? Your answer should return only the use and not the count.
which.max(table(tents$brand))

#Create a data frame called kelty with only data on kelty tents. Do the same for big-agnes. Then, combine the two data frames.
