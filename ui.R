
source("startup.R")
source("css.R",        local = TRUE)$value


App_Left_Sidebar <- dashboardSidebar(
  
  sidebarMenu(id="SidebarMenu",width = 200,
              menuItemOutput("dashboardMenu")
  ),
  disable = FALSE,
  width = "10%",
  collapsed = TRUE,
  minified = TRUE,
  id = NULL
  
)
# login <- 
App_Header <- shinydashboardPlus::dashboardHeader(
  
  title=tagList(
  tags$span( class = "logo-lg",img(src='AppsilonLG.png',height=54,width=180)),
    tags$span( class = "logo-mini",img(src='AppsilonSM.png',height=54,width=52))),
  titleWidth = NULL,
  disable    = FALSE,
  .list = NULL,
  leftUi     = tagList(textOutput("AppHeader")),
  uiOutput("countryFilter"),
  fixed = FALSE,
  controlbarIcon = NULL

)



App_Body <- shinydashboard::dashboardBody(
  useShinyjs(),
  useShinyalert(),
  use_waiter(),
  use_cicerone(),
  
  tabItems(
    
    tabItem(
      tabName = "dashboardMenu",
      fluidPage(
      
         column(5,
                fluidRow(
                  column(12,uiOutput("filterUI") %>% withSpinner(type = 8)),
                  column(12,uiOutput("timeLineChartUI") %>% withSpinner(type = 8))
                )
                ),
         column(7,
                fluidRow(id="dateSliderID",
                  uiOutput("dateSliderUI") %>% withSpinner(type = 8)
                  
                ),
                fluidRow(
                leafletOutput("mapUI",height = 1000) %>% withSpinner(type = 8))
               
         )
         
       
        
 
      ),
     
      tags$style(HTML(glue("{cssStyle}"))),
      tags$style(type="text/css",glue("{cssTextStyle}"))
    )
    
    
  )

)


ui = function(request){
  shinydashboardPlus::dashboardPage(
    skin="blue",
    options    = list(sidebarExpandOnHover = TRUE),
    header     = App_Header,
    sidebar    = App_Left_Sidebar,
    body       = App_Body,
    title      = "Biodiversity Dashboard"
  )
}