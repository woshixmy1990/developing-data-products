library(shiny)
library(ISLR)
data(Auto)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  
  output$distPlot <- renderPlot({
    x    <- Auto$mpg  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray')
  })
})
