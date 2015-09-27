library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Cars' MPG distribution"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
	
    
    # Show a plot of the generated distribution
    mainPanel(
	  img(src='car.png', align = "right"),
	  h2("Introduction"),
      h3("This Shiny app is use Auto dataset in ISLR library, with interactive changing the breaks, it will plot histograms with different breaks
	  of MPG variable. This Auto dataset contains overall 392 rows of records with 303 different car brand. "),
      plotOutput("distPlot")
    )
  )
))
