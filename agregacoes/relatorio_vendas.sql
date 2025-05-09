-- 📄 Script: relatorio_vendas.sql
-- Objetivo: Praticar funções de agregação em um cenário de vendas

-- Total de vendas por produto
SELECT nome_produto, SUM(valor_total) AS total_vendido
FROM vendas
GROUP BY nome_produto
ORDER BY total_vendido DESC;

-- Média de vendas por cliente
SELECT id_cliente, AVG(valor_total) AS media_vendas
FROM vendas
GROUP BY id_cliente
ORDER BY media_vendas DESC;

-- Quantidade de pedidos por status
SELECT status_pedido, COUNT(*) AS qtd_pedidos
FROM pedidos
GROUP BY status_pedido;

-- Produtos que venderam mais de R$ 10.000 no total
SELECT nome_produto, SUM(valor_total) AS total_vendido
FROM vendas
GROUP BY nome_produto
HAVING total_vendido > 10000;

-- Faturamento por mês
SELECT 
    STRFTIME('%Y-%m', data_venda) AS mes,
    SUM(valor_total) AS faturamento
FROM vendas
GROUP BY mes
ORDER BY mes ASC;
