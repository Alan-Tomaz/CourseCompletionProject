create database dbinfox;

show databases;

use dbinfox;

create table  tbusuarios (

iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null

);
-- O comando abaixo descreve a tabela
describe tbusuarios;

insert into tbusuarios(iduser, usuario, fone, login, senha)
values(1, 'Alan','99999-9999','alan','123456')
;

select * from tbusuarios;

insert into tbusuarios(iduser, usuario, fone, login, senha)
values(2, 'Bill','99999-9999','bill','gates')
;

insert into tbusuarios(iduser, usuario, fone, login, senha)
values(3, 'admin','99999-9999','admin','admin')
;

update tbusuarios set fone = '88888-8888' where iduser = 2;
update tbusuarios set usuario = 'Admin' where iduser = 3;

delete from tbusuarios where iduser = 2;

update tbusuarios set iduser = 2 where iduser = 3;

select * from tbusuarios;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)

);

describe tbclientes;

insert into tbclientes(nomecli, endcli, fonecli, emailcli)
values('Linus Torvalds', 'Rua Tux, 2015', '99999-9999', 'linus@linux.com');

select * from tbclientes;


create table tbos (
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);

describe tbos;

insert into tbos(equipamento, defeito, servico, tecnico, valor, idcli)
values('Notebook','Não liga', 'Troca da fonte', 'Zé', 89.65, 1);

select * from tbos;

-- O código abaixo traz informações de duas tabelas
select 
O.os,equipamento,defeito,servico,valor, 
C.nomecli,fonecli 
from tbos as O 
inner join tbclientes as C 
on (O.idcli = C.idcli);

