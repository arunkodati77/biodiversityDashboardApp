cssStyle <- "

.row {
     margin-right: 0px !important;
     margin-left: 0px !important;
}

.logo-mini {
    background-color: white;
}
.logo-lg{
margin-left:-20px;
background-color: white;
}

div#filterUI,div#mapUI,div#timeLineChartUI {
    background-color: white;
    border-radius: 18px;
    box-shadow: 7px 7px 7px 0px;
    margin-left: -15px;
}
div#dateSliderUI {
    background-color: #e3e3e3;
    border-radius: 18px;
    box-shadow: 7px 7px 7px 0px;
    margin-left: -15px;
    padding-left: 30px;
    padding-right: 20px;
}

button#filterBtn,button#filterHeatMapBtn {
    margin-top: 25px;
    color: white;
    background-color: #539dce;
}

div#mapUI {
    max-height: calc(100vh - 200px) !important;
}

div#timeLineChartUI {
    margin-top: 20px;
    height: 600px;
    max-height: calc(70vh) !important;
}
div#speciesRow {
     margin-top: 10px;
}
div#countryFilter {
    margin-bottom: -10px;
    margin-top: 10px;
    margin-right: 20px;
}

div#timelineChartRow1,div#timelineChartRow2 {
    margin-top: 10px;
}
.navbar-custom-menu {
    height: 10px;
}

button#addCountryBtn {
    background-color: #75b672;
    border: green;
    text-align: center;
    color: white;
    font-weight: bold;
    border-radius: 13px;
}

"


cssTextStyle<- "
#mapUI.recalculating { opacity: 1 !important; }
#AppHeader {
    color: white;
    font-size: 24px;
    font-weight: bold;
}

"