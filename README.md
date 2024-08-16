# Analysis of Donald Trump's Tweets

**Project Description**

This project aims to analyze the tweeting patterns of former US President Donald Trump, focusing on the differences between tweets posted from an iPhone and an Android device. The analysis replicates and verifies David Robinson’s study on the subject, examining the content and timing of tweets to uncover distinct patterns.

**Data**
- trump_tweets.xlsx: Contains tweets from Donald Trump between December 2015 and August 2016.
![image](https://github.com/user-attachments/assets/00e81f66-a040-47c5-9283-69171733b843)


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
- Filtered the dataset to include only tweets from an iPhone and Android.
4. Data Aggregation:
- Aggregated the iPhone tweets by hour to analyze the frequency of tweets posted at different times of the day.
5. Data Visualization:
- I created a line graph to visualize the differences between the hourly tweet frequency on an iPhone and Android.

**Results**

Device Analysis:
- Extracted and labeled the device used for each tweet, allowing for a clear comparison between iPhone and Android tweets.

Timing Analysis:
- The hourly analysis revealed distinct patterns in the timing of tweets posted from an iPhone, which can be compared to previous findings.

Visualization:
- The line graph provided a visual representation of tweet frequency by hour, highlighting peak tweeting times and potential behavioral insights.

**Conclusion**
![image](https://github.com/user-attachments/assets/2ef99846-5342-4f07-bc46-e0e0ad998a8e)


Analyzing tweeting patterns in the merged diagram aligns with the project's objective to examine former US President Donald Trump's tweet timings across different devices. The data reveals that tweets from Android devices peak in the late morning, specifically around 11:00 AM, while tweets from iPhone devices show more consistent activity throughout the day, with a significant rise in the evening, peaking around 8:00 PM.

This distinction may suggest that the devices were used for different types of communication or by different individuals within Trump's team. For instance, tweets from the Android device might reflect more personal or direct engagement from Trump himself, possibly during specific times of the day, while iPhone tweets could be managed by his team, particularly during the evening hours. This pattern aligns with findings from David Robinson’s study, highlighting the strategic use of different devices for varying messaging purposes and times, providing deeper insights into Trump's digital communication strategy.
