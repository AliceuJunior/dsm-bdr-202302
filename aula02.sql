drop database IF EXISTS bd_sistema_bancario;
create database bd_sistema_bancario;

create table cliente (cod integer);
create table cpf (cod integer);
create table idade (cod integer);
create table cidade (cod integer);
create table saldo (cod integer);

create table cliente (nome_cliente text, cidade_cliente text, endereco_cliente);
create table emprestimo (numero_emprestimo integer, nome_agencia text, valor real);
create table conta (numero_conta text, nome_agencia text, saldo real);
create table agencia (cidade_agencia text, depositos real);

drop table cliente;
drop table cpf;
drop table idade;
drop table cidade;
drop table saldo;

ALTER TABLE cliente add column idade integer;
ALTER TABLE cliente rename column idade TO idades;
ALTER TABLE cliente drop column idades;
ALTER TABLE cliente rename to tblcliente;
ALTER TABLE cliente add column cpf integer;

