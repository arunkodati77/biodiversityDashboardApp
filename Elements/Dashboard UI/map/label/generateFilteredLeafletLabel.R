generateFilteredLeafletLabels <- function(data){
  label <- paste(
    "<strong>Date: </strong>",
    data$eventDate
    ,"<br><strong>Locality: </strong>"
    , data$locality,
    "<br><strong>Vernacular Name: </strong>"
    , data$vernacularName,
    "<br><strong>Scientific Name: </strong>"
    , data$scientificName
    , "<br><strong>Total Count: </strong>"
    , data$individualCount
  )
  
  return(label)
}