
# Exercicio iris

iris
versi = iris[51:100, ]
versi
setosa = iris[1:50 , ]
setosa

boxplot( versi[, 3] )  # há um outlier na coluna 3

mean( versi[, 4] )

# letra d) CV% = 100 x desvio padrão / média
100 * sd(versi[,1]) / mean(versi[,1])

help(aggregate)
aggregate(Sepal.Width ~ Species, 
          data = iris, sd)

aggregate(. ~ Species, data = iris, sd)

hist( versi[,1] )

shapiro.test( versi[,1] )  # sim, dados normais (p-valor > 0.05)

var.test(x = setosa[,1] , y = versi[,1] )  # variâncias não são iguais

t.test(x = setosa[,1] , y = versi[,1] )  # as médias não são iguais

t.test(setosa[,1], conf.level = 0.9) # IC: 4.92 - 5.09
t.test(versi[,1], conf.level = 0.9)  # IC:                   5.81 - 6.05
# 
