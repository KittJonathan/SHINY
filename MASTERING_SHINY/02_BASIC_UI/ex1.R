library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?", placeholder = "Your name"),
  sliderInput("delivery", "When should we deliver?", timeFormat = "%F",
              min = as.Date("2020-09-16"), max = as.Date("2020-09-23"),
              value = as.Date("2020-09-17")),
  sliderInput("num", "Select values", min = 0, max = 100, step = 5,
              value = 50, animate = TRUE),
  selectInput("num2", "Select a number",
              choices = list(
                "even" = seq(0, 10, 2),
                "odd" = seq(1, 9, 2)
              ))
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)