# File-Name:       plot1.R
# Date:            10.01.2015
# Author:          Federico Carlés
# Email:           fedecarles@gmail.com                                      
# Data:            UC Irvine Machine Learning Repository
# Packages Used:   base
# R version        3.1.2 (2014-10-31)
# System           Linux Mint 17 (Qiana)

# rm(list=ls(all=TRUE)) # Uncomment and run to clean your workspace.
# setwd() # Set your working directory and make sure the file "household_power_consumption.txt" is extracted there.
# Sys.setlocale("LC_TIME", "en_US.UTF-8") # set english as system langua if you are runing in a non english system.

# Read the data set.
data = read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

# Subset data to include only the data for 2 days.
sub_data = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]

# Create a new variable by pasting Date and Time and setting the time format.
sub_data$datetime <- strptime(paste(sub_data$Date, sub_data$Time), "%d/%m/%Y %H:%M:%S")

# Remove the unused data.
rm(data)

# Open png graphics device and set storing options.
png("plot2.png", width = 480, height = 480)

# Plot graph.
plot(sub_data$datetime, sub_data$Global_active_power,
     type = "line",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")  

# Close graphic device.
dev.off()
