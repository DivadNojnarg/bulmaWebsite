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
      ),
      
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Menus")
      ),
      
      br(), br(),
      
      bulmaColumns(
        bulmaColumn(
          width = 4,
          bulmaMenu(
            
            # section 1
            bulmaMenuLabel(menu_label = "Title 1", target = "title1"),
            bulmaMenuItem(active = FALSE, item_label = "Subtitle 1"),
            bulmaMenuItem(active = FALSE, item_label = "Subtitle 2"),
            
            # section 2
            bulmaMenuLabel(menu_label = "Title 2", target = "title5"),
            bulmaMenuItem(active = FALSE, item_label = "Subtitle 1"),
            bulmaMenuItem(
              active = TRUE, 
              item_label = "Subtitle 2",
              bulmaMenuSubItem(subitem_label = "Subsubtitle 1"),
              bulmaMenuSubItem(subitem_label = "Subsubtitle 2"),
              bulmaMenuSubItem(subitem_label = "Subsubtitle 3")
            ),
            bulmaMenuItem(active = FALSE, item_label = "Subtitle 3"),
            bulmaMenuItem(active = FALSE, item_label = "Subtitle 4"),
            bulmaMenuItem(active = FALSE, item_label = "Subtitle 5"),
            
            # section 3
            bulmaMenuLabel(menu_label = "Title 3", target = "title5"),
            bulmaMenuItem(active = FALSE, item_label = "Subtitle 6"),
            bulmaMenuItem(active = FALSE, item_label = "Subtitle 7"),
            bulmaMenuItem(active = FALSE, item_label = "Subtitle 8")
            
          )
        ),
        bulmaColumn(
          width = 8,
          
          bulmaSubtitle("Only title 1, title 2 and title 3 have html anchors."),
          
          bulmaRadioInput(
            "select", 
            c("Miles per galon" = "mpg", "Rear axle ratio" = "drat"),
            selected = "mpg"
          ),
          
          lapply(1:5, FUN = function(i) {
            list(
              bulmaTitle(paste0("Title", i), id = paste0("title", i)),
              plotOutput(paste0("plotmenu", i))
            )
          })
          
        )
      )
      
    )
  )
}