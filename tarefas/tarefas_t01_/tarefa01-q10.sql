#questão 10:
create view funcionarioDepto(cod,nome, departamento) as select f.codigo,f.nome, d.descricao from departamento d, funcionario f where d.codigo=f.cod_depto group by d.descricao,f.codigo;

select p.nome nomeDoProjeto, d.descricao nomeDoDepartamento, f.nome nomeDoFuncionario, fd.departamento from departamento d, funcionario f, projeto p, funcionarioDepto fd where p.cod_depto=d.codigo and p.cod_responsavel=f.codigo and f.codigo=fd.cod;
