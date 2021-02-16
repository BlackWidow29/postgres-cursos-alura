--- Curso 1 - PostgreSQL: Primeiros passos com SQL

CREATE DATABASE alura
WITH 
OWNER = postgres
ENCODING = 'UTF8'
CONNECTION LIMIT = -1;

USE alura;

CREATE TABLE aluno (
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nastimento DATE,
	hora_aula TIME,
	matricula TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM aluno;

INSERT INTO aluno (nome,cpf,observacao, idade, dinheiro, altura,ativo,data_nastimento,hora_aula) 
VALUES ('Isabelly','35467855679','lorem ipsum dolore lalalalala',20,1967.10,1.70,TRUE,'2000-10-29','19:00:00');

SELECT * FROM aluno 
WHERE id = 1;

UPDATE aluno
SET dinheiro = 2000.30
WHERE id = 1;


