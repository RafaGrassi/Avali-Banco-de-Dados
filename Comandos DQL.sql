# Comandos DQL

# Where - Lista de todos os produtos cadastrados com sua marca
SELECT p.nome_produto, m.nome_marca
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca;

# AND - Lista de todos os produtos cadastrados com sua marca E categoria
SELECT p.nome_produto, m.nome_marca, c.nome_categoria
FROM produto p,  marca m , categoria c
WHERE m.id_marca = p.id_marca
AND c.id_categoria = p.id_categoria;

# OR - Lista de todos os produtos cadastrados das marcas 'Haro' OU 'Trek'
SELECT p.nome_produto, m.nome_marca
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca
AND (m.nome_marca = 'Trek' OR m.nome_marca = 'Haro');

# BETWEEN - Lista de todos os produtos cadastrados com preço ENTRE US$450,50 e US%550
SELECT p.nome_produto, m.nome_marca, p.preco
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca
AND p.preco BETWEEN 450 AND 550;

# ORDER BY - Lista de todos os produtos cadastrados do maior ao menor preço
SELECT p.nome_produto, m.nome_marca, p.preco
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca
ORDER BY p.preco DESC;

# ORDER BY e COUNT- Lista de todas as marcas com a contagem dos seus produtos
SELECT m.nome_marca, COUNT(p.nome_produto)
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca
GROUP BY m.nome_marca;

# HAVING - Lista de todas as marcas com a contagem dos seus produtos, com contagem maior que 10
SELECT m.nome_marca, COUNT(p.nome_produto)
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca
GROUP BY m.nome_marca
HAVING COUNT(p.nome_produto) > 10;

# LIKE - Lista de todas as marcas com a contagem dos seus produtos, com nome começando com "H"
SELECT m.nome_marca, COUNT(p.nome_produto)
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca
AND m.nome_marca LIKE 'H%'
GROUP BY m.nome_marca;

# MAX e subquarie- Produtos com maior preço
SELECT p.nome_produto, m.nome_marca, p.preco
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca
AND p.preco = (SELECT MAX(p.preco) FROM produto p);

# MIN - Produtos com menor preço
SELECT p.nome_produto, m.nome_marca, p.preco
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca
AND p.preco = (SELECT MIN(p.preco) FROM produto p);

# IF - Produtos com preço maior ou menor a US$400,00
SELECT p.nome_produto, m.nome_marca, p.preco, IF (p.preco >= 400, 'Maior','Menor')
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca;

# CASE - Produtos com preço maior ou menor ou igual a US$549.99
SELECT p.nome_produto, m.nome_marca, p.preco,
CASE WHEN p.preco > 549.99 THEN 'Maior que US$549.99'
WHEN p.preco = 549.99 THEN 'Igual a US$549.99'
ELSE 'Menor que US$549.99'
END AS Quantidade
FROM produto p,  marca m 
WHERE m.id_marca = p.id_marca;

# DATE_FORMAT 
SELECT p.id_pedido, c.nome, DATE_FORMAT(p.data_pedido, "%Y"), l.nome_loja
FROM pedido p
INNER JOIN cliente c ON c.id_cliente = p.id_cliente
INNER JOIN loja l ON l.id_loja = p.id_loja;

# NOW - Tempo que se passou desde a compra
SELECT p.id_pedido, c.nome, ((DATE_FORMAT(now(), "%Y")) - (DATE_FORMAT(p.data_pedido, "%Y"))), l.nome_loja
FROM pedido p
INNER JOIN cliente c ON c.id_cliente = p.id_cliente
INNER JOIN loja l ON l.id_loja = p.id_loja;





