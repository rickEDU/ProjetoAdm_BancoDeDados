CREATE FUNCTION adiciona_voo() 
RETURNS TRIGGER AS $soma_voo$
    BEGIN
        UPDATE piloto
		SET num_voos = num_voos + 1
		WHERE codigo = new.piloto;
		RETURN NEW;
    END;
$add_voo$
LANGUAGE plpgsql;

CREATE TRIGGER soma_voo
    AFTER INSERT ON voo
    FOR EACH ROW
    EXECUTE FUNCTION adiciona_voo();