#questão 18:
select f.nome, d.descricao from funcionario f left join departamento d on f.cod_depto=d.codigo where f.salario =(select max(salario) from funcionario where cod_depto=f.cod_depto);
