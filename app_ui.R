library(shiny)
library("shinythemes")
library(plotly)
source("tabs/tab_panel_intro.R")
source("tabs/tab_panel_chart1.R")
source("tabs/tab_panel_chart2.R")
source("tabs/tab_panel_chart3.R")
source("tabs/tab_panel_summary.R")
source("tabs/tab_panel_report.R")

ui <- navbarPage(
  theme = shinytheme("slate"),
  title =" Project Sleepy",
  position = "fixed-top",
  windowTitle = "Project Sleepy",
  
  # Introduction 
  #tab_panel_intro,
  
  # Chart 1
  #tab_panel_chart1,
  
  #Chart 2
  #tab_panel_chart2,
  
  #Chart 3
  tab_panel_chart3,
  
  # Summary Takeaways
  #tab_panel_summary,
  
  # Report
  #tab_panel_report
  
)