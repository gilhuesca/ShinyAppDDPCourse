#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Linear models with the mtcars dataset"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            radioButtons("y", "Choose Y:",
                         c("MPG" = "mpg",
                           "CYL" = "cyl",
                           "DISP" = "disp",
                           "HP" = "hp",
                           "DRAT" = "drat",
                           "WT" = "wt",
                           "QSEC" = "qsec",
                           "VS" = "vs",
                           "AM" = "am",
                           "GEAR" = "gear",
                           "CARB" = "carb"
                           )),
            radioButtons("x", "Choose X:",
                         c("MPG" = "mpg",
                           "CYL" = "cyl",
                           "DISP" = "disp",
                           "HP" = "hp",
                           "DRAT" = "drat",
                           "WT" = "wt",
                           "QSEC" = "qsec",
                           "VS" = "vs",
                           "AM" = "am",
                           "GEAR" = "gear",
                           "CARB" = "carb"
                         ))
        ),

        # Show a plot of the generated distribution
        mainPanel(
            textOutput("explain"),
            textOutput("lmresult"),
            plotOutput("distPlot")
        )
    )
))
