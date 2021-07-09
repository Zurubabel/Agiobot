-- Aula 4
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

-- CHAVES ESTRANGEIRAS
ALTER TABLE tbl_Clientes
ADD CONSTRAINT FK_ClientesGeneros
FOREIGN KEY (idGenero) REFERENCES tbl_Generos (idGenero);