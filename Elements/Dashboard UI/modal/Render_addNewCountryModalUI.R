output$addNewCountryUI <- renderUI({
  fluidRow(
    fluidRow(
      selectInput(
        "addCountryDrpDwn",
        label="Country",
        choices = countryNamesList(),
        selected = countryNamesList()
      )
    ),
    fluidRow(
      fileInput("countryFile", "Upload Country Occurance Data",
                multiple = FALSE,
                accept = c("text/csv",
                           "text/comma-separated-values,text/plain",
                           ".csv"))
    ),
    fluidRow(
      fileInput("geoJsonFile", "Upload GeoJson File",
                multiple = FALSE,
                accept = c(".json",".geojson"))
    )
    
    
    
  )
})