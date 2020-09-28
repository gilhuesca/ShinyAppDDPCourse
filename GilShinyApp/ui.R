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
        mainPanel("These are the steps to use the application

1. You find the variables of the mtcars dataset in the side bar panel. 
2. The first set is for you to set the dependent variable.
3. The second set is for you to set the predictor.
4. After you choose both variables (y and x in your model), some calculations will be displayed in the main panel.
5. First, a linear model is generated and the formula used is displayed.
6. Then, the coefficients of the model are displayed
7. Finally, a plot with the two variables and the line representing the model is displayed.

Note: If both variables are the same, no model is generated and no plot is displayed.",
            textOutput("explain"),
            textOutput("lmresult"),
            plotOutput("distPlot")
        )
    )
))
