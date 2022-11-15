# summary_info.R 

# Load the tidyverse package
library(tidyverse)

# Read the csv file/files 
gpa <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-justinmlc/main/data/potential1.csv")

# This function returns number of observations/rows
get_num_obs <- function() {
  num_obs <- nrow(gpa)
  return(prettyNum(num_obs,big.mark=",",scientific=FALSE))
}

# This function returns number of variables/columns
get_num_var <- function() {
  num_var <- ncol(gpa)
  return(prettyNum(num_var,big.mark=",",scientific=FALSE))
}

# This function returns average sleep hours
find_avg_sleep <- function() {
  avg_sleep <- gpa %>% 
    drop_na() %>% 
    group_by(your.sleep.hour.) %>% 
    summarize(avg_sleep = mean(your.sleep.hour., na.rm = TRUE)) %>% 
    pull(avg_sleep)
  return(round(avg_sleep, 1))
}



