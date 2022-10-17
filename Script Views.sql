#Criação das Views

#View com duas tabelas
CREATE VIEW view_cliente AS
SELECT c.nome, c.cel, c.email, c.cep, t.descricao
FROM cliente c
INNER JOIN tipo t ON t.id_tipo = c.id_tipo;

SELECT * FROM view_cliente;

#View com duas tabelas
CREATE VIEW view_marca AS
SELECT p.nome_produto, m.nome_marca
FROM produto p
INNER JOIN marca m ON m.id_marca = p.id_marca;

SELECT * FROM view_marca;

#View com três tabelas
CREATE VIEW view_produto AS
SELECT p.nome_produto, m.nome_marca, c.nome_categoria, p.preco, p.estoque
FROM produto p
INNER JOIN marca m ON m.id_marca = p.id_marca
INNER JOIN categoria c ON c.id_categoria = p.id_categoria;

SELECT * FROM view_produto;

#View com três tabelas
CREATE VIEW view_pedido AS
SELECT p.id_pedido, c.nome, p.data_pedido, l.nome_loja
FROM pedido p
INNER JOIN cliente c ON c.id_cliente = p.id_cliente
INNER JOIN loja l ON l.id_loja = p.id_loja;

SELECT * FROM view_pedido;

#View com cinco tabelas
CREATE VIEW view_pedido_produto AS
SELECT pp.id_pedido, prod.nome_produto, m.nome_marca, cat.nome_categoria
FROM pedido_produto pp
INNER JOIN pedido ped ON ped.id_pedido = pp.id_pedido
INNER JOIN produto prod ON prod.id_produto = pp.id_produto
INNER JOIN marca m ON prod.id_marca = m.id_marca
INNER JOIN categoria cat ON prod.id_categoria = cat.id_categoria;

SELECT * FROM view_pedido_produto;

#View com RIGHT JOIN (Todos os tipos de cliente, e a informação dos seus respectivos clientes)
CREATE VIEW view_todos_tipos AS
SELECT c.nome, c.cel, c.email, c.cep, t.descricao
FROM cliente c
RIGHT JOIN tipo t ON t.id_tipo = c.id_tipo;

SELECT * FROM view_todos_tipos;

#View com LEFT JOIN (Todos as lojas cadastradas, e suas respectivas ordens de pedido (ID do pedido)
CREATE VIEW view_todas_lojas AS
SELECT l.nome_loja, p.id_pedido
FROM loja l
LEFT JOIN pedido p ON l.id_loja = p.id_loja;

SELECT * FROM view_todas_lojas;


