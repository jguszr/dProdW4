
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(markdown)

shinyUI(navbarPage("Gutemberg Book Analisys Example",

    tabPanel("Analisys", 
      sidebarPanel(
        titlePanel("book url"),
        textInput("urlId",label = "Book URL for analisys",value = "https://www.gutenberg.org/files/54360/54360-0.txt"),
        actionButton("goBtn","Go!")
      ),

      mainPanel(
        h4("Please, Wait, It might take a couple minutes to process the book"),
        plotOutput("distPlot"),
        textOutput("msg")
      )),
    tabPanel("About",
             mainPanel(
               includeMarkdown("include.md")
    )
  )
))
