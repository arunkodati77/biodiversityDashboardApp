
observeEvent(input$filterBtn,{
  if (is.null(input$vernacularDropdwn) || length(input$vernacularDropdwn) == 0  ) {
    shinyalert("Warning!",type="warning",text="Please select atleast one Vernacular Name")
  } else{
    occurrenceData_filtered(
      occurrenceData()%>%
        filter(
          kingdom == selectedKingdomName() &
            vernacularName %in% input$vernacularDropdwn
        )
    )
    
    uniqueDates(unique(as.Date(occurrenceData_filtered()$eventDate))%>%sort())
    
    occurrenceData_filteredByDay(
      occurrenceData_filtered()[
        occurrenceData_filtered()$eventDate == min(uniqueDates())
      ]%>%arrange(vernacularName))
    
    shinyjs::enable('dateSlider')
  }
  
})
