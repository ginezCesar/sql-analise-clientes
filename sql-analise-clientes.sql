USE sakila;

-- Clientes com maior gasto total

SELECT
	cus.customer_id AS ID,
	CONCAT(cus.first_name, ' ', cus.last_name) AS Nome_completo,
	SUM(pay.amount) AS Total_gasto
FROM customer cus
JOIN payment pay ON cus.customer_id = pay.customer_id
GROUP BY
cus.customer_id, Nome_complet
ORDER BY
Total_gasto DESC;

---

-- Clientes que gastaram acima da média geral

SELECT
cus.customer_id AS ID,
	CONCAT(cus.first_name, ' ', cus.last_name) AS Nome_completo,
	SUM(pay.amount) AS Total_gasto
FROM customer cus
JOIN payment pay ON cus.customer_id = pay.customer_id
GROUP BY cus.customer_id, Nome_completo
HAVING SUM(pay.amount) > (
	SELECT AVG(Total_por_Cliente)
	FROM (
		SELECT
		SUM(amount) AS Total_por_Cliente
		FROM payment
		GROUP BY customer_id
) AS Media_de_gasto
)
ORDER BY
Total_gasto DESC;
---

-- Clientes com mais de 20 pagamentos

SELECT
	cus.customer_id AS ID,
	CONCAT(cus.first_name, ' ', cus.last_name) AS Nome_completo,
	COUNT(pay.payment_id) AS Quantidade_de_Pagamentos
FROM customer cus
JOIN payment pay ON cus.customer_id = pay.customer_id
GROUP BY
cus.customer_id, Nome_completo
HAVING COUNT(pay.payment_id) > 20
ORDER BY
Quantidade_de_Pagamentos DESC;
---

-- Total de receita gerada por país

SELECT
	cou.country AS Pais,
	SUM(pay.amount) AS Total_faturado
FROM customer cus
JOIN payment pay ON cus.customer_id = pay.customer_id
JOIN address adr ON cus.address_id = adr.address_id
JOIN city cit ON adr.city_id = cit.city_id
JOIN country cou ON cit.country_id = cou.country_id
GROUP BY cou.country
ORDER BY
Total_faturado DESC;

---

-- Clientes com alta frequência e alto valor gasto

SELECT
	cus.customer_id AS ID,
	CONCAT(cus.first_name, ' ', cus.last_name) AS Nome_completo,
	cou.country AS Pais,
	COUNT(pay.payment_id) AS Quantidade_de_Pagamentos,
	SUM(pay.amount) AS Total_gasto
FROM customer cus
JOIN payment pay ON cus.customer_id = pay.customer_id
JOIN address adr ON cus.address_id = adr.address_id
JOIN city cit ON adr.city_id = cit.city_id
JOIN country cou ON cit.country_id = cou.country_id
GROUP BY
cus.customer_id, Nome_completo, cou.country
HAVING COUNT(pay.payment_id) > 20
AND SUM(pay.amount) > (
	SELECT AVG(Total_por_Cliente)
	FROM (
		SELECT
		SUM(amount) AS Total_por_Cliente
		FROM payment
		GROUP BY customer_id
) AS Media_de_gasto
)
ORDER BY
Pais ASC, Total_gasto DESC;

