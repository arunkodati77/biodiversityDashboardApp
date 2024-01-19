
observeEvent(input$familyDropdwn,{
  
  if(!identical( input$familyDropdwn,selectedFamily()))
  {
    selectedFamily(input$familyDropdwn)
    vernacularNamesList(unique(occurrenceData()$vernacularName[occurrenceData()$family%in%selectedFamily()]))
    
  }
})