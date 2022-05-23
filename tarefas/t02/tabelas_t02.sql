CREATE TABLE cliente(
  codigo int PRIMARY KEY,
  nome VARCHAR(100),
  endereco VARCHAR(150));
  
CREATE TABLE piloto(
  codigo int PRIMARY KEY,
  nome VARCHAR(150),
  num_voos INT);

CREATE TABLE voo(
  codigo int PRIMARY KEY,
  tipo VARCHAR(30),
  piloto INT,
  num_passageiros INT,
  distancia INT,
  FOREIGN KEY (piloto) REFERENCES piloto(codigo));

CREATE TABLE milhas(
  cliente int PRIMARY KEY,
  quantidade int,
  FOREING KEY (cliente) REFERENCES cliente(codigo));
  
CREATE TABLE cliente_voo(
  cliente int,
  voo int,
  classes VARCHAR(20),
  PRIMARY KEY(cliente, voo),
  FOREIGN KEY (cliente) REFERENCES cliente(codigo),
  FOREIGN KEY (voo) REFERENCES voo(codigo));