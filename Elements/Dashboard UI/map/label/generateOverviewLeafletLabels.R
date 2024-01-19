generateOverviewLeafletLabels <- function(stateNames,density){
  label <-  paste(
    "<strong>Province: </strong>"
    , stateNames
    , "<br><strong>Number of Distinct Species: </strong>"
    , density
  )
  
  return(label)
}