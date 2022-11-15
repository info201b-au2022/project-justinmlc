# summary_info.R 

# Load the tidyverse package
library(tidyverse)

# Read the csv file/files 
df3 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-justinmlc/main/data/potential1.csv")

# This function returns number of observations/rows
get_num_obs_3 <- function() {
  num_ob_3 <- nrow(df3)
  return(prettyNum(num_ob_3,big.mark=",",scientific=FALSE))
}

# This function returns number of variables/columns
get_num_var_3 <- function() {
  num_var_3 <- ncol(df3)
  return(prettyNum(num_var_3,big.mark=",",scientific=FALSE))
}

# This function returns gpa 3.5 and 4.0 average sleep hours 
find_avg_sleep <- function() {
  avg_sleep <- df3 %>% 
    select(what.is.your.cgpa, your.sleep.hour.) %>% 
    filter(what.is.your.cgpa == max(what.is.your.cgpa)) %>% 
    drop_na() %>% 
    group_by(what.is.your.cgpa) %>% 
    summarize(avg_sleep = mean(your.sleep.hour., na.rm = TRUE)) %>% 
    pull(avg_sleep)
  return(round(avg_sleep, 1))
}

# Read the csv file/files 
df2 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-justinmlc/main/data/potential3.csv")

# This function returns number of observations/rows
get_num_obs_2 <- function() {
  num_obs <- nrow(df2)
  return(prettyNum(num_obs,big.mark=",",scientific=FALSE))
}

# This function returns number of variables/columns
get_num_var_2 <- function() {
  num_var <- ncol(df2)
  return(prettyNum(num_var,big.mark=",",scientific=FALSE))
}

# This function returns average sleep hours
filter(fear_total == max(fear_total, na.rm = TRUE)) %>% 
  drop_na() %>% 
  group_by(fear_total) %>% 
  summarize(avg_sleep = mean(sleep_total, na.rm = TRUE)) %>% 
  pull(avg_sleep)
