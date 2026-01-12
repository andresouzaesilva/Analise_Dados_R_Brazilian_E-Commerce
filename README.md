# Analise_Dados_R_Brazilian_E-Commerce

> Este repositório apresenta uma **resolução completa de um teste técnico simulado**, no padrão utilizado em processos seletivos para **Analista de Dados / Cientista de Dados**.

O projeto foi estruturado para demonstrar **capacidade analítica, domínio da linguagem R, organização de código e comunicação de resultados**.

Dataset: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce/code

---

## 🎯 Objetivo do Projeto

Demonstrar, de forma prática, como abordar um **problema real de dados**, desde a compreensão das tabelas até a geração de insights de negócio.

Este repositório **não é um exercício acadêmico**, mas sim uma simulação fiel de um **desafio técnico aplicado**.

---

## 🗂️ Contexto do Problema

Os dados representam operações de um **e-commerce brasileiro**, contendo informações sobre:

* Pedidos
* Itens vendidos
* Clientes

A partir desses dados, foram realizadas análises para responder perguntas estratégicas relacionadas a **vendas, comportamento do cliente e performance regional**.

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** R
* **Manipulação de dados:** dplyr
* **Visualização:** ggplot2
* **Datas:** lubridate

---

## 🔎 Perguntas que o Projeto Responde

1. Qual o volume total de pedidos?
2. Qual o faturamento total e o ticket médio?
3. Como os pedidos evoluem ao longo do tempo?
4. Quais estados concentram mais pedidos?
5. A distribuição do ticket médio apresenta outliers?
6. O ticket médio segue uma distribuição normal?
7. Quais insights podem apoiar decisões de negócio?

---

## 📊 Etapas da Análise

### 1️⃣ Entendimento dos Dados

* Identificação do grão das tabelas
* Avaliação de chaves primárias
* Análise de valores ausentes

### 2️⃣ Preparação dos Dados

* Conversão de colunas de data
* Criação de variáveis derivadas (ano, mês)
* Junção de tabelas (`inner_join`)

### 3️⃣ Análise Exploratória

* Cálculo de métricas principais
* Agregações por grupo
* Análise temporal

### 4️⃣ Visualização de Dados

* Evolução mensal de pedidos
* Ranking de estados
* Distribuição do ticket médio

### 5️⃣ Análise Estatística

* Identificação de outliers
* Avaliação de normalidade

### 6️⃣ Insights de Negócio

* Interpretação dos resultados
* Sugestão de métricas de acompanhamento

---

## 🖼️ Exemplos de Visualizações

> As visualizações foram geradas utilizando **ggplot2**, priorizando clareza e interpretação analítica.

* Evolução mensal de pedidos
* Top estados por volume de vendas
* Boxplot do ticket médio

*(As imagens podem ser encontradas na pasta `/plots`)*

---

## 📁 Estrutura do Repositório

```
📦 teste-tecnico-r
 ┣ 📜 README.md
 ┣ 📜 analise.R
 ┣ 📁 plots/
 ┗ 📜 .gitignore
```

---

## 🚀 Como Executar o Projeto

1. Clone o repositório
2. Instale os pacotes necessários

```r
install.packages(c("dplyr", "ggplot2", "lubridate"))
```

3. Execute o script `analysis.R`

---

## 💡 Principais Insights (Resumo)

* A maior parte dos pedidos está concentrada em poucos estados
* O ticket médio apresenta alta variabilidade
* Existem padrões sazonais ao longo do tempo

---


