--- Curso 1 - PostgreSQL: Primeiros passos com SQL
CREATE DATABASE alura WITH OWNER = postgres ENCODING = 'UTF8' CONNECTION
LIMIT = -1;
USE alura;
CREATE TABLE aluno (
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10, 2),
	altura REAL,
	ativo BOOLEAN,
	data_nastimento DATE,
	hora_aula TIME,
	matricula TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
SELECT *
FROM aluno;
INSERT INTO aluno (
		nome,
		cpf,
		observacao,
		idade,
		dinheiro,
		altura,
		ativo,
		data_nastimento,
		hora_aula
	)
VALUES (
		'Isabelly',
		'35467855679',
		'lorem ipsum dolore lalalalala',
		20,
		1967.10,
		1.70,
		TRUE,
		'2000-10-29',
		'19:00:00'
	);
SELECT *
FROM aluno
WHERE id = 1;
UPDATE aluno
SET dinheiro = 2000.30
WHERE id = 1;
SELECT *
FROM aluno
WHERE nome = 'Isabelly';
DELETE FROM aluno
WHERE nome = 'Isabelly';
SELECT nome AS "Nome do Aluno",
	idade,
	matricula AS "Data e hora da matrícula"
FROM aluno;
INSERT INTO aluno (
		nome,
		cpf,
		observacao,
		idade,
		dinheiro,
		altura,
		ativo,
		data_nastimento,
		hora_aula
	)
VALUES (
		'Michael',
		'16245377684',
		'lorem ipsum dolore lalalalala',
		19,
		12367.10,
		1.78,
		TRUE,
		'2002-01-08',
		'08:00:00'
	),
	(
		'Lucas',
		'14525844874',
		'lorem ipsum dolore lalalalala',
		22,
		2948.10,
		1.80,
		TRUE,
		'1998-03-09',
		'08:00:00'
	),
	(
		'Ingrid',
		'11478544752',
		'lorem ipsum dolore lalalalala',
		19,
		38388.10,
		1.75,
		TRUE,
		'2002-04-12',
		'08:00:00'
	);
INSERT INTO aluno (nome)
VALUES ('Vinicius'),
	('Rafael'),
	('Willian'),
	('João Roberto');

--- retorna todos que possuem os mesmos caracteres ou texto
SELECT *
FROM aluno
WHERE nome = 'Isabelly';
--- retorna todos que possuem os caracteres diferente do que foi passado
SELECT *
FROM aluno
WHERE nome <> 'Isabelly';
--- retorna todos que possuem os seguintes caracteres depois do %
SELECT *
FROM aluno
WHERE nome LIKE '%ael';
--- retorna todos que possuem os seguintes caracteres depois do _ com a quantidade exata que foi passada
SELECT *
FROM aluno
WHERE nome LIKE '_ucas';

--- retorna todos que não possuem os seguintes caracteres depois do _ com a quantidade exata que foi passada
SELECT *
FROM aluno
WHERE nome NOT LIKE '_ucas';

--- retorna todos que possuem os seguintes caracteres antes do %
SELECT *
FROM aluno
WHERE nome LIKE 'R%';

SELECT *
FROM aluno
WHERE cpf IS NOT NULL;

SELECT *
FROM aluno
WHERE cpf IS NULL;

SELECT *
FROM aluno
WHERE idade >= 20;

SELECT *
FROM aluno
WHERE idade BETWEEN 10 AND 30;

SELECT *
FROM aluno
WHERE ativo = true;