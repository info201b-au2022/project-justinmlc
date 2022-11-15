# Chart / Data Wrangling for Research Question 3: 
# How does sleep duration and quality impact university students’ academic performance?

# Load in necessary packages
library(tidyverse)
library(ggplot2)

# Read the csv file/files
df <- read.csv("https://storage.googleapis.com/kagglesdsdata/datasets/2302266/3873615/Student%20Study%20data.csv?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221115%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221115T034427Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=868261f32103ef4b9d517b621877e9cc5c53d0bbb25608e150d0c4145e544b34c7d0b12b06c0f677180ab471ebebe53829ec622d2c57005d6b5d12e6b82884fc16e047efcefdec5dc4bc238704b82319e9a82c49f322e6f87e782a81f581811b9ec79b0eee0f55340c65144510ddaac96c93d64afca8b909fc72cca936331011158fba0372744730d19304ec29c32d7b3908e57e0e4dcc5bc48ef801f4c5eeb3fb14c85c8aeb2ab04d66fa4fa2af18a101abae21de8e1f296c69ac57b0f2d05e5a3125e67e0be11a99debe931736358edecd3f1396453fdacf46f69b9b64fa888131e4900c35d9c7314ba991451c65acd7b28c1ea8bfabd2bc9fc64f2679bfec")

relevant_data <- df %>% 
  select(your.sleep.hour., what.is.your.cgpa) %>% 
  group_by(what.is.your.cgpa) %>% 
  summarize(avgsleep = mean(your.sleep.hour.))

chart3 <- ggplot(relevant_data) + 
  geom_col(
    mapping = aes(x=what.is.your.cgpa, 
                  y=avgsleep, fill=what.is.your.cgpa)  
  ) + 
  scale_y_continuous(breaks=seq(0,10,1/2)) +
  
  labs(
    x = "Cumulative GPA",
    y = "Average Hours of Sleep", 
    title = "Students' GPA Relative to Their Sleep Patterns",
  ) + 
  theme(legend.position = "none")
  
chart3

find_max_avg_sleep <- function() {
  max_avg_sleep <- df %>% 
    filter(what.is.your.cgpa == max(what.is.your.cgpa, na.rm = TRUE)) %>% 
    drop_na() %>% 
    group_by(what.is.your.cgpa) %>% 
    summarize(avg_sleep = mean(your.sleep.hour., na.rm = TRUE)) %>% 
    pull(avg_sleep)
  return(round(max_avg_sleep, 1))
}
