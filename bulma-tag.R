#' @title bulma Tags.
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
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
#'    bulmaColumns(
#'     bulmaColumn(
#'       width = 3,
#'       bulmaTag(label = "tag", color = "info", size = NULL, style = NULL),
#'       br(), br(),
#'       bulmaTag(label = "tag", color = "warning", size = NULL, style = NULL),
#'       br(), br(),
#'       bulmaTag(label = "tag", color = "success", size = "large", style = "rounded")
#'     ),
#'     bulmaColumn(
#'       width = 3,
#'       bulmaTagList(
#'         bulmaTag(label = "tag", color = "danger", size = "small", style = NULL),
#'         bulmaTag(label = "tag", color = "warning", size = "medium", style = NULL),
#'         bulmaTag(label = "tag", color = "success", size = "large", style = "rounded")
#'       )
#'     ),
#'     bulmaDivider(vertical = TRUE),
#'     bulmaColumn(
#'       width = 2,
#'       bulmaTagAddon(
#'         bulmaTag(label = "build", color = "dark", size = "small", style = NULL),
#'         bulmaTag(label = "passing", color = "success", size = "small", style = NULL)
#'       ),
#'       bulmaTagAddon(
#'         bulmaTag(label = "npm", color = "dark", size = "small", style = NULL),
#'         bulmaTag(label = "0.5.0", color = "info", size = "small", style = NULL)
#'       ),
#'       bulmaTagAddon(
#'         bulmaTag(label = "chat", color = "dark", size = "small", style = NULL),
#'         bulmaTag(label = "on gitter", color = "primary", size = "small", style = NULL)
#'       )
#'     ),
#'     bulmaColumn(
#'       width = 4,
#'       bulmaTagAddonList(
#'         bulmaTagAddons(
#'           bulmaTagAddon(
#'             bulmaTag(label = "build", color = "dark", size = "small", style = NULL),
#'             bulmaTag(label = "passing", color = "success", size = "small", style = NULL)
#'           )
#'         ),
#'         bulmaTagAddons(
#'           bulmaTagAddon(
#'             bulmaTag(label = "npm", color = "dark", size = "small", style = NULL),
#'             bulmaTag(label = "0.5.0", color = "info", size = "small", style = NULL)
#'           )
#'         ),
#'         bulmaTagAddons(
#'           bulmaTagAddon(
#'             bulmaTag(label = "chat", color = "dark", size = "small", style = NULL),
#'             bulmaTag(label = "on gitter", color = "primary", size = "small", style = NULL)
#'           )
#'         )
#'       )
#'     )
#'     )
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

bulmaTagAddonList <- function(...) {
  shiny::tags$div(
    class = "field is-grouped is-grouped-multiline",
    ...
  )
}