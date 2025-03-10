-- Aula 3

-- check ( é uma restrição para aceitar valores definidos)
-- alias ( é apelidar uma coluna e torna-la segura)
-- case ( é uma condição ex: caso uma coisa, então outra)
-- ifnull ( sempre que o valor for nulo)
-- not null (o campo sempre tem que ser preenchido)
-- unique (cada linha precisa ser única)
-- default ( pra preencher automaticamente quando não houver valor definido)
-- double ( 15 caracteres númericos onde vc escolhe onde coloca a vírgula)

USE SPRINT1;

show tables;

create table sensor (
idSensor int primary key auto_increment,
tipo varchar (30) not null,
dtManutençao datetime,
statusSensor varchar (40),
constraint chkStatus 
    check (statusSensor in ('Ativo', 'Inativo', 'Manutençao'))
    );
insert into sensor values

-- O próximo comando dará erro de constraint

(default, 'dht11', '2025-02-17', 'pendente');

-- check constraint 'chkStatus' is violated. 

Insert into sensor (tipo, dtManutençao, statusSensor) values 
( 'dht11', '2025-02-17 13:16:00', 'Ativo'),
('lm35', '2025-02-16 14:00:00', 'Inativo');

select*from sensor;

describe sensor;

-- o chk não aparece nas configurações da tabela 

alter table sensor 
 modify column dtManutençao datetime default current_timestamp;
 
 insert into sensor (tipo, statusSensor) values
 ('dht11', 'manutençao');
 
 select*from sensor;
 
 -- EXCLUIR UMA CONSTRAINT 
 
 alter table sensor drop constraint chkstatus;
 
 insert into sensor (tipo, statusSensor) values
 ('lm35', 'Pendente');
 
 select*from sensor;
 
 -- ADICIONAR UM CAMPO COM O NÚMERO DE SÉRIE DO SENSOR (unique)
 
 alter table sensor add column numSerie char(3) unique;
 
 update sensor set numSerie = '001' where idSensor = 1;
 update sensor set numSerie = '002' where idSensor = 2;
 
 -- Alias - apelido -
 
 select*from sensor;
 
 select tipo as 'Tipo de Sensor',
 
 dtManutençao as 'Data de Manutenção' from sensor;
 
 -- IFNULL
 
 select ifnull(numSerie, 'Sem número de série') as numSerie from sensor;
 
 -- case 
 
select tipo,
  case
  when statusSensor = 'Manutenção' then  1
  when statusSensor = 'Pendente' then 'Joga fora'
  else 0 
  end as A from sensor;
  
  -- DEFAULTaluno
  
  alter table sensor add column nome varchar(20) default 'Sem nome';
  
  insert into sensor (tipo) values
  ('lm35');
  
  insert into sensor (tipo, nome) values
  ('dht11', 'sensível');
  
  select*from sensor;
  
  
 
 
 
 


