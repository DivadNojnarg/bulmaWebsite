# available colors: primary, link, info, success, warning, danger
bulmaNotification <- function(..., color = NULL) {
  
  cl <- "notification"
  if(!is.null(color)) cl <- paste0(cl, " is-", color)
  
  shiny::tags$div(
    class = cl,
    ... 
  )
}