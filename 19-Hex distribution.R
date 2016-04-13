### 19-Hex (haptophyte genus Phaeocystis indicator pigment) distribution

#Across all variables
HexALL = lm(DMSP_CTD_vars$X19.Hex.Amount~ ., data = DMSP_CTD_vars)
summary(HexALL)
plot(HexALL)

#Variance with Salinity
plot(DMSP_CTD_vars$X19.Hex.Amount ~ DMSP_CTD_vars$Salinity)
#Prefers to be in 36.5 ppm range

#Variance wtih Temperature
plot(DMSP_CTD_vars$X19.Hex.Amount ~ DMSP_CTD_vars$Temperature)
#28 degrees C seems to be the prefered temp

#Variance with depth + Zeaxanthin variance with depth
#Why doesn't this match with Nicole's data?
plot(DMSP_CTD_vars$X19.Hex.Amount ~ DMSP_CTD_vars$Depth, col="420")
par(new = T)
plot(DMSP_CTD_vars$Zeax.Amount ~ DMSP_CTD_vars$Depth, col = "66")
par(new = F)

#Variance with latitude
plot(DMSP_CTD_vars$X19.Hex.Amount ~ DMSP_CTD_vars$Latitude)

#Variance with longitude
plot(DMSP_CTD_vars$X19.Hex.Amount ~ DMSP_CTD_vars$Long.degE)
#How can I run a test to test for significance of 19 hex at different longitudes?

#DMS vs. 19-Hex
DMS_19Hex = plot(DMSP_CTD_vars$DMS.nmol.L.1 ~ DMSP_CTD_vars$X19.Hex.Amount)
