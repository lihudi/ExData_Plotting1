source("load_data.R");
png(filename="plot4.png",width = 480, height = 480, units = "px", bg = "gray87");
par(mfrow = c(2,2), oma=c(.5,1,0,0), mar=c(5,4,0.1,2));
#Top left
plot(data$DateTime, data$Global_active_power, type = "l", lty = 1, ylab = "Global Active Power", xlab="");

#Top right
with(data, plot(DateTime,Voltage, type = "l", lty = 1, xlab="datetime"));

#Bottom left
plot(data$DateTime, data$Sub_metering_1, type = "l", lty = 1,ylab = "Energy sub metering", xlab="");
lines(data$DateTime, data$Sub_metering_2, type = "l", lty = 1, col = "red");
lines(data$DateTime, data$Sub_metering_3, type = "l", lty = 1, col = "blue");
legend("topright", lty=1, col = c("black", "red", "blue"), bty="n", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"));

#Bottom right
with(data, plot(DateTime, Global_reactive_power, type = "l", lty = 1, xlab="datetime"));
dev.off();
