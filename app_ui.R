library(shiny)
library("shinythemes")
library(plotly)
source("tabs/tab_panel_intro.R")
source("tabs/tab_panel_chart1.R")
source("tabs/tab_panel_chart2.R")
source("tabs/tab_panel_chart3.R")
source("tabs/tab_panel_summary.R")
source("tabs/tab_panel_report.R")

link <- a(href = "https://canvas.uw.edu/courses/1516723", "Canvas")

ui <- navbarPage(
  theme = shinytheme("simplex"),
  title =" Project Sleepy",
  position = "fixed-top",
  windowTitle = "Project Sleepy",
  header = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("Project Sleepy: INFO 201"),
    hr()
  ),
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("INFO-201 (Winter 2022): ("),
    link,
    HTML(")"),
    hr()
  ),
  
  # Introduction 
  tab_panel_intro,
  
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