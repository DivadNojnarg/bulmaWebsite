library(shiny)
library(shinybulma)
library(shinyWidgets)

source("bulma-divider.R")
source("bulma-badge.R")
source("bulma-steps.R")
source("bulma-timeline.R")
source("bulma-carousel.R")
source("bulma-pricingtable.R")
source("bulma-buttonBadge.R")
source("bulma-pageLoader.R")
source("bulma-tag.R")
source("bulma-box.R")
source("bulma-notification.R")

ui <- bulmaNavbarPage(
  
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "bulma-extensions.min.css"),
    tags$script(src = "bulma-carousel.min.js"),
    tags$script(src = "bulma-steps.min.js")
  ),
  
  bulmaNavbar(
    color = "white",
    transparent = TRUE,
    fix.top = FALSE,
    
    bulmaNavbarBrand(
      bulmaNavbarItem(
        "shinybulma Extension",
        href = "#"
      ),
      bulmaNavbarBurger()
    ),
    bulmaNavbarMenu( # not visible on smaller devices
      bulmaNavbarItem(
        "Bulma Timelines"
      ),
      bulmaNavbarItem(
        "Bulma Steps"
      ),
      bulmaNavbarItem(
        "Bulma Pricing Tables"
      ),
      bulmaNavbarItem(
        "Bulma Carousels"
      ),
      bulmaNavbarItem(
        "Bulma Badges, Buttons and Tags"
      ),
      bulmaNavbarItem(
        "Others"
      )
    )
  ),
  
  
  bulmaNav(
    "Bulma Timelines",
    
    bulmaContainer(
      
          shiny::column(width = 12, align = "center", 
                        bulmaTitle("Bulma Centered Timeline")
          ),
          
          br(), br(),
          
          bulmaTimeline(
            centered = TRUE,
            bulmaTimelineHeader(text = "Start", size = "medium", color = "primary"),
            bulmaTimelineItem(
              color = "primary", marker_color = "primary",
              marker_image = FALSE, marker_icon = FALSE,
              content_header = "January 2016", content_body = "Timeline content - Can include any HTML element"
            ),
            bulmaTimelineItem(
              color = "warning", marker_color = "warning",
              marker_image = TRUE, marker_image_size = "32x32", marker_icon = FALSE,
              content_header = "February 2016", content_body = "Timeline content - Can include any HTML element",
              tags$img(src = "http://bulma.io/images/placeholders/32x32.png")
            ),
            bulmaTimelineHeader(text = "2017", size = NULL, color = "primary"),
            bulmaTimelineItem(
              color = "danger", marker_color = "danger",
              marker_image = FALSE, marker_icon = TRUE,
              content_header = "March 2016", content_body = "Timeline content - Can include any HTML element",
              tags$i(class = "fa fa-flag")
            ),
            bulmaTimelineHeader(text = "End", size = "medium", color = "primary")
          ),
      
      bulmaDivider(),
      
      bulmaColumns(
        bulmaColumn(
          width = 6,
          shiny::column(width = 12, align = "center", 
                        bulmaTitle("Bulma right to left Timeline")
          ),
          
          br(), br(),
          
          bulmaTimeline(
            centered = FALSE, rtl = TRUE,
            bulmaTimelineHeader(text = "Start", size = "medium", color = "primary"),
            bulmaTimelineItem(
              color = "primary", marker_color = "primary",
              marker_image = FALSE, marker_icon = FALSE,
              content_header = "January 2016", content_body = "Timeline content - Can include any HTML element"
            ),
            bulmaTimelineItem(
              color = "warning", marker_color = "warning",
              marker_image = TRUE, marker_image_size = "32x32", marker_icon = FALSE,
              content_header = "February 2016", content_body = "Timeline content - Can include any HTML element",
              tags$img(src = "http://bulma.io/images/placeholders/32x32.png")
            ),
            bulmaTimelineHeader(text = "2017", size = NULL, color = "primary"),
            bulmaTimelineItem(
              color = "danger", marker_color = "danger",
              marker_image = FALSE, marker_icon = TRUE,
              content_header = "March 2016", content_body = "Timeline content - Can include any HTML element",
              tags$i(class = "fa fa-flag")
            ),
            bulmaTimelineHeader(text = "End", size = "medium", color = "primary")
          )
        ),
        bulmaDivider(vertical = TRUE),
        bulmaColumn(
          width = 6,
          shiny::column(width = 12, align = "center", 
                        bulmaTitle("Bulma left to right Timeline")
          ),
          
          br(), br(),
          
          bulmaTimeline(
            centered = FALSE,
            bulmaTimelineHeader(text = "Start", size = "medium", color = "primary"),
            bulmaTimelineItem(
              color = "primary", marker_color = "primary",
              marker_image = FALSE, marker_icon = FALSE,
              content_header = "January 2016", content_body = "Timeline content - Can include any HTML element"
            ),
            bulmaTimelineItem(
              color = "warning", marker_color = "warning",
              marker_image = TRUE, marker_image_size = "32x32", marker_icon = FALSE,
              content_header = "February 2016", content_body = "Timeline content - Can include any HTML element",
              tags$img(src = "http://bulma.io/images/placeholders/32x32.png")
            ),
            bulmaTimelineHeader(text = "2017", size = NULL, color = "primary"),
            bulmaTimelineItem(
              color = "danger", marker_color = "danger",
              marker_image = FALSE, marker_icon = TRUE,
              content_header = "March 2016", content_body = "Timeline content - Can include any HTML element",
              tags$i(class = "fa fa-flag")
            ),
            bulmaTimelineHeader(text = "End", size = "medium", color = "primary")
          )
        )
      ),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Colored Timeline")
      ),
      
      br(), br(),
      
      bulmaTimeline(
        centered = FALSE,
        bulmaTimelineHeader(text = "Start", size = "medium", color = "danger"),
        bulmaTimelineItem(
          color = "success", marker_color = "black",
          marker_image = FALSE, marker_icon = FALSE,
          content_header = "January 2016", content_body = "Timeline content - Can include any HTML element"
        ),
        bulmaTimelineItem(
          color = "warning", marker_color = "warning",
          marker_image = TRUE, marker_image_size = "32x32", marker_icon = FALSE,
          content_header = "February 2016", content_body = "Timeline content - Can include any HTML element",
          tags$img(src = "https://ericrayanderson.github.io/shinymaterial/img/shinyLogo.png")
        ),
        bulmaTimelineHeader(text = "2017", size = "large", color = "info"),
        bulmaTimelineItem(
          color = "danger", marker_color = "danger",
          marker_image = FALSE, marker_icon = TRUE,
          content_header = "March 2016", content_body = "Timeline content - Can include any HTML element",
          tags$i(class = "fa fa-gears")
        ),
        bulmaTimelineHeader(text = "End", size = "small", color = "warning")
      )
      
    )
  ),
  
  bulmaNav(
    "Bulma Steps",
    bulmaContainer(
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Steps")
      ),
      
      br(), br(),
      
      bulmaSteps(
        size = NULL,
        bulmaStepItem(
          color = "success", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 1", marker = 1,
            "This is the first step of the process."
          )
        ),
        bulmaStepItem(
          color = NULL, completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 2", marker = NULL,
            "This is the second step. You get here once you have completed the first step."
          )
        ),
        bulmaStepItem(
          color = NULL, completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 3", marker = 3,
            "This is the third step. One more step before the end."
          )
        ),
        bulmaStepItem(
          color = NULL, completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 4", marker = NULL,
            "Final step. You have completed all the previous steps and end the process."
          )
        )
      ),
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Colored Steps")
      ),
      
      br(), br(),
      
      bulmaSteps(
        size = NULL,
        bulmaStepItem(
          color = "success", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = TRUE, title = "Step 1", marker = 1,
            "This is the first step of the process."
          )
        ),
        bulmaStepItem(
          color = "info", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 2", marker = NULL,
            "This is the second step. You get here once you have completed the first step."
          )
        ),
        bulmaStepItem(
          color = "warning", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 3", marker = 3,
            "This is the third step. One more step before the end."
          )
        ),
        bulmaStepItem(
          color = "danger", completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 4", marker = NULL,
            "Final step. You have completed all the previous steps and end the process."
          )
        )
      ),
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Steps Size")
      ),
      
      br(), br(),
      
      bulmaSteps(
        size = "small",
        bulmaStepItem(
          color = "primary", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        )
      ),
      
      bulmaSteps(
        size = "medium",
        bulmaStepItem(
          color = "primary", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        )
      ),
      
      bulmaSteps(
        size = "large",
        bulmaStepItem(
          color = "primary", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        )
      )
      
    )
  ),
  
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
  ),
  
  bulmaNav(
    "Bulma Carousels",
    bulmaContainer(
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma carousel")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 6,
          
          shiny::column(width = 12, align = "center", 
                        bulmaSubtitle("Bulma Autoplay Overlayed carousel")
          ),
          
          br(), br(),
          
          bulmaCarousel(
            autoplay = TRUE, navigation = "overlay",
            
            bulmaCarouselItem(
              background = TRUE, active = TRUE, 
              src = "https://wikiki.github.io/images/merry-christmas.jpg",
              title = "Merry Christmas", url = NULL, url_text = NULL
            ),
            bulmaCarouselItem(
              background = TRUE, active = FALSE, 
              src = "https://wikiki.github.io/images/singer.jpg",
              title = "Original Gift: Offer a song with", 
              url = "https://lasongbox.com", url_text = "La Song Box"
            ),
            bulmaCarouselItem(
              background = TRUE, active = FALSE, 
              src = "https://wikiki.github.io/images/sushi.jpg",
              title = "Sushi time", url = NULL, url_text = NULL
            ),
            bulmaCarouselItem(
              background = TRUE, active = FALSE, 
              src = "https://wikiki.github.io/images/life.jpg",
              title = "Life", url = NULL, url_text = NULL
            )
          )
        ),
        
        bulmaDivider(vertical = TRUE),
        
        bulmaColumn(
          width = 6,
          
          shiny::column(width = 12, align = "center", 
                        bulmaSubtitle("Bulma Centered carousel")
          ),
          
          br(), br(),
          
          bulmaCarousel(
            autoplay = FALSE, navigation = "centered",
            
            bulmaCarouselItem(
              background = TRUE, active = TRUE, 
              src = "https://wikiki.github.io/images/merry-christmas.jpg",
              title = "Merry Christmas", url = NULL, url_text = NULL
            ),
            bulmaCarouselItem(
              background = TRUE, active = FALSE, 
              src = "https://wikiki.github.io/images/singer.jpg",
              title = "Original Gift: Offer a song with", 
              url = "https://lasongbox.com", url_text = "La Song Box"
            ),
            bulmaCarouselItem(
              background = TRUE, active = FALSE, 
              src = "https://wikiki.github.io/images/sushi.jpg",
              title = "Sushi time", url = NULL, url_text = NULL
            ),
            bulmaCarouselItem(
              background = TRUE, active = FALSE, 
              src = "https://wikiki.github.io/images/life.jpg",
              title = "Life", url = NULL, url_text = NULL
            )
          )
        )
      )
    )
  ),
  
  bulmaNav(
    "Bulma Badges, Buttons and Tags",
    bulmaContainer(
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Badges and BadgedButtons")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 2,
          bulmaBadge(
            "test",
            position = "",
            size = NULL,
            style = NULL,
            color = NULL,
            badge_text = 3
          ),
          
          br(), br(),
          
          bulmaBadge(
            "test",
            position = "bottom",
            size = NULL,
            style = NULL,
            color = NULL,
            badge_text = 3
          ),
          
          br(), br(),
          
          bulmaBadge(
            "test",
            position = "bottom-left",
            size = NULL,
            style = NULL,
            color = NULL,
            badge_text = 3
          )
        ),
        bulmaColumn(
          width = 2,
          bulmaBadge(
            "test",
            position = NULL,
            size = "small",
            style = NULL,
            color = NULL,
            badge_text = 3
          ),
          
          br(), br(),
          
          bulmaBadge(
            "test",
            position = NULL,
            size = "medium",
            style = NULL,
            color = NULL,
            badge_text = 3
          ),
          
          br(), br(),
          
          bulmaBadge(
            "test",
            position = NULL,
            size = "large",
            style = NULL,
            color = NULL,
            badge_text = 3
          )
        ),
        bulmaColumn(
          width = 2,
          bulmaBadge(
            "test",
            position = NULL,
            size = NULL,
            style = "outlined",
            color = "info",
            badge_text = 3
          ),
          
          br(), br(),
          
          bulmaBadge(
            "test",
            position = NULL,
            size = NULL,
            style = NULL,
            color = "warning",
            badge_text = 3
          ),
          
          br(), br(),
          
          bulmaBadge(
            "test",
            position = NULL,
            size = NULL,
            style = NULL,
            color = "danger",
            badge_text = 3
          ),
          
          br(), br(),
          
          bulmaBadge(
            "test",
            position = NULL,
            size = NULL,
            style = NULL,
            color = "success",
            badge_text = 3
          )
        ),
        bulmaDivider(vertical = TRUE),
        bulmaColumn(
          width = 2,
          bulmaButtonBadge(label = "test",
            url = "http://google.com", color = "danger", style = NULL, loading = FALSE,
            size = NULL, badge_color = "warning", badge_style = NULL,
            badge_size = NULL, badge_position = NULL, badge_text = 1
          ),
          br(), br(),
          
          bulmaButtonBadge(label = "test",
            url = NULL, color = "warning", style = "outlined", loading = FALSE,
            size = "small", badge_color = "info", badge_style = NULL,
            badge_size = NULL, badge_position = NULL, badge_text = 2
          ),
          br(), br(),
          
          bulmaButtonBadge(label = "test",
            url = NULL, color = "success", style = NULL, loading = FALSE,
            size = "medium", badge_color = "danger", badge_style = NULL,
            badge_size = NULL, badge_position = NULL, badge_text = 3
          )
        ),
        bulmaColumn(
          width = 2,
          bulmaButtonBadge(label = "test",
            url = NULL, color = "black", style = "outlined", loading = FALSE,
            size = "large", badge_color = NULL, badge_style = NULL,
            badge_size = NULL, badge_position = NULL, badge_text = 4
          ),
          br(), br(),
          
          bulmaButtonBadge(label = "test",
            url = NULL, color = "info", style = NULL, loading = FALSE,
            size = NULL, badge_color = "success", badge_style = NULL,
            badge_size = "small", badge_position = NULL, badge_text = 5
          ),
          br(), br(),
          
          bulmaButtonBadge(label = "test",
            url = NULL, color = NULL, style = "outlined", loading = FALSE,
            size = NULL, badge_color = "warning", badge_style = NULL,
            badge_size = "medium", badge_position = "left", badge_text = 6
          )
        ),
        bulmaColumn(
          width = 2,
          bulmaButtonBadge(label = "test",
            url = NULL, color = NULL, style = "primary", loading = TRUE,
            size = NULL, badge_color = NULL, badge_style = "outlined",
            badge_size = "large", badge_position = "botton", badge_text = NULL
          )
        )
      ),
      
      br(), br(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Tags")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 3,
          bulmaTag(label = "tag", color = "info", size = NULL, style = NULL),
          br(), br(),
          bulmaTag(label = "tag", color = "warning", size = NULL, style = NULL),
          br(), br(),
          bulmaTag(label = "tag", color = "success", size = "large", style = "rounded")
        ),
        bulmaColumn(
          width = 3,
          bulmaTagList(
            bulmaTag(label = "tag", color = "danger", size = "small", style = NULL),
            bulmaTag(label = "tag", color = "warning", size = "medium", style = NULL),
            bulmaTag(label = "tag", color = "success", size = "large", style = "rounded")
          )
        ),
        bulmaDivider(vertical = TRUE),
        bulmaColumn(
          width = 2,
          bulmaTagAddon(
            bulmaTag(label = "build", color = "dark", size = "small", style = NULL),
            bulmaTag(label = "passing", color = "success", size = "small", style = NULL)
          ),
          bulmaTagAddon(
            bulmaTag(label = "npm", color = "dark", size = "small", style = NULL),
            bulmaTag(label = "0.5.0", color = "info", size = "small", style = NULL)
          ),
          bulmaTagAddon(
            bulmaTag(label = "chat", color = "dark", size = "small", style = NULL),
            bulmaTag(label = "on gitter", color = "primary", size = "small", style = NULL)
          )
        ),
        bulmaColumn(
          width = 4,
          bulmaTagAddonList(
            bulmaTagAddons(
              bulmaTagAddon(
                bulmaTag(label = "build", color = "dark", size = "small", style = NULL),
                bulmaTag(label = "passing", color = "success", size = "small", style = NULL)
              )
            ),
            bulmaTagAddons(
              bulmaTagAddon(
                bulmaTag(label = "npm", color = "dark", size = "small", style = NULL),
                bulmaTag(label = "0.5.0", color = "info", size = "small", style = NULL)
              )
            ),
            bulmaTagAddons(
              bulmaTagAddon(
                bulmaTag(label = "chat", color = "dark", size = "small", style = NULL),
                bulmaTag(label = "on gitter", color = "primary", size = "small", style = NULL)
              )
            )
          )
        )
      )
      
    )
  ),
  
  bulmaNav(
    "Others",
    bulmaContainer(
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Dividers")
      ),
      
      br(), br(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaSubtitle("Bulma Horizontal Dividers")
      ),
      bulmaDivider(content = "***", vertical = FALSE),
      bulmaDivider(content = "#", vertical = FALSE),
      bulmaDivider(content = "---", vertical = FALSE),
      
      shiny::column(width = 12, align = "center", 
                    bulmaSubtitle("Bulma Vertical Dividers")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 6, 
          bulmaCard(
            bulmaCardHeader(
              bulmaCardHeaderTitle(
                "Card title"
              )
            ),
            bulmaCardContent(
              "Content of the card."
            ),
            bulmaCardFooter(
              bulmaCardFooterItem(
                "Item 1"
              ),
              bulmaCardFooterItem(
                "Item 2"
              )
            )
          )
        ),
        bulmaDivider(content = "*", vertical = TRUE),
        bulmaColumn(
          width = 6,
          bulmaCard(
            bulmaCardHeader(
              bulmaCardHeaderTitle(
                "Card title"
              )
            ),
            bulmaCardContent(
              "Content of the card."
            ),
            bulmaCardFooter(
              bulmaCardFooterItem(
                "Item 1"
              ),
              bulmaCardFooterItem(
                "Item 2"
              )
            )
          )
        )
      ),
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Box")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 6,
          bulmaBox(
            bulmaBoxMedia(
              src = "https://bulma.io/images/placeholders/128x128.png",
              "test"
            )
          )
        ),
        bulmaDivider(vertical = TRUE),
        bulmaColumn(
          width = 6,
          bulmaBox(
            "test"
          )
        )
      ),
      
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Notifications")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 3,
          bulmaNotification(
            color = "info", 
            "Lorem ipsum dolor sit amet, consectetur adipiscing 
          elit lorem ipsum dolor. Pellentesque risus mi, tempus 
          quis placerat ut, porta nec nulla. Vestibulum rhoncus 
          ac ex sit amet fringilla. Nullam gravida purus diam, 
          et dictum felis venenatis efficitur. Sit amet, 
          consectetur adipiscing elit"
          )
        ),
        bulmaColumn(
          width = 3,
          bulmaNotification(
            color = "warning", 
            "Lorem ipsum dolor sit amet, consectetur adipiscing 
          elit lorem ipsum dolor. Pellentesque risus mi, tempus 
          quis placerat ut, porta nec nulla. Vestibulum rhoncus 
          ac ex sit amet fringilla. Nullam gravida purus diam, 
          et dictum felis venenatis efficitur. Sit amet, 
          consectetur adipiscing elit"
          )
        ),
        bulmaColumn(
          width = 3,
          bulmaNotification(
            color = "danger", 
            "Lorem ipsum dolor sit amet, consectetur adipiscing 
          elit lorem ipsum dolor. Pellentesque risus mi, tempus 
          quis placerat ut, porta nec nulla. Vestibulum rhoncus 
          ac ex sit amet fringilla. Nullam gravida purus diam, 
          et dictum felis venenatis efficitur. Sit amet, 
          consectetur adipiscing elit"
          )
        ),
        bulmaColumn(
          width = 3,
          bulmaNotification(
            color = "primary", 
            "Lorem ipsum dolor sit amet, consectetur adipiscing 
          elit lorem ipsum dolor. Pellentesque risus mi, tempus 
          quis placerat ut, porta nec nulla. Vestibulum rhoncus 
          ac ex sit amet fringilla. Nullam gravida purus diam, 
          et dictum felis venenatis efficitur. Sit amet, 
          consectetur adipiscing elit"
          )
        )
      )
      
    )
    
  )
  
)

server <- function(input, output){}

shinyApp(ui, server)