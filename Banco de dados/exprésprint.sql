create database game_store;

use game_store;

create table jogo (
idJogo int primary key auto_increment,
nome varchar (30),
diretor varchar (30),
genero varchar (30),
dtLançamento year,
nota int,
constraint chknota
 check (nota <= 0 or nota <= 10),
qntdDisponivel int (10)
);


alter table jogo add 
constraint chknota
check ( nota between 0 and 10);

insert into jogo values

('1', 'God of war', 'abububle', 'luta', '2008', 10, 40),
('2', 'Ghostwire tokyo', 'xablau', 'suspense', '2023', 8, 100),
('3', 'Wilds rift', 'riot', 'mmo', '2024', 4, 800),
('4', 'Silent hill', 'shuma', 'terror', '2024', 10, 1),
('5', 'Life is strange', 'abububu', 'drama', '2018', 10, 6);

select*from jogo;

alter table jogo add column midia varchar(30);

alter table jogo add constraint midia
check (midia in ('fisica', 'digital'));

update jogo set midia  = 'fisica'
where idJogo in (1,2,3);

update jogo set midia  = 'digital'
where idJogo in (4,5);

select*from jogo where dtLançamento >= 2015;

select*from jogo where nome like '%a%' and midia = 'fisica';

select*from jogo where diretor not like '%e%';

select*from jogo where genero = 'terror' and qntdDisponivel >=0;

select*from jogo;

delete from jogo where qntdDisponivel =0;

alter table jogo rename column diretor to criador;

-- EXERCÍCIO 2

use olimpiadas;

create table esportes (
idEsporte int primary key auto_increment,
nome varchar (40),
categoria varchar (40),
numJog int,
estreia date,
pais varchar (30));

insert into esportes (nome, categoria, numJog, estreia, pais,
popularidade) values

('Bolt','Individual', 0, '2008-02-06', 'Jamaica',5),
('Phelps', 'individual', 0, '2004-03-19', 'EUA',4),
('Neymar', 'coletivo', 11, '2016-08-12', 'Brasil',10),
('Serena', 'individual', 0, '2000-03-05', 'EUA',1),
('Biles', 'coletivo', 5, '2016-12-11', 'EUA',10);


alter table esportes add 
constraint chkcategoria 
    check (categoria in ('coletivo', 'Individual'));
 
alter table esportes add column popularidade varchar (30)
constraint chkpopularidade
check (popularidade between 0 and 10); 

select*from esportes;

update esportes set popularidade = '10' where idEsporte = 1;
update esportes set popularidade = '01' where idEsporte = 2;
update esportes set popularidade = '5' where idEsporte = 3;
update esportes set popularidade = '10' where idEsporte = 4;
update esportes set popularidade = '4' where idEsporte = 5;

select*from esportes order by popularidade asc;

select*from esportes;

SELECT * FROM esportes WHERE estreia >= 2000;

alter table esportes add 
constraint chkestreia 
    check (estreia between '1896-04-06' and '2025-02-22' );
    
     alter table esportes drop constraint chkcategoria;
     
     select*from esportes where pais like '_a%';
     
     select*from esportes where numJog between '4' and '11';
     
     delete from esportes where idEsporte = 1;
     delete from esportes where idEsporte = 3;
     delete from esportes where idEsporte = 5;
    
    -- EXERCICIO 3
    
 CREATE DATABASE Desenho;

USE Desenho;

CREATE TABLE desenhosanimados (
id int primary key auto_increment,
titulo varchar (50),
dtlancamento date,
emissora varchar (50),
classificação int,
statusdesenho varchar(15),
nota int 
constraint chk_nota 
check (nota in(1, 2, 3, 4, 5))
) auto_increment = 10;

insert into desenhosanimados ( titulo, dtlancamento, emissora, classificação, statusdesenho, nota) values 
( 'Coragem', '1998-06-03', 'Cartoon', 10, 'finalizado', 5),
('As terriveis aventuras de billy e mandy', '2001-10-17', 'Cartoon', 10, 'finalizado', 5),
('Bob Esponja', '2000-08-12', 'Nick', 10, 'exibindo', '4');


Describe desenhosanimados;

Select * From desenhosanimados;

select * from desenhosanimados where classificação <= 14;
 
select * from desenhosanimados where emissora = 'Cartoon';
    
alter table desenhosanimados 

ADD CONSTRAINT chkStatusdesenho 
check(Statusdesenho in ('exibindo' , 'finalizado', 'cancelado'));

update desenhosanimados set Statusdesenho = 'Finalizado'where id = 12;

update desenhosanimados set Statusdesenho = 'Finalizado'where id = 14;
                   
delete from desenhosanimados where id = 12;
    
select * from desenhosanimados where titulo like 'C%';

alter table desenhosanimados rename column classificação to classificaçãoIndicativa;

update desenhosanimados set dtlancamento = '2000-11-16',nota = '3'where id  = 11;  
  
truncate table desenhosanimados;

alter table desenhosanimados drop constraint chkStatusdesenho;

-- EXERCICIO 4

create database estoque;

use estoque;

 create table misteriosSA ( 
 id int primary key,
 nome varchar(30),
 dtcompra date,
 preço decimal (5,2),
 peso decimal (5,2),
 dtRetirada date);

insert into misteriosSA values 

(1, 'Biscoitos Scooby', '2024-04-14', '25.3', 3.00, '2024-04-20'),
(2, 'Biscoitos Scooby', '2024-04-10', '25.5', 10.00, '2024-04-20'),
(3, 'Cachorro Quente', '2020-11-26', '23.4', 60.00, '2020-11-30'),
(4, 'Bolo de chocolate', '2025-06-12', '15.3', 50.00, '2025-06-16'), 
(5, 'Sorvete', '2025-08-11', '18.2', 40.00, '2025-08-13');

select * from misteriosSA;

select nome, dtcompra, dtRetirada, id from misteriosSA order by dtcompra desc;

update misteriosSA set dtcompra = '2024-04-14'where id = 2;
 
alter table misteriossa rename column id to idComida;

update misteriosSA set nome ='Biscoitos Scooby' where idComida = 4;

alter table misteriosSA
 ADD CONSTRAINT chkcomida 
check(nome in ('Biscoitos Scooby', 'Cachorro Quente'));
 
select nome, dtcompra as "Data Compra", dtRetirada as "data retirada" from misteriosSA
where nome = 'Biscoitos Scooby';

select * from misteriosSA where dtcompra < '2024-07-25';

select * from misteriosSA where preço >= 30.50;

truncate table misteriosSA;

-- EXERCÍCIO 5

create database vingadores;

use vingadores;

create table heroi (
id int primary key auto_increment,
nome varchar(45),
versão varchar(45),
habilidade varchar(45),
altura decimal(5,2)
);

insert into heroi (nome, versão, habilidade, altura)  values 
('Hulk', 'Avengers', 'Força', '2.80'),
('Homem de Ferro', 'Avengers', 'Inteligencia', '1.80'),
('Cyclope', 'X-men', 'Laser','1.85');  

insert into heroi (nome, versão, habilidade, altura) values
('Capitã Marvel', 'Avengers', 'força', '1.50'),
('Doctor Strange', 'Avengers', 'SpiderSense', '1.75');

alter table heroi add column regeneração boolean;

alter table heroi modify column versão varchar (100);

delete from heroi where id = 3;

insert into heroi (nome, versão, habilidade, altura) values  
('Wolverine', 'X-men', 'regenaration','1.90');

select * from heroi where nome like 'H%';

select * from heroi where nome not like '%a%';

select nome from heroi where altura > 1.90;

select * from heroi where altura > 1.80 order by nome desc;

truncate table heroi;


   
