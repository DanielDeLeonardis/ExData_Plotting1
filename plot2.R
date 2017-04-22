#
#
# Exploratory Data Analysis - Project 1
#
# Plot 2
#
# Using the Household Power Consumption data, writes out
# a 480 x 480 png file of the line plot for Global Active
# Power - household global minute-averaged active power
# (in kilowatt) against the recorded day of week e.g. Fri.
# 
# writePlot.R exeutes this funtion 
#
writePlot2 <- function(powerData) {
    png(
        filename = "./data/plot2.png",
        width = 480,
        height = 480,
        units = "px"
    )
    
    with(
        powerData,
        plot(
            DateTime,
            Global_active_power,
            type = "l",
            ylab = "Global Active Power (kilowatts)",
            xlab = NA
        )
    )
    
    dev.off()
}