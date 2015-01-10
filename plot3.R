setwd("~/Documents/Coursera/datasciencecoursera/Exploratory Data Analysis")
Sys.setlocale("LC_TIME", "en_US.UTF-8")
data = read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

sub_data = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]
sub_data$datetime <- strptime(paste(sub_data$Date, sub_data$Time), "%d/%m/%Y %H:%M:%S")

plot(sub_data$datetime, sub_data$Sub_metering_1, type = "l", ylab = "Energy sub metering")
lines(sub_data$datetime, sub_data$Sub_metering_2, col = "red")
lines(sub_data$datetime, sub_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lty = c(1,1,1),cex = 1, bty = "n" )
