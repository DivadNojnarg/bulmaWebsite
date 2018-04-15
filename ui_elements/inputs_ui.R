inputs_ui <- function() {
  bulmaNav(
    "New Inputs",
    
    br(), br(),
    
    bulmaContainer(
      bulmaColumns(
        bulmaColumn(
          width = 6,
          bulmaSubtitle("Inputs"),
          bulmaSwitchInput(
            inputId = "switch1", 
            label = "switch 1", 
            value = FALSE,
            color = NULL, 
            size = NULL, 
            style = NULL,
            rtl = FALSE, 
            disabled = FALSE),
          
          bulmaSwitchInput(
            inputId = "switch2", 
            label = "switch 2", 
            value = TRUE,
            color = "warning", 
            size = "large", 
            style = "rounded",
            
            rtl = FALSE, 
            disabled = TRUE),
          
          bulmaSwitchInput(
            inputId = "switch3", 
            label = "switch 3", 
            value = TRUE,
            
            color = "danger", 
            size = "small", 
            style = "thin",
            
            rtl = FALSE, 
            disabled = FALSE),
          
          bulmaSwitchInput(
            inputId = "switch4", 
            label = "switch 4", 
            value = FALSE,
            
            color = NULL, 
            size = NULL, 
            style = "mixed3",
            rtl = TRUE, 
            disabled = FALSE)
        ),
        
        #bulmaDivider(vertical = TRUE),
        
        bulmaColumn(
          width = 6,
          bulmaSubtitle("Outputs (the plot only displays if switch 1 is TRUE)"),
          plotOutput("plot1"),
          uiOutput("switches")
        )
      ),
      
      bulmaDivider(),
      
      bulmaContainer(
        br(),
        bulmaColumns(
          bulmaColumn(
            width = 6,
            bulmaSubtitle("Inputs"),
            bulmaSliderInput(
              inputId = "slider", 
              value = 10, 
              min = 3, 
              max = 150, 
              class = "is-warning"
            ),
            bulmaSliderInput(
              inputId = "slider2", 
              size = "small",
              value = 10, 
              min = 3, 
              max = 150, 
              class = "is-danger"
            ),
            bulmaSliderInput(
              inputId = "slider3", 
              size = "large",
              value = 10, 
              min = 3, 
              max = 150, 
              class = "is-info is-circle"
            ),
            bulmaSliderInput(
              inputId = "slider4", 
              size = "medium",
              value = 10, 
              min = 3, 
              max = 150, 
              class = "is-success is-circle"
            )
          ),
          bulmaColumn(
            width = 6,
            bulmaSubtitle("Outputs (only the first slider is linked to this plot)"),
            plotOutput("plot")
          )
        )
      )
      
    )
  )
}