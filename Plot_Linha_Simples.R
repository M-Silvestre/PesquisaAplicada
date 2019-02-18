#Gráfico de linha: taxa de aprovação em Probabilidade 2 de 2014 a 2017

#Gráfico de linha: taxa de aprovação em Probabilidade 2 de 2014 a 2017

#Definindo os valores da variável
aprov <- c(3, 9, 20, 12)

#Definindo o título. Etapa necessária porque o título ocupa múltiplas linhas
titulo<-paste(strwrap(
  'Aprovação na disciplina Probabilidade 2 nos períodos de 2014 a 2017 na UFPB',
  #whitespace_only = TRUE,
  width = 50),collapse = "\n")

#Gerando o gráfico de linha. Alguns arqumentos de plot()
#       main: Título
#       sub: Subtítulo (fica abaixo do gráfico)
#       xlab: Texto do eixo x
#       ylab: Texto do eixo y
#       col: cor
#       ylim: Limites de y
#       axes: Se os eixos são gerados automaticamente ou não

plot(aprov,type = "l", axes = FALSE, main = titulo,
     sub = "Fonte: Projeto de Monitoria do Departamento de Estatística",
     xlab = "Período",ylab = "Número de aprovados",col = "blue",ylim = c(0,24))

#Gerando manualmente o eixo x com os pontos desejados
axis(1, at=1:4, lab=c("2014","2015","2016","2017"))

#Gerando manualmente o eixo y
axis(2, at=c(0,8,16,24))

# Fechando o gráfico
box()
