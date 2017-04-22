#
#
# Exploratory Data Analysis - Project 1
#
# Plot 1
#
# Using the Household Power Consumption data, writes out
# a 480 x 480 png file of the histogram for Global Active
# Power - household global minute-averaged active power
# (in kilowatt).
# 
# writePlot.R exeutes this funtion 
#
writePlot1 <- function(powerData) {
    png(
        filename = "./data/plot1.png",
        width = 480,
        height = 480,
        units = "px"
    )
    
    hist(
        powerData$Global_active_power,
        main = "Global Active Power",
        col = "red",
        xlab = "Global Active Power (kilowatts)"
    )
    
    dev.off()
}