
server <- function(input, output,session) {
  

  observe({
    #Extract countries List from existing occurrence records
    isolate({  countriesList(str_extract(list.files("./inst/extdata/occurrenceData/",pattern="occurrence_"),"(?<=_)[^\\.]+(?=\\.)"))
    countriesGeoData(fread(glue("./inst/extdata/countries_list.csv")))
    countryNamesList(countriesGeoData()$name)
    
    })
    
  })
  
  observe({
    # periodically collect
    invalidateLater(120000,session)
    rm(list = ls())
    gc()
    print("session Cleaned")
  })
  
  
  source("./source.R", local=TRUE)$value
  
 
 
}
