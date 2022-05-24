CREATE FUNCTION adiciona_passageiros() 
RETURNS TRIGGER AS $add_Passageiros$
    BEGIN
        UPDATE voo
		SET num_passageiros = num_passageiros + 1
		WHERE codigo = new.voo;
		RETURN NEW;
    END;
$add_Passageiros$
LANGUAGE plpgsql;

CREATE TRIGGER add_Passageiros
    AFTER INSERT ON cliente_voo
    FOR EACH ROW
    EXECUTE FUNCTION adiciona_passageiros();