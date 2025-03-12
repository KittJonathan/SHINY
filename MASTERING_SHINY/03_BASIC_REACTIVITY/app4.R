library(shiny)

ui <- fluidPage(
  textOutput("greeting")
)

server <- function(input, output, session) {
  output$greeting <- "Hello human!"
}

shinyApp(ui, server)