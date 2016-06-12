install.packages("nycflights13")
library(nycflights13)
data(flights)
head(flights)

#Which plane (tailnumber) has the longest arrival delay? plane_max_ad
plane_max_ad <- flights$tailnum[which.max(flights$arr_delay)]
plane_max_ad

# How many rows are in this data frame? num_rows
num_rows <- nrow(flights)
num_rows

# How many variables are in this data frame? num_vars
# What was the longest departure delay? longest_dep_delay
# How long were the top 10 longest flights measured from departure to arrival? longest_flights
# What is the average departure delay time for United Airlines (carrier UA)? ua_delay
# Order the months from highest average departure delay time to lowest. month_delay
# How many unique planes does American Airlines (AA) have? num_planes_aa
# How many flights originating from JFK flew more than 1000 miles? jfk_1000mi
# How many airlines fly from LGA to DFW? num_lga_dfw
# Which airline had the most flights coming out of JFK? most_flights_jfk

