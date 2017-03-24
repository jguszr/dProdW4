
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
        titlePanel("Select a Book"),
        selectInput("select", label = h3("Select box"), 
                    choices = list("Book 1" = "data/1.txt",
                                   "Book 2" = "data/2.txt",
                                   "Book 3" = "data/3.txt"),
                    selected = 1),
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
