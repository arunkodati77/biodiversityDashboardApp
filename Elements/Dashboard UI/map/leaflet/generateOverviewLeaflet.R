generateOverviewLeaflet <- function(states,label,pal){
  
  leaflet(states) %>%
    addProviderTiles("Esri.WorldStreetMap")%>%
    addPolygons(
      fillColor = ~pal(density),
      weight = 2,
      opacity = 1,
      color = "black",
      dashArray = "3",
      fillOpacity = 0.7,
      highlight = highlightOptions(
        weight = 5,
        color = "#666",
        dashArray = "",
        fillOpacity = 0.7,
        bringToFront = TRUE),
      label = lapply(label,htmltools::HTML),
      labelOptions = labelOptions(
        style = list("font-weight" = "normal", padding = "3px 8px"),
        textsize = "15px",
        direction = "auto")) %>%
    addLegend(pal = pal, values = ~density, opacity = 0.7, title = NULL,
              position = "bottomright")
}