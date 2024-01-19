# Biodiversity Dashboard

You can see the app running at: http://15.157.72.81:8080/

it is hosted in AWS and running via shinyproxy server

    - **username:** appsilon-hiring
      **password:** hire007


## App Folder Structure 
    - related to UI at "./Elements"
    -        events at "./Modules"


The entire app is dockerized to make it work with shinyproxy.
## Dockerfile (Not Uploaded in the repo)
since dockerimages cannot persist data after restart, I am doing a volume mount to a local folder in the AWS EC2 Instance
 
    - container-volumes: ["/root/occurrence_data:/root/shiny/inst/extdata/occurrenceData","/root/geojson_data:/root/shiny/inst/extdata/geojsonData"]


Default Country = "Poland"

Since the biodiversity data is very large (>20GB) splitted it by country. For now, only two countries were loaded, You can add a new country using "ADD" button beside dropdown.
## Add new country
To add new country we need to upload two files
   1) Occurrence Data (you can see a sample file in ./inst/extdata/occurrenceData/).
   2) geojson Data (need to download from internet, same in ./inst/extdata/geojsonData/)

**Note:** Refresh the page to see the changes

