inputs_ui <- function() {
  bulmaNav(
    "New Inputs",
    
    br(), br(),
    
    div(style = "text-align: center;",
        bulmaTitle("The plot only displays if switch 1 is TRUE.")),
    
    hr(),
    
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
          bulmaSubtitle("Outputs"),
          plotOutput("plot1"),
          uiOutput("switches")
        )
      )
    )
  )
}