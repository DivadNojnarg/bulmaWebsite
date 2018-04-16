sidebar_ui <- function() {
  bulmaNav(
    "Right sidebar",
    bulmaContainer(
      bulmaTitle("Right sidebar demo"),  
      HTML(
        paste0('<button class="button is-info" 
               data-show="quickview" data-target="quickviewDefault">
               <span class="icon"><i class="fas fa-cogs"></i>
               </span></button>
               ')
      )
    ),
    bulmaSidebar(
      header_title = "test",
      
      bulmaSubtitle("Input elements"),
      
      bulmaSliderInput("sliderbis", color = "warning", 10, 3, 150),
      
      bulmaSwitchInput(
        inputId = "switchbis", 
        label = "switch", 
        value = TRUE,
        
        color = "danger", 
        size = "small", 
        style = "thin",
        
        rtl = FALSE, 
        disabled = FALSE),
      
      bulmaSubtitle("Other Stuff")
      
    ),
    plotOutput("plotbis")
  )
}