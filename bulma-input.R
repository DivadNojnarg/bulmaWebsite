#' @title bulma sliderInput
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @description Create a slider input \url{https://wikiki.github.io/form/slider/}.
#'
#' @param inpuId Slider Id.
#' @param label Slider label.
#' @param value TRUE or FALSE, FALSE by default.
#' @param color Slider color : \code{link}, \code{info}, \code{primary}, \code{warning},
#'  \code{danger}, \code{success}, \code{black}, \code{dark} and \code{ligth}.
#' @param size Slider size : \code{small}, \code{medium} and \code{large}.
#' @param style Slider style : \code{circle}. NULL by default, which corresponds to square style.
#' 
#'
#' @export
#'
#' @examples

bulmaSliderInput <- function(inputId, label = NULL, value, 
                             min, max, step,
                             color = NULL, size = NULL, style = NULL, 
                             vertical = FALSE, disabled = FALSE) {
  
  if (vertical) style <- NULL
  
  cl <- "slider has-output is-fullwidth shinyBulmaSlider"
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  if (!is.null(size)) cl <- paste0(cl, " is-", size)
  if (!is.null(style))  cl <- paste0(cl, " is-", style)
  
  
  
  sliderInputTag <- shiny::tags$input(
    class = cl, 
    id = inputId, 
    name = inputId,
    type = "range",
    min = min,
    max = max,
    step = step,
    shiny::tags$output(`for` = inputId)
  )
  
  if (!is.null(vertical) && vertical) sliderInputTag$attribs$orient <- "vertical"
  if (!is.null(disabled) && disabled) sliderInputTag$attribs$disabled <- "disabled"
  
  shiny::tagList(
    shiny::singleton(
      shiny::tags$head(
        shiny::includeScript(
          path = "www/bulma-slider-js.js"
        )
      )
    ),
    sliderInputTag
  )
  
}