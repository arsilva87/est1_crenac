# Script - 2 grupos

# Exemplo 1 - 2 grupos indep.
SE = c(20, 28, 23, 19, 17)
GO = c(24, 26, 21, 22, 25, 28)

mean(SE)
mean(GO)

# H0: em MÉDIA, SE = GO
# teste t-Student

# pré-teste: teste F para variâncias
# H0: as variâncias dos dois grupos é a mesma
var(SE)
var(GO)
var.test(SE, GO)

# pré-teste 2, normalidade
# H0: dados normais
shapiro.test(SE)
shapiro.test(GO)

t.test(SE, GO, var.equal = TRUE)

# H0: mSE - mGO = 10
t.test(SE, GO, var.equal = TRUE, mu = 10)


rank(c(SE, GO))

# Teste de Mann-Whitney
wilcox.test(SE, GO)

# Exemplo 2 - testes para grupos pareados
antes = c(66, 128, 54, 171, 357, 986, 100)
depois = c(284, 914, 925, 887, 742, 771, 1043)

# H0: diferença média 'depois-antes' é nula
t.test(antes, depois, paired = TRUE)

# Teste de normalidade
shapiro.test(depois - antes)

# Teste Wilcoxon
wilcox.test(depois, antes, paired = TRUE)



