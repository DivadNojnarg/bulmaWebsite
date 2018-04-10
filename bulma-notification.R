#' @title bulma Notification.
#'
#' @description Create a notification box \url{https://bulma.io/documentation/elements/notification/}.
#'
#' @param ... any element.
#' @param color the background color : \code{link}, \code{info}, \code{primary}, \code{warning},
#'  \code{danger}, \code{success}, \code{black}, \code{dark} and \code{ligth}.
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

bulmaNotification <- function(..., color = NULL) {
  
  cl <- "notification"
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  
  shiny::tags$div(
    class = cl,
    ... 
  )
}