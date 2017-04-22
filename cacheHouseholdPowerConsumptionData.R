library(dplyr)
library(lubridate)
#
# Exploratory Data Analysis - Project 1
#
# Cache the Household Power Consumption Data
#
# Loads the data from the file the first time
# the data is requested using the get function,
# puts int into the cache and returns it.
# Subsequent calls to get takes data from the
# cache.
#
# The date and time fields are concatenated and
# converted into timestamp (Date) and appended to
# the data frame.
#
# As per the requirements, data is filtered to
# provide only the Household Power Consumption Data
# for the 1st and 2nd of February 2003.
# 
# Note: The first get takes a little time as there
# are over 2 million rows in the input file.
#
# writePlot.R exeutes this funtion 
#
cacheHouseholdPowerConsumptionData <- function() {
    
    householdPowerConsumptionData <- NULL
    
    load <- function() {
        householdPowerConsumptionDataFull <- read.csv(
            "./data/household_power_consumption.txt",
            sep = ";",
            header = TRUE,
            na.strings = "?",
            stringsAsFactors = FALSE
        )

        householdPowerConsumptionDataFull$DateTime <-
            dmy_hms(
                paste(
                    householdPowerConsumptionDataFull$Date,
                    householdPowerConsumptionDataFull$Time
                )
            )

        householdPowerConsumptionData <<-
            filter(
                householdPowerConsumptionDataFull,
                DateTime >= as.Date("2007-02-01 00:00:00"),
                DateTime < as.Date("2007-02-03 00:00:00")
            )
        rm(householdPowerConsumptionDataFull)
    }
    
    get <- function() {
        if (is.null(householdPowerConsumptionData)) {
            print("Loading Household Power Consumption Data...")
            load()
        }
        else {
            print("Getting Household Power Consumption Data from Cache...")
        }
        householdPowerConsumptionData
    }
    
    list(get = get)
}
