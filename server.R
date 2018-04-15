server <- function(input, output){
  output$plot1 <- renderPlot({
    if (input$switch1 == TRUE) {
      plot(mtcars$wt, mtcars$mpg)
    }
  })
  
  output$switches <- renderPrint({
    c(input$switch1, input$switch2, input$switch3, input$switch4)
  })
  
  
  data <- reactive({
    rnorm(input$slider, 20, 4)
  })
  
  output$plot <- renderPlot({
    hist(data())
  })
  
  lapply(1:5, FUN = function(i) {
    output[[paste0("plotmenu", i)]] <- renderPlot(
      plot(1:nrow(mtcars), mtcars[[input$select]])
    )
  })
  
}
