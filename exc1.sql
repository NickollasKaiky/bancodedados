create database Biblioteca;

use Biblioteca;
show databases;

create table Autor (
id_autor int primary key,
nome varchar(100) not null,
nacionalidade varchar(50)
);

create table Livro(
id_livro int primary key,
titulo varchar(150) not null,
ano int,
editora varchar(80)
);

create table Aluno(
id_aluno int primary key,
nome varchar(100) not null,
email varchar(100) unique
);

show tables;
describe Autor;
describe Livro;
describe Aluno;

alter table Aluno add telefone int unique;

describe Aluno;

alter table Livro add isbn int unique not null;
alter table Livro modify editora varchar(120);
alter table Livro change ano ano_publicacao int;
alter table Aluno drop telefone;

alter table Livro add id_autor int;
alter table Livro add foreign key(id_autor) references Autor (id_autor);

alter table Livro modify editora varchar(120) not null;
alter table Livro modify ano_publicacao date;
alter table Livro add email varchar(100) unique;

describe Livro;

drop table Aluno;
drop table Livro;

drop database Biblioteca;

