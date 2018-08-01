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
select *from tb_cliente;



insert into tb_cliente values
(null,'700.500.100.18','Diogo diniz','08657-400','Rua', 'Francisco ','85','','Carrão','São Paulo','SP','2564-6768','','diogo@gmail.com');


select *from tb_cliente;

insert into tb_cliente values
(null,'800.600.100.11','Richard ','08554-451','Rua', 'Calor ','555','','Carrão','São Paulo','SP','25564-6468','','Richard@gmail.com');

select *from tb_cliente;


insert into tb_cliente values
(null,'900.700.200.21','Luis Freitas ','04524-351','Rua', 'Jose carlos ','68','','Itaquera','São Paulo','SP','','2521-5608','Luis@gmail.com');

select *from tb_cliente;

insert into tb_cliente values
(null,'100.200.225.51','Ricardo Oliveira ','24514-311','Rua', 'Roberto ferreira ','655','','Itaquera','São Paulo','','SP','2536-6899','Ricardo.oliveira@outlook.com');

insert into tb_cliente values
(null,'503.800.118.21','Luis Gustavo Freitas De Oliveira ','08253-800','Rua', 'Cristovam de salamanca ','93','','Itaquera','São Paulo','SP','','2521-7896','Luisf.oliveira@outlook.com');


create table tb_os(
idos int auto_increment primary key,
data_os timestamp default current_timestamp,
tipo varchar (15) not null,
situacao varchar (20) not null,
equipamento varchar (200) not null,
defeito varchar (200) not null,
servico varchar (200),
tecnico varchar (200),
valor decimal (10,2)
);
alter table tb_os auto_increment = 10000;
select *from tb_os;



alter table tb_os add idcli int;
alter table tb_os drop column idcli;
alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_cliente(idcli)
on delete no action;

insert into tb_os (tipo,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('conserto','Aprovado','PC','Travando','Troca de Ram','Gustavo',400,2);

insert into tb_os (tipo,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('conserto','Aprovado','Notbook','Virus','Formatação','Luis',200,1);

insert into tb_os (tipo,situacao,equipamento,defeito,servico,tecnico,valor,idcli)
values ('conserto','Aprovado','Notbook','Tela azul','Formatação','Richard',200,3);
 
 select *from tb_os;
 
 
 select O.idos as Os,equipamento as Equipamento, defeito as Defeito, servico as Servico, tecnico as Tecnico, valor as Valor,
 C.nomecli as Nome, fone1 as Fone1, emailcli as Email, data_os as Data
 from tb_os as O 
 inner join tb_cliente as C on (O.idcli = C.idcli);


