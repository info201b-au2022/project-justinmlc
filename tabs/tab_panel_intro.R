# Intro Panel (Brief Overview)
para1 <- paste("Sleep deprivation is common amongst university students who live in a culture that promotes reduced sleep, 
                due to the burden of academic work and social pursuits. Sleep deprivation and sleepiness are caused by a host 
                of reasons and have numerous negative consequences. Some of the reasons for poor sleep hygiene include alcohol and 
                caffeine intake, stimulants, and technology, which prevent students achieving sufficient sleep time and quality. 
                Sleep deprivation is often termed either acute sleep deprivation or chronic partial sleep deprivation. 
                Acute sleep deprivation is termed “pulling an all-nighter”, meaning that a person stays up for 24 hours or longer. 
                More typically, sleep deprivation consists of chronic partial sleep deprivation, where a student obtains some, 
                but an overall inadequate amount of sleep. A cross-sectional survey found that 71% of students did not achieve the recommended 8 hrs of sleep, 
                with 60% classified as poor sleepers. While many studies have investigated the effects of sleep deprivation, 
                few focus on university students, despite the prevalence and impact of sleep deprivation in this population. 
                This project is aimed to show how a night of sleep deprivation, equivalent to an “all-nighter”, 
                would have a negative impact on the motor and cognitive performance of students.")
tab_panel_intro <- tabPanel(
  "Intro",
  fluidRow(
    
    
    column(
      8, 
      h1("Introduction"),
      p(para1),
      img(class="img-polaroid",
          src="sleeping.jpeg"
      ),
      tags$small(
        "Source: Photographed at the University of St. Thomas"
      )
    )
  )
)