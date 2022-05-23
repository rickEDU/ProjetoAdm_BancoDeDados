#questão 16:
create view gerente(cod,codDP, nome,salario) as select f.codigo, d.codigo, f.nome, f.salario from funcionario f, departamento d where d.gerente_cod=f.codigo group by f.codigo, d.codigo;

create view salarioF(cod) as select f.codigo from funcionario f, departamento d, gerente g where f.cod_depto=d.codigo and d.gerente_cod!=f.codigo and f.cod_depto=g.codDP and f.salario>g.salario;

create view projetoG(cod) as select f.codigo from funcionario f, departamento d, projeto p where d.gerente_cod=f.codigo and p.cod_responsavel=f.codigo;

select f.nome from funcionario f where (f.codigo in(select * from projetoG) or f.codigo in (select * from salarioF));  
