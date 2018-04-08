bulmaTimeline <- function(..., centered = FALSE, rtl = FALSE) {
  
  cl <- "timeline"
  
  if (centered == TRUE) cl <- paste0(cl, " is-centered")
  if (rtl == TRUE) cl <- paste0(cl, " is-rtl")
  
  shiny::tags$div(
    class = cl,
    ...
  )
}




bulmaTimelineHeader <- function(text = NULL, size = NULL, color = NULL) {
  
  cl <- "tag"
  
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  if (!is.null(size)) cl <- paste0(cl, " is-", size)
  
  
  shiny::tags$header(
    class = "timeline-header",
    shiny::tags$span(
      class = cl,
      paste0(text)
    )
  )
}





bulmaTimelineItem <- function(..., color = NULL, marker_color = NULL,
                              marker_image = FALSE, marker_image_size = NULL, 
                              marker_icon = FALSE, content_header = NULL, 
                              content_body = NULL) {
  
  cl <- "timeline-item"
  
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  
  cl_marker <- "timeline-marker"
  
  if (!is.null(marker_color)) cl_marker <- paste0(cl_marker, " is-", marker_color)
  if (marker_image == TRUE) cl_marker <- paste0(cl_marker, " is-image")
  if (!is.null(marker_image_size)) cl_marker <- paste0(cl_marker, " is-", marker_image_size)
  if (marker_icon == TRUE) cl_marker <- paste0(cl_marker, " is-icon")
  
  shiny::tags$div(
    class = cl,
    shiny::tags$div(
      class = cl_marker,
      ...
    ),
    shiny::tags$div(
      class = "timeline-content",
      if (!is.null(content_header)) shiny::tags$p(class = "heading", content_header),
      if (!is.null(content_body)) shiny::tags$p(class = "heading", content_body)
    )
  )
}