server <- function(input, output){
  output$plot1 <- renderPlot({
    if (input$switch1 == TRUE) {
      plot(mtcars$wt, mtcars$mpg)
    }
  })
  
  output$switches <- renderPrint({
    c(input$switch1, input$switch2, input$switch3, input$switch4)
  })
}
