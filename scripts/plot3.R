source("preProcessData.R")

#Open graphics device
png("plot3.png", width= 480, height = 480)

#Create empty plot and then add each line
plot(ds$DateTime,ds$Sub_metering_1, ylab = "Energy Sub metering", xlab = "", type = "n")
lines(ds$DateTime, ds$Sub_metering_1)
lines(ds$DateTime, ds$Sub_metering_2, col="red")
lines(ds$DateTime, ds$Sub_metering_3, col="blue")

#Set legend
legend("topright", col = c("grey", "red", "blue") ,c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1))

# Close device
dev.off()