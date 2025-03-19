library(raster)
setwd("D:/AAA_FOREST_STRUCTURE_COLOMBIA_3/FIGURA 2")
#
rm(list = ls(all.names = TRUE)) 
gc()
#
COL = shapefile("COL.shp")
CH = raster("CH_COLOMBIA_5_39_FOREST_50m.tif")

CLIPCOL = mask(CH, COL)

writeRaster(CLIPCOL, filename = "CH_COLOMBIA_5_39_FOREST_50m_CLIPCOL.tif", format = "GTiff", overwrite = T)
 

