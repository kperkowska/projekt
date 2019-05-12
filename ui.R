
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

if (!require("shiny")) install.packages("shiny")
if (!require("shinydashboard")) install.packages("shinydashboard")
if (!require("shinyWidgets")) install.packages("shinyWidgets")
library(shiny)
library(shinydashboard)
library(shinyWidgets)

dashboardPage(
  dashboardHeader(title = "DATA SCIENCE"),
  dashboardSidebar(  sidebarMenu(
    menuItem("Insigts", tabName = "insights", icon = icon("area-chart")),
    menuItem("Predictions", tabName = "prediction", icon = icon("blind"))
  )),
  dashboardBody(    tabItems(
    # First tab content
    tabItem(tabName = "insights",
            sidebarLayout(
              sidebarPanel(
                sliderInput(inputId="wybor_1",
                            label ="WYBOR 1",
                            min = 1,
                            max = 50,
                            value = 30),
                
                sliderInput(inputId="wybor_2",
                            label ="WYBOR 2",
                            min = as.Date("2018-01-01"),
                            max = Sys.Date(),
                            value=c(as.Date("2018-01-01"), Sys.Date()),
                            timeFormat="%Y-%m-%d"),
                selectInput(
                  inputId="wybor_3",
                  label ="WYBOR 3",
                  choices = c(1:10),
                  selected = 1)
              ),
              # Show a plot of the generated distribution
              mainPanel(
                fluidRow(
                  tabsetPanel(tabPanel("Wykres 1"),
                              tabPanel("Wykres 2"),
                              tabPanel("Wykres 3")
                  )
                  
                )
                
                
                
                
                
                
                
              )
            )
    ),
    
    # Second tab content
    tabItem(tabName = "prediction",
            
            sidebarLayout(
              sidebarPanel(
                sliderInput(inputId="wybor_4",
                            label ="WYBOR 4",
                            min = 1,
                            max = 50,
                            value = 30),
                
                sliderInput(inputId="wybor_5",
                            label ="WYBOR 5",
                            min = as.Date("2018-01-01"),
                            max = Sys.Date(),
                            value=c(as.Date("2018-01-01"), Sys.Date()),
                            timeFormat="%Y-%m-%d"),
                selectInput(
                  inputId="wybor_6",
                  label ="WYBOR 6",
                  choices = c(1:10),
                  selected = 1)
              ),
              # Show a plot of the generated distribution
              mainPanel(
                fluidRow(
                  tabsetPanel(tabPanel("Wykres 4"),
                              tabPanel("Symulacja")
                  )
                  
                )
                
                
                
                
                
                
                
              )
            )
            
            
    )
  ))
)
