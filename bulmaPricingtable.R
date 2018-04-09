bulmaPricingtable <- function(..., horizontal = FALSE) {
  
  cl <- "pricing-table"
  if (horizontal == TRUE) cl <- paste0(cl, " is-horizontal")
  shiny::tags$div(
    class = cl,
    ...
  )
}

# available colors: blue/green default, warning, success, danger
# when a plan is active, the related box z index is higher than others
# button_status: NULL or disabled
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

# bulma item to insert in a bulmaPricingPlan container
bulmaPricingPlanItem <- function(name = NULL) {
  shiny::tags$div(class = "plan-item", name)
}