#
#
# Exploratory Data Analysis - Project 1
#
# Plot 3
#
# Using the Household Power Consumption data, writes out
# a 480 x 480 png file of the line plots for the following
# against the recorded day of week e.g. Fri.:
# - Sub_metering_1: energy sub-metering No. 1 (in watt-hour
#     of active energy). It corresponds to the kitchen,
#     containing mainly a dishwasher, an oven and a microwave
#     (hot plates are not electric but gas powered).
# - Sub_metering_2: energy sub-metering No. 2 (in watt-hour of
#     active energy). It corresponds to the laundry room,
#     containing a washing-machine, a tumble-drier, a
#     refrigerator and a light.
# - Sub_metering_3: energy sub-metering No. 3 (in watt-hour of
#     active energy). It corresponds to an electric
#     water-heater and an air-conditioner.
# 
# writePlot.R exeutes this funtion 
#
writePlot3 <- function(powerData) {
    png(
        filename = "./data/plot3.png",
        width = 480,
        height = 480,
        units = "px"
    )
    
    with(
        powerData,
        plot(
            DateTime,
            Sub_metering_1,
            type = "l",
            col = "black",
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
    
    dev.off()
}