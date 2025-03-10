CREATE DATABASE continuada1;

USE continuada1;

CREATE TABLE historico (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
dataHora DATETIME DEFAULT current_timestamp,
url VARCHAR(250) NOT NULL,
navegador VARCHAR(100)
);



INSERT INTO historico (nome, url, navegador) VALUES
	('São Paulo Tech School', 'https://moodle.sptech.school/', 'Microsoft Edge'),
	('Página Inicial - Microsoft Azure', 'https://portal.azure.com/#home', 'Microsoft Edge'),
	('Ofertas e Promoções | Amazon.com.br', 'https://www.amazon.com.br/deals?ref_=nav_cs_gb', 'Firefox Developer Edition'),
	('404 Not Found', 'http://moodletech.azurewebsites.net/', 'Firefox Developer Edition'),
	('Working...', 'https://login.microsoftonline.com/kmsi', 'Firefox Developer Edition'),
	('Email - Usuario Aluno - Outlook', 'https://outlook.office.com/mail/', 'Firefox Developer Edition'),
	('Solicitações - Suporte - Digital Building', 'https://bandtec.sdpondemand.manageengine.com/app/itdesk/ui/requests', 'Firefox Developer Edition'),
	('Carrinho de compras da Amazon.com', 'https://www.amazon.com.br/gp/cart/view.html?ref_=nav_cart', 'Firefox Developer Edition'),
	('MySQL | Begin Your Download', 'https://dev.mysql.com/downloads/file/?id=516926', 'Firefox Developer Edition'),
	('MySQL | Download MySQL Installer', 'https://dev.mysql.com/downloads/installer/', 'Firefox Developer Edition');
    
    select*from historico where nome like '%Download%';
    
    delete from historico where id in (9,10);
    
    select*from historico;
    
    alter table historico add column sistOp varchar (30);
    
    select nome from historico where navegador = 'Microsoft Edge';
    
    select id from historico where nome = 'Working...';
    
    update historico set navegador = 'Google Chrome' where id= 5;
    
    SELECT * FROM historico WHERE nome LIKE 'M%';
    
    ALTER TABLE historico ADD CONSTRAINT 

	CHECK (navegador IN ('Microsoft Edge', 'Firefox Developer Edition', 'Google Chrome'));
    
    insert into historico (nome, url, navegador) values
    	('São Paulo Tech School', 'https://moodle.sptech.school/', 'opera');
        
    SELECT * FROM historico WHERE url LIKE '%amazon%';
    
    ALTER TABLE historico RENAME COLUMN nome TO titulo;
    
    SELECT * FROM historico WHERE url LIKE '%t_';
    
    SELECT * FROM historico WHERE url LIKE '%/';
    
    SELECT navegador FROM historico WHERE navegador != 'Microsoft Edge';
    
    
INSERT INTO historico (titulo, url, dataHora) VALUES

	('Fazer login no Canvas (instructure.com)', 'https://awsacademy.instructure.com/login/canvas', '2023-02-16 10:36:00');
    
    SELECT id FROM historico WHERE titulo = 'Página Inicial - Microsoft Azure';
    
    UPDATE historico SET dataHora = 2023-02-31 08:00:00 WHERE id = 2;
    
    
ALTER TABLE historico MODIFY COLUMN url VARCHAR(500);



INSERT INTO historico (titulo, url, navegador) VALUES 

	('404 Not Found', 'http://moodletech.azurewebsites.net/', 'Google Chrome');
    
    SELECT * FROM historico WHERE titulo = '404 Not Found' AND navegador = 'Google Chrome';

   DROP TABLE historico;
    
    