CREATE FUNCTION deleta_clientes() 
RETURNS TRIGGER AS $del_Clientes$
    BEGIN
        DELETE cliente
		WHERE codigo IN (SELECT cliente FROM cliente_voo WHERE voo=OLD.codigo);
		RETURN OLD;
    END;
$del_Clientes$
LANGUAGE plpgsql;

CREATE TRIGGER del_Clientes
    BEFORE DELETE ON voo
    FOR EACH ROW
    EXECUTE FUNCTION deleta_clientes();


CREATE FUNCTION deleta_piloto() 
RETURNS TRIGGER AS $del_Piloto$
    BEGIN
        DELETE piloto
		WHERE codigo=OLD.piloto;
		RETURN OLD;
    END;
$del_Piloto$
LANGUAGE plpgsql;

CREATE TRIGGER del_Piloto
    BEFORE DELETE ON voo
    FOR EACH ROW
    EXECUTE FUNCTION deleta_piloto();