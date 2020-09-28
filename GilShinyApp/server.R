#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$explain <- renderText({

        paste("Lineal model for: ",paste(input$y,"~",input$x,sep=""),sep="")
        
        
    })
    
    output$distPlot <- renderPlot({
        
        if(input$x!=input$y){
            yy <- mtcars[,which(names(mtcars)==input$y)]
            xx <- mtcars[,which(names(mtcars)==input$x)]
            lm <- lm(eval(paste(input$y,"~",input$x,sep="")),data = mtcars)
            plot(xx,yy)
            lines(xx,fitted(lm),col="green")
        }

    })
    
    output$lmresult <- renderText({
        if(input$x!=input$y){
            lm <- lm(eval(paste(input$y,"~",input$x,sep="")),data = mtcars)
            paste("Intercept: ",lm$coefficients[1]," *** ",input$x,": ",lm$coefficients[2],sep="")
        }
        
        
    })

})
