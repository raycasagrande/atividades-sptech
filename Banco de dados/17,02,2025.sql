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










