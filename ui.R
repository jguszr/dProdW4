
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
      actionButton("goBtn","Go!")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      h4("Please, Wait, It might take a couple minutes to process the book"),
      plotOutput("distPlot")
    )
  )
))
