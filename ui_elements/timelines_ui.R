timelines_ui <- function() {
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
  )
}