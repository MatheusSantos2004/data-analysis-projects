-- Criação das Tabelas
CREATE TABLE dim_produtos (
    ID_Produto VARCHAR(10) PRIMARY KEY,
    Nome VARCHAR(100),
    Categoria VARCHAR(50),
    Custo_Unit DECIMAL(10,2),
    Preco_Venda DECIMAL(10,2)
);

CREATE TABLE dim_vendedores (
    ID_Vendedor VARCHAR(10) PRIMARY KEY,
    Nome VARCHAR(100),
    Regional VARCHAR(50)
);

CREATE TABLE dim_clientes (
    ID_Cliente VARCHAR(10) PRIMARY KEY,
    Empresa VARCHAR(100),
    Segmento VARCHAR(50)
);

CREATE TABLE fato_vendas (
    ID_Venda INT PRIMARY KEY,
    Data DATE,
    ID_Produto VARCHAR(10),
    ID_Vendedor VARCHAR(10),
    ID_Cliente VARCHAR(10),
    Qtd INT,
    Valor_Total DECIMAL(10,2),
    FOREIGN KEY (ID_Produto) REFERENCES dim_produtos(ID_Produto),
    FOREIGN KEY (ID_Vendedor) REFERENCES dim_vendedores(ID_Vendedor),
    FOREIGN KEY (ID_Cliente) REFERENCES dim_clientes(ID_Cliente)
);

show tables;

-- Inserção de Dados
INSERT INTO dim_produtos VALUES 
('P01', 'Suporte para Notebook', 'Acessórios', 20.00, 50.00),
('P02', 'Monitor', 'Periféricos', 600.00, 950.00),
('P03', 'Mouse', 'Periféricos', 70.00, 150.00),
('P04', 'Placa de Vídeo', 'Hardware', 1000.00, 1200.00),
('P05', 'Placa Mãe', 'Hardware', 450.00, 600.00),
('P06', 'Memória RAM', 'Hardware', 600.00, 850.00),
('P07', 'SSD', 'Hardware', 300.00, 500.00),
('P08', 'Teclado', 'Periféricos', 300.00, 700.00),
('P09', 'Cabo HDMI', 'Acessórios', 50.00, 100.00),
('P10', 'Adaptador USB', 'Acessórios', 30.00, 60.00);

select * from dim_produtos;

INSERT INTO dim_vendedores VALUES 
('V01', 'Carlos Mendes', 'Sudeste'),
('V02', 'Ana Pereira', 'Sul'),
('V03', 'Gabriel Silva', 'Sudeste'),
('V04', 'Luiza Souza', 'Sul'),
('V05', 'Maria Carvalho', 'Sul');

select * from dim_vendedores;

INSERT INTO dim_clientes VALUES 
('C01', 'TechSolutions Ltda', 'Tecnologia'),
('C02', 'Escola Saber Mais', 'Educação');

select * from dim_clientes;

INSERT INTO fato_vendas VALUES 
(01, '2025-10-01', 'P01', 'V01', 'C01', 5, 250.00),
(02, '2025-10-30', 'P05', 'V05', 'C01', 5, 3000.00),
(03, '2025-09-18', 'P07', 'V03', 'C02', 2, 1000.00),
(04, '2025-10-05', 'P02', 'V01', 'C01', 4, 3800.00),
(05, '2025-11-22', 'P10', 'V05', 'C02', 1, 60.00),
(06, '2025-12-03', 'P04', 'V02', 'C01', 5, 6000.00),
(07, '2025-09-27', 'P01', 'V04', 'C02', 3, 150.00),
(08, '2026-01-10', 'P08', 'V01', 'C01', 2, 1400.00),
(09, '2025-10-19', 'P06', 'V03', 'C02', 4, 3400.00),
(10, '2025-11-08', 'P03', 'V02', 'C01', 1, 150.00),
(11, '2026-01-22', 'P09', 'V05', 'C02', 5, 500.00),
(12, '2025-12-15', 'P05', 'V04', 'C01', 2, 1200.00),
(13, '2025-09-09', 'P10', 'V02', 'C02', 3, 180.00),
(14, '2025-11-30', 'P01', 'V05', 'C01', 4, 200.00),
(15, '2026-01-05', 'P06', 'V03', 'C02', 1, 850.00);

select * from fato_vendas;
