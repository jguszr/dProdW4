
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(rvest)
library (tm)
library(syuzhet)


buildCloud <- function(pageRef) { 
  print("Bacon")
  text <-  readChar(file.path(pageRef), file.info(pageRef)$size)
  sentences <- get_sentences(text)
  return( get_sentiment(sentences))
  
}

shinyServer(function(input, output) {
  
  observeEvent(input$goBtn, {
    print(input$select)
    output$distPlot <- renderPlot({
      plot(
        buildCloud(input$select), 
        type="h", 
        main="Example Plot Trajectory", 
        xlab = "Narrative Time", 
        ylab= "Emotional Valence"
      )

    })
    
  }
    
  )
  
})
