
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#
text<-div(HTML("here is the documentation support"))
cat(as.character(text))

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Data Products - Project"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    selectInput("rooms", "How many rooms does your house have?", 
                choices = c("1"="1","2" = "2", "3" = "3","4"="4"), selected = "1", multiple = FALSE),
    
    sliderInput("m2", "How many square meters does your house have?", 
                min=28, max=109, value=30),
    
    selectInput("area", "Which is your neighborhood?", 
                choices = c("Area1" = "Area1","Area2"="Area2","Area3"="Area3","Area4"="Area4","Area5"="Area5","Area6"="Area6","Area7"="Area7","Area8"="Area8","Area9"="Area9","Area10"="Area10","Area11"="Area11"), selected = "Area1", multiple = FALSE)
    
    
     
      ),
  
  
  # Show a plot of the generated distribution
  mainPanel(
    tabsetPanel(
      tabPanel("Main", tableOutput("values")),
      tabPanel("Table", tableOutput("table")),
      tabPanel("Support documentation", helpText("This application aims to predict the value of a house from the inputted data by the user. The user must choose the input values arranged in widgets on the left side of this page. To predict the value of the property, you must insert the number of rooms, how many square meters and neighborhood area. The Main tab will confirm the inputted data and inform the response, that is the value of the property. A non-real data contained in the Table tab were used in a multiple linear regression and thus created a model with three predictor variables to predict the house value."))
    )
  )
))
