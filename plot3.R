source("load_data.R");
png(filename="plot3.png",width = 480, height = 480, units = "px", bg = "gray87");
plot(data$DateTime, data$Sub_metering_1, type = "l", lty = 1,ylab = "Energy sub metering", xlab="")
lines(data$DateTime, data$Sub_metering_2, type = "l", lty = 1, col = "red")
lines(data$DateTime, data$Sub_metering_3, type = "l", lty = 1, col = "blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off();
