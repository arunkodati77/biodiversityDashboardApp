observeEvent(input$addCountryBtn,{
  showModal(
    modalDialog(
      title="Add New Country",
      size="s",
      uiOutput("addNewCountryUI"),
      footer = tagList(actionButton("saveContryBtn","Save",style="background-color:#539dce;color:white"),
                        actionButton("closeModalBtn","Close",style="background-color:#e38d8d;color:white"))
      
      ))
})
onclick("closeModalBtn",{
  removeModal()
})
observeEvent(input$saveContryBtn,{
 
  countryFile <- input$countryFile
  geoJsonFile <- input$geoJsonFile
 
  if(any(grep("\\.\\csv",countryFile$name)) & any(grep("\\.\\json|\\.\\geojson",geoJsonFile$name))){
    
    countryData <- fread(countryFile$datapath)
    
    if(!is.null(countryData)){
      
      
      dataSaved <- tryCatch(
        {
          # browser()
          data1 <- countryData%>%filter(vernacularName!="")%>%select(id,
                                                              scientificName,taxonRank,kingdom,
                                                              family,vernacularName,individualCount,
                                                              lifeStage,longitudeDecimal,latitudeDecimal,
                                                              continent,country,locality,references,eventDate)
          data1$locality <- str_replace(data1$locality,glue("{input$addCountryDrpDwn} - "),"")
          data1$year <- str_extract(data1$eventDate,pattern="\\d{4}")
          fwrite(data1,glue("./inst/extdata/occurrenceData/occurrence_{input$addCountryDrpDwn}.csv"))
         
         
          file.copy(from=geoJsonFile$datapath,
                    to=glue("./inst/extdata/geojsonData/{input$addCountryDrpDwn}.geojson"))
          
          dataSaved="success"
          
          },
        error=function(e)
        {
          return(NULL)
        })
      if(!is.null(dataSaved)){
        removeModal()
        shinyalert("Success","Added new country",type="success")
      } else{
        shinyalert("Oops!","Unable to add new country",type="error")
      }
      
      
    }else{
      shinyalert("Oops!","Unable to read data from files",type="error")
    }
    
    
  } else{
    shinyalert("Oops!","Incorrect file format uploaded (Country File: .csv, GeoJson File: .json/.geojson) ",type="error")
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
})