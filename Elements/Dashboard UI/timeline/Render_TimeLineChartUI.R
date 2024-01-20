output$timeLineChartUI<- renderUI({
  if(!is.null(occurrenceData())){
    fluidRow(id="timelineChartRow1",
             fluidRow(id="timelineChartFilterRow",
               column(6,
                      pickerInput(
                        "timlineDrpDwn",
                        label = "Name",
                        choices = vernacularNamesList_HeatMap(),
                        selected = selectedVernacularName_Heatmap(),
                        multiple = TRUE,
                        options = pickerOptions(
                          actionsBox = TRUE,
                          countSelectedText = '{0}/{1} Species',
                          liveSearch = TRUE,
                          noneSelectedText = "No Species Selected",
                          selectAllText = "All Species",
                          selectedTextFormat = 'count >2',
                          virtualScroll = 100,
                          maxOptions = 15,
                          maxOptionsText = "Max 15 Species"
                        )
                        
                      ) 
               ),
               column(3,offset = 3,
                      actionButton("filterHeatMapBtn","Go",icon = icon("filter"),width = 100)
               )
             ),
 fluidRow(id ="timelineChartRow2",
   column(12,
          occurrenceData()%>%filter(vernacularName %in%selectedVernacularName_Heatmap())%>%
            group_by(year,vernacularName,family)%>%
            summarise(individualCount=sum(individualCount))%>%
            plot_ly(
              x=~as.character(year),
              y = ~vernacularName,
              z=~individualCount ,
              type = 'heatmap',
              hoverinfo="text",
              text=~glue("Year: {year}
                        Vernacular Name: {vernacularName}
                        Family: {family}
                        Total Count: {individualCount}"),
              colorbar=list(title="Total Count",
                            x = 0.5,            # Set the x position of the colorbar
                            y = -0.5,             # Set the y position of the colorbar
                            xanchor = "left",     # Anchor point for x position
                            yanchor = "top",      # Anchor point for y position
                            orientation = "h" ),
              colors = colorRampPalette(c("#cc2121","navy","white","yellow","#1d9933"))(5)
            )%>%layout(
              height = 370,
              yaxis = list(title = "Vernacular Name",showticklabels = FALSE),
              xaxis = list(title = "Year"),
              title = "Species Observation over years")
          
          
          
          
          
   )
 )
      
    )
  } else{
    tags$p("No data")
  }
  
})