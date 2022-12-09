# Report Panel (CLean up and finish original P01 Proposal)

library(shiny)
library("markdown")

tab_panel_report <- tabPanel(
  "Report",
  
  includeMarkdown("docs/p01-proposal.md")
)