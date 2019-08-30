CREATE DATABASE M_Livros
USE M_Livros

CREATE TABLE Generos (
	IdGeneros INT PRIMARY KEY IDENTITY
	, Descri��o VARCHAR (200) UNIQUE NOT NULL
);
CREATE TABLE Ativo (
	IdAtivo INT PRIMARY KEY IDENTITY
	, Nome VARCHAR (200) UNIQUE NOT NULL
);
CREATE TABLE Autores (
	IdAutores INT PRIMARY KEY IDENTITY
	, Nome VARCHAR (200) UNIQUE NOT NULL
	, Email VARCHAR (230) UNIQUE NOT NULL
	, IdAtivo INT FOREIGN KEY REFERENCES Ativo(IdAtivo)
	, DataDeNascimento varchar(200) NOT NULL
);
CREATE TABLE Livros (
	IdLivros INT PRIMARY KEY IDENTITY
	, Nome VARCHAR (200) UNIQUE NOT NULL
	, IdAutores INT FOREIGN KEY REFERENCES Autores(IdAutores)
	, IdGeneros INT FOREIGN KEY REFERENCES Generos(IdGeneros)
);