#Histograma: Idade dos corredores de maratona

idade <- c(27, 18, 21, 23, 23,
           21, 21, 27, 21, 19,
           18, 18, 22, 19, 19,
           18, 19, 23, 19, 18,
           18, 20, 19, 24, 20,
           21, 20, 21, 20, 21)

#Determinar os limites inferior e superior dos dados
range(idade)

#Determinar o número ideal de classes
classes <- round(1 + 3.3 * log10(length(idade)), 0)

#Determinar os intervalos de classe
#Convém usar uma sequência em vez de digitar os limites
#Alguns argumentos do comando seq():
#                 from: Ponto inicial da sequência
#                 to: Ponto final da sequência
#                 length.out: quantos pontos na sequência (número de classes + 1)
interv<-seq(from = 18, to = 27, length.out = (classes + 1))

#Alguns argumentos do comando hist(): 
#                  <primeiro argumento>: vetor com os valores (e não as frequências)
#                  main: Título do gráfico
#                  ylab: Texto do eixo y
#                  xlab: Texto do eixo x
#                  names: Nomes das colunas
#                  break: breakpoints do histograma (limites das classes)
#                  right: se os intervalos são fechados direita

titulo<-paste(strwrap(
  'Idades dos corredores da Maratona Paraibana de 2015',
  width = 50),collapse = "\n")

hist(idade, breaks = interv, main = titulo, xlim = range(idade),
     sub = "Fonte: Dados fictícios", right = FALSE, include.lowest = TRUE,
     xlab = "Idade (anos)", ylab = "Frequência", col = "gray", axes = FALSE)

#Gerando o eixo x
axis(1, at = c(18,21,24,27), lab=c("18","21","24","27"))

#Gerando o eixo y
axis(2, at = c(0,2,4,6,8,10,12), labels = c("0","","4","","8","","12"))
