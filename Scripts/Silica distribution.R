###Silica Levels

#Across all variables
Si_ALL = lm(DMSP_CTD_vars$Absorbance~ . , data = DMSP_CTD_vars)
summary(Si_ALL)
plot(Si_ALL)

#Variance with Salinity
plot(DMSP_CTD_vars$Absorbance ~ DMSP_CTD_vars$Salinity)

### Why doesn't it consider Absorbance a worthy field to investigate?

