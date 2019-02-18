#Gráfico de barras do Banco de Dados estudado em aula

#Dados
dados01<-c(1,4,2,5,3,2,0,3,2,1,5,4,2,5,0,
          3,2,4,2,3,2,3,2,1,4,2,1,3,4,2)

#Obter as frequências
table(dados)

#Frequências (obtidas pelo table())
freq<-c(2,4,10,6,5,3)

#Valores que a variável assume
valores<-c("0","1","2","3","4","5")

#Alguns argumentos do comando barplot(): 
#                  <primeiro argumento>: alturas das colunas
#                  main: Título do gráfico
#                  xlab: Texto do eixo x
#                  ylab: Texto do eixo y
#                  names: Nomes das colunas
#                  space: espaçamento relativo à espessura das colunas
#                  horiz: se o gráfico é de colunas ou barras


barplot(freq,main = "Cáries em crianças", sub = "Fonte: Dados fictícios",
        ylab="Frequência", xlab="N. de cáries", 
        names = valores, space = 0.7)


#Histograma do Banco de Dados estudado em aula

#Dados
dados02<-c(1.51, 1.65, 1.58, 1.54, 1.65, 1.40, 1.61, 1.08, 1.81, 1.38, 1.56, 1.83,
           1.69, 1.22, 1.22, 1.68, 1.47, 1.68, 1.49, 1.80, 1.33, 1.83, 1.50, 1.46,
           1.67, 1.60, 1.23, 1.54, 1.73, 1.43, 2.18, 1.46, 1.53, 1.60, 1.59, 1.49,
           1.46, 1.72, 1.56, 1.43, 1.69, 1.15, 1.89, 1.47, 2.00, 1.58, 1.37, 1.40,
           1.76, 1.62, 1.96, 1.66, 1.51, 1.31, 2.29, 1.58, 2.34, 1.66, 1.71, 1.44,
           1.66, 1.36, 1.43, 1.26, 1.47, 1.52, 1.57, 1.33, 1.86, 1.75, 1.57, 1.83,
           1.52, 1.66, 1.90, 1.59, 1.47, 1.86, 1.73, 1.55, 1.52, 1.40, 1.86, 2.02)

#Determinar os limites inferior e superior dos dados
range(dados02)

#Determinar o número ideal de classes
classes <- round(1 + 3.3 * log10(length(dados02)), 0)

#Determinar os intervalos de classe
#Convém usar uma seqência em vez de digitar os limites
#Alguns argumentos do comando seq():
#                 from: Ponto inicial da sequência
#                 to: Ponto final da sequência
#                 length.out: quantos pontos na sequência (número de classes + 1)
interv<-seq(from = 1.08, to = 2.34, length.out = (classes + 1))


#Alguns argumentos do comando hist(): 
#                  <primeiro argumento>: vetor com os valores (e não as frequências)
#                  main: Título do gráfico
#                  ylab: Texto do eixo y
#                  xlab: Texto do eixo x
#                  names: Nomes das colunas
#                  break: breakpoints do histograma (limites das classes)
#                  right: se os intervalos são fechados direita
#                  space: espaçamento relativo à espessura das colunas
#                  horiz: se o gráfico é de colunas ou barras

hist(x = dados02, breaks = interv, main = "Nível de creatinina no sangue",
     sub = "Fonte: Dados fictícios", right = FALSE, include.lowest = TRUE,
     xlab = "Creatinina no sangue (mg/mL)", ylab = "Frequência")

#Fechando o gráfico
box()
