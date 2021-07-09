-- Aula 5
DROP DATABASE Agiobot;
CREATE DATABASE Agiobot;

USE Agiobot;

-- DROPS DAS TABELAS
DROP TABLE IF EXISTS tbl_Clientes;
DROP TABLE IF EXISTS tbl_Generos;

-- CRIAÇÃO DAS BASES
CREATE TABLE tbl_Clientes (
	idPessoa INT PRIMARY KEY IDENTITY (1,1),
	nomePessoa VARCHAR(100) NOT NULL,
	dataNascimento DATE NULL,
	idGenero INT NOT NULL
);

CREATE TABLE tbl_Generos (
	idGenero INT PRIMARY KEY IDENTITY(1,1),
	nomeGenero VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_EstadosBrasil (
	siglaEstado CHAR(2) NOT NULL PRIMARY KEY,
	nomeEstado VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tbl_Cidades (
	id_Cidade INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nomeCidade VARCHAR(100) NOT NULL,
	siglaEstado CHAR(2)
);

CREATE TABLE tbl_Ruas (
	cepRua 

)

-- CHAVES ESTRANGEIRAS
ALTER TABLE tbl_Clientes
ADD CONSTRAINT FK_ClientesGeneros
FOREIGN KEY (idGenero) REFERENCES tbl_Generos (idGenero);

ALTER TABLE tbl_Cidades
ADD CONSTRAINT FK_CidadesEstados
FOREIGN KEY (siglaEstado) REFERENCES tbl_Estados (siglaEstado)