
-- 1 - Acesse o MariaDB usando o usuário root.
    mariadb -u root -p
    -- Mariadb[none]>

-- 2 - Liste todos os bancos de dados existentes.
    show databases;

-- 3 - Crie um banco de dados chamado LOJA_VIRTUAL.
    CREATE DATABASE LOJA_VIRTUAL;

-- 4 - Acesse o banco LOJA_VIRTUAL.
    USE LOJA_VIRTUAL;
    -- Mariadb[LOJA_VIRTUAL]>

-- 5 - Crie uma tabela CLIENTES com os campos:
-- 6 - NOME_COMPLETO (VARCHAR 200, obrigatório)
-- 7 - CELULAR (VARCHAR 20, opcional)
    CREATE TABLE CLIENTES(
        NOME_COMPLETO VARCHAR(200) NOT NULL,
        CELULAR VARCHAR(20)
    );

-- 8 - Crie uma tabela PRODUTOS com os campos:
-- 9 - NOME (VARCHAR 150, obrigatório)
-- 10 - CATEGORIA (VARCHAR 100, obrigatório)
-- 11 - PRECO (DECIMAL 10,2, obrigatório)
    CREATE TABLE PRODUTOS(
        NOME VARCHAR(150) NOT NULL,
        CATEGORIA VARCHAR(100) NOT NULL,
        PRECO DECIMAL(10,2) NOT NULL
    );

-- 12 - Liste todas as tabelas criadas no banco.
    SHOW TABLES;

-- 13 - Mostre a estrutura das tabelas CLIENTES e PRODUTOS.
    DESC CLIENTES;
    DESC PRODUTOS;

-- 14 - Insira 3 clientes na tabela CLIENTES.
    INSERT INTO CLIENTES(NOME_COMPLETO) VALUES("GUILHERME PIRES");
    INSERT INTO CLIENTES(NOME_COMPLETO, CELULAR) VALUES("JOSE", "46999999");
    INSERT INTO CLIENTES(NOME_COMPLETO, CELULAR) VALUES("FRIDA", "46888888");

-- 15 - Insira 3 produtos na tabela PRODUTOS.
    INSERT INTO PRODUTOS(NOME, CATEGORIA, PRECO)
    VALUES("CELULAR", "TECNOLOGIA", 2000.00),
          ("MESA", "MOVEIS", 300.25),
          ("CADEIRA", "MOVEIS", 62.32);

-- 16 - Mostre todos os registros da tabela CLIENTES.
    SELECT * FROM CLIENTES;
    -- EX: SELECT NOME_COMPLETO FROM CLIENTES;

-- 17 - Mostre todos os registros da tabela PRODUTOS.
    SELECT * FROM PRODUTOS;
    --EX: SELECT NOME, PRECO FROM PRODUTOS;

-- 18 - Mostre apenas os produtos com preço maior que 500.00.
    SELECT * FROM PRODUTOS WHERE PRECO > 500;

-- 19 - Mostre apenas os clientes cujo nome seja igual a um nome específico.
    SELECT * FROM CLIENTES WHERE NOME_COMPLETO = "JOSE";

-- 20 - Atualize o celular de um cliente específico.
    UPDATE CLIENTES SET CELULAR = "46 999756350" WHERE NOME_COMPLETO = "GUILHERME PIRES";   

-- 21 - Atualize a categoria de um produto específico.
    UPDATE PRODUTOS SET CATEGORIA = "MOBILIA" WHERE CATEGORIA = "MOVEIS";

-- 22 - Aumente o preço de um produto em 15%.
    UPDATE PRODUTOS SET PRECO = 71.77 WHERE NOME = "CADEIRA";

    -- UPDATE PRODUTOS SET PRECO = PRECO 
    SELECT 
        PRECO AS PRECO_ATUAL, 
        (PRECO + (PRECO * 0.15)) AS NOVO_PRECO 
    FROM 
        PRODUTOS;

    UPDATE PRODUTOS SET PRECO = (PRECO + (PRECO * 0.15));

-- 23 - Altere o nome de um cliente para outro nome.
    UPDATE CLIENTES SET NOME_COMPLETO = "GUILHERME" WHERE NOME_COMPLETO = "GUILHERME PIRES";

-- 24 - Exclua um cliente específico da tabela CLIENTES.

    DELETE FROM CLIENTES;

	24 - Exclua um produto específico da tabela PRODUTOS.
	26 - Exclua todos os registros da tabela CLIENTES (sem apagar a tabela).
	27 - Alterações na Estrutura das Tabelas
	28 - Adicione um novo campo CPF (VARCHAR 14) na tabela CLIENTES.
	29 - Atualize os valores de CPF para os clientes existentes.
	30 - Modifique o tipo do campo CPF para CHAR(11).
	31 - Apague o campo CPF da tabela CLIENTES.
	32 - Adicione um campo ESTOQUE (INT) na tabela PRODUTOS.
	33 - Liste novamente as tabelas para confirmar a alteração do nome.