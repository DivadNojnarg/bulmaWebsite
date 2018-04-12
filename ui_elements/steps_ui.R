steps_ui <- function() {
  bulmaNav(
    "Bulma Steps",
    bulmaContainer(
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Steps")
      ),
      
      br(), br(),
      
      bulmaSteps(
        size = NULL,
        bulmaStepItem(
          color = "success", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 1", marker = 1,
            "This is the first step of the process."
          )
        ),
        bulmaStepItem(
          color = NULL, completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 2", marker = NULL,
            "This is the second step. You get here once you have completed the first step."
          )
        ),
        bulmaStepItem(
          color = NULL, completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 3", marker = 3,
            "This is the third step. One more step before the end."
          )
        ),
        bulmaStepItem(
          color = NULL, completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 4", marker = NULL,
            "Final step. You have completed all the previous steps and end the process."
          )
        )
      ),
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Colored Steps")
      ),
      
      br(), br(),
      
      bulmaSteps(
        size = NULL,
        bulmaStepItem(
          color = "success", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = TRUE, title = "Step 1", marker = 1,
            "This is the first step of the process."
          )
        ),
        bulmaStepItem(
          color = "info", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 2", marker = NULL,
            "This is the second step. You get here once you have completed the first step."
          )
        ),
        bulmaStepItem(
          color = "warning", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 3", marker = 3,
            "This is the third step. One more step before the end."
          )
        ),
        bulmaStepItem(
          color = "danger", completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = NULL, completed = FALSE, title = "Step 4", marker = NULL,
            "Final step. You have completed all the previous steps and end the process."
          )
        )
      ),
      
      br(), br(),
      
      bulmaDivider(),
      
      shiny::column(width = 12, align = "center", 
                    bulmaTitle("Bulma Steps Size")
      ),
      
      br(), br(),
      
      bulmaSteps(
        size = "small",
        bulmaStepItem(
          color = "primary", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        )
      ),
      
      bulmaSteps(
        size = "medium",
        bulmaStepItem(
          color = "primary", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        )
      ),
      
      bulmaSteps(
        size = "large",
        bulmaStepItem(
          color = "primary", completed = TRUE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = FALSE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        ),
        bulmaStepItem(
          color = "primary", completed = FALSE, active = TRUE, 
          bulmaStepDetail(
            color = "primary", completed = FALSE, title = NULL, marker = 1
          )
        )
      )
      
    )
  )
}