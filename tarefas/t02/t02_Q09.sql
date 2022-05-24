INSERT INTO milhas(cliente, quantidade) VALUES (1, 20);
  
CREATE FUNCTION inserir_milhas() 
RETURNS trigger AS $up_Cliente$
BEGIN
  INSERT INTO milhas(cliente, quantidade) 
  VALUES (NEW.codigo, 0);
END;
$up_Cliente$ LANGUAGE plpgsql;

CREATE TRIGGER up_Clientes
    AFTER UPDATE ON cliente
    FOR EACH ROW
    EXECUTE FUNCTION inserir_milhas();