#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title.
  titlePanel("Word Predictor"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("obs", "Enter Your Statement Here:"),
      
      helpText("Note: This application will use this statement to predict the next word."),
      
      submitButton("Predict Next Word")
    ),
    
    mainPanel(
      h6("You inputted the following text:"),
      textOutput("Original"),
      br(),
      h6("Your statement has been reformated to the following:"),
      textOutput("Translated"),
      br(),
      br(),
      h3("Next Word Prediction:"),
      div(textOutput("BestGuess"), style = "color:red"),
      br(),
      h4("The program guessed your word based on the following data:"),
      tableOutput("view")
    )
  )
))