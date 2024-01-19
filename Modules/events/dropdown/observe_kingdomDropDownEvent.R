observeEvent(input$kingdomDropdwn,{
  
  if(input$kingdomDropdwn != selectedKingdomName())
  {
    selectedKingdomName(input$kingdomDropdwn)
    familyList(unique(occurrenceData()$family[occurrenceData()$kingdom==selectedKingdomName()]))
    
  }
})