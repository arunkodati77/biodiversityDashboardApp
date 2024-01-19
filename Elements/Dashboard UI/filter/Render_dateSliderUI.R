output$dateSliderUI <- renderUI({
  sliderTextInput(
    "dateSlider", "", choices = uniqueDates(),
    grid = TRUE,
    animate =
      animationOptions(interval = 2000, loop = FALSE),
    width = 1000
  )

  
})


