require(rCharts)

options(viewer=NULL)

map2 = Leaflet$new()
map2$setView(c(45.5236, -122.6750), 13)
map2$tileLayer(provider = 'Stamen.Toner')
map2$marker(c(45.5244, -122.6699), bindPopup = 'The Waterfront')
map2$circle(c(45.5215, -122.6261), radius = 500, bindPopup = 'Laurelhurst Park')


map2$templates$script = "http://timelyportfolio.github.io/rCharts_leaflet_templates/chart_extralayers.html"
map2$params$overlays = list(
  name = 'motorways',
  url = 'http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/{styleId}/256/{z}/{x}/{y}.png',
  opts = list(
    attr = 'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade',
    styleId = 46561
  )
)
map2$params$baselayers = list(
  name = 'midnight',
  url = 'http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/{styleId}/256/{z}/{x}/{y}.png',
  opts = list(
    attr = 'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade',
    styleId = 22677
  )
)