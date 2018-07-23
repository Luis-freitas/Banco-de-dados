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
idcli int primary key,
cpfcli varchar(50) unique,
nomecli varchar (50) not null,
cep varchar (15) not null,
tipo varchar (50) not null,
logradouro varchar (50) not null,
numero varchar (50) not null,
complemento varchar (15) ,
bairro varchar (50) not null,
cidade varchar (50) not null,
uf varchar (50) not null,
fone1 varchar (15) not null,
fone2 varchar (15),
emailcli varchar (50) not null
);
describe tb_cliente;
insert into tb_cliente values
(1,'503.800.116.18','Roberto franco','08257-300','Rua', 'carlos albacilio','64','','Tatuape','São Paulo','','2535-6766','','roberto@gmail.com');
select *from tb_cliente;


select *from tb_cliente;
