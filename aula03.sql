drop database if exists bd_aula03;
create database bd_aula03;

create table tbl_cliente(
  codigo_cliente integer PRIMARY KEY,
  Nome varchar(40) NOT NULL,
  Cidade varchar(40),
  Endereco varchar(40)
);
create table tbl_emprestimo(
  codigo_cliente integer,
  codigo_livro integer,
);
create table tbl_titulo(
  titulo varchar(40) NOT NULL,
  descricao varchar(40)
);
create table tbl_livros;
