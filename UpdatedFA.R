library(shiny)

ui <- fluidPage(
  titlePanel("Financial Calculator"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Help you calculate your expenses"),
      
      selectInput("var", 
                  label = "Choose your expenses",
                  choices = c("Petrol", 
                              "Food",
                              "Rental", 
                              "Loan"),
                  selected = "Food"),
      numericInput("numInput",
                   "Enter your expenses in RM:",
                   value = 1000,),
      sliderInput("range", 
                 label = "Years of Saving:",
               min = 1, max = 50, value = 30)

      
    ),
    
    mainPanel(
      textOutput("selected_var"),
      textOutput("txtOutput"),
      textOutput("years")
      
    )
  )
)

server <- function(input, output) {

  output$selected_var <- renderText({ 
    paste("You have selected", input$var)
  })
  output$txtOutput <- renderText({
    paste("You spent RM: ", input$numInput)
  })
  
  output$years <- renderText({ 
  paste("You have chosen ",input$range[1],"years of saving")
  })

  
}

shinyApp(ui, server)

