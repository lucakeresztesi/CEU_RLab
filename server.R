library(shiny)
library(ggplot2)
library(pander)

shinyServer(
  function(input, output) {
    
    output$ggplot <- renderPlot({
      
      ggplot(mtcars, aes_string(x = input$var1, 
                                y = input$var2,
                                color = input$var3)) + 
        geom_point() + 
        geom_smooth(
          method = 'lm', 
          formula = y ~ poly(x,
                             as.numeric(input$degree)),
          se = input$se)
    })
  }
)
