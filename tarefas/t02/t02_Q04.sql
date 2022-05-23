CREATE FUNCTION inserir_milhas() 
RETURNS trigger AS $cartao_milhagem$
BEGIN
  INSERT INTO milhas(cliente, quantidade) 
  VALUES (NEW.codigo, 0);
END;
$cartao_milhagem$ LANGUAGE plpgsql;

CREATE TRIGGER cartao_milhagem
    AFTER INSERT ON cliente
    FOR EACH ROW
    EXECUTE FUNCTION inserir_milhas();