-- 📄 Script: selecoes_basicas.sql
-- Objetivo: Praticar SELECT, WHERE, ORDER BY em uma base fictícia de e-commerce

-- Seleciona todas as colunas da tabela de clientes
SELECT * FROM clientes;

-- Seleciona nome e email dos clientes que moram em 'São Paulo'
SELECT nome, email
FROM clientes
WHERE cidade = 'São Paulo';

-- Lista os 10 produtos mais caros disponíveis
SELECT nome_produto, preco
FROM produtos
ORDER BY preco DESC
LIMIT 10;

-- Filtra os pedidos realizados após 01/01/2023
SELECT *
FROM pedidos
WHERE data_pedido >= '2023-01-01';

-- Mostra os pedidos com status 'Entregue' ordenados pela data
SELECT id_pedido, status, data_pedido
FROM pedidos
WHERE status = 'Entregue'
ORDER BY data_pedido ASC;
