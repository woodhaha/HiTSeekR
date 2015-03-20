output$uiOutput_quality_control <- renderUI({  
  
  elements <- list(
    tabPanel("Plate Signal Spread",
      plotOutput("plateMeanPlot"),
      shinyalert("plateMeanInfo")
    ),
    tabPanel("Control Signal Spread", 
      plotOutput("controlPlot")
    ),
    tabPanel("Row and Column Effect",
      plotOutput("rowAndColumn")
    )
  )
  do.call(tabsetPanel, elements)
})