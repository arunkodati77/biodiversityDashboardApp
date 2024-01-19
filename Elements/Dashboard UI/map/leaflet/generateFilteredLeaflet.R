generateFilteredLeaflet <- function(data,
                                    getDynamicColor,
                                    stateLabel,
                                    label,
                                    states,
                                    pal){
  data%>%
    leaflet() %>%
    addProviderTiles("Esri.WorldStreetMap") %>%
    setView(lat=setViewLat(),lng=setViewLng(),zoom = 5)%>%
    addCircleMarkers(
      ~longitudeDecimal,
      ~latitudeDecimal,
      radius =  ~sqrt(individualCount) * 10,
      color =  getDynamicColor(length(unique(data$vernacularName))),
      label = lapply(label,htmltools::HTML),
      labelOptions = labelOptions(direction = "auto",
                                  style = list(
                                    "font-family" = "serif",
                                    "box-shadow" = "3px 3px rgba(0,0,0,0.25)",
                                    "font-size" = "14px",
                                    "border-color" = "rgba(0,0,0,0.5)"
                                  )),
      clusterOptions = markerClusterOptions()
    )%>%
    addPolygons(data=states, fill=T, 
                weight = 2,
                color="#1d78e3", 
                dashArray = "3",
                opacity=1,
                label  = lapply(stateLabel,htmltools::HTML),
                labelOptions = labelOptions(
                  style = list("font-weight" = "normal", padding = "3px 8px"),
                  textsize = "15px",
                  direction = "auto"))%>%
    addLegend(
      position = "topright",
      colors = getDynamicColor(length(unique(data$vernacularName))),
      labels = names(table(data$vernacularName)),
      title = "Species"
    )
}