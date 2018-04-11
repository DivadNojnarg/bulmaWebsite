#' @title bulma SwitchInput
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @description Create a switch input \url{https://wikiki.github.io/form/switch/}.
#'
#' @param inpuId Switch Id.
#' @param label Switch label.
#' @param value TRUE or FALSE, FALSE by default.
#' @param color Switch color : \code{link}, \code{info}, \code{primary}, \code{warning},
#'  \code{danger}, \code{success}, \code{black}, \code{dark} and \code{ligth}.
#' @param size Switch size : \code{small}, \code{medium} and \code{large}.
#' @param style Switch style :  \code{thin}, \code{rounded}, \code{outlined} or 
#' \code{mixed1}, \code{mixed2}, \code{mixed3} and \code{mixed4} (mixed1 is thin-rounded, mixed2
#' is thin-outlined, mixed3 is rounded-outlined and mixed4 is thin-rounded-outlined)
#' NULL by default, which corresponds to square style.
#' 
#'
#' @export
#'
#' @examples

bulmaSwitchInput <- function(inputId, label = NULL, value = FALSE, 
                             color = NULL, size = NULL, style = NULL, 
                             rtl = FALSE, disabled = FALSE) {
  
  cl <- "switch shinyBulmaSwitch"
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  if (!is.null(size)) cl <- paste0(cl, " is-", size)
  if (!is.null(style)) {
    if (style == "mixed1") cl <- paste0(cl, " is-thin is-rounded")
    else if (style == "mixed2") cl <- paste0(cl, " is-thin is-outlined")
    else if (style == "mixed3") cl <- paste0(cl, " is-rounded is-outlined")
    else if (style == "mixed4") cl <- paste0(cl, " is-thin is-rounded is-outlined")
    else cl <- paste0(cl, " is-", style)
  }
  
  if (rtl == TRUE) cl <- paste0(cl, " is-rtl")
  
  field <- shiny::tags$div(
    class = "field"
  )
  
  switchInputTag <- shiny::tags$input(
    class = cl, 
    id = inputId, 
    name = inputId,
    type = "checkbox",
    shiny::tags$label(`for` = inputId, label)
  )
  
  if (!is.null(value) && value) switchInputTag$attribs$checked <- "checked"
  if (!is.null(disabled) && disabled) switchInputTag$attribs$disabled <- NA
  
  field <- shiny::tagAppendChild(field, switchInputTag)
  
  
  shiny::tagList(
    shiny::singleton(
      shiny::tags$head(
        shiny::includeScript(
          path = "" #"www/bulma-switch.js"
        )
      )
    ),
    field
  )
  
}