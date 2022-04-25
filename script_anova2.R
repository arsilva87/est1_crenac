
# script exerc 2

fotoperiodo
fotoperiodo$grupo
fotoperiodo$comprimento

# ANOVA
install.packages('ExpDes')
library(ExpDes)
crd(fotoperiodo$grupo, fotoperiodo$comprimento)
# p-valor > 0.05: as médias dos grupos são iguais

# teste não parm. de Kruskal-Wallis
install.packages('agricolae')
library(agricolae)
kruskal(fotoperiodo$comprimento, fotoperiodo$grupo, console =TRUE)


# ANOVA 2-way
ansiedade
boxplot(ansiedade ~ exposicao:linhagem, data = ansiedade)

modelo = lm(ansiedade ~ exposicao*linhagem, data = ansiedade)
anova(modelo)

# ANOVA 2-way pelo ExpDes
# completely randomized design (crd)
library(ExpDes)
fat2.crd(factor1 = ansiedade$exposicao, 
         factor2 = ansiedade$linhagem, 
         resp = ansiedade$ansiedade, mcomp = 'tukey')

# legenda
# médias seguidas de letras minúsculas nas linhas (linhagens) e 
# maiúsculas nas colunas (exposicao)
# não diferem estatisticamente pelo teste Tukey a 5% de erro.



