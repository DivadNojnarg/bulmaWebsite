# available colors: blue/green default, warning, success, danger
# available sizes: small, medium, large
# available styles: outlined
# available positions: right (default), left, bottom, bottom-left
bulmaBadge <- function(..., color = NULL, badge_text = NULL, 
                       size = NULL, style = NULL, position = NULL){
  
  cl <- "badge"
  
  if (!is.null(color)) cl <- paste0(cl, " is-badge-", color)
  if (!is.null(size)) cl <- paste0(cl, " is-badge-", size)
  if (!is.null(style)) cl <- paste0(cl, " is-badge-", style)
  if (!is.null(position)) cl <- paste0(cl, " is-badge-", position)
  
  shiny::tags$span(
    class = cl, `data-badge` = ifelse(!is.null(badge_text), paste0(badge_text), ""),
    ...
  )
}