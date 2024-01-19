output$filterUI<- renderUI({
  fluidRow(id="filterUI",
           
           fluidRow(id = "speciesRow",
                    column(6,
                           selectInput(
                             "kingdomDropdwn",
                             label = "Kingdom",
                             choices = kingdomList(),
                             selected = selectedKingdomName()
                             
                           )),column(6,
                                     pickerInput(
                                       "familyDropdwn",
                                       label = "Family ",
                                       choices = familyList(),
                                       selected = selectedFamily(),
                                       multiple = TRUE,
                                       options = pickerOptions(
                                         actionsBox = TRUE,
                                         countSelectedText = '{0}/{1} Family',
                                         liveSearch = TRUE,
                                         noneSelectedText = "No Family Selected",
                                         selectAllText = "All Families",
                                         selectedTextFormat = 'count >2',
                                         virtualScroll = 100
                                       )
                                       
                                     )
                                     
                           )
                    
                    
                    
                    
           ),
           fluidRow(id="nameRow",
                    
                    
                    column(6,
                           pickerInput(
                             "vernacularDropdwn",
                             label = "Vernacular Name",
                             choices = vernacularNamesList(),
                             selected = selectedVernacularName(),
                             multiple = TRUE,
                             options = pickerOptions(
                               actionsBox = TRUE,
                               countSelectedText = '{0}/{1} Species',
                               liveSearch = TRUE,
                               noneSelectedText = "No Species Selected",
                               selectAllText = "All Species",
                               selectedTextFormat = 'count >2',
                               virtualScroll = 100
                             )
                             
                           )
                    ),
                    column(3,offset = 3,
                           actionButton("filterBtn","Filter",icon = icon("filter"),width = 100)
                    )
           )
  )
  
})