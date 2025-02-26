library(shiny)

ui <- fluidPage(
  verbatimTextOutput("cars"),
  textOutput("morning"),
  verbatimTextOutput("test"),
  textOutput("model")
)

server <- function(input, output, session) {
  output$cars <- renderPrint(summary(mtcars))
  output$morning <- renderText("Good morning!")
  output$test <- renderPrint(t.test(1:5, 2:6))
  output$model <- renderText(str(lm(mpg ~ wt, data = mtcars)))
}

shinyApp(ui, server)