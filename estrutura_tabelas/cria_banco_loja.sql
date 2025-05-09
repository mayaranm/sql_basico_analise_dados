-- 📄 Script: cria_banco_loja.sql
-- Objetivo: Criar estrutura de banco relacional fictício para e-commerce

CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT NOT NULL,
    cidade TEXT
);

CREATE TABLE produtos (
    id_produto INTEGER PRIMARY KEY,
    nome_produto TEXT NOT NULL,
    preco REAL NOT NULL
);

CREATE TABLE pedidos (
    id_pedido INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    data_pedido DATE,
    status TEXT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedido (
    id_item INTEGER PRIMARY KEY,
    id_pedido INTEGER,
    id_produto INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE vendas (
    id_venda INTEGER PRIMARY KEY,
    id_produto INTEGER,
    data_venda DATE,
    valor_total REAL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
