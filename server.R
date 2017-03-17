
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(rvest)
library (tm)
library(syuzhet)

pageRef <- read_html("https://www.gutenberg.org/files/54360/54360-0.txt")

buildCloud <- function() { 
  print("Bacon")
  text <- html_text(pageRef)
  sentences <- get_sentences(text)
  return( get_sentiment(sentences))
  
}

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    plot(
      buildCloud(), 
      type="h", 
      main="Example Plot Trajectory", 
      xlab = "Narrative Time", 
      ylab= "Emotional Valence"
    )
  })

})
