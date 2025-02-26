library(shiny)

ui <- fluidPage(
  tableOutput("static"),
  # dataTableOutput("dynamic")
  DT::DTOutput("dynamic")
)

server <- function(input, output, session) {
  output$static <- renderTable(head(mtcars))
  # output$dynamic <- renderDataTable(mtcars,
  #                                   options = list(pagelength = 5))
  output$dynamic <- DT::renderDT(mtcars, options = list(pagelength = 5))
}

shinyApp(ui, server)