#questão 4:
select f.nome, f.salario, d.nome from funcionario f, departamento d where f.cod_depto=d.codigo and f.codigo not in(select gerente_cod from departamento) order by d.codigo;
