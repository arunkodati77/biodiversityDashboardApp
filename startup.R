cleanEnvironment <- function() {
  if (!is.null(dev.list())) { dev.off() }         # Clear plots
  rm(list = ls(globalenv()), envir = globalenv()) # To remove all objects in the Global Environment
  graphics.off()                                  # To erase the plots
  cat("\014")                                     # To clear the console
  gc()
}
cleanEnvironment()
options(shiny.maxRequestSize=30*1024^2)
# readRenviron("./.Renviron")
# Sys.setenv(tz="EST")

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)
library(shinybusy)
library(shinycssloaders)
library(shinyalert)
library(plotly)
library(dplyr)
library(glue)
library(readr)
library(DT)
library(shinyjs)
library(data.table)
library(lubridate)
library(waiter)
library(leaflet)
library(RColorBrewer)
library(intrval)
library(RCurl)
library(stringr)
library(htmltools)
library(cicerone)

