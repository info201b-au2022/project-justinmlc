# Chart / Data Wrangling for Research Question 3: 
# How does sleep duration and quality impact university students’ academic performance?

# Load in necessary packages
library(tidyverse)
library(ggplot2)

# Read the csv file/files
df <- read.csv("https://storage.googleapis.com/kagglesdsdata/datasets/2302266/3873615/Student%20Study%20data.csv?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221110%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221110T213846Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=39b470f2f96f342a84fcaf1fcf7d5fe808f78bf3bd0cb49633b3f77bf3d4de113ec74996b8d559fca3a9296ab05cd52ff76f986553e66a8b0d0f8ca4eaa1a71b14890c3ebb0888559c82e524a7eec8d33718e6d356f4b7b8afb25b2b61ae4a3f3bd361cd81cae2b5a1f46af69be205fb49975f3f958bf2e691b671021fed04d524abe6841c0c3b12e38a9657b8fdcbfb4e8c8684abbe96148af44c820a09ea5cfbb199c01c6b518282fd6c1a488d3de38ff6e566969e2c369a684d7cb0cc80dc2471f9bcfa16ab39993c7f2139e71d0c04541886e265439d2e74a6ce08aedefae390fe9167a5619b7a4002f060c9983107d53239e94b6377b8cf9c928a327ab7")

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
