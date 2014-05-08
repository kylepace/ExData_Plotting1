plot3 <- function() {
	require("data.table")
	source('./readConsumption.R')
	png("plot3.png", 480, height = 480)
	dt <- readConsumption()
	dateTimes <- paste(dt$Date, dt$Time)
	x <- strptime(dateTimes, format = "%Y-%m-%d %H:%M:%S")
	with(dt, {
		plot(x, dt$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
		lines(x, dt$Sub_metering_2, col = "red")
		lines(x, dt$Sub_metering_3, col = "blue")
		legend("topright", merge = TRUE, lty = c(1, 1, 1), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))
	})
	dev.off()
}