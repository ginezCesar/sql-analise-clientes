# 📊 Projeto SQL — Análise de Clientes (Sakila)

## 🎯 Objetivo

Este projeto tem como objetivo analisar o comportamento dos clientes utilizando SQL, identificando padrões de consumo, faturamento e clientes de alto valor.

---

## 🧠 Contexto

A partir da base de dados **Sakila**, foram desenvolvidas consultas SQL que simulam cenários reais de análise de dados, como:

* Identificação de clientes mais lucrativos
* Análise de consumo acima da média
* Frequência de compras
* Distribuição de faturamento por país

---

## 🗂️ Estrutura do Projeto

### 🟢 Parte 1 — Top Clientes

Clientes com maior gasto total.

**Técnicas:**

* `JOIN`
* `SUM`
* `GROUP BY`
* `ORDER BY`

---

### 🟡 Parte 2 — Clientes Acima da Média

Clientes cujo gasto total está acima da média geral.

**Técnicas:**

* Subquery
* `AVG`
* `HAVING`

---

### 🟠 Parte 3 — Frequência de Pagamentos

Clientes com mais de 20 pagamentos.

**Técnicas:**

* `COUNT`
* `GROUP BY`
* `HAVING`

---

### 🔴 Parte 4 — Faturamento por País

Total de receita gerada por país.

**Técnicas:**

* Múltiplos `JOINs`
* `SUM`
* `GROUP BY`

---

### 🔥 Parte 5 — Clientes Premium

Clientes que:

* Realizaram mais de 20 pagamentos
* Gastaram acima da média

**Técnicas:**

* `COUNT`
* `SUM`
* Subquery com `AVG`
* `HAVING`

---

## 🚀 Principais Aprendizados

* Construção de queries com múltiplos JOINs
* Uso de funções agregadas (`SUM`, `AVG`, `COUNT`)
* Aplicação de subqueries para análises avançadas
* Organização de consultas com foco em análise de negócio
* Estruturação de queries para portfólio profissional

---

## 💼 Aplicação no Mercado

Este projeto simula situações reais de análise de dados, como:

* Identificação de clientes de alto valor
* Análise de receita por região
* Segmentação de clientes
* Apoio à tomada de decisão

---

## 🧾 Tecnologias

* SQL (MySQL)
* Base de dados: Sakila

---

## 👨‍💻 Autor

**Cesar Augusto Ginez**
Em desenvolvimento na área de Dados

---

## 🔗 Como executar

1. Baixe a base de dados Sakila
2. Execute o script `analise_clientes.sql`
3. Analise os resultados das queries

---

## 📌 Observação

Este projeto foi desenvolvido com foco em prática e consolidação de conceitos essenciais de SQL para atuação como Analista de Dados.

---
