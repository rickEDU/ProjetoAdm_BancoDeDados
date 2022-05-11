#questão 2:
SELECT nome from funcionario where dat_nascimento not in(select min(dat_nascimento) from funcionario);
