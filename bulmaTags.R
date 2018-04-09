# available colors: black, dark, light, white, primary, link, info, success, warning, danger
# available sizes: small, medium, large
# available styles: rounded or delete
bulmaTag <- function(label = NULL, color = NULL, size = NULL, style = NULL) {
  cl <- "tag"
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  if (!is.null(size)) cl <- paste0(cl, " is-", size)
  if (!is.null(style)) cl <- paste0(cl, " is-", style)
  
  shiny::tags$span(
    class = cl, 
    label
  )
  
}


# insert multiple tags inside
bulmaTagList <- function(...) {
  shiny::tags$div(
    class = "tags",
    ...
  )
}

############ tagAddons ############

# insert 2 tags to be merged here
bulmaTagAddon <- function(...) {
  shiny::tags$div(
    class = "tags has-addons",
    ...
  )
}

# insert several tagAddon inside
bulmaTagAddons <- function(...) {
  shiny::tags$div(
    class = "control",
    ...
  )
}

# insert multiple tagAddons here
bulmaTagAddonList <- function(...) {
  shiny::tags$div(
    class = "field is-grouped is-grouped-multiline",
    ...
  )
}