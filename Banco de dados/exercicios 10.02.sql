-- EXERCÍCIO 1

USE sprint1;

DROP TABLE atleta;

CREATE TABLE atleta (
idAtleta INT PRIMARY KEY,
Nome varchar (40),
Modalidade varchar (40),
qtdeMedalha int
);

INSERT INTO atleta VALUES

(1, 'Rayssa', 'natação', 4);

INSERT INTO atleta VALUES

(2, 'Julia', 'luta', 10);

INSERT INTO atleta VALUES
(3, 'João', 'vôlei', 12);

INSERT INTO atleta VALUES

(4, 'Juan', 'futebol', 10);

INSERT INTO atleta VALUES

(5, 'Matheus', 'dama', 12);

SELECT*FROM atleta;

UPDATE atleta SET qtdeMedalha = 8 WHERE idAtleta = 1;
UPDATE atleta SET qtdeMedalha = 7 WHERE idAtleta = 2;
UPDATE atleta SET qtdeMedalha = 6 WHERE idAtleta = 3;
UPDATE atleta SET qtdeMedalha = 5 WHERE idAtleta = 4;

ALTER TABLE atleta ADD COLUMN dtnasc DATE;

UPDATE atleta SET dtnasc = '2000-04-14'WHERE idAtleta = 1;
UPDATE atleta SET dtnasc = '2006-09-30' WHERE idAtleta = 2;
UPDATE atleta SET dtnasc = '2001-05-31' WHERE idAtleta = 3;
UPDATE atleta SET dtnasc = '2004-09-07' WHERE idAtleta = 4;
UPDATE atleta SET dtnasc = '2003-06-18' WHERE idAtleta = 5;

DELETE FROM atleta WHERE idAtleta = 5;

SELECT*FROM atleta WHERE modalidade != 'natação';

SELECT*FROM atleta WHERE qtdeMedalha >= 3;

ALTER TABLE atleta MODIFY COLUMN nome VARCHAR (60);

DESCRIBE atleta;

DROP TABLE atleta;

-- EXERCÍCIO 2

DROP TABLE musica;

USE sprint1;

CREATE TABLE musica (
idMusica INT PRIMARY KEY,
Titulo VARCHAR (40),
Artista VARCHAR (40),
Gênero VARCHAR (40)
);

INSERT INTO musica VALUES

(1, 'Rei e Santo', 'Canção e Louvor', 'Gospel', 3000),
(2, 'Deus zeloso', 'Fhop', 'Gospel', 8000),
(3, 'Fuso', 'Duquesa', 'Rap', 7000),
(4, 'Options', 'Hippie Sabotage', 'Rap', 10000),
(5, 'Kill this love', 'Black pink', 'Kpop', 12000),
(6, 'Telefone do Gw', 'Mc Gw', 'Funk', 23000),
(7, 'Nohting else matters', 'Metalica', 'rock', 13000);


INSERT INTO musica VALUES

(8, 'Fé', 'Fhop', 'Gospel');

SELECT*FROM musica;

ALTER TABLE musica ADD COLUMN curtidas INT;

UPDATE musica SET curtidas = 5
 WHERE idMusica = 1;

UPDATE musica SET curtidas = 90 WHERE idMusica = 2;
UPDATE musica SET curtidas = 500 WHERE idMusica = 3;
UPDATE musica SET curtidas = 800 WHERE idMusica = 4;
UPDATE musica SET curtidas = 1000 WHERE idmusica = 5;
UPDATE musica SEt curtidas = 1500 WHERE idmusica = 6;
UPDATE musica SET curtidas = 2000 WHERE idmusica = 7;
update musica set curtidas = 3000 where idmusica = 8;

ALTER TABLE musica MODIFY COLUMN artista VARCHAR (80);

UPDATE musica set curtidas = 5000 WHERE idmusica;

SELECT*FROM MUSICA;

UPDATE musica set curtidas = 79000 where idmusica = 2;
update musica set curtidas = 25000 where idmusica = 3;
update musica set curtidas = 89000 where idmusica = 5;

delete from musica where idmusica = 4;

select*from musica where gênero != 'funk';

select*from musica where curtidas >= 20;

describe musica;

TRUNCATE TABLE musica;

-- EXERCÍCIO 3

drop table filme;

use sprint1;

CREATE TABLE filme (

idfilme int primary key,
titulo varchar (50),
genero varchar (40),
diretor varchar (40)
);

select*from filme;

alter table filme add column protagonista varchar (50);

INSERT INTO filme values 

(1, 'Halloween', 'thriller', 'Rob Zombie', 'Laurie'),
(2, 'Hora do pesadelo', 'thriller', 'Wes Craven', 'Nancy'),
(3, 'Harry Potter', 'fantasia', 'Chris Columbus', 'Harry'),
(4, 'SuckerPunch', 'fantasia', 'Zack Snyder', 'BabyDoll'),
(5, 'Hellraiser', 'terror', 'Clive Barker', 'Kirsty'),
(6, 'Ilha misteriosa', 'aventura', 'Cy Endfiel', 'Sean'),
(7, 'As senhoras de salém', 'terror', 'Rob Zombie', 'Heidi');

ALTER TABLE filme MODIFY COLUMN diretor  VARCHAR (150);

UPDATE filme set diretor = 'Chris Columbus' where idfilme = 5;
update filme set diretor = 'Mel maia' where idfilme = 2;
update filme set diretor = 'Leo lins' where idfilme = 7;
update filme set titulo = 'La la land' where idfilme = 6;

delete from filme where idfilme = 3;

select*from filme where genero != 'drama';

select*from filme where genero = 'suspense';

describe filme;

DROP TABLE filme;

-- EXERCÍCIO 4

DROP TABLE professor;

USE sprint1;

CREATE TABLE professor (
idprofessor int primary key,
nome varchar (50),
especialidade varchar (40),
dtnasc date
);

ALTER TABLE professor ADD COLUMN  dtnasc date;

insert into professor values

(1, 'Cleber', 'portugues', '1981-09-13'),
(2, 'Fernanda', 'matematica', '1981-04-10'),
(3, 'Lorenzo', 'portugues', '2020-11-26'),
(4, 'Rayssa', 'artes', '2000-04-14');

insert into professor values 
(5, 'Junior', 'fisica', '1968-02-05'),
(6, 'Julia', 'artes', '1989-06-26');

describe professor;

alter table professor add column função varchar (50)
check ( função in ( 'monitor', 'assistente', 'titular'));

UPDATE professor set especialidade = 'chines' where idprofessor = 1;
update professor set especialidade = 'espanhol' where idprofessor = 3;
update professor set especialidade = 'ingles' where idprofessor = 5;

insert into professor values 
(7, 'Juan', 'espanhol', '2004-09-07', 'monitor');

select*from professor;

update professor set função = 'titular' where idprofessor = 1;
update professor set função = 'monitor' where idprofessor = 2;
update professor set função = 'assistente' where idprofessor = 3;
update professor set função = 'titular' where idprofessor = 4;
update professor set função = 'monitor'  where idprofessor = 5;
update professor set função = 'assistente' where idprofessor = 6;

insert into professor values

(3, 'Igor', 'chines', '2003-02-26', 'monitor');

delete from professor where idprofessor = 5;

select especialidade, dtnasc from professor where função = 'monitor';

update professor set dtnasc = '1812-05-04' where idprofessor = 3;

Drop table professor;

-- EXERCÍCIO 5

use sprint1;

create table curso (

idcurso int primary key,
nome varchar (50),
sigla varchar (3),
coordenador varchar (50)
);

insert into curso values

(1, 'banco de dados', 'bd', 'vivian'),
(2, 'arquitetura computacional', 'aq', 'matheus'),
(3, 'socio emocional', 'se', 'paula');

select*from curso;

select coordenador from curso;

select*from curso where sigla = 'bd';

select*from curso order by nome;

select*from curso order by coordenador desc;

select*from curso where nome like 'b%';

select*from curso where nome like '%s';

select*from curso where nome like '_a%';

select*from curso where nome like '%a_';

drop table curso;

-- EXERCICIO 6

use sprint1;

create table revistas (
idrevistas int primary key auto_increment,
nome varchar (40),
categoria varchar (30)
);

insert into revistas values

(default, 'veja', null),
(default, 'isto e', null),
(default, 'claudia', null),
(default, 'epoca', null);

select*from revistas;

update revistas set categoria = 'fofoca' where idrevistas = 1;
update revistas set categoria = 'fofoca' where idrevistas = 2;
update revistas set categoria = 'fofoca' where idrevistas = 3;
update revistas set categoria = 'fofoca' where idrevistas = 4;

describe revistas;

alter table revistas add column periodicidade varchar (15);

select*from revistas;

ALTER TABLE revistas drop COLUMN periodicidade;

select*from revistas;


-- EXERCÍCIO 7

use sprint1;

create table carros (
idcarro int primary key,
nome varchar (40),
placa char (7)
);

alter table carros auto_increment = 1000;

insert into carros values 

('1000','onix', 'aaaa123');

insert into carros value 

('1001', 'hb20', 'bbbb456');

insert into carros value

('1002', 'fusca', 'cccc789'),
('1003', 'corsa', 'dddd123');

select*from carros;

insert into carros value

('1004', 'chevrolet', null),
('1005', 'fusion', null),
('1006', 'vectra', null);

select*from carros;

describe carros;

ALTER TABLE carros MODIFY COLUMN nome VARCHAR (28);

describe carros;

ALTER TABLE carros ADD COLUMN ano char (4);

 UPDATE carros SET placa = 'eeee123'
WHERE idcarro = 1004;

UPDATE carros SET placa = 'ffff123'
WHERE idcarro = 1005;

UPDATE carros SET placa = 'gggg123'
WHERE idcarro = 1006;

UPDATE carros SET ano = '2003'
WHERE idcarro = 1004;

UPDATE carros SET ano = '2004'
WHERE idcarro = 1000;

UPDATE carros SET ano = '2005'
WHERE idcarro = 1001;

UPDATE carros SET ano = '2006'
WHERE idcarro = 1002;

UPDATE carros SET ano = '2003'
WHERE idcarro = 1004;

UPDATE carros SET ano = '2004'
WHERE idcarro = 1004;

select*from carros;

UPDATE carros SET ano = '2007'
WHERE idcarro = 1005;



UPDATE carros SET ano = '2008'
WHERE idcarro = 1004;

UPDATE carros SET ano = '2009'
WHERE idcarro = 1006;

 































































































































