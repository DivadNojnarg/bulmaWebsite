
bulmaBox <- function(...) {
  shiny::tags$div(
    class = "box",
    shiny::tags$article(
      class = "media",
      ...
    )
  )
}

# use bulmaFigure to generate the graph
bulmaBoxMedia <- function(..., src = NULL, size = "64x64") {
  tagList(
    # media left 
    shiny::tags$div(
      class = "media-left",
      bulmaFigure(src = src, size = size)
    ),
    # body
    shiny::tags$div(
      class = "media-content",
      shiny::tags$div(
        class = "content",
        shiny::tags$p(...)
      )
    )
  )
}