###Peridinin data (Dinoflagellate diagnostic)

#Across all variables
PeridininALL = lm(DMSP_CTD_vars$Peridinin.Amount~ ., data = DMSP_CTD_vars)
summary(PeridininALL)
plot(PeridininALL)

#Variance with Salinity
plot(DMSP_CTD_vars$Peridinin.Amount ~ DMSP_CTD_vars$Salinity)
#Prefers to be in 36.5 ppm range

#Variance wtih Temperature
plot(DMSP_CTD_vars$Peridinin.Amount ~ DMSP_CTD_vars$Temperature)
#28 degrees C seems to be the prefered temp

#Variance with depth
plot(DMSP_CTD_vars$Peridinin.Amount ~ DMSP_CTD_vars$Depth.m)

#Variance with latitude
plot(DMSP_CTD_vars$Peridinin.Amount ~ DMSP_CTD_vars$Latitude)

#Variance with longitude
plot(DMSP_CTD_vars$Peridinin.Amount ~ DMSP_CTD_vars$Long.degE)
#How can I run a test to test for significance of 19 hex at different longitudes?

#DMS vs. Peridinin 
plot(DMSP_CTD_vars$DMS.nmol.L.1 ~ DMSP_CTD_vars$Peridinin.Amount)
#Weird, seems to contradict the idea that dinoflagellates are good DMSP producers

