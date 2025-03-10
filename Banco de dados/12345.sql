use sprint1;

create table notaFiscal (
idNF int primary key auto_increment,
dtNF date,
valorNF float);

insert into notaFiscal (dtNF, valorNF) values ('2025-02-10', 135.29);

select * from notaFiscal;