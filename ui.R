library(shiny)
shinyUI(
  fluidPage(
    titlePanel('The great mtcars analysis engine'),
    sidebarLayout(
      sidebarPanel(
        selectInput('var1', 'X variable', 
                    names(mtcars)),
        selectInput('var2', 'Y variable', 
                    names(mtcars), selected = 'hp'),
        selectInput('var3', 'Select color', 
                    c('gear', 'am', 'cyl')),
        sliderInput('degree', "Polynomial",
                    min = 1, max = 16, value = 1), 
        checkboxInput('se', 'Confidence Interval')
      ), 
      mainPanel(
        plotOutput('ggplot')
      )
    )
  )
)