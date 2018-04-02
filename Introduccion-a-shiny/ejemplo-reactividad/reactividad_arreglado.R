
library(shiny)

ui <- fluidPage(
    verticalLayout(
        sliderInput("n_rand", "Numeros", 5, 20, 10),
        textOutput("serie1"),
        plotOutput("serie2")
    )
)

server <- function(input, output){
    
    x <- reactive(rnorm(input$n_rand))
    
    output$serie1 <- renderText({
        x_values <- x()
        x_values
    })
    
    output$serie2 <- renderPlot({
        x_values <- x()
        plot(x_values)
    })
}

shinyApp(ui, server)
