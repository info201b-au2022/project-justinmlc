# Summary Panel (3 Major Takeaways)
tt <- paste("After examining the data, we found three main takeaways:")
p1 <- paste("1. In general, the longer the average study hours, 
            the better the grades. 
            Students with GPA between 3.5 and 4.0 are the students with the 
            longest average study time. ")

p2 <- paste("2. There is a clear trend in students' grades and the hours of sleep they get. 
            Students who sleep longer tend to have higher GPAs.")

p3 <- paste("3. Students' fear of Covid-19 is directly proportional to the amount of sleep they get. 
            The more fearful the students were about Covid-19, the longer they slept on average. ")

tab_panel_summary <- tabPanel(
  "Summary",
  fluidRow(
    column(
      8, 
      h1("Summary"),
      strong(tt),
      p(p1),
      p(p2),
      p(p3),
      img(src="chart1.png", height="50%", width="33%", align="left"),
      img(src="chart3.png", height="50%", width="33%", align="middle"),
      img(src="chart2.png", height="50%", width="33%", align="right")
    )
  )
)
