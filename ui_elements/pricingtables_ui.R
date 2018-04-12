pricingtables_ui <- function() {
  bulmaNav(
    "Bulma Pricing Tables",
    bulmaContainer(
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Vertical Pricing Table")
      ),
      
      br(), br(),
      
      bulmaPricingtable(
        horizontal = FALSE,
        bulmaPricingPlan(
          active = FALSE, color = NULL, plan_title = "Starter",
          plan_price = 20, plan_currency = "$",
          plan_period = "/month", button_status = "disabled",
          button_name = "Current plan",
          bulmaPricingPlanItem(name = "20GB Storage"),
          bulmaPricingPlanItem(name = "10 domains"),
          bulmaPricingPlanItem(name = "-"),
          bulmaPricingPlanItem(name = "-")
        ),
        bulmaPricingPlan(
          active = FALSE, color = "warning", plan_title = "Startups",
          plan_price = 40, plan_currency = "$",
          plan_period = "/month", button_status = NULL,
          button_name = "Choose",
          bulmaPricingPlanItem(name = "20GB Storage"),
          bulmaPricingPlanItem(name = "25 domains"),
          bulmaPricingPlanItem(name = "1TB Bandwidth"),
          bulmaPricingPlanItem(name = "-")
        ),
        bulmaPricingPlan(
          active = TRUE, color = NULL, plan_title = "Growing Team",
          plan_price = 60, plan_currency = "$",
          plan_period = "/month", button_status = NULL,
          button_name = "Choose",
          bulmaPricingPlanItem(name = "200GB Storage"),
          bulmaPricingPlanItem(name = "50 domains"),
          bulmaPricingPlanItem(name = "1TB Bandwidth"),
          bulmaPricingPlanItem(name = "100 Email Boxes")
        ),
        bulmaPricingPlan(
          active = FALSE, color = "danger", plan_title = "Enterprise",
          plan_price = 100, plan_currency = "$",
          plan_period = "/month", button_status = NULL,
          button_name = "Choose",
          bulmaPricingPlanItem(name = "200GB Storage"),
          bulmaPricingPlanItem(name = "50 domains"),
          bulmaPricingPlanItem(name = "1TB Bandwidth"),
          bulmaPricingPlanItem(name = "1000 Email Boxes")
        )
      ),
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Horizontal Pricing Table")
      ),
      
      br(), br(),
      
      bulmaPricingtable(
        horizontal = TRUE,
        bulmaPricingPlan(
          active = FALSE, color = NULL, plan_title = "Starter",
          plan_price = 20, plan_currency = "$",
          plan_period = "/month", button_status = "disabled",
          button_name = "Current plan",
          bulmaPricingPlanItem(name = "20GB Storage"),
          bulmaPricingPlanItem(name = "10 domains"),
          bulmaPricingPlanItem(name = "-"),
          bulmaPricingPlanItem(name = "-")
        ),
        bulmaPricingPlan(
          active = FALSE, color = "warning", plan_title = "Startups",
          plan_price = 40, plan_currency = "$",
          plan_period = "/month", button_status = NULL,
          button_name = "Choose",
          bulmaPricingPlanItem(name = "20GB Storage"),
          bulmaPricingPlanItem(name = "25 domains"),
          bulmaPricingPlanItem(name = "1TB Bandwidth"),
          bulmaPricingPlanItem(name = "-")
        ),
        bulmaPricingPlan(
          active = TRUE, color = NULL, plan_title = "Growing Team",
          plan_price = 60, plan_currency = "$",
          plan_period = "/month", button_status = NULL,
          button_name = "Choose",
          bulmaPricingPlanItem(name = "200GB Storage"),
          bulmaPricingPlanItem(name = "50 domains"),
          bulmaPricingPlanItem(name = "1TB Bandwidth"),
          bulmaPricingPlanItem(name = "100 Email Boxes")
        ),
        bulmaPricingPlan(
          active = FALSE, color = "danger", plan_title = "Enterprise",
          plan_price = 100, plan_currency = "$",
          plan_period = "/month", button_status = NULL,
          button_name = "Choose",
          bulmaPricingPlanItem(name = "200GB Storage"),
          bulmaPricingPlanItem(name = "50 domains"),
          bulmaPricingPlanItem(name = "1TB Bandwidth"),
          bulmaPricingPlanItem(name = "1000 Email Boxes")
        )
      )
    )
  )
}