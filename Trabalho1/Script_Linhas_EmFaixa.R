#Gráfico de linhas em faixa: Aprovações em Prob 1 e A.E.D. de 2015 a 2018

# Definindo os valores da variável
aprov_prob <- c(15, 20, 27, 11)
aprov_aed <- c(11, 25, 13, 16)

#Definindo O título
titulo<-paste(strwrap(
  'Aprovação nas disciplina Probabilidade 1 e Análise Exploratória
  de Dados nos anos de 2014 a 2017 na UFPB',
  #whitespace_only = TRUE,
  width = 50),collapse = "\n")

#Gerando a primeira série
plot(aprov_prob,type="l", axes = FALSE, main = titulo,
     sub = "Fonte: Projeto de Monitoria do Departamento de Estatística",
     xlab="Ano",ylab="Número de aprovados",col="blue",ylim=c(10,30))

#Gerando o eixo x
axis(1, at=1:4, lab=c("2015","2016","2017","2018"))

#Gerando o eixo y
axis(2, at=c(10,20,30))

#Gerando a segunda série
lines(aprov_aed, type="l", col="red")

# Fechando o gráfico
box()

#Gerando a legenda. Alguns argumentos da função legend():
#             <primeiro argumento>: posição em x da legenda
#             <segundo argumento>: posição em y da legenda
#             legend: Vetor com os textos da legenda
#             cex: tamanho em relação ao gráfico (?)
#             col: vetor com as cores da legenda
#             lty: Tipo de linha na legenda.
legend(1, 30, legend =  c("Prob 1","A.E.D."), cex = 0.8,
       col = c("blue","red"), lty=1)
