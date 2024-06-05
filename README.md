# Analysis of Donald Trump's Tweets

**Project Description**

This project aims to analyze the tweeting patterns of former US President Donald Trump, focusing on the differences between tweets posted from an iPhone and an Android device. The analysis replicates and verifies David Robinson’s study on the subject, examining the content and timing of tweets to uncover distinct patterns.

**Data**
trump_tweets.xlsx: Contains tweets from Donald Trump between December 2015 and August 2016.

Variables included in the dataset:

- text: Content of the tweets
- created: Timestamp of when the tweets were created
- statusSource: The device used to post the tweets


**Methodology**

1. Data Loading and Preparation:
- Loaded the dataset into a DataFrame and extracted the device information from the statusSource column using regular expressions.
2. Feature Extraction:
- Created a new column hour to capture the hour of the day each tweet was posted.
3. Data Filtering:
- Filtered the dataset to include only tweets posted from an iPhone.
4. Data Aggregation:
- Aggregated the iPhone tweets by hour to analyze the frequency of tweets posted at different times of the day.
5. Data Visualization:
- Created a line graph to visualize the hourly tweet frequency from an iPhone.

**Results**

Device Analysis:
- Extracted and labeled the device used for each tweet, allowing for a clear comparison between iPhone and Android tweets.

Timing Analysis:
- The hourly analysis revealed distinct patterns in the timing of tweets posted from an iPhone, which can be compared to previous findings.

Visualization:
- The line graph provided a visual representation of tweet frequency by hour, highlighting peak tweeting times and potential behavioral insights.

**Conclusion**

The analysis confirmed previous findings about differences in tweeting behavior based on the device used. The timing and frequency of tweets from an iPhone showed distinct patterns that contribute to understanding the overall communication strategy employed during Trump's presidency. This project demonstrates the application of data analysis techniques in uncovering behavioral insights from social media data.
