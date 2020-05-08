#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(phylocanvas)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    headerPanel("Test Tree"),

        # Show a plot of the generated distribution
        mainPanel(
            # plotOutput("pTree"),
            phylocanvasOutput("phyloTree")
        )
    )
)
