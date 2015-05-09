source("preProcessData.R")

#Open graphics device
png("plot2.png", width= 480, height = 480)

#Create empty plot and then add line-plot
plot(ds$DateTime,ds$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(ds$DateTime,ds$Global_active_power,col="red")

#Close device
dev.off()