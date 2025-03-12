library(shiny)

ui <- fluidPage(
  textOutput("greeting")
)

server <- function(input, output, session) {
  message("The greeting is ", output$greeting)
}

shinyApp(ui, server)