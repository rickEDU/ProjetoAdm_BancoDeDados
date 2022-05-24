CREATE FUNCTION adiciona_milhas() 
RETURNS TRIGGER AS $add_Milhas$
    BEGIN
        UPDATE milhas
		SET quantidade = quantidade + (SELECT v.distancia from voo v, cliente_voo cl where cl.voo=v.codigo)/10
		WHERE cliente = new.cliente;
		
		RETURN NEW;
    END;
	
$add_Milhas$
LANGUAGE plpgsql;

CREATE TRIGGER add_Milhas
    AFTER INSERT ON cliente_voo
    FOR EACH ROW
    EXECUTE FUNCTION adiciona_milhas();