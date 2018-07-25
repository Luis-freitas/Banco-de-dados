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













use dbinfox;

show tables;


create table tb_cliente(
idcli int auto_increment primary key,
cpfcli varchar(50) unique,
nomecli varchar (50) not null,
cep varchar (15) not null,
tipo varchar (50) not null,
logradouro varchar (50) not null,
numero varchar (50) not null,
complemento varchar (15) ,
bairro varchar (50) not null,
cidade varchar (50) not null,
uf  char (2) not null,
fone1 varchar (15) not null,
fone2 varchar (15),
emailcli varchar (50) not null
);
describe tb_cliente;
insert into tb_cliente values
(1,'503.800.116.18','Roberto franco','08257-300','Rua', 'carlos albacilio','64','','Tatuape','São Paulo','SP','2535-6766','','roberto@gmail.com');
select *from tb_cliente;


insert into tb_cliente values
(null,'700.500.100.18','Diogo diniz','08657-400','Rua', 'Francisco ','85','','Carrão','São Paulo','SP','2564-6768','','diogo@gmail.com');


select *from tb_cliente;

insert into tb_cliente values
(null,'800.600.100.11','Richard ','08554-451','Rua', 'Calor ','555','','Carrão','São Paulo','SP','25564-6468','','Richard@gmail.com');

select *from tb_cliente;


insert into tb_cliente values
(null,'900.700.200.21','Luis Freitas ','04524-351','Rua', 'Jose carlos ','68','','Itaquera','São Paulo','SP','2521-5608','','Luis@gmail.com');

select *from tb_cliente;

insert into tb_cliente values
(null,'100.200.225.51','Ricardo Oliveira ','24514-311','Rua', 'Roberto ferreira ','655','','Itaquera','São Paulo','SP','2536-6899','','Ricardo.oliveira@outlook.com');




delete from tb_cliente where idcli=5;

drop table tb_cliente;
