source("load_data.R");
png(filename="plot2.png",width = 480, height = 480, units = "px", bg = "gray87");
plot(data$DateTime, data$Global_active_power, type = "l", lty = 1, ylab = "Global Active Power (kilowatts)", xlab="");
dev.off();
