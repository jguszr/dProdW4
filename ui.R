
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Gutemberg Book Analisys Example"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      titlePanel("Configure Your Sentiment Analysis"),
      textInput("urlId",label = "Book URL for analisys",value = "https://www.gutenberg.org/files/54360/54360-0.txt"),
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))