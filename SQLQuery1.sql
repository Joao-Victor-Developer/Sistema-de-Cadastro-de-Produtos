CREATE DATABASE db_mercado;
GO

USE db_mercado;
GO

CREATE TABLE tb_produtos (
    id_produto INT IDENTITY(1,1) PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(60) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    fornecedor VARCHAR(100) NULL
);
GO

INSERT INTO tb_produtos (codigo, nome, categoria, preco, quantidade, fornecedor)
VALUES
('P001', 'Arroz 5kg', 'Alimentos', 28.90, 15, 'Fornecedor A'),
('P002', 'Feijão 1kg', 'Alimentos', 8.50, 30, 'Fornecedor B'),
('P003', 'Detergente', 'Limpeza', 2.99, 50, 'Fornecedor C');
GO