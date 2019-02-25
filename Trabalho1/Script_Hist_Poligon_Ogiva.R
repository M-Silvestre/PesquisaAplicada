#Histograma: Idade dos corredores de maratona

idade <- c(27.0, 18.0, 21.0, 23.0, 23.0,
           21.0, 21.0, 27.0, 21.0, 19.0,
           18.0, 18.0, 22.0, 19.0, 19.0,
           18.0, 19.0, 23.0, 19.0, 18.0,
           18.0, 20.0, 19.0, 24.0, 20.0,
           21.0, 20.0, 21.0, 20.0, 21.0)

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

interv<-seq(from = 18.0, to = 27.0, length.out = (classes + 1))

#Alguns argumentos do comando hist(): 
#                  <primeiro argumento>: vetor com os valores (e não as frequências)
#                  main: Título do gráfico
#                  ylab: Texto do eixo y
#                  xlab: Texto do eixo x
#                  names: Nomes das colunas
#                  break: breakpoints do histograma (limites das classes)
#                  right: se os intervalos são fechados à direita

titulo<-paste(strwrap(
  'Idades dos corredores da Maratona Paraibana de 2015',
  width = 50),collapse = "\n")

hist(idade, breaks = interv, main = titulo, xlim = range(idade),
     sub = "Fonte: Dados fictícios", right = FALSE, include.lowest = TRUE,
     xlab = "Idade (anos)", ylab = "Frequência", col = "gray", axes = FALSE)

#Gerando o eixo x
axis(1, at = c(18, 19.5, 21, 22.5, 24,25.5, 27), 
     lab=c("18","", "21", "", "24", "", "27"))

#Gerando o eixo y
axis(2, at = c(0,2,4,6,8,10,12), labels = c("0","","4","","8","","12"))

# Fechando o gráfico
box()



#Polígono de Frequência: Mesmo Banco que o Histograma

#Criar um objeto hist()
histograma<-hist(idade, breaks = interv, main = titulo, xlim = range(idade),
     sub = "Fonte: Dados fictícios", right = FALSE, include.lowest = TRUE,
     xlab = "Idade (anos)", ylab = "Frequência", col = "gray", axes = FALSE)

#Cria-se o polígono após o histograma. Argumentos do comando polygon.freq():
#             <primeiro argumento>: objeto historgama ao qual o polígono
#                                   estará associado
#             frequency: freqência a ser usada (1 - acumulada, 2 - relativa)
#             col: cor
polygon.freq(histograma, frequency=1,col="red")

#OBS: O comando polygon.freq() faz parte do pacote "agricolae"

#Gerando o eixo x
axis(1, at = c(18, 19.5, 21, 22.5, 24,25.5, 27), 
     lab=c("18","", "21", "", "24", "", "27"))

#Gerando o eixo y
axis(2, at = c(0,2,4,6,8,10,12), labels = c("0","","4","","8","","12"))

# Fechando o gráfico
box()



#Ogiva de Galton ou Diagrama de Frequência Acumulada: Mesmo Banco que o Histograma

#Gerando uma matriz de vetores de um elemento da classe e a frequência acumulada
freq_idade<-c(rep(18.75, 12), rep(20.25, 16), rep(21.75, 24),
  rep(23.25, 27), rep(24.75, 28), rep(26.25, 30))

#Gerando a Ogiva (sem eixos)
hist(freq_idade, breaks = interv, main = titulo, xlim = range(idade),
     sub = "Fonte: Dados fictícios", right = FALSE, include.lowest = TRUE,
     xlab = "Idade (anos)", ylab = "Frequência acumulada", col = "gray", axes = FALSE)

#Gerando o eixo x
axis(1, at = c(18, 19.5, 21, 22.5, 24,25.5, 27), 
     lab=c("18","", "21", "", "24", "", "27"))

#Gerando o eixo y
axis(2, at = c(0,5,10,15,20,25,30), labels = c("0","","10","","20","","30"))
