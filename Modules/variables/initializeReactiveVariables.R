selectedCountry <- reactiveVal("Poland")#Default is set to Poland
selectedVernacularName <- reactiveVal(NULL)
selectedScientificName <- reactiveVal(NULL)
selectedKingdomName <- reactiveVal(NULL)
selectedFamily <- reactiveVal(NULL)
states  <- reactiveVal(NULL)

selectedVernacularName_Heatmap <- reactiveVal(NULL)

occurrenceData <- reactiveVal(NULL)
occurrenceData_filtered <- reactiveVal(NULL)
occurrenceData_filteredByDay <- reactiveVal(NULL)

overviewData <- reactiveVal(NULL)
overviewData_filtered <- reactiveVal(NULL)

vernacularNamesList <- reactiveVal(NULL)
scientificNamesList <- reactiveVal(NULL)
countriesList <- reactiveVal(NULL)
kingdomList <- reactiveVal(NULL)

vernacularNamesList_HeatMap <- reactiveVal(NULL)

familyList <- reactiveVal(NULL)

countriesGeoData <- reactiveVal(NULL)
setViewLat <- reactiveVal(NULL) 
setViewLng <- reactiveVal(NULL)

uniqueDates <- reactiveVal(NULL)
selectedDateSlider <- reactiveVal(NULL)

countryNamesList <- reactiveVal(NULL)
selectedMainCountry <- reactiveVal(NULL)
