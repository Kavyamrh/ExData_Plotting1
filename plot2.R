datafile = read.table("C:/Users/Kavya Marupudi/Desktop/Exploratory Data Analysis/Week 2/course project/household_power_consumption.txt", header= TRUE, sep=";")
attach(datafile)

datafile$Date <- as.Date(datafile$Date, format="%d/%m/%Y")

## Subsetting the data
data <- subset(datafile, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(datafile)

## Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Plot 2
plot(data$Global_active_power~data$Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
