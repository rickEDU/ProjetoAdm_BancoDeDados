#questão 12:
select p.nome, p.dat_inicio, p.dat_fim, a.descricao, a.data_inicio, a.data_fim from projeto p, atividade a, atividade_projeto ap where p.codigo=ap.cod_projeto and a.codigo=ap.cod_atividade;
