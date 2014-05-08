plot1 <- function() {
	require("data.table")
	source('./readConsumption.R')
	png("plot1.png", 480, 480)
	dt <- readConsumption()
	hist(dt$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
	dev.off()
}