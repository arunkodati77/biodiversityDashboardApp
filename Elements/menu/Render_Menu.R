
output$dashboardMenu <- renderMenu({
  sidebarMenu(
    menuItem("Dashboard", tabName = "dashboardMenu", icon = icon("dashboard"))
   
  )
})


output$dataMenu <- renderMenu({
  sidebarMenu(
  
    menuItem("Data", tabName = "dataMenu", icon = icon("database"))
  )
})