output$countryFilter <- renderUI({
  
  fluidRow(id="countryDPDRow",
           column(8,
                  selectInput(
                    "countryDropdwn",
                    label = NULL,
                    choices = countriesList(),
                    selected = selectedCountry(),
                    width=150
                  )
           ),
           column(3,
                  actionButton("addCountryBtn","Add",icon = icon("circle-plus"),width = 80)
           )
           
  )
  
  
})