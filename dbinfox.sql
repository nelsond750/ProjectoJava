-- comentários
-- A linha abaixo cria um banco de dados
create database dbinfox;
-- A linha abaixo escolhe a bd
use dbinfox;

create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
telefone varchar(15),
login varchar(15) not null unique,
senha varchar (15) not null
);

describe tbusuarios;
-- A linha abaixo inser dados na tablea (CRUD)
-- create -> insert 
insert into tbusuarios(iduser, usuario, telefone, login,senha)
values(1, 'Nelson Salvador', '942652083','nelsonsalvador','123456');

-- A linha abaixo exibe os dados da tabelas (CRUD)
-- read-> select
select * from tbusuarios; 

insert into tbusuarios(iduser, usuario, telefone, login, senha)
values(2, 'ilido jairo', '9999999','ilidiojairo','1234456'); 
select * from tbusuarios;

insert into tbusuarios(iduser, usuario, telefone, login, senha)
values(3,'Patricio Muzibi', '997363636', 'patriciomuzbi', '123456');

insert into tbusuarios(iduser, usuario, telefone, login, senha)
values(4, 'Adriano Ernesto', '989474767347', 'adrianoernesto', '123456');

select * from tbusuarios;

-- A linha abaixo modifica os dados da tabelas (CRUD)
-- Update-> update

update tbusuarios set usuario='Administrador' where iduser=1;

-- Apagar registo da tabela 
-- delete-> delete

delete from tbusuarios where iduser=2;
update tbusuarios set login='admin' where iduser=1;

insert into tbusuarios (iduser, usuario,telefone, login, senha) 
values (6, 'Ilidio Jairo', '93844774', 'ilidiojairo', '123456');

-- Criar a tabela  para clientes
create table tbclientes(idcliente int primary key auto_increment, 
nomecliente varchar (50) not null,
enderecocliente varchar(100), 
telefone varchar(50) not null,
emailcliente varchar(50)
);  

describe tbclientes;
insert into tbclientes(nomecliente, enderecocliente, telefone, emailcliente)
values('Nelson Salvador', 'Avenida 21 de Janeiro', '9999888','nelson@gmail.com'); 

select * from tbclientes;
-- Creação da tabela os com relacionamento da tabela clientes

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcliente int not null,
foreign key(idcliente) references tbclientes(idcliente)
);

select * from tbos;
describe tbos;

insert into tbos (equipamento, defeito, servico, tecnico, valor, idcliente)
values('notebook', 'problema na placa mãe', 'limpeza', 'Ilidio', 10000, 1);
select * from tbos;

-- O coódigo abaixo traz informações de duas tabelas, inner join
select 
o.os,equipamento,defeito,servico,valor,
c.nomecliente, telefone
from tbos as  o
inner join tbclientes as c
 on (o.idcliente = c.idcliente);


