setwd("~/Documents/Coursera/datasciencecoursera/Exploratory Data Analysis")
Sys.setlocale("LC_TIME", "en_US.UTF-8")

data = read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

sub_data = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]
sub_data$datetime <- strptime(paste(sub_data$Date, sub_data$Time), "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2))

plot(sub_data$datetime, sub_data$Global_active_power,type = "line",ylab = "Global Active Power (kilowatts)",xlab = "")  
plot(sub_data$datetime, sub_data$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
plot(sub_data$datetime, sub_data$Sub_metering_1, type = "l",xlab = "", ylab = "Energy sub metering")
lines(sub_data$datetime, sub_data$Sub_metering_2, col = "red")
lines(sub_data$datetime, sub_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lty = c(1,1,1), cex = .7, bty = "n")
plot(sub_data$datetime, sub_data$Global_reactive_power,type = "line",ylab = "Global_reactive_power",xlab = "datetime") 