drop database if exists bd_aula03;
create database bd_aula03;

CREATE DOMAIN chk_status text CHECK (VALUE='disponivel' OR VALUE='indisponivel');
CREATE DOMAIN chk_categoria  text (VALUE = 'DRAMA' or VALUE ='COMEDIA');
  
create table tbl_cliente(
  codigo_cliente integer PRIMARY KEY,
  Nome varchar(40) NOT NULL,
  Cidade varchar(40),
  Endereco varchar(40)
);
create table tbl_emprestimo(
  numero_emprestimo integer PRIMARY KEY,
  codigo_cliente integer REFERENCES tbl_cliente(codigo_cliente),
  codigo_livro integer REFERENCES tbl_livros(codigo_livro)
);
create table tbl_titulo(
  codigo_titulo PRIMARY KEY,
  titulo varchar(40) NOT NULL,
  descricao varchar(40),
  categoria chk_categoria
);
create table tbl_livros(
  cod_livro integer PRIMARY KEY,
  codigo_titulo integer REFERENCES tbl_titulo(codigo_titulo),
  status integer,
  status chk_status
);

CREATE DOMAIN chk_status text CHECK (VALUE='disponivel' OR VALUE='indisponivel')
CREATE DOMAIN categoria  text
CHECK (VALUE IN ('DRAMA', 'COOMEDIA'));
