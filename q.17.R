# Load dataset
data("AirPassengers")
ts_data <- AirPassengers

# Plot time series
plot(ts_data, main="AirPassengers Data", ylab="Passengers", xlab="Time")

# Decompose
decomp <- decompose(ts_data)
plot(decomp)

# Forecast using HoltWinters
hw_model <- HoltWinters(ts_data)
forecast_vals <- forecast::forecast(hw_model, h=12)
plot(forecast_vals)
