# Load necessary packages
if (!require("pacman")) install.packages("pacman")
pacman::p_load(shiny, dplyr, ggplot2)

# Get the numerical variables from mtcars dataset
numeric_vars <- names(mtcars)[sapply(mtcars, is.numeric)]

# Define the UI
ui <- fluidPage(
  titlePanel("Shiny App - Homework Assignment"),
  sidebarLayout(
    sidebarPanel(
      selectInput("xvar", "Choose X Variable:", choices = numeric_vars),
      selectInput("yvar", "Choose Y Variable:", choices = numeric_vars)
    ),
    mainPanel(
      h2("Ana Belloso, Emily Tvedt, Arnold Tran, Jason Blackmer"),
      plotOutput("scatterPlot"),
      plotOutput("histX"),
      plotOutput("histY")
    )
  )
)

# Define the server logic
server <- function(input, output) {
  output$scatterPlot <- renderPlot({
    req(input$xvar, input$yvar)
    ggplot(mtcars, aes_string(x = input$xvar, y = input$yvar)) +
      geom_point() +
      geom_smooth(method = "lm") +
      labs(title = paste("Scatterplot of", input$xvar, "vs", input$yvar))
  })
  
  output$histX <- renderPlot({
    req(input$xvar)
    ggplot(mtcars, aes_string(x = input$xvar)) +
      geom_histogram(binwidth = 1, fill = "blue", color = "white") +
      labs(title = paste("Histogram of", input$xvar))
  })
  
  output$histY <- renderPlot({
    req(input$yvar)
    ggplot(mtcars, aes_string(x = input$yvar)) +
      geom_histogram(binwidth = 1, fill = "red", color = "white") +
      labs(title = paste("Histogram of", input$yvar))
  })
}

# Create and run the Shiny app
shinyApp(ui = ui, server = server)

rsconnect::setAccountInfo(name='data-413-shinyhomework',
                          token='138663BC8F4286960AC037397A18B1B7',
                          secret='7Of5f4d8reye744g14jlr0JklHNwP7kz18uDBt5Z')
library(rsconnect)
rsconnect::deployApp('~/Downloads/ShinyApp')
