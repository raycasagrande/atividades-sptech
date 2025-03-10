-- EXERCÍCIO 1

USE sprint1;
CREATE TABLE atleta (
idAtleta CHAR (1) PRIMARY KEY,
nome VARCHAR (40),
modalidade VARCHAR (40),
qtdeMedalha VARCHAR (10)
);
INSERT INTO atleta VALUES 
('1', 'Claudio', 'Natação', '5');
INSERT INTO atleta VALUES
('2', 'Valéria', 'PingPong', '8');
INSERT INTO atleta VALUES 
('3', 'Maria', 'Natação', '3');
INSERT INTO atleta VALUES
('4', 'Breno', 'Natação', '1');
INSERT INTO atleta VALUES
('5', 'Bruna', 'Corrida', '7');
INSERT INTO atleta VALUES
('6', 'Caio', 'Corrida', '2');
INSERT INTO atleta VALUES
('7', 'Carla', 'Boxe', '8');
INSERT INTO atleta VALUES
('8', 'Barbara', 'Natação', '2');
INSERT INTO atleta VALUES
('9', 'Leticia', 'Salto', '1');

SELECT * FROM atleta;

SELECT nome, qtdeMedalha FROM atleta;

SELECT * FROM atleta WHERE modalidade = 'Natação';

SELECT * FROM atleta ORDER BY modalidade;

SELECT * FROM atleta ORDER BY qtdeMedalha DESC;

SELECT * FROM atleta WHERE nome LIKE '%s%';

SELECT * FROM atleta WHERE nome LIKE 'b%';

SELECT * FROM atleta WHERE nome LIKE '%o';

SELECT * FROM atleta WHERE nome LIKE '%r_';

DROP TABLE atleta;


-- EXERCÍCIO 2

USE sprint1;

CREATE TABLE musica (
idMusica CHAR (1) PRIMARY KEY,
Titulo VARCHAR (40),
Artista VARCHAR (40),
Genero VARCHAR (40)
);

INSERT INTO musica VALUES
('1', 'They Dont Know about us', 'One Direction', 'Pop'),
('2', 'Little Things', 'One Direction', 'Pop'),
('3', 'Air Force Ones', 'Nelly', 'Rap'),
('4', 'Fé', 'Fhop music', 'Louvor'),
('5', 'Nada mais', 'Fhop music', 'Louvor'),
('6', ' Poderosamente vivo', 'Sandra Pires', 'Louvor'),
('7', 'Fuso', 'NINA','Rap');

SELECT * FROM musica;

SELECT titulo, artista FROM musica;

SELECT * FROM musica WHERE genero = 'louvor';

SELECT * FROM musica WHERE artista = 'One Direction';

SELECT * FROM musica ORDER BY 'titulo';

SELECT * FROM musica ORDER BY 'artista' DESC;

SELECT * FROM musica WHERE titulo LIKE 't%';

SELECT * FROM musica WHERE artista LIKE '%c';

SELECT * FROM musica WHERE genero LIKE '_i%';

SELECT * FROM musica WHERE titulo LIKE '%U_';

DROP TABLE musica;


-- EXERCÍCIO 3

USE sprint1;

CREATE TABLE filme (
idFilme CHAR (1) PRIMARY KEY,
titulo VARCHAR (50),
genero VARCHAR (40),
diretor VARCHAR (40)
);

INSERT INTO filme VALUES
('1', 'Hora do pesadelo', 'Terror', 'Wes Craven'),
('2', 'Halloween', 'Thriller', 'John Carpenter'),
('3', 'Alguém me vigia', 'Suspense', 'John Carpenter'),
('4', 'SuckerPunch: Mundo Surreal', 'Fantasia', 'Zack Snyder'),
('5', 'Harry Potter', 'Fantasia', 'Chris Columbus'),
('6', 'Sexta-Feira 13', 'Thriller', 'Steve Miner'),
('7', 'John Wick', 'Ação', 'Chad Stahelski');

SELECT * FROM filme;

SELECT titulo, diretor FROM filme;

SELECT * FROM filme WHERE genero = 'thriller';

SELECT * FROM filme WHERE diretor = 'John Carpenter';

SELECT * FROM filme ORDER BY titulo;

SELECT * FROM filme ORDER BY diretor DESC;

SELECT * FROM filme WHERE titulo LIKE 'r%';

SELECT * FROM filme WHERE diretor LIKE '%o';

SELECT * FROM filme WHERE genero LIKE '_h%';

SELECT * FROM filme WHERE titulo LIKE '%e_';

DROP TABLE filme;

-- EXERCÍCIO 4

USE sprint1;

CREATE TABLE professor (
idProfessor CHAR (4) PRIMARY KEY,
nome VARCHAR (50),
especialidade VARCHAR (40),
dtNasc date
);

INSERT INTO professor VALUES
('1', 'Viviane', 'matematica', '1988-05-12'),
('2', 'Rodrigo', 'matematica', '1987-04-26'),
('3', 'Leticia', 'historia', '1957-07-13'),
('4', 'Fernanda', 'portugues', '1981-04-10');

SELECT * FROM professor;

SELECT especialidade from professor;

SELECT * FROM professor WHERE especialidade = 'matematica';

SELECT * FROM professor ORDER BY 'nome';

SELECT * FROM professor ORDER BY 'dtnasc' DESC;

SELECT * FROM professor WHERE nome LIKE 'r%';

SELECT * FROM professor WHERE nome LIKE '%o';

SELECT * FROM professor WHERE nome LIKE '%a';

SELECT * FROM professor WHERE nome LIKE '_e%';

SELECT * FROM professor WHERE nome LIKE '%n_';

DROP TABLE professor;

-- EXERCÍCIO 5

USE sprint1;

CREATE TABLE jogo (
idjogo CHAR (1) PRIMARY KEY,
nome VARCHAR (50),
comentario VARCHAR (200),
rankig INT 
);

INSERT INTO jogo VALUES
('1', 'Hogwarts legacy', 'um game de aventura e mundo aberto', '10'),
('2', 'Ghostwire tokyo', 'suspense e drama de mundo aberto', '4'),
('3', 'God of war', 'aventura, exploração e mundo aberto', '8');

SELECT * FROM jogo;

SELECT nome FROM jogo;

SELECT comentario FROM jogo WHERE comentario LIKE = 'god of war';

SELECT * FROM jogo ORDER BY nome;

SELECT * FROM jogo ORDER BY rankin DESC;

SELECT * FROM jogo WHERE nome LIKE 'g%';

SELECT * FROM jogo WHERE nome LIKE '%o';

SELECT * FROM jogo WHERE nome LIKE '_h%';

SELECT * FROM jogo WHERE nome LIKE '%a_';

SELECT * FROM jogo WHERE nome != 'minecraft';

DROP TABLE jogo;


















