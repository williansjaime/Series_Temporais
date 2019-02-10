#Willians 10/1/2019
#Series Temporais
#Explorando os dados
#Exporar o total de passageiros transportados em linhas aeres
AirPassengers
start(AirPassengers) #Data de Inicio
end(AirPassengers) #Data de Fim
plot(AirPassengers) #A funcao plot se adptar a funcao
plot(aggregate(AirPassengers))
monthplot(AirPassengers)

#Usar a funcao window para extrair o subconjunto da serie temporal
subst = window(AirPassengers, start=c(1960,1), end=c(1960,12))
subst
plot(subst)
