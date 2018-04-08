# available sizes: small, medium, large
# put the bulmaStepItem instead of "..."
bulmaSteps <- function(..., size = NULL) {
  
  cl <- "steps"
  
  if(!is.null(size)) cl <- paste0(cl, " is-", size)
  
  shiny::tags$ul(
    class = cl,
    ...
  )
}

# available colors: blue/green default, warning, success, danger
# replace ... by bulmaStepDetails
bulmaStepItem <- function(..., color = NULL, completed = FALSE, active = FALSE) {
  
  cl <- "step-item"
  
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  if (completed == TRUE) cl <- paste0(cl, " is-completed")
  if (active == TRUE) cl <- paste0(cl, " is-active")
  
  shiny::tags$li(
    class = cl, 
    ...
  )
}

# available colors: blue/green default, warning, success, danger
# replace ... by the step description text
bulmaStepDetail <- function(..., color = NULL, completed = FALSE, title = NULL, marker = NULL) {
  
  cl <- "step-details"
  
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  if (completed == TRUE) cl <- paste0(cl, " is-completed")
  
  tagList(
    shiny::tags$div(
      class = "step-marker",
      if (!is.null(marker)) paste0(marker)
    ),
    
    shiny::tags$div(
      class = cl, 
      if (!is.null(title)) shiny::tags$p(class = "step-title", paste0(title)),
      shiny::tags$p(
        ...
      )
    )
  )
}