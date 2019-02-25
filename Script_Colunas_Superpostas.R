#Gráfico de colunas superpostas: Alunos matriculados em "Cálculo das Probablidades
# e Estatística" e "Estatística para Ciências Humanas e Sociais"

#Vetor com as frequências de Estatística
mat1 <- c(235, 232, 277, 386, 339)

#Vetor com as frequências de Humanas
mat2 <- c(371, 226, 279, 321, 248)

#Gerando uma matriz usando os vetores com linhas
vet <- rbind(mat1, mat2)

#Definindo O título
titulo<-paste(strwrap('Matrículas em Cálculo das Probablidades e Estatística 
  e Estatística para Ciências Humanas e Sociais
  nos anos de 2016 a 2018 na UFPB',
  width = 50),collapse = "\n")

barplot(vet, main = titulo, names.arg=c("2016.1","2016.2","2017.1","2017.2","2018.1"),
        sub = "Fonte: Projeto de Monitoria do Departamento de Estatística",
        xlab="Períodos", ylab = "Alunos Matriculados", col = c("gray40","grey80"),
         beside = TRUE, ylim = c(0, 500))

legend("topright", c("C. P. E.", "E. C. H. S."),
       cex =0.7, fill = c("gray40","grey80"), title="Disciplina")
