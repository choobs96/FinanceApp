library(shiny)
ui <- fluidPage(
  
  # App title ----
  titlePanel("Financial Calculator"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout
  (
      # Sidebar panel for inputs ----
      sliderInput
      (
        inputId = "duration",
        label = "Choose a duration for your loan",value=1,min=0,max=10
      ),
      plotOutput
      (
        'Hist'
      )
  ),
    # Main panel for displaying outputs ----
  mainPanel
  (
      # Output: Formatted text for caption ----
      h3(textOutput("caption")),
      
      # Output: Plot of the requested variable against mpg ----
      plotOutput("mpgPlot")
  )
      
)

  

server <- function(input, output) {
  
}

shinyApp(ui, server)
