# the content to print on the loading page
# from values: right-to-left, left-to-right
bulmaPageLoader <- function(content = "Loading...", from = NULL) {
  
  cl <- "pageloader"
  if (!is.null(from))  cl <- paste0(cl, " -is-", from)
  
  shiny::tags$div(
    class = cl,
    shiny::tags$span(class = "title", content)
  )
} 