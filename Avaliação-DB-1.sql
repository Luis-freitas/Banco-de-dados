-- CRUD (Create read Update Delete)
use dbinfox;
-- inspercionar tabelas do banco de dados 
show tables;
-- O código abaixo cria uma tabela 
create table tb_usuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar (15) not null,
login varchar(50) not null unique,
senha varchar (50) not null,
perfil varchar (50) not null
);
show tables;
-- descrevendo a tabela
describe tb_usuarios;

-- inserindo dados na tabela  (CRUD - Create)
insert into tb_usuarios values
(1,'Luis Gustavo Freitas de Oliveira','1111-1111','luis.freitas1','123@senac','Aluno senac');

select * from tb_usuarios;

insert into tb_usuarios values
(2,'Gustavo','3333-333','gustavo.oliveira1','123@senac','Professor do senac');
insert into tb_usuarios values
(3,'Ricardo','444-444','ricardo.smarsi','123@senac','Professor do senac');




