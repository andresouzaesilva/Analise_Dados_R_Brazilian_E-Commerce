library(dplyr)
library(ggplot2)

setwd("C:/Users/arsou/Desktop/R/Análse de Dados/p3")

orders <- read.csv("olist_orders_dataset.csv")
order_items <- read.csv("olist_order_items_dataset.csv")
customers <- read.csv("olist_customers_dataset.csv")

# Parte 1 - Entendimento dos dados 

# Quantas linhas e colunas existem em cada tabela?

dim(orders)
dim(order_items)
dim(customers)

# Existem valores ausentes? Em quais colunas?

sapply(orders, function(x) sum(is.na(x)))
sapply(orders, function(x) sum(is.nan(x)))

# PARTE 2 — Preparação dos Dados

# Crie as variáveis: Mês e Ano

orders <- orders %>%
  mutate(order_purchase_timestamp = as.POSIXct(order_purchase_timestamp),
         ano = format(order_purchase_timestamp, "%Y"),
         mes = format(order_purchase_timestamp, "%m"))

# Una as tabelas necessárias para análise de vendas

dados <- orders %>%
  inner_join(customers, by = "customer_id") %>%
  inner_join(order_items, by = "order_id")

# PARTE 3 — Análise Exploratória

# Qual o faturamento total?

faturamento_total <- sum(dados$price, na.rm = TRUE)

# Qual o ticket médio por pedido? 

ticket_medio <- dados %>%
  group_by(order_id) %>%
  summarise(ticket = sum(price)) %>%
  summarise(media_ticket = mean(ticket))

# Quantos pedidos foram realizados por mês?

pedidos_mes <- dados %>%
  distinct(order_id, .keep_all = TRUE) %>%
  count(ano, mes)

# Quais estados concentram mais pedidos?

pedidos_estado <- dados %>%
  distinct(order_id, .keep_all = TRUE) %>%
  count(customer_state, sort = TRUE)



# PARTE 4 — Visualização

# Crie um gráfico de evolução mensal do faturamento

ggplot(pedidos_mes, aes(x = interaction(ano, mes), y = n, group = 1)) +
  geom_line() +
  labs(title = "Evolução Mensal de Pedidos",
       x = "Ano-Mês",
       y = "Quantidade de Pedidos") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Crie um ranking dos estados por número de pedidos

ggplot(pedidos_estado[1:10,], aes(x = reorder(customer_state, n), y = n)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(title = "Top 10 Estados por Pedidos",
       x = "Estado",
       y = "Pedidos")


# Parte 5 — Análise Estatística

#  O ticket médio apresenta outliers?


tickets <- dados %>%
  group_by(order_id) %>%
  summarise(ticket = sum(price))

boxplot(tickets$ticket)

# A distribuição do ticket médio é aproximadamente normal?

shapiro.test(sample(tickets$ticket, 500))

