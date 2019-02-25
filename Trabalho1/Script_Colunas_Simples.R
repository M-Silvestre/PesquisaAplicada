#Gráfico de colunas simples: Doenças crônicas em indivíduos

#Vetor com as obsevações:
dados<-c(0,1,4,2,0,4,2,3,0,0,1,2,1,0,1,5,2,4,3,1)

#Frequências e valores
table(dados)

#Valores que a variável assume
valores<-c("0","1","2","3","4","5")

#Frequências dos valores
freq<-c(5,5,4,2,3,1)

barplot(freq, main = "Ocorrência de doenças crônicas",
        sub = "Fonte: Dados Fictícios",
        ylab="Frequência",xlab="Número de doenças por pessoa", 
        names=valores, space = 0.7)
