###Metadata

#19-Hex correlated pigments. 19-Hex found in Prymnesiophytes, several dinoflagellates
#Since Peridinin is not correlated to 19-Hex, looks like presence of 19-Hex is due to prymnesiophytes

Chl.c3. . (Some prymnesiophytes, diatoms and dinoflagellates)
MgDVP   * (prasinophytes)
Chl.c2  *** (Most diatoms, dinoflagellates, prymnesiophytes, raphidophytes, cryptophytes)
Fuco    *** (Diatoms, prymnesiophytes, chrysiophytes, raphidophytes, several dinoflagellates)
Neo     . (Green algae, chlorophytes, prasinophytes, euglenophytes)
Prasino ** (Some prasinophytes)
Allo    * (Cyanophytes, rhodophytes)
Zeax.   ** (Cyanophytes, prochlorophytes, rhodophytes, chlorophytes)
Croco   ** (Cryptophytes)
Chl.b.  ** (Green algae, chlorophytes, prasinophytes, euglenophytes)
DVChla  ** (Prochlorophytes)
Chl     . (All phytoplankton)
Ph.tin  * ()
a.Car.  ** ()
b.Car   .

# Site-by-species matrix with pigments (indirect ordination) 

#Drop columns that contain inessential predictors
fields_to_drop_2= c('id', 'Station.y', 'Station.x.1'
                   'X19.Hex.like.keto.Amount', 'Bot.Depth.m', 'Nisken.no.y', "Latitude", 
                   'Longitude', 'Depth', 'StrainGaugePressure', 'Conductivity', 'PotentialTemp.',
                   'Density', 'Sigmatheta', 'PAR.Irradiance', 'Nisken.no.x.1', 'HPLCSet.no', 'VialName', 
                   'Extraction.Date', 'Vol.Filtered.L', 'Nisken.no.y.1', 'Depth.m', 'Bot.depth.m', 
                   'Lat.degN', 'Long.degE', 'DMS.nmol.L.1', 'DMSPd.nmolL.1', 'DMSPp.nmol..L.1', 'Salinity',
                   'Temperature', 'Oxygen', 'Oxygen.1', 'ISUS', 'Nitrate', 'Nisken.no.x.1')
Site_by_pigs = DMSP_CTD[ , !(names(DMSP_CTD) %in% fields_to_drop_2)]
rows_to_keep_2 = which(apply(Site_by_pigs, 1, function(x) !any(is.na(x))))
Site_by_pigs = Site_by_pigs[rows_to_keep_2, ]
View(Site_by_pigs)

library(vegan)

pca = rda(scale(Site_by_pigs))
pca
summary(pca)
plot(pca, display='sp', choices = c(1,2))


