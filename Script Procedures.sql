# Comando para criação dos Procedures

DELIMITER $$
CREATE PROCEDURE inserirTipo(IN vdescricao varchar(45))
BEGIN
	INSERT INTO tipo (descricao) VALUES (vdescricao);
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE alterarTipo(IN vid_tipo int, IN vdescricao varchar(45))
BEGIN
    UPDATE tipo
	SET descricao = vdescricao
	WHERE id_tipo = vid_tipo;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE deletarTipo(IN vid_tipo int)
BEGIN
    DELETE FROM tipo
	WHERE id_tipo = vid_tipo;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE inserirMarca(IN vnome_marca varchar(100))
BEGIN
	INSERT INTO marca (nome_marca) VALUES (vnome_marca);
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE alterarMarca(IN vid_marca int, IN vnome_marca varchar(100))
BEGIN
    UPDATE marca
	SET nome_marca = vnome_marca
	WHERE id_marca = vid_marca;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE deletarMarca(IN vid_marca int)
BEGIN
    DELETE FROM marca
	WHERE id_marca = vid_marca;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE inserirCategoria(IN vnome_categoria varchar(100))
BEGIN
	INSERT INTO marca (nome_categoria) VALUES (vnome_categoria);
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE alterarCategoria(IN vid_categoria int, IN vnome_categoria varchar(100))
BEGIN
    UPDATE categoria
	SET nome_categoria = vnome_categoria
	WHERE id_categoria = vid_categoria;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE deletarCategoria(IN vid_categoria int)
BEGIN
    DELETE FROM categoria
	WHERE id_categoria = vid_categoria;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE inserirLoja(IN vnome_loja varchar(100), IN vtelefone varchar(20), IN vcep varchar(10))
BEGIN
	INSERT INTO loja (nome_loja, telefone, cep) VALUES (vnome_loja, vtelefone, vcep);
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE alterarLoja(IN vid_loja int, IN vnome_loja varchar(100), IN vtelefone varchar(20), IN vcep varchar(10))
BEGIN
    UPDATE loja
	SET nome_loja = vnome_loja
    AND telefone = vtelefone
    AND cep = vcep
	WHERE id_loja = vid_loja;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE deletarLoja(IN vid_loja int)
BEGIN
    DELETE FROM loja
	WHERE id_loja = vid_loja;
END$$
DELIMITER ;

