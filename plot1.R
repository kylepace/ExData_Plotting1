plot1 <- function() {
	require("data.table")
	source('./readConsumption.R')
	dt <- readConsumption()
	hist(dt$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
	dev.copy(png, file = "plot1.png", width = 480, height = 480)
	dev.off()
}