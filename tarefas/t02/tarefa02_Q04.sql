CREATE FUNCTION inserir_milhas() 
RETURNS trigger AS $cartao_milhagem$
BEGIN
  INSERT INTO milhas(cliente, quantidade) 
  values (NEW.codigo, 0);
END;
$cartao_milhagem$ LANGUAGE plpgsql;

create trigger cartao_milhagem
    after insert on cliente
    for each row
    execute function inserir_milhas();