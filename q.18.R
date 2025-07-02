library(forecast)

# ARIMA model
arima_model <- auto.arima(AirPassengers)
plot(forecast(arima_model, h=12))

# Holt-Winters
hw_model <- HoltWinters(AirPassengers)
plot(forecast(hw_model, h=12))

# Comparison
accuracy(forecast(arima_model, h=12))
accuracy(forecast(hw_model, h=12))
