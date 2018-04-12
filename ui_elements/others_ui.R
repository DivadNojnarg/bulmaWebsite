others_ui <- function() {
  bulmaNav(
    "Others",
    bulmaContainer(
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Dividers")
      ),
      
      br(), br(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaSubtitle("Bulma Horizontal Dividers")
      ),
      bulmaDivider(content = "***", vertical = FALSE),
      bulmaDivider(content = "#", vertical = FALSE),
      bulmaDivider(content = "---", vertical = FALSE),
      
      shiny::column(width = 12, align = "center", 
                    bulmaSubtitle("Bulma Vertical Dividers")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 6, 
          bulmaCard(
            bulmaCardHeader(
              bulmaCardHeaderTitle(
                "Card title"
              )
            ),
            bulmaCardContent(
              "Content of the card."
            ),
            bulmaCardFooter(
              bulmaCardFooterItem(
                "Item 1"
              ),
              bulmaCardFooterItem(
                "Item 2"
              )
            )
          )
        ),
        bulmaDivider(content = "*", vertical = TRUE),
        bulmaColumn(
          width = 6,
          bulmaCard(
            bulmaCardHeader(
              bulmaCardHeaderTitle(
                "Card title"
              )
            ),
            bulmaCardContent(
              "Content of the card."
            ),
            bulmaCardFooter(
              bulmaCardFooterItem(
                "Item 1"
              ),
              bulmaCardFooterItem(
                "Item 2"
              )
            )
          )
        )
      ),
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Box")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 6,
          bulmaBox(
            bulmaBoxMedia(
              src = "https://bulma.io/images/placeholders/128x128.png",
              "test"
            )
          )
        ),
        bulmaDivider(vertical = TRUE),
        bulmaColumn(
          width = 6,
          bulmaBox(
            "test"
          )
        )
      ),
      
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Notifications")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 3,
          bulmaNotification(
            color = "info", 
            "Lorem ipsum dolor sit amet, consectetur adipiscing 
            elit lorem ipsum dolor. Pellentesque risus mi, tempus 
            quis placerat ut, porta nec nulla. Vestibulum rhoncus 
            ac ex sit amet fringilla. Nullam gravida purus diam, 
            et dictum felis venenatis efficitur. Sit amet, 
            consectetur adipiscing elit"
          )
        ),
        bulmaColumn(
          width = 3,
          bulmaNotification(
            color = "warning", 
            "Lorem ipsum dolor sit amet, consectetur adipiscing 
            elit lorem ipsum dolor. Pellentesque risus mi, tempus 
            quis placerat ut, porta nec nulla. Vestibulum rhoncus 
            ac ex sit amet fringilla. Nullam gravida purus diam, 
            et dictum felis venenatis efficitur. Sit amet, 
            consectetur adipiscing elit"
          )
        ),
        bulmaColumn(
          width = 3,
          bulmaNotification(
            color = "danger", 
            "Lorem ipsum dolor sit amet, consectetur adipiscing 
            elit lorem ipsum dolor. Pellentesque risus mi, tempus 
            quis placerat ut, porta nec nulla. Vestibulum rhoncus 
            ac ex sit amet fringilla. Nullam gravida purus diam, 
            et dictum felis venenatis efficitur. Sit amet, 
            consectetur adipiscing elit"
          )
        ),
        bulmaColumn(
          width = 3,
          bulmaNotification(
            color = "primary", 
            "Lorem ipsum dolor sit amet, consectetur adipiscing 
            elit lorem ipsum dolor. Pellentesque risus mi, tempus 
            quis placerat ut, porta nec nulla. Vestibulum rhoncus 
            ac ex sit amet fringilla. Nullam gravida purus diam, 
            et dictum felis venenatis efficitur. Sit amet, 
            consectetur adipiscing elit"
          )
        )
      )
    )
  )
}