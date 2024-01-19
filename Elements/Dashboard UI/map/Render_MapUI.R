output$mapUI<- renderLeaflet({
  
  #Load States Geojson data
  states = states()
  bins <- c(0,1,5, 10,25, 50, 100, 250, 500, 1000, Inf)
  pal <- colorBin("YlOrRd", domain = states$density, bins =bins)
  
  if(is.null(states$name)){
    stateNames = sort(states$NAME_1)
  } else{
    stateNames = sort(states$name)
  }
  statesDF <- data.frame(locality=stateNames)
  
  
  if(!is.null(occurrenceData_filteredByDay())){

    getDynamicColor <-colorRampPalette(brewer.pal(8, "Set1"))

      stateLabel <- paste(
        "<strong>Province: </strong>"
        , stateNames
        
      )
      
      label = generateFilteredLeafletLabels(occurrenceData_filteredByDay())
      generateFilteredLeaflet(occurrenceData_filteredByDay(),
                              getDynamicColor,
                              stateLabel,
                              label,
                              states,
                              pal)
    
    
  } else if(!is.null(overviewData_filtered())){
  
    speciesDistribution = left_join(statesDF,overviewData_filtered(),by="locality")
    speciesDistribution$distinctSpecies[is.na(speciesDistribution$distinctSpecies)] <- 0
    states$density = speciesDistribution$distinctSpecies
   
    label = generateOverviewLeafletLabels(stateNames,states$density)
    
    generateOverviewLeaflet(states,label,pal)
    
      
  }

  
})




