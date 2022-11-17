# Table
library(tidyverse)

df1 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-justinmlc/main/data/potential1.csv")

colnames(df1)[6] <- 'study_hour'
colnames(df1)[7] <- 'sleep_hour'
colnames(df1)[9] <- 'age'
colnames(df1)[10] <- 'cgpa'

table <- df1 %>% 
    drop_na() %>% 
    group_by(cgpa, study_hour) %>% 
    summarize(avg_sleep_hour = mean(sleep_hour), .groups = 'drop')
table$avg_sleep_hour <- round(table$avg_sleep_hour, 1)


