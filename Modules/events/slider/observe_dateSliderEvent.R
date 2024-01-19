
observeEvent(input$dateSlider,{
  if (is.null(input$vernacularDropdwn) || length(input$vernacularDropdwn) == 0) {
    shinyjs::disable('dateSlider')
    
  } else{
    
    
    
    occurrenceData_filteredByDay(
      occurrenceData_filtered()[
        occurrenceData_filtered()$eventDate == input$dateSlider
      ]%>%arrange(vernacularName))
    
    
  }
  
})