library(shiny)

ui <- fluidPage(
  DT::DTOutput("table")
)

server <- function(input, output, session) {
  output$table <- DT::renderDataTable(mtcars,
                                      options = list(ordering = FALSE,
                                                     searching = FALSE,
                                                     filtering = FALSE))
}

shinyApp(ui, server)