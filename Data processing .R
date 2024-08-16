library(readxl)
library(dplyr)
library(stringr)
library(ggplot2)

setwd("/Users/ignatiusharry/Library/CloudStorage/Dropbox/Data/S2/NCCU/2nd Semester/Big data and social analysis/Mid-term")
# Load data
trumptweets <- read_xlsx("trump_tweets.xlsx")

#to get know how many tweets 
unique(trumptweets$statusSource) 


#The statusSource column contains hyperlinks that indicate the device used to post the tweets. Use regular expressions to extract and i created a new column source that contains labels like “Twitter for iPhone”, “Twitter for Android”, and etc.
trumptweets$source <- substr(trumptweets$statusSource, regexpr("@", trumptweets$statusSource) + 1, nchar(trumptweets$statusSource) - 4)
trumptweets$source

#I Created a new column named hour to extract the hour information from the created column of the posts
trumptweets$hour <- substr(trumptweets$created, 12, 13)

#I Used filter() function to create a DataFrame iphone that includes only tweets posted from an iPhone
iphone <- trumptweets %>%
  filter(source == "Twitter for iPhone")

iphone
#I Used group_by() and summarise() to aggregate iphone data to create an object iphone_hour_post, grouping by hour to calculate the number of tweets posted from an iPhone each hour
iphone_hour <- iphone %>%
  group_by(hour) %>%
  summarise(post = n())

#Then, I Plot a line graph to display the hourly tweet frequency from an iPhone
ggplot(iphone_hour, aes(x = hour, y = post, group = 1)) +
  geom_line() +
  labs(title = "The number of iPhone users tweeting per hour")


# Tweet from Android ------------------------------------------------------
#I Used filter() function to create a DataFrame iphone that includes only tweets posted from an iPhone
android <- trumptweets %>%
  filter(source == "Twitter for Android")

android
#I Used group_by() and summarise() to aggregate iphone data to create an object iphone_hour_post, grouping by hour to calculate the number of tweets posted from an iPhone each hour
library(dplyr)
android_hour <- android %>%
  group_by(hour) %>%
  summarise(post = n())

#Then, I Plot a line graph to display the hourly tweet frequency from an iPhone
ggplot(android_hour, aes(x = hour, y = post, group = 1)) +
  geom_line() +
  labs(title = "The number of android users tweeting per hour")


# Combine two data --------------------------------------------------------

android_hour$device <- "Android"
iphone_hour$device <- "iPhone"

# Combine the two data frames
combined_data <- bind_rows(android_hour, iphone_hour)

ggplot(combined_data, aes(x = hour, y = post, color = device, group = device)) +
  geom_line() +
  labs(title = "The number of Android and iPhone users tweeting per hour",
       x = "Hour",
       y = "Number of Tweets") +
  theme_minimal()
