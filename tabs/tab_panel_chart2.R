# Panel for Chart 2

library(shiny)
source("source/ChartForQuestion2.R")

tab_panel_chart2 <- tabPanel(
  "Chart 2",
  sidebarLayout(
    sidebarPanel(
      sliderInput("division",
                  "Precision",
                  min = 1/3,
                  max = 1,
                  value = 1/2)
    ),
    mainPanel(
      plotlyOutput("chart2")
    )
  )
)