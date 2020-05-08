#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ape)
# library(tidyverse)
# library(ggtree)
library(phylocanvas)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    nwkfile<-read.tree(file="tree_file.nwk")
    treeFile<- makeNodeLabel(nwkfile)
    treeFile<- as(treeFile,"phylo4")
    phycanv <- phylocanvas(treeFile,treetype = "rectangular", alignlabels = T)
    
    # output$pTree <- renderPlot({ggtree(nwkfile)+ geom_tiplab() + xlim(0,5) + geom_point()})
    
    output$phyloTree <- renderPhylocanvas({#env = parent.frame(1), quoted = T
        phycanv
        })
    
    # output$click_info <- renderPrint({
    #     nearPoints(ggtree(nwkfile), input$pTree_click, addDist = TRUE)
    # })


})
