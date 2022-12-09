# Panel for Chart 1
library(shiny)
source("source/ChartForQuestion1.R")

tab_panel_chart1 <- tabPanel(
  "Chart 1",
  sidebarLayout(
    sidebarPanel(
      sliderInput("division",
                  "Precision",
                  min = 1/3,
                  max = 1,
                  value = 1/2)
    ),
    mainPanel(
      plotlyOutput("chart1")
    )
  )
)