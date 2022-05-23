#questão 14:
create view funcAtividade(cod, num) as select f.codigo, count(a.nome) from funcionario f, atividade a where a.cod_responsavel=f.codigo group by f.codigo;

select f.nome, fa.num numeroDeAtividades from funcAtividade fa, funcionario f where f.codigo=fa.cod;
