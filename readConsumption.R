readConsumption <- function() {
	dt <- fread("../household_power_consumption.txt", sep = ";")
	# Read this in with col classes ?
	dt$Global_active_power <- as.numeric(dt$Global_active_power)
	dt$Date <- as.Date(dt$Date, format = "%d/%m/%Y")
	dt <- dt[dt$Date >= as.Date("2007-02-01") & dt$Date <= as.Date("2007-02-02"), ]
	dt
}