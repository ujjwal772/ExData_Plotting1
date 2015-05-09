source("preProcessData.R")

#Open graphics device and set plot area
png("plot4.png",height = 480, width = 480)
par(mfrow = c(2,2))

####################################
plot(ds$DateTime,ds$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power")
lines(ds$DateTime,ds$Global_active_power)

####################################
plot(ds$DateTime,ds$Voltage, type = "n", xlab = "datetime", ylab = "Voltage")
lines(ds$DateTime,ds$Voltage)

####################################
plot(ds$DateTime,ds$Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "n")
lines(ds$DateTime, ds$Sub_metering_1)
lines(ds$DateTime, ds$Sub_metering_2, col="red")
lines(ds$DateTime, ds$Sub_metering_3, col="blue")
# the parameters "lty" and "bty" provide colored lines and remove border respectively from the legend.
legend("topright", col = c("grey", "red", "blue") ,c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), bty="n")

#####################################
plot(ds$DateTime,ds$Global_reactive_power, type = "n", xlab = "datetime", ylab = "Global_reactive_power")
lines(ds$DateTime,ds$Global_reactive_power)

dev.off()