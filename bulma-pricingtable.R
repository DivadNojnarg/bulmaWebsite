#' @title bulma Pricing Table.
#'
#' @description Create an horizontal or vertical pricing table \url{https://wikiki.github.io/components/pricingtable/}.
#'
#' @param ... slot for bulmaPricingPlan.
#' @param horizontal FALSE by default. Wether to display the table vertically
#' or horizontally.
#'
#' @rdname pricingtable
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

bulmaPricingtable <- function(..., horizontal = FALSE) {
  
  cl <- "pricing-table"
  if (horizontal == TRUE) cl <- paste0(cl, " is-horizontal")
  shiny::tags$div(
    class = cl,
    ...
  )
}

#' @title bulma Pricing Table Plan .
#'
#' @description Create a pricing table plan to insert in a bulmaPricingTable \url{https://wikiki.github.io/components/pricingtable/}.
#'
#' @param ... slot for bulmaPricingPlanItem.
#' @param active FALSE by default. If true, the corresponding pricing plan
#' is highlighted.
#' @param color the plan color : \code{link}, \code{info}, \code{primary}, \code{warning},
#'  \code{danger}, \code{success}, \code{black}, \code{dark} and \code{ligth}.
#' @param plan_title the plan title.
#' @param plan_price the plan price.
#' @param plan_currency the plan currency.
#' @param plan_period the payment periodicity.
#' @param button_status NULL or \code{"disabled"}.
#' @param button_name the button label.
#'
#' @rdname pricingtable
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

bulmaPricingPlan <- function(..., active = FALSE, color = NULL, plan_title = NULL,
                             plan_price = NULL, plan_currency = NULL,
                             plan_period = NULL, button_status = NULL,
                             button_name = NULL) {
  
  cl <- "pricing-plan"
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  if (active == TRUE) cl <- paste0(cl, " is-active")
  
  
  shiny::tags$div(
    class = cl,
    # header
    shiny::tags$div(class = "plan-header", plan_title),
    # price 
    shiny::tags$div(
      class = "plan-price", 
      shiny::tags$span(
        class = "plan-price-amount",
        shiny::tags$span(class = "plan-price-currency", plan_currency),
        plan_price
      ),
      plan_period
    ),
    # items 
    shiny::tags$div(
      class = "plan-items",
      # items
      ...
    ),
    # footer button
    shiny::tags$div(
      class = "plan-footer",
      shiny::tags$button(
        class = "button is-fullwidth", 
        if (!is.null(button_status)) disabled = button_status,
        button_name
      )
    )
  )
}



#' @title bulma Pricing Plan Item.
#'
#' @description bulma item to insert in a bulmaPricingPlan container \url{https://wikiki.github.io/components/pricingtable/}.
#'
#' @param name item name.
#'
#' @rdname pricingtable
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

# bulma item to insert in a bulmaPricingPlan container
bulmaPricingPlanItem <- function(name = NULL) {
  shiny::tags$div(class = "plan-item", name)
}