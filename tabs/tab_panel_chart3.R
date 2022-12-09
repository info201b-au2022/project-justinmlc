# Panel for Chart 3
library(shiny)
source("source/ChartForQuestion3.R")

tab_panel_chart3 <- tabPanel(
  "Chart 3",
  sidebarLayout(
    sidebarPanel(
      sliderInput("division",
                  "Precision",
                  min = 1/3,
                  max = 1,
                  value = 1/2)
    ),
    mainPanel(
      plotlyOutput("chart3")
    )
  )
)
