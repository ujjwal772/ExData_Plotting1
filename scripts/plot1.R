source("preProcessData.R")

#Open device and set margins
png("plot1.png", width= 480, height = 480)
par(mar = c(4,4,2,2))

#Plot histogram
hist(as.numeric(ds$Global_active_power), col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()