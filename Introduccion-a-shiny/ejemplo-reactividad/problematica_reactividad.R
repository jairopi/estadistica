
library(shiny)

ui <- fluidPage(
    verticalLayout(
        sliderInput("n_rand", "Numeros", 5, 20, 10),
        textOutput("serie1"),
        plotOutput("serie2")
        )
)

server <- function(input, output){
    
    output$serie1 <- renderText({
        rnorm(input$n_rand)
        })
    
    output$serie2 <- renderPlot({
        plot(rnorm(input$n_rand))
        })
}

shinyApp(ui, server)
