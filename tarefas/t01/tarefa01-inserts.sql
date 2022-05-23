
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(1,'Lara','F','1995-10-14',5000,NUll);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(2,'César','M','2000-09-23',4500,NUll);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(3,'Vinícius','M','1998-10-21',2500,NUll);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(4,'Dieniffer','F','1999-01-01',7000,NUll);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(5,'Roberta','F','2002-08-22',2700,NUll);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(6,'Taciano','M','2012-08-19',22700,2);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(7,'Arthur','M','2009-10-19',1700,3);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(8,'Andre','M','2007-09-13',3000,5);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(9,'Beto','M','2013-12-01',1200,4);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(10,'Eduardo','M','2077-08-23',5000,1);
insert into funcionario(codigo,nome, sexo, dat_nascimento, salario, cod_depto) values(11,'Jeison','M','2015-09-03',5600,null);

insert into departamento(codigo,descricao,gerente_cod) values(1,'RH', NULL);
insert into departamento(codigo,descricao,gerente_cod) values(2,'Vendas', NULL);
insert into departamento(codigo,descricao,gerente_cod) values(3,'Gerencia', NULL);
insert into departamento(codigo,descricao,gerente_cod) values(4,'Marketing', NULL);
insert into departamento(codigo,descricao,gerente_cod) values(5,'Assistencia', NULL);


update departamento set gerente_cod=1 where codigo=1; 
update departamento set gerente_cod=2 where codigo=5; 
update departamento set gerente_cod=3 where codigo=4; 
update departamento set gerente_cod=4 where codigo=3; 
update departamento set gerente_cod=5 where codigo=2; 


update funcionario set cod_depto=1 where codigo=1; 
update funcionario set cod_depto=2 where codigo=5; 
update funcionario set cod_depto=3 where codigo=4; 
update funcionario set cod_depto=4 where codigo=3; 
update funcionario set cod_depto=5 where codigo=2; 



insert into projeto(codigo, nome, descricao, cod_depto, cod_responsavel, dat_inicio, dat_fim) values (1, 'Projeto de lavantamento de dados','tem como objetivo bla bla bla bla bla',3, 8, '2020-01-01','2022-03-01');
insert into projeto(codigo, nome, descricao, cod_depto, cod_responsavel, dat_inicio, dat_fim) values (2, 'Projeto de vendas','tem como objetivo bla bla bla bla bla',4, 5, '2020-01-01','2022-03-01');
insert into projeto(codigo, nome, descricao, cod_depto, cod_responsavel, dat_inicio, dat_fim) values (3, 'Projeto de agrupamento de dados','tem como objetivo bla bla bla bla bla',1, 2, '2020-02-12','2022-03-01');
insert into projeto(codigo, nome, descricao, cod_depto, cod_responsavel, dat_inicio, dat_fim) values (4, 'Projeto de marketing digital','tem como objetivo bla bla bla bla bla',5, 1, '2020-01-11','2022-03-01');
insert into projeto(codigo, nome, descricao, cod_depto, cod_responsavel, dat_inicio, dat_fim) values (5, 'Projeto de recreação dos funcionarios','tem como objetivo bla bla bla bla bla',2, 7, '2021-01-01','2022-03-01');


insert into atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) values (1,'Vender produto', 'venda de produtos no estoque',4,'2010-03-14','2040-03-21');
insert into atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) values (2,'Repor stock', 'bla bla bla bla',2,'2010-03-14','2040-03-21');
insert into atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) values (3,'Organizar produtos', 'qualquer coisa, qualquer coisa',3,'2010-03-14','2040-03-21');
insert into atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) values (4,'Oferecer serviço de manutenção', 'bla bla bla bla bla',5,'2010-03-14','2040-03-21');
insert into atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) values (5,'Gerenciar funcionario', 'mandar ir trabalhar',8,'2010-03-14','2040-03-21');


insert into atividade_projeto(cod_projeto, cod_atividade) values(3, 4);
insert into atividade_projeto(cod_projeto, cod_atividade) values(1, 5);
insert into atividade_projeto(cod_projeto, cod_atividade) values(2, 3);
insert into atividade_projeto(cod_projeto, cod_atividade) values(4, 2);
insert into atividade_projeto(cod_projeto, cod_atividade) values(5, 1);

