# Set working directory
if(file.exists("household_power_consumption.zip")){
    unzip("household_power_consumption.zip")
} else {
    # Assume the file is already there.
}

#Subsetting to keep only 1st and 2nd of Feb, 2007
ds <- read.csv(file = "household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors=FALSE )[c(66638:69517),]

#Reading Date and combine Date and Time
ds$Date <- as.Date(ds$Date,format = "%d/%m/%Y")
ds$DateTime <- strptime(paste(ds$Date, ds$Time),"%Y-%m-%d %H:%M:%S")

#Now parsing each numeric variable
ds$Global_active_power <- as.numeric(ds$Global_active_power)

ds$Sub_metering_1 <- as.numeric(ds$Sub_metering_1)
ds$Sub_metering_2 <- as.numeric(ds$Sub_metering_2)
ds$Sub_metering_3 <- as.numeric(ds$Sub_metering_3)

ds$Voltage <- as.numeric(ds$Voltage)
ds$Global_reactive_power <- as.numeric(ds$Global_reactive_power)
