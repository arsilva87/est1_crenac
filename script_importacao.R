
# importação de dados do Excel

# instalar pacote readxl
# install.packages('readxl')
library(readxl)
dados = read_excel(path = 'camadas_solo.xlsx', 
                   sheet = '20-40', 
                   range = 'A1:F43')
dados
mean(dados$US)
jaboticaba = dados[1:5 , 1:3]
jaboticaba

