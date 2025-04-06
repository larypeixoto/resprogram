-- 1)

CREATE DATABASE biblioteca;

-- 2)

CREATE SCHEMA controle;

CREATE TABLE IF NOT EXISTS controle.livro
(
id_livro SERIAL PRIMARY KEY,
titulo VARCHAR(200) NOT NULL,
autor VARCHAR(100) NOT NULL,
ano_publicacao DATE NOT NULL,
genero VARCHAR(100) NOT NULL,
quantidade_estoque INT NOT NULL
);

-- 3)

CREATE TABLE IF NOT EXISTS controle.usuario
(
id_usuario SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR(14) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
telefone VARCHAR(15) NOT NULL,
endereco VARCHAR(200) NOT NULL
);

-- 4)

CREATE TYPE status_emprestimos AS ENUM ('Emprestado', 'Devolvido');

CREATE TABLE IF NOT EXISTS controle.emprestimos
(
id_emprestimos SERIAL PRIMARY KEY,
id_usuario INT REFERENCES controle.usuario (id_usuario),
id_livro INT REFERENCES controle.livro (id_livro),
data_emprestimo DATE NOT NULL,
data_devolucao DATE,
status status_emprestimos NOT NULL DEFAULT 'Emprestado'
);

-- 5)

ALTER TABLE controle.livro
ADD COLUMN editora VARCHAR(100);
