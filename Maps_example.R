

library(tmap)

UT <- readRDS("~/myonedrive/Projects/CARE2023/rmd_USU_CARE2023/Shiny_CARE/Data/UT01.rds")


tmap_mode("view")
tm_shape(UT) + 
  tm_polygons(col = "obesity_tract",
              style = "quantile",
              n = 7,
              palette = "Purples",
              title = "Obesity Rates",
              alpha = 0.6) +
  tm_basemap("OpenStreetMap")

