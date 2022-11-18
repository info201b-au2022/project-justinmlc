# Chart / Data Wrangling for Research Question 3: 
# How does sleep duration and quality impact university students’ academic performance?

# Load in necessary packages
library(tidyverse)
library(ggplot2)

# Read the csv file/files
df <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-justinmlc/main/data/potential1.csv")

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
  coord_flip() +
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
