tags_ui <- function() {
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
  )
}