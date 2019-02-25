#Gráfico de Setores: Notas da primeira prova de Cálculo 2

#Dados
dados<-c(4.0, 3.0, 4.0, 0.0, 0.0, 2.0, 3.0, 1.0, 3.0, 3.0, 4.0, 0.0,
         4.0, 3.0, 5.0, 1.0, 4.0, 3.0, 2.0, 4.0, 3.0, 4.0, 2.0, 1.0,
         2.0, 4.0, 2.0, 3.0, 2.0, 4.0, 2.0, 2.0, 0.0, 5.0, 2.0, 4.0,
         2.0, 0.0, 4.0, 3.0, 5.0, 4.0, 3.0, 0.0, 1.0, 4.0, 0.0, 5.0,
         2.0, 1.0, 3.0, 2.0, 3.0, 3.0, 4.0, 4.0, 4.0, 4.0, 2.0, 5.0)

#Dados: Quem tirou nota boa, quem tirou nota baixa (não nula) e quem faltou/tirou zero
dados_set<-c(sum(dados > 3.5), sum(dados < 3.5) - sum(dados == 0.0), sum(dados == 0.0))

pie(dados_set, main = "Notas da primeira avaliação de Cálculo 2",
    labels = c("Notas acima de 70%", "Notas entre 0 e 70%", "Notas zero/Faltas"),
    sub = "Fonte: SIGAA", col = c("gray90", "gray60", "gray30"))
