guide <- Cicerone$
  new()$ 
  step(
    el = "countryDPDRow",
    title = "Switch Country",
    description = "This is where you can switch between countries"
  )$
  step(
    "addCountryBtn",
    "Add New Country",
    "You can upload files as suggested in 'Read.me' to add new country",
    position = "left"
  )$
  step(
    "filterUI",
    "Filter data",
    "You must select atleast one Vernacular name to apply filter.
      This filters the data present in all the widgets except for the Heatmap",
    position = "right-bottom"
  )$
  step(
    "dateSliderID",
    "Date Slider",
    "You can filter the data on the map to any specific date.
      Click the play button (Bottom-Right) to animate the data display on map"
  )
