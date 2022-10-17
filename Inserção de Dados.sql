# Inserção dos dados de exemplo

INSERT INTO tipo (descricao) VALUES 
	("Bronze 01"),
    ("Bronze 02"),
    ("Bronze 03"),
    ("Bronze 04"),
    ("Bronze 05"),
    ("Prata 01"),
    ("Prata 02"),
    ("Prata 03"),
    ("Prata 04"),
    ("Prata 05"),
    ("Ouro 01"),
    ("Ouro 02"),
    ("Ouro 03"),
    ("Ouro 04"),
    ("Ouro 05");
    
SELECT * FROM tipo;

INSERT INTO cliente (nome, cel, email, cep, id_tipo) VALUES 
	('Debra', '9 9156 1000', 'debra.burks@yahoo.com', '13.100-001', 1),
    ('Kasha', '9 9156 1001', 'kasha.todd@yahoo.com', '13.100-002', 1),
    ('Tameka', '9 9156 1002', 'tameka.fisher@aol.com', '13.100-003', 1),
    ('Daryl', '9 9156 1003', 'daryl.spence@aol.com', '13.100-004', 10),
    ('Charolette', '9 9156 1004', 'charolette.rice@msn.com', '13.100-005', 10),
    ('Lyndsey', '9 9156 1005', 'lyndsey.bean@hotmail.com', '13.100-006', 3),
    ('Latasha', '9 9156 1006', 'latasha.hays@hotmail.com', '13.100-007', 5),
    ('Jacquline', '9 9156 1007', 'jacquline.duncan@yahoo.com', '13.100-008', 5),
    ('Pamelia', '9 9156 1008', 'genoveva.baldwin@msn.com', '13.100-009', 5),
    ('Deshawn', '9 9156 1009', 'pamelia.newman@gmail.com', '13.100-010', 5);

SELECT * FROM cliente;


INSERT INTO marca (nome_marca) VALUES
	('Electra'),
	('Haro'),
	('Heller'),
	('Pure Cycles'),
	('Ritchey'),
	('Strider'),
	('Sun Bicycles'),
	('Surly'),
	('Trek'),
    ('GoodMarc');

SELECT * FROM marca;

INSERT INTO categoria (nome_categoria) VALUES
	('Children Bicycles'),
	('Comfort Bicycles'),
	('Cruisers Bicycles'),
	('Cyclocross Bicycles'),
	('Electric Bikes'),
	('Mountain Bikes'),
	('Road Bikes'),
	('Special Bikes'),
	('Super Special Bikes'),
	('Uber Bikes');
    
SELECT * FROM categoria;

INSERT INTO produto (nome_produto, id_marca, id_categoria, preco, estoque) VALUES
	('Trek 820 - 2016', 9, 6, 379.99, 10),
	('Ritchey Timberwolf Frameset - 2016', 5, 6, 749.99, 10),
	('Surly Wednesday Frameset - 2016', 8, 6, 999.99, 10),
	('Trek Fuel EX 8 29 - 2016', 9, 6, 2899.99, 10),
	('Heller Shagamaw Frame - 2016', 3, 6, 1320.99, 10),
	('Surly Ice Cream Truck Frameset - 2016', 8, 6, 469.99, 10),
	('Trek Slash 8 27.5 - 2016', 9, 6, 3999.99, 10),
	('Trek Remedy 29 Carbon Frameset - 2016', 9, 6, 1799.99, 10),
	('Trek Conduit+ - 2016', 9, 5, 2999.99, 10),
	('Surly Straggler - 2016', 8, 4, 1549, 10),
	('Surly Straggler 650b - 2016', 8, 4, 1680.99, 10),
	('Electra Townie Original 21D - 2016', 1, 3, 549.99, 20),
	('Electra Cruiser 1 (24-Inch) - 2016', 1, 3, 269.99, 20),
	('Electra Girl''s Hawaii 1 (16-inch) - 2015/2016', 1, 3, 269.99, 20),
	('Electra Moto 1 - 2016', 1, 3, 529.99, 10),
	('Electra Townie Original 7D EQ - 2016', 1, 3, 599.99, 10),
	('Pure Cycles Vine 8-Speed - 2016', 4, 3, 429, 10),
	('Pure Cycles Western 3-Speed - Women''s - 2015/2016', 4, 3, 449, 10),
	('Pure Cycles William 3-Speed - 2016', 4, 3, 449, 10),
	('Electra Townie Original 7D EQ - Women''s - 2016', 1, 3, 599.99, 30),
	('Electra Cruiser 1 (24-Inch) - 2016', 1, 1, 269.99, 30),
	('Electra Girl''s Hawaii 1 (16-inch) - 2015/2016', 1, 1, 269.99, 30),
	('Electra Girl''s Hawaii 1 (20-inch) - 2015/2016', 1, 1, 299.99, 30),
	('Electra Townie Original 21D - 2016', 1, 2, 549.99, 30),
	('Electra Townie Original 7D - 2015/2016', 1, 2, 499.99, 30),
	('Electra Townie Original 7D EQ - 2016', 1, 2, 599.99, 30),
	('Surly Big Dummy Frameset - 2017', 8, 6, 999.99, 30),
	('Surly Karate Monkey 27.5+ Frameset - 2017', 8, 6, 2499.99, 30),
	('Trek X-Caliber 8 - 2017', 9, 6, 999.99, 30),
	('Surly Ice Cream Truck Frameset - 2017', 8, 6, 999.99, 10),
	('Surly Wednesday - 2017', 8, 6, 1632.99, 10),
	('Trek Farley Alloy Frameset - 2017', 9, 6, 469.99, 10),
	('Surly Wednesday Frameset - 2017', 8, 6, 469.99, 10),
	('Trek Session DH 27.5 Carbon Frameset - 2017', 9, 6, 469.99, 40),
	('Sun Bicycles Spider 3i - 2017', 7, 6, 832.99, 40),
	('Surly Troll Frameset - 2017', 8, 6, 832.99, 40),
	('Haro Flightline One ST - 2017', 2, 6, 379.99, 40),
	('Haro Flightline Two 26 Plus - 2017', 2, 6, 549.99, 40),
	('Trek Stache 5 - 2017', 9, 6, 1499.99, 10),
	('Trek Fuel EX 9.8 29 - 2017', 9, 6, 4999.99, 10),
	('Haro Shift R3 - 2017', 2, 6, 1469.99, 10),
	('Trek Fuel EX 5 27.5 Plus - 2017', 9, 6, 2299.99, 10),
	('Trek Fuel EX 9.8 27.5 Plus - 2017', 9, 6, 5299.99, 10),
	('Haro SR 1.1 - 2017', 2, 6, 539.99, 10),
	('Haro SR 1.2 - 2017', 2, 6, 869.99, 45),
	('Haro SR 1.3 - 2017', 2, 6, 1409.99, 45),
	('Trek Remedy 9.8 - 2017', 9, 6, 5299.99, 45),
	('Trek Emonda S 4 - 2017', 9, 7, 1499.99, 45),
	('Trek Domane SL 6 - 2017', 9, 7, 3499.99, 45),
	('Trek Silque SLR 7 Women''s - 2017', 9, 7, 5999.99, 45),
	('Trek Silque SLR 8 Women''s - 2017', 9, 7, 6499.99, 45),
	('Surly Steamroller - 2017', 8, 7, 875.99, 45),
	('Surly Ogre Frameset - 2017', 8, 7, 749.99, 45);
    
SELECT * FROM produto;

INSERT INTO loja (nome_loja, telefone, cep) VALUES
	('Loja A', '4004-4000', '12.300-000'),
    ('Loja B', '4004-4001', '12.300-001'),
    ('Loja C', '4004-4002', '12.300-002'),
    ('Loja D', '4004-4003', '12.300-003'),
    ('Loja E', '4004-4004', '12.300-004'),
    ('Loja F', '4004-4005', '12.300-005'),
    ('Loja G', '4004-4006', '12.300-006'),
    ('Loja H', '4004-4007', '12.300-007'),
    ('Loja I', '4004-4008', '12.300-008'),
    ('Loja J', '4004-4009', '12.300-009');
    
SELECT * FROM loja;

INSERT INTO pedido (id_cliente, data_pedido, id_loja) VALUES
	(1,'20211002',1),
	(2,'20211002',2),
    (3,'20211003',3),
    (4,'20211003',4),
    (5,'20211002',4),
    (6,'20211002',4),
    (7,'20211002',5),
    (8,'20211102',5),
    (9,'20211103',5),
    (10,'20211103',5);
    
SELECT * FROM pedido;
    
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade) VALUES
	(1,1,1),
    (1,2,1),
    (1,3,1),
    (1,4,1),
    (1,5,1),
    (2,1,3),
    (3,10,8),
    (3,6,8),
    (4,10,5),
    (5,12,1),
    (5,13,1),
    (5,14,1);
    
SELECT * FROM pedido_produto;
	
    