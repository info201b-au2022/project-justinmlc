# Chart / Data Wrangling for Research Question 3: 
# How does sleep duration and quality impact university students’ academic performance?

# Load in necessary packages
library(tidyverse)
library(ggplot2)
library(dplyr)

# Read the csv file/files
df <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-justinmlc/main/data/potential1.csv")
dataset_1 <- df %>% 
  select(study.hour, what.is.your.cgpa) %>% 
  group_by(what.is.your.cgpa) %>% 
  summarize(avgstudyhr = mean(study.hour))

chart1 <- ggplot(dataset_1) + 
  geom_histogram(
    mapping = aes(
      x = what.is.your.cgpa, 
      y = avgsleep, fill=what.is.your.cgpa)  
  ) + 
  
  labs(
    x = "Cumulative GPA",
    y = "Average study hour", 
    title = "Students' GPA and time they spent studying",
  ) + 
  theme(legend.position = "none")
plot(chart1)

find_max_avg_studyhr <- function() {
  max_avg_studyhr <- df %>% 
    filter(what.is.your.cgpa == max(what.is.your.cgpa, na.rm = TRUE)) %>% 
    drop_na() %>% 
    group_by(what.is.your.cgpa) %>% 
    summarize(avg_studyhr = mean(study.hour, na.rm = TRUE)) %>% 
    pull(avg_studyhr)
  return(round(max_avg_studyhr, 1))
}