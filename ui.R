library(shiny)

shinyUI(fluidPage(
    titlePanel("Interactive Normal Distribution Approximation"),
    
    sidebarLayout(
        sidebarPanel(
            h3("Instructions for Use:"),
            p("Move the slider below to change the number of histogram bins that randomly generated standard normal data will be sliced into. The plot shows the resultant histogram. As the number of bins increases the generated data should theoretically more closely approximate a standard normal distribution."),
            
            sliderInput("slider1", "Number of bins:", 1, 100, 3),
        ),
        
        mainPanel(
            plotOutput("plot1"),
        )
    )
))
