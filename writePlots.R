source("cachehouseholdPowerConsumptionData.R")
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
#
# Exploratory Data Analysis - Project 1
#
# Reads the Household Power Consumption file from the Cache
# and writes a 480 x 480 png file for each of the plots
#
cachePowerData <- cacheHouseholdPowerConsumptionData()
writePlot1(cachePowerData$get())
writePlot2(cachePowerData$get())
writePlot3(cachePowerData$get())
writePlot4(cachePowerData$get())
