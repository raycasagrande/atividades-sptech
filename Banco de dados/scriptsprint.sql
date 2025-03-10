create database SGC;
use SGC;

create table cadastro (
idCadastro int primary key auto_increment,
nome varchar(50) not null,
senha varchar(15) not null,
email varchar(30) not null
);

create table sensor (
idSensor int primary key auto_increment,
nome varchar(25) not null,
tipo varchar(30) not null,
taxaConcentracao int,
constraint chkTaxa check(taxaConcentracao in (15, 30, 50))
);

create table condominio (
idCondominio int primary key auto_increment,
nome varchar(30) not null,
logradouro varchar(50) not null,
cep char(8) not null,
numero int not null,
cnpj char(14) not null unique
);

insert into cadastro (nome, senha, email) values
('Ana Karol', 'aninha2000', 'ana.barrocal@sptech.com'),
('Camila Jodai', 'camilinha2000', 'camila.jodai@sptech.com'),
('Caroline', 'carolzinha2000', 'caroline.soares@sptech.com'),
('Guilherme Mendes', 'guilherminho200', 'guulherme.mendes@sptech.com'),
('João Lucas Reis', 'joaozinho2000', 'joao.lcarvalho@sptech.com'),
('Letícia Rodrigues', 'leticinha2000', 'leticia.rodrigues@sptech.com'),
('Rayssa Casagrande', 'rayssinha2000', 'rayssa.casagrande@sptech.com');

insert into sensor (nome, tipo, taxaConcentracao) values
('MQ-2', 'Sensor de gás', 15);

insert into condominio (nome, logradouro, cep, numero, cnpj) values
('Osasco Residencial Life', 'Avenida O Trabuco Jornal', '02723456', 247, 12345678000190),
('Osasco Residencial Death', 'O Vale da Morte', '66666666', 666, 12345678000191),
('Osasco Residencial Sky', 'O Vale da Vida', '77777777', 77, 12345678000192);

select * from cadastro;
select * from sensor;
select * from condominio;