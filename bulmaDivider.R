bulmaDivider <- function(content = NULL, vertical = FALSE){
  if (vertical == FALSE) {
    shiny::tags$div(
      class = "is-divider", `data-content`= paste0(content)
    )
  } else {
    shiny::tags$div(
      class = "columns",
      shiny::tags$div(class = "column"),
      shiny::tags$div(
        class = "is-divider-vertical", `data-content`= paste0(content)
      ),
      shiny::tags$div(class = "column")
    )
  }
}