#' @title bulma Tags.
#'
#' @description Create a tag \url{https://bulma.io/documentation/elements/tag/}.
#'
#' @param label tag label.
#' @param color Color of the tag : \code{link}, \code{info}, \code{primary}, \code{warning},
#'  \code{danger}, \code{success}, \code{black}, \code{dark} and \code{ligth}.
#' @param size Size of the tag : \code{small},\code{medium} and \code{large}.
#' @param style Style of the tag :  \code{rounded} or \code{delete}. NULL by default.
#'
#' @rdname tags
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

bulmaTag <- function(label = NULL, color = NULL, size = NULL, style = NULL) {
  cl <- "tag"
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  if (!is.null(size)) cl <- paste0(cl, " is-", size)
  if (!is.null(style)) cl <- paste0(cl, " is-", style)
  
  shiny::tags$span(
    class = cl, 
    label
  )
  
}



#' @title bulma Tag List.
#'
#' @description Create a tag list or bulmaTags \url{https://bulma.io/documentation/elements/tag/}.
#'
#' @param ... slot for bulmaTag.
#'
#' @rdname tags
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

# insert multiple tags inside
bulmaTagList <- function(...) {
  shiny::tags$div(
    class = "tags",
    ...
  )
}

############ tagAddons ############



#' @title bulma Tag Addon.
#'
#' @description Merge two tags together \url{https://bulma.io/documentation/elements/tag/}.
#'
#' @param ... slot for 2 bulmaTag.
#'
#' @rdname tags
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

# insert 2 tags to be merged here
bulmaTagAddon <- function(...) {
  shiny::tags$div(
    class = "tags has-addons",
    ...
  )
}


#' @title bulma Tag Addon vertical List.
#'
#' @description Create a vertical list of tagAddons \url{https://bulma.io/documentation/elements/tag/}.
#'
#' @param ... slot for bulmaTagAddon.
#'
#' @rdname tags
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

bulmaTagAddons <- function(...) {
  shiny::tags$div(
    class = "control",
    ...
  )
}


#' @title bulma Tag Addon horizontal List.
#'
#' @description Create a vertical list of tagAddons \url{https://bulma.io/documentation/elements/tag/}.
#'
#' @param ... slot for bulmaTagAddons.
#'
#' @rdname tags
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

bulmaTagAddonList <- function(...) {
  shiny::tags$div(
    class = "field is-grouped is-grouped-multiline",
    ...
  )
}