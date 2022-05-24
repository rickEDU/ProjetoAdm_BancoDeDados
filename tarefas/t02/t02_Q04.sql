CREATE FUNCTION inserir_milhas() 
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO milhas(cliente, quantidade) 
  VALUES (NEW.codigo, 0);
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER cartao_milhagem
    AFTER INSERT ON cliente
    FOR EACH ROW
    EXECUTE FUNCTION inserir_milhas();
