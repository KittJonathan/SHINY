# Load the Shiny package

library(shiny)

# Define the User Interface

ui <- fluidPage(
  selectInput("dataset", label = "Dataset",
              choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)

# Specify the app's behavior

server <- function(input, output, session) {
  
  # Create a reactive expression
  dataset <- reactive({
    get(input$dataset, "package:datasets")
  })
  
  output$summary <- renderPrint({
    summary(dataset())
  })
  
  output$table <- renderTable({
    dataset()
  })
}

# Construct and start the Shiny app from UI & server

shinyApp(ui, server)