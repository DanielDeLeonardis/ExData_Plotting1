#
#
# Exploratory Data Analysis - Project 1
#
# Plot 4
#
# Using the Household Power Consumption data, writes out
# a 480 x 480 png file containing 4 line plots for the following
# against the recorded day of week e.g. Fri.:
# 1) Global Active Power
# 2) Voltage
# 3) Energy sub Metering (1, 2 & 3)
# 4) Global reative power
#
# writePlot.R exeutes this funtion 
#
writePlot4 <- function(powerData) {
    opar <- par() # save the graphics parameters
    
    png(
        filename = "./data/plot4.png",
        width = 480,
        height = 480,
        units = "px"
    )
    
    # Set up the 2 x 2 matrix for each plot
    par(
        mfrow = c(2, 2),
        mar = c(4, 4, 2, 1),
        oma = c(0, 0, 2, 0)
    )
    
    # 1) Global Active Power
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

    # 2) Voltage
    with(powerData, plot(DateTime, Voltage, type = "l", xlab = "datetime"))
    
    # 3) Energy sub Metering (1, 2 & 3)
    with(
        powerData,
        plot(
            DateTime,
            Sub_metering_1,
            type = "l",
            ylab = "Energy sub metering",
            xlab = NA
        )
    )
    with(powerData,
         points(DateTime, Sub_metering_2, type = "l", col = "red"))
    with(powerData,
         points(DateTime, Sub_metering_3, type = "l", col = "blue"))
    legend(
        "topright",
        lty = c(1, 1, 1),
        col = c("black", "red", "blue"),
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    )
    
    # 4) Global reative power
    with(powerData,
         plot(
             DateTime,
             Global_reactive_power,
             type = "l",
             xlab = "datetime"
         ))
    
    dev.off()
    
    suppressWarnings(par(opar)) # restore the graphics parameters
}