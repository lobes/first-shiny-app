library(shiny)
library(ggplot2)
set.seed(1337)

shinyServer(function(input, output) {
    data <- as.data.frame(rnorm(10000))
    x <- data[, 1]
    output$plot1 <- renderPlot({
        ggplot(data = data, aes(x = x)) +
            geom_histogram(bins = input$slider1,
                           aes(y = ..density..),
                           colour = "black", 
                           fill = "springgreen") +
            xlab("Value") +
            ylab("Density") +
            coord_cartesian(xlim = c(-5, 5), ylim = c(0, 0.5)) +
            theme_bw()
        })
})