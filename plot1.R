setwd("~/Documents/Coursera/datasciencecoursera/Exploratory Data Analysis")

data = read.table("household_power_consumption.txt", sep = ";", header = TRUE)

sub_data = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]
sub_data$datetime <- strptime(paste(sub_data$Date, sub_data$Time), "%d/%m/%Y %H:%M:%S")
sub_data$Global_active_power <- as.numeric(as.character(sub_data$Global_active_power))
sub_data$Global_active_power <- as.numeric(as.character(sub_data$Global_active_power))


hist(sub_data$sub_data$Global_active_power,
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

plot(sub_data$datetime, sub_data$Global_active_power,
     type = "line",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")  

plot(sub_data$datetime, sub_data$)