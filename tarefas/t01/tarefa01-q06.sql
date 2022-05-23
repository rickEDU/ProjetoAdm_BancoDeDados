#questão 6:
select f.nome, d.descricao from funcionario f left outer join departamento d on f.cod_depto=d.codigo;