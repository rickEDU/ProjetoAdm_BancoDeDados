CREATE FUNCTION adiciona_milhas() 
RETURNS TRIGGER AS $$
    BEGIN
        UPDATE milhas
		SET quantidade = quantidade + (SELECT v.distancia from voo v, cliente_voo cl where cl.voo=v.codigo)/10
		WHERE cliente = NEW.cliente;
		RETURN NEW;
    END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER add_Milhas
    AFTER INSERT ON cliente_voo
    FOR EACH ROW
    EXECUTE FUNCTION adiciona_milhas();
