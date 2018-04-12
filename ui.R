ui <- bulmaNavbarPage(
  
  tags$head(
    #tags$link(rel = "stylesheet", type = "text/css", href = "bulma-extensions.min.css"),
    #tags$script(src = "bulma-carousel.min.js"),
    #tags$script(src = "bulma-steps.min.js")
  ),
  
  # load content
  navbar_ui(),
  inputs_ui(),
  timelines_ui(),
  steps_ui(),
  pricingtables_ui(),
  carousels_ui(),
  tags_ui(),
  others_ui()
  )