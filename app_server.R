# This is where you will actually put ggplot/plotly code for graph
library(shiny)
library("shinythemes")
library(plotly)
source("tabs/tab_panel_intro.R")
source("tabs/tab_panel_chart1.R")
# To access data wrangling for done for Question 1 during P02
source("source/ChartForQuestion1.R") 
source("tabs/tab_panel_chart2.R")
# To access data wrangling for done for Question 2 during P02
source("source/ChartForQuestion2.R")
source("tabs/tab_panel_chart3.R")
# To access data wrangling for done for Question 3 during P02
source("source/ChartForQuestion3.R")
source("tabs/tab_panel_summary.R")
source("tabs/tab_panel_report.R")


server <- function(input, output) {
  #Code for Chart 1
  output$chart1 <- renderPlotly({
    ggplot(data = dataset_1) +
             geom_col(
               mapping = aes(x = what.is.your.cgpa, y = avgstudyhr, fill = what.is.your.cgpa)
             ) +
             scale_y_continuous(breaks=seq(0,10,input$division)) +
             labs(
               x = "Cumulative GPA",
               y = "Average study hour",
               title = "Students' GPA and time they spent studying"
             ) +
             theme(legend.position = "none")
           
  })
  
  # Code for Chart 2
  output$chart2 <- renderPlotly({
    ggplot(data = df) + 
    geom_point(mapping = aes(x = fear_total, y = sleep_total)) +
    geom_smooth(mapping = aes(x = fear_total, y = sleep_total)
    ) + 
    
    labs(
      x = "Fear of COVID-19 Total",
      y = "Average Hours of Sleep", 
      title = "Students' Fear of COVID-19 Total versus their Average Hours of Sleep",
    ) + 
    theme(legend.position = "none")
  })

  
  # Code for displaying chart 3 and making the buttons associate with variables
  output$chart3 <- renderPlotly({
    ggplot(data = relevant_data) + 
      geom_col(
        mapping = aes(x = what.is.your.cgpa, y = avgsleep, fill = what.is.your.cgpa)
      ) + 

       labs(
        x = "Cumulative GPA",
        y = "Average Hours of Sleep", 
        title = "Students' GPA Relative to Their Sleep Patterns"
      ) +
      theme(legend.position = "none")
    
  })
}