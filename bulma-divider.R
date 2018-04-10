#' @title bulma Divider.
#'
#' @description Create a vertical or horizontal divider \url{https://wikiki.github.io/layout/divider/}.
#'
#' @param content content to display (In mathematical textbooks we usually find ***).
#' @param vertical TRUE or FALSE. Wether to use the divider on a vertical or
#' horizontal mode.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' if (interactive()) {
#'
#'  ui <- bulmaPage(
#'   bulmaContainer(
#'   
#'   )
#'  )
#'
#'  server <- function(input, output, session) {
#'
#'  }
#'
#'  shinyApp(ui = ui, server = server)
#'
#' }
#' }


bulmaDivider <- function(content = NULL, vertical = FALSE){
  if (vertical == FALSE) {
    shiny::tags$div(
      class = "is-divider", `data-content` = paste0(content)
    )
  } else {
    shiny::tags$div(
      class = "columns",
      shiny::tags$div(class = "column"),
      shiny::tags$div(
        class = "is-divider-vertical", `data-content` = paste0(content)
      ),
      shiny::tags$div(class = "column")
    )
  }
}