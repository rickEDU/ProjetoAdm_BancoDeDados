CREATE FUNCTION deleta_clientes() 
RETURNS TRIGGER AS $$
    BEGIN
        DELETE cliente
		WHERE codigo IN (SELECT cliente FROM cliente_voo WHERE voo=OLD.codigo);
		RETURN OLD;
    END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER del_Clientes
    BEFORE DELETE ON voo
    FOR EACH ROW
    EXECUTE FUNCTION deleta_clientes();


CREATE FUNCTION deleta_piloto() 
RETURNS TRIGGER AS $$
    BEGIN
        DELETE piloto
		WHERE codigo=OLD.piloto;
		RETURN OLD;
    END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER del_Piloto
    BEFORE DELETE ON voo
    FOR EACH ROW
    EXECUTE FUNCTION deleta_piloto();
