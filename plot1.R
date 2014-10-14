datafile = read.table("C:/Users/Kavya Marupudi/Desktop/Exploratory Data Analysis/Week 2/course project/household_power_consumption.txt", header= TRUE, sep=";")
attach(datafile)

datafile$Date <- as.Date(datafile$Date, format="%d/%m/%Y")

data <- subset(datafile, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(datafile)

## Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Plot 1
hist(newdata$Global_active_power, xlab = "Global Active Power(kilowatts)", ylab=" Frequency", col = "Red", main = "Global Active Power")

## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
