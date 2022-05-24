CREATE FUNCTION adiciona_passageiros() 
RETURNS TRIGGER AS $$
    BEGIN
        UPDATE voo
		SET num_passageiros = num_passageiros + 1
		WHERE codigo = NEW.voo;
		RETURN NEW;
    END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER add_Passageiros
    AFTER INSERT ON cliente_voo
    FOR EACH ROW
    EXECUTE FUNCTION adiciona_passageiros();
