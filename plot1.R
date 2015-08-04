source("load_data.R");
png(filename="plot1.png",width = 480, height = 480, units = "px", bg = "gray87");
hist(data$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)");
dev.off();
