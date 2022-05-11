#questão 8:
create view projetos(cod, num) as select d.codigo, count(p.nome) from departamento d, projeto p where p.cod_depto=d.codigo group by d.codigo;

select d.descricao nomeDoDepartamento, f.nome nomeDoGerente, p.num numeroDeProjetos from departamento d, funcionario f, projetos p where d.gerente_cod=f.codigo and p.cod=d.codigo;
