# Chart / Data Wrangling for Research Question 2: 
# What is the relationship between sleep duration and fear of COVID-19 
# for university students for online learning during the COVID-19 pandemic?

# Load in necessary packages
library(tidyverse)
library(ggplot2)

# Read the csv file/files
df <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-justinmlc/main/data/potential3.csv")
chart_2_data <- df %>% 
  select(sleep_total, fear_total) %>% 
  group_by(fear_total) %>% 
  summarize(avg = mean(sleep_total))

view(df)


chart2 <- ggplot(data = df) + 
geom_point(mapping = aes(x = fear_total, y = sleep_total)) +
geom_smooth(mapping = aes(x = fear_total, y = sleep_total)
  ) + 
  
  labs(
    x = "Fear of COVID-19 Total",
    y = "Average Hours of Sleep", 
    title = "Students' Fear of COVID-19 Total versus their Average Hours of Sleep",
  ) + 
 theme(legend.position = "none")

find_max_avg_fear <- function() {
  max_avg_fear <- df %>% 
    filter(fear_total == max(fear_total, na.rm = TRUE)) %>% 
    drop_na() %>% 
    group_by(fear_total) %>% 
    summarize(avg_sleep = mean(sleep_total, na.rm = TRUE)) %>% 
    pull(avg_sleep)
  return(round(max_avg_fear, 1))
}

plot <- plot(chart2) 
