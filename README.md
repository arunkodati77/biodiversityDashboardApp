# Biodiversity Dashboard

You can see the app running at: http://15.157.72.81:8080/

it is hosted in AWS and running via shinyproxy server

    - **username:** appsilon-hiring
      **password:** hire007
## Shiny proxy configuration
The shiny proxy server is using custom application.yml 

                /etc/shinyproxy/application.yml

## Deployment
At present the App is dockerized and pushed to private repository at docker hub.
Will pull the latest image from AWS EC2 instance manually and followed by restarting the shiny proxy server

    - docker rmi <imageid>
    - docker pull arinkodati77/biodiversityapp:latest
    - service restart shinyproxy


## Dockerfile (Not Uploaded in the repo)
since dockerimages cannot persist data after restart, I am doing a volume mount to a local folder in the AWS EC2 Instance
 
    - container-volumes: ["/root/occurrence_data:/root/shiny/inst/extdata/occurrenceData","/root/geojson_data:/root/shiny/inst/extdata/geojsonData"]


## App Folder Structure 
    - related to UI at "./Elements"
    -        events at "./Modules"


The entire app is dockerized to make it work with shinyproxy.

Default Country = "Poland"

Since the biodiversity data is very large (>20GB) splitted it by country. For now, only two countries were loaded, You can add a new country using "ADD" button beside dropdown.
## Add new country
To add new country we need to upload two files
   1) Occurrence Data (you can see a sample file in ./inst/extdata/occurrenceData/).
   2) geojson Data (need to download from internet, same in ./inst/extdata/geojsonData/)

**Note:** Refresh the page to see the changes

### Set View on map based on country selected
In order to center the map based on selected country. I have preloaded the latitudes and logitudes info for each country using countries-list file

        - path: ./inst/extdata/countries-list.csv

## Date Range Slider
With below slider you can navigate to any point of when when event was recorded. You can even play the time by pressing play buttom at right bottom
![image](https://github.com/arunkodati77/biodiversityDashboardApp/assets/69163895/7efe9ceb-fa38-4c2e-b083-4af95a7e3594)

## Heat map
This map is used to see how the population of selected species varied over the years. 

        - red indicates very few of them left
         - green indicates many of them were alive

![image](https://github.com/arunkodati77/biodiversityDashboardApp/assets/69163895/ac50dc3d-9a92-483f-a341-975f95cdda7e)











