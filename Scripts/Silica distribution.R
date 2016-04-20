###Silica Levels

#Across all variables
Si_ALL = lm(DMSP_CTD_vars$Absorbance~ . , data = DMSP_CTD_vars)
summary(Si_ALL)
plot(Si_ALL)

#Variance with Salinity
plot(DMSP_CTD_vars$Absorbance ~ DMSP_CTD_vars$Salinity)
#Prefers to be in 36.5 ppm range

#Variance wtih Temperature
plot(DMSP_CTD_vars$Absorbance ~ DMSP_CTD_vars$Temperature)
#28 degrees C seems to be the prefered temp

#Variance with depth 
plot(DMSP_CTD_vars$Absorbance ~ DMSP_CTD_vars$Depth, col="420")
par(new = T)
plot(DMSP_CTD_vars$Monad.Amount ~ DMSP_CTD_vars$Depth, col = "66")
par(new = F)

#Variance with latitude
plot(DMSP_CTD_vars$Absorbance ~ DMSP_CTD_vars$Lat.degN)

#Variance with longitude
plot(DMSP_CTD_vars$Absorbance ~ DMSP_CTD_vars$Long.degE)

#DMS vs. Silica
DMS_Si = plot(DMSP_CTD_vars$DMS.nmol.L.1 ~ DMSP_CTD_vars$Absorbance)

