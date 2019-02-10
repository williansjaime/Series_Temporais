#Willians 10/1/2019
#Series Temporais
#DEcompando os dados
#Funçao para fazer
#a decomposicao da series temporal
#em elementos
dec = decompose(AirPassengers)
dec
dec$seasonal
dec$trend
dec$random

plot(dec$seasonal)
plot(dec$trend)
plot(dec) #mostrar todos os elementos juntos
