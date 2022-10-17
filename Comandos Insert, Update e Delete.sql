# Comandos de inserção, update e delete
# Comandos que estão faltantes já são procedures


# Comandos para tabela cliente
INSERT INTO cliente (nome, cel, email, cep, id_tipo) VALUES 
	('Debra', '9 9156 1000', 'debra.burks@yahoo.com', '13.100-001', 1);

UPDATE cliente
SET nome = ''
AND cel = ''
AND email = ''
AND id_tipo = ''
WHERE id_cliente = '';

DELETE FROM cliente
WHERE id_cliente = vid_cliente;

# Comandos para tabela pedido
INSERT INTO pedido (id_cliente, data_pedido, id_loja) VALUES
	(1,'20211002',1);

UPDATE pedido
SET id_cliente = ''
AND data_pedido = ''
AND id_loja = ''
WHERE id_pedido = '';

DELETE FROM pedido
WHERE id_pedido = vid_pedido;

# Comandos para tabela produto
INSERT INTO produto (nome_produto, id_marca, id_categoria, preco, estoque) VALUES
	('Trek 820 - 2016', 9, 6, 379.99, 10);

UPDATE produto
SET nome_produto = ''
AND id_marca = ''
AND id_categoria = ''
AND preco = ''
AND estoque = ''
WHERE id_produto = '';

DELETE FROM produto
WHERE id_produto = vid_produto;

# Comandos para tabela cliente
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade) VALUES
	(1,1,1);

UPDATE pedido_produto
SET id_pedido = ''
AND id_produto = ''
AND quantidade = ''
WHERE id_pedido = '';

DELETE FROM pedido_produto
WHERE id_pedido = vid_pedido;

