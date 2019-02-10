#Willians 10/1/2019
#Series Temporais
#Previsao e extrapolando os dados
#Media de um longo periodo pode gerar uma previsão ruim
AirPassengers
mean(AirPassengers)
#media de um ano
mean(window(AirPassengers, start=c(1960, 1), end=c(1960,12)))

#Media movel - Ela vai se ajustando com o passar do tempo
install.packages("forecast")
library(forecast)
mediamove = ma(AirPassengers, order = 12) #Ajustar a media de 12 em 12 mese
mediamove
#mediamove = ma(AirPassengers, order = 1)
# funcao forecast para fazer previsao
previsao = forecast(mediamove, h=12)#h quantos mese uero fazer a previsao
previsao
plot(previsao)
arima = auto.arima(AirPassengers)
arima
previsao = forecast(arima, h=12)
plot(previsao)
