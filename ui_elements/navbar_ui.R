navbar_ui <- function() {
  bulmaNavbar(
    color = "white",
    transparent = TRUE,
    fix.top = FALSE,
    
    bulmaNavbarBrand(
      bulmaNavbarItem(
        "shinybulma Extension",
        href = "#"
      ),
      # for cellphones or tablets
      bulmaNavbarBurger()
    ),
    bulmaNavbarMenu(
      bulmaNavbarItem(
        "New Inputs"
      ),
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
  )
}