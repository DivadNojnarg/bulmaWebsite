# available colors: blue/green default, warning, success, danger
# available styles: outlined
# available sizes: small, medium, large
# available positions: right (default), left, bottom, bottom-left
# can replace ... by href
bulmaButtonBadge <- function(..., url = NULL, color = NULL, style = NULL, loading = FALSE,
                             size = NULL, badge_color = NULL, badge_style = NULL,
                             badge_size = NULL, badge_position = NULL, badge_text = NULL) {
  
  cl <- "button badge"
  
  if (!is.null(color)) cl <- paste0(cl, " is-", color)
  if (!is.null(style)) cl <- paste0(cl, " is-", style)
  if (!is.null(size)) cl <- paste0(cl, " is-", size)
  if (loading == TRUE) cl <- paste0(cl, " is-loading")
  
  if (!is.null(badge_color)) cl <- paste0(cl, " is-badge-", badge_color)
  if (!is.null(badge_style)) cl <- paste0(cl, " is-badge-", badge_style)
  if (!is.null(badge_position)) cl <- paste0(cl, " is-badge-", badge_position)
  if (!is.null(badge_size)) cl <- paste0(cl, " is-badge-", badge_size)
  
  
  shiny::tags$button(
    class = cl,
    `data-badge` = badge_text,
    shiny::tags$a(href = url, target = "_blank", ...)
  )
  
}