CREATE TABLE departamento( 
  codigo int not null PRIMARY KEY, 
  descricao varchar(50), 
  gerente_cod int);

CREATE TABLE funcionario( 
  codigo int not null PRIMARY KEY,
  nome varchar(30),
  sexo char,
  dat_nascimento varchar(10),
  salario int,
  cod_depto int,
  FOREIGN KEY(cod_depto)REFERENCES departamento(codigo));

Alter table departamento add foreign key(gerente_cod)references funcionario(codigo);

CREATE TABLE projeto( 
	codigo int PRIMARY KEY,
	nome varchar(100), 
	descricao varchar(240), 
	cod_depto int, 
	cod_responsavel int, 
	dat_inicio DATE, 
	dat_fim DATE,
	FOREIGN KEY(cod_responsavel) REFERENCES funcionario(codigo), 
	FOREIGN KEY(cod_depto)REFERENCES departamento(codigo));

CREATE TABLE atividade(
  codigo int PRIMARY KEY,
  nome varchar(30),
  descricao varchar(150),
  cod_responsavel int,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY(cod_responsavel)REFERENCES funcionario(codigo));

CREATE TABLE atividade_projeto(
  cod_projeto int,
  cod_atividade int,
  PRIMARY KEY(cod_projeto,cod_atividade),
  FOREIGN KEY(cod_projeto)REFERENCES projeto(codigo),
  FOREIGN KEY(cod_atividade)REFERENCES atividade(codigo));