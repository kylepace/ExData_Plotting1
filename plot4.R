plot4 <- function() {
	require("data.table")
	source('./readConsumption.R')
	png("plot4.png", 480, 480)
	par(mfrow = c(2, 2))
	dt <- readConsumption()
	dateTimes <- paste(dt$Date, dt$Time)
	x <- strptime(dateTimes, format = "%Y-%m-%d %H:%M:%S")
	
	firstPlot <- function() {
		with(dt, plot(x, dt$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
	}
	
	secondPlot <- function() {
		with(dt, plot(x, dt$Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))
	}
	
	thirdPlot <- function() {
		plot(x, dt$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
		lines(x, dt$Sub_metering_2, col = "red")
		lines(x, dt$Sub_metering_3, col = "blue")
		legend("topright", merge = TRUE, lty = c(1, 1, 1), bty = "n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))
	}
	
	fourthPlot <- function() {
		with(dt, plot(x, dt$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power"))
	}
	
	with(dt, {
		firstPlot()
		secondPlot()
		thirdPlot()
		fourthPlot()
	})
	
	dev.off()
}