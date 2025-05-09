-- 📄 Script: categoriza_preco.sql
-- Objetivo: Categorizar produtos com base no preço usando CASE WHEN

SELECT 
    nome_produto,
    preco,
    CASE 
        WHEN preco >= 1000 THEN 'Muito caro'
        WHEN preco >= 500 THEN 'Caro'
        WHEN preco >= 200 THEN 'Médio'
        ELSE 'Barato'
    END AS faixa_preco
FROM produtos
ORDER BY preco DESC;
