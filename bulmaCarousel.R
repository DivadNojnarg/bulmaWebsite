# navigation: centered, overlay
# autoplay: TRUE or FALSE
bulmaCarousel <- function(..., autoplay = FALSE, navigation = NULL) {
  
  cl_nav <- "carousel-navigation"
  if (!is.null(navigation)) cl_nav <- paste0(cl_nav, " is-", navigation)
  
  # translate TRUE into true for javascript
  if (autoplay == TRUE)
    autoplay <- "true"
  
  # main panel
  shiny::tags$div(
    class = "carousel carousel-animated carousel-animate-slide", 
    `data-autoplay` = autoplay, 
    shiny::tags$div(
      class = "carousel-container",
      ...
    ),
    # navigation arrows
    shiny::tags$div(
      class = cl_nav,
      shiny::tags$div(
        class = "carousel-nav-left",
        shiny::tags$i(class = "fa fa-chevron-left", `aria-hidden` = TRUE)
      ),
      shiny::tags$div(
        class = "carousel-nav-right",
        shiny::tags$i(class = "fa fa-chevron-right", `aria-hidden` = TRUE)
      )
    )
  )
}


# items to put inside the ... of the bulmaCarousel
# only the first carouselItem can be active!
bulmaCarouselItem <- function(background = TRUE, active = FALSE, src = NULL,
                              title = NULL, url = NULL, url_text = NULL) {
  cl <- "carousel-item"
  
  if (background == TRUE) cl <- paste0(cl, " has-background")
  if (active == TRUE) cl <- paste0(cl, " is-active")
  
  shiny::tags$div(
    class = cl,
    shiny::tags$img(
      class = "is-background", src = src, alt = "", width = "640", height = "310"
    ),
    shiny::tags$div(
      class = "title",
      paste0(title),
      if (!is.null(url)) shiny::tags$a(href = url, target = "_blank", paste0(url_text))
    )
  )
  
}