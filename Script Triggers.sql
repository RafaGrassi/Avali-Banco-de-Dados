# Trigger para atualizar estoque ao inserir pedido_produto
=====================
DELIMITER $$
CREATE TRIGGER tr_atualiza_estoque AFTER INSERT ON pedido_produto
FOR EACH ROW
BEGIN
  UPDATE produto set estoque = estoque - NEW.quantidade;
END$$
DELIMITER ;


# Trigger para atualizar estoque ao excluir pedido_produto
=====================
DELIMITER $$
CREATE TRIGGER tr_exlcui_item AFTER DELETE ON pedido_produto
FOR EACH ROW
BEGIN
  UPDATE produto SET estoque = estoque + OLD.quantidade;
END$$
DELIMITER ;

