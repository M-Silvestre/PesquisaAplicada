#Gráfico de linha: taxa de aprovação em Probabilidade 2 de 2014 a 2017

# Definindo os valores da variável
aprov <- c(15, 42, 64, 44)

#Gerando o gráfico de linha:
#       main: Título
#       sub: Subtítulo (abaixo do gráfico)
#       xlab: Texto do eixo x
#       ylab: Texto do eixo y
#       col: cor
#       ylim: Limites de y
#       axes: Se os eixos são gerados automaticamente ou não

plot(aprov,type="l", axes = FALSE,
     main="Taxa de aprovação na disciplina Probabilidade 2 -\nUniversidade Federal da Paraíba",
     sub = "Fonte: Projeto de Monitoria do Departamento de Estatística",
     xlab="Período",ylab="Taxa de aprovação %",col="blue",ylim=c(10,70))

#Gerando o eixo x
axis(1, at=1:4, lab=c("2014.2","2015.2","2016.2","2017.2"))

#Gerando o eixo y
axis(2, las=1, at=c(10,30,50,70))

# Fechando o gráfico
box()
