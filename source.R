source("./Modules/variables/initializeReactiveVariables.R", local=TRUE)$value

source("./Modules/events/button/observe_addNewCountryButton.R", local=TRUE)$value
source("./Modules/events/button/observe_heatmapFilterButtonEvent.R", local=TRUE)$value
source("./Modules/events/button/observe_mainFilterButton.R", local=TRUE)$value

source("./Modules/events/dropdown/observe_kingdomDropDownEvent.R", local=TRUE)$value
source("./Modules/events/dropdown/observer_familyDropdownEvent.R", local=TRUE)$value
source("./Modules/events/dropdown/observe_countryDropdownEvent.R", local=TRUE)$value

source("./Modules/events/slider/observe_dateSliderEvent.R", local=TRUE)$value

source("./Elements/Dashboard UI/filter/Render_dateSliderUI.R", local=TRUE)$value
source("./Elements/Dashboard UI/filter/Render_MainFilter.R", local=TRUE)$value
source("./Elements/Dashboard UI/filter/Render_TopRightHeaderUI.R", local=TRUE)$value

source("./Elements/Dashboard UI/modal/Render_addNewCountryModalUI.R", local=TRUE)$value

source("./Elements/Dashboard UI/map/Render_MapUI.R", local=TRUE)$value
source("./Elements/Dashboard UI/map/leaflet/generateFilteredLeaflet.R", local=TRUE)$value
source("./Elements/Dashboard UI/map/leaflet/generateOverviewLeaflet.R", local=TRUE)$value
source("./Elements/Dashboard UI/map/label/generateFilteredLeafletLabel.R", local=TRUE)$value
source("./Elements/Dashboard UI/map/label/generateOverviewLeafletLabels.R", local=TRUE)$value

source("./Elements/Dashboard UI/timeline/Render_TimeLineChartUI.R", local=TRUE)$value

source("./Elements/menu/Render_Menu.R", local=TRUE)$value
source("./Elements/common-text/Render_Text.R", local=TRUE)$value
