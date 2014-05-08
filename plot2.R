plot2 <- function() {
	require("data.table")
	source('./readConsumption.R')
	png("plot2.png", 480, 480)
	dt <- readConsumption()
	dateTimes <- paste(dt$Date, dt$Time)
	with(dt, plot(strptime(dateTimes, format = "%Y-%m-%d %H:%M:%S"), dt$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
	dev.off()
}