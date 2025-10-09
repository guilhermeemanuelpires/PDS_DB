CREATE DATABASE mercado;

use mercado;

CREATE TABLE clientes(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    telefone varchar(100)
);

CREATE TABLE produtos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(9,2) NOT NULL
);

INSERT INTO clientes(nome, telefone) values("Guilherme", "46999756350"),
("Maria", "469137238239"),
("José", "469192683294"),
("Felipe", "468631273619"),
("Ricardo", "468901221234"),
("Leticia", "461323282102");

INSERT INTO produtos (nome, preco) VALUES ('Arroz 5kg', 25.90),
('Feijão Carioca 1kg', 8.50),
('Leite Integral 1L', 4.30),
('Óleo de Soja 900ml', 7.20),
('Pão Francês 500g', 6.00);


CREATE TABLE pedidos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    total DECIMAL(9,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id) 
);

INSERT INTO pedidos(data_pedido, id_cliente, id_produto, quantidade, total)
VALUES("2025-10-09", 1, 5, 1, 6.00);

INSERT INTO pedidos(data_pedido, id_cliente, id_produto, quantidade, total)
VALUES("2025-10-09", 3, 5, 1, 6.00);

--- JOIN

SELECT 
    pedidos.id,
    pedidos.data_pedido,
    pedidos.id_cliente,
    clientes.nome,
    pedidos.id_produto,
    pedidos.quantidade,
    pedidos.total
 FROM pedidos
    JOIN clientes ON pedidos.id_cliente = clientes.id;