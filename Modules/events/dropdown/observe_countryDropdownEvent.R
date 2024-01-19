observeEvent(input$countryDropdwn,{
  
  
  selectedCountry(input$countryDropdwn)
  occurrenceData_filteredByDay(NULL)
  setViewLat(countriesGeoData()$latitude[countriesGeoData()$name ==selectedCountry()])
  setViewLng(countriesGeoData()$longitude[countriesGeoData()$name ==selectedCountry()])
  
  initialDataLoad()

})

initialDataLoad <- function(){
  occurrenceData(fread(glue("./inst/extdata/occurrenceData/occurrence_{selectedCountry()}.csv")))
  states(geojsonio::geojson_read(glue("./inst/extdata/geojsonData/{selectedCountry()}.geojson"),what="sp"))
  if(!is.null(occurrenceData())){
    
    kingdomList(unique(occurrenceData()$kingdom))
    selectedKingdomName(kingdomList()[1])
    
    occurence_byKingdom = occurrenceData()[occurrenceData()$kingdom==selectedKingdomName(),]
    
    vernacularNamesList_HeatMap(unique(occurrenceData()$vernacularName))
    selectedVernacularName_Heatmap(vernacularNamesList_HeatMap()[1:15])
    familyList(unique(occurence_byKingdom$family))
    
    overviewData = occurence_byKingdom%>%
      group_by(locality)%>%
      summarise(distinctSpecies =  n_distinct(vernacularName))
    
    overviewData_filtered(overviewData%>%
                            group_by(locality)%>%
                            summarise(distinctSpecies = sum(distinctSpecies)))
    
    
    uniqueDates(unique(as.Date(occurence_byKingdom$eventDate))%>%sort())
    
    
    shinyjs::disable('dateSlider')
    
  }
}