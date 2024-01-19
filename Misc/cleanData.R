library(dplyr)
library(data.table)
library(stringr)

data <- fread("c:/users/arunk/Downloads/occurence_poland.csv")
data1 <- data%>%filter(vernacularName!="")%>%select(id,
                       scientificName,taxonRank,kingdom,
                       family,vernacularName,individualCount,
                       lifeStage,longitudeDecimal,latitudeDecimal,
                       continent,country,locality,references,eventDate)
data1$locality <- str_replace(data1$locality,"Poland - ","")
data1$year <- str_extract(data1$eventDate,pattern="\\d{4}")
fwrite(data1,"c:/Appsilon/biodiversityApp/inst/extdata/occurrence_Poland.csv")
