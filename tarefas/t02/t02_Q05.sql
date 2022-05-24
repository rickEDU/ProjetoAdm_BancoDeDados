CREATE FUNCTION adiciona_voo() 
RETURNS TRIGGER AS $$
    BEGIN
        UPDATE piloto
		SET num_voos = num_voos + 1
		WHERE codigo = NEW.piloto;
		RETURN NEW;
    END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER soma_voo
    AFTER INSERT ON voo
    FOR EACH ROW
    EXECUTE FUNCTION adiciona_voo();
