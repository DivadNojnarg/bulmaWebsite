carousels_ui <- function() {
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
  )
}