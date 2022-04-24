
# Script teste t

# teste t para 1 grupo
a = c(5, 6, 7, 7, 8, 8, 59, 8)
b = c(4, 10, 2, 2.5, 7)

t.test(a, mu = 10, conf.level = 0.9)
t.test(b, mu = 10, conf.level = 0.9)

# teste t para 2 grupos
t.test(a,b)

# Checar normalidade dos grupos
# Teste de Shapiro-Wilk
# H0: dados são normais
shapiro.test(a)
shapiro.test(b)

hist(a, probability = TRUE)
curve(dnorm(x, mean(a), sd(a)), add = TRUE)





