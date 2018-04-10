#' @title bulma pageLoader.
#'
#' @description Create a pageLoader for 3 seconds \url{https://wikiki.github.io/elements/pageloader/}.
#'
#' @param content content to display when loading.
#' @param from NULL default. Where the pageLoader comes from (animation) :
#' \code{right-to-left} or \code{left-to-right}.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' if (interactive()) {
#'
#'  ui <- bulmaPage(
#'   bulmaContainer(
#'    bulmaPageLoader(content = "loading ...", from = "right-to-left")
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

bulmaPageLoader <- function(content = "Loading...", from = NULL) {
  
  cl <- "pageloader"
  if (!is.null(from))  cl <- paste0(cl, " -is-", from)
  
  shiny::tags$div(
    class = cl,
    shiny::tags$span(class = "title", content)
  )
} 