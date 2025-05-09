-- 📄 Script: analise_pedidos.sql
-- Objetivo: Praticar INNER JOIN e LEFT JOIN em cenário de vendas com múltiplas tabelas

-- Lista de pedidos com nome do cliente (INNER JOIN)
SELECT 
    pedidos.id_pedido,
    clientes.nome AS nome_cliente,
    pedidos.data_pedido,
    pedidos.status
FROM pedidos
INNER JOIN clientes ON pedidos.id_cliente = clientes.id_cliente;

-- Lista de itens de pedido com nome do produto (INNER JOIN)
SELECT 
    itens_pedido.id_pedido,
    produtos.nome_produto,
    itens_pedido.quantidade,
    produtos.preco
FROM itens_pedido
INNER JOIN produtos ON itens_pedido.id_produto = produtos.id_produto;

-- Todos os clientes e seus pedidos, se houver (LEFT JOIN)
SELECT 
    clientes.nome,
    pedidos.id_pedido,
    pedidos.data_pedido
FROM clientes
LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;

-- Todos os produtos e o total vendido, incluindo produtos nunca vendidos (LEFT JOIN + agregação)
SELECT 
    produtos.nome_produto,
    SUM(itens_pedido.quantidade) AS total_vendido
FROM produtos
LEFT JOIN itens_pedido ON produtos.id_produto = itens_pedido.id_produto
GROUP BY produtos.nome_produto
ORDER BY total_vendido DESC;
