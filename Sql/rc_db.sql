-- create database
create database rc_db;

-- use database
use rc_db;

-- create table tb_users
create table tb_users(
iduser int primary key auto_increment,
usuario  varchar(50) not null,
login varchar(15) not null unique,
senha varchar(15) not null
);

-- describe tb_users table
describe tb_users;

-- insert data on tb_users table
insert into tb_users(usuario, login, senha)
values('Administrador', 'admin','12345678');

insert into tb_users(usuario, login, senha)
values('Alan', 'alan','tomaz');

insert into tb_users(usuario, login, senha)
values('Renata', 'renata','renata');

insert into tb_users(usuario, login, senha)
values('Camila', 'camila','camila');

insert into tb_users(usuario, login, senha)
values('Nicanor', 'nica','alvez');

insert into tb_users(usuario, login, senha)
values('Ronaldo','ronaldo','ronaldinho');

-- show content of tb_users
select * from tb_users;

-- updating data on the table
update tb_users set senha = 'ronaldão' where iduser = 6;

-- shot content of tb_users
select * from tb_users;

-- deleting tb_users table
delete from tb_users where iduser = 6;

-- show content of tb_users
select * from tb_users;

-- create table tb_clients
create table tb_clients (
id_cli int primary key auto_increment,
name_cli varchar(50) not null,
cpf_cli varchar(50) not null unique,
birth_cli varchar(50) not null,
sex_cli varchar(10) not null,
email_cli varchar(50),
phone_cli varchar(50) not null,
adres_cli varchar(100) not null
);

-- describe tb_clients
describe tb_clients;

-- insert data on tb_clients
insert into tb_clients(name_cli, cpf_cli, birth_cli, sex_cli, email_cli, phone_cli, adres_cli)
values('Alan', '160.847.876-90','19/09/2004', 'Masculino', 'alan4tomaz8@gmail.com', '(31)98870-9707', 'Montreal, Rua das Petúnias, 207');

-- show data on tb_clients
select * from tb_clients;

-- create table tb_workers
create table tb_workers(
id_wor int primary key auto_increment,
name_wor varchar(50) not null,
cpf_wor varchar(50) not null unique,
birth_wor varchar(50) not null,
sex_wor varchar(10), 
post_wor varchar(50) not null,
email_wor varchar(50),
phone_wor varchar(50) not null,
adres_wor varchar(100) not null
);

-- describe tb_workers table
describe tb_workers;

-- insert data on tb_workers
insert into tb_workers(name_wor, cpf_wor, birth_wor, sex_wor, post_wor,email_wor, phone_wor, adres_wor)
values('Renata', '000.000.000-00','24/03/1985', 'Feminino', 'Atendente', 'borges@gmail.com', '(00)00000-0000', 'Canadá, Rua dos Bobos, 21');

-- show data on tb_workers
select * from tb_workers;

-- create tb_products table
create table tb_products(
id_pro int primary key auto_increment,
name_pro varchar(50) not null,
descr_pro text,
model_pro varchar(50) not null,
mark_pro varchar(50) not null,
price_pro decimal(10,2) not null
);

-- describe tb_produtcs table
describe tb_products;

-- insert data on tb_products
insert into tb_products(name_pro, descr_pro, model_pro, mark_pro, price_pro)
values('Creme de Pele Deluxe Altus', 'Produto de alta qualidade para tornar sua pele macia e brilhosa','Creme', 'oBoticário', 112.76);

-- show tb_products data
select * from tb_products;

-- create tb_os table
create table tb_os (
os int primary key auto_increment,
data_os timestamp default current_timestamp,
name_os varchar(50) not null,
descr_os text not null,
id_wor int not null,
foreign key(id_wor) references tb_workers(id_wor),
id_cli int not null,
foreign key(id_cli) references tb_clients(id_cli),
id_pro int not null,
foreign key(id_pro) references tb_products(id_pro)
);

-- describe tb_os table
describe tb_os;

-- insert data on the tb_os table
insert into tb_os(name_os, descr_os, id_wor, id_cli, id_pro)
values('Venda de Loção', 'O cliente Lucas solicitou uma loção Deluxe Lotion da empresa oBoticário', 1, 1, 1);

-- show content of tb_os;
select * from tb_os;


alter table tb_users add column perfil varchar(20) not null;
-- A linha abaixo remove um campo de uma tabela;
-- alter table tb_users drop column perfil;
update tb_users set perfil='admin' where iduser=1;
update tb_users set perfil='admin' where iduser=2;
update tb_users set perfil='user' where iduser=3;
update tb_users set perfil='user' where iduser=4;
update tb_users set perfil='user' where iduser=5;

describe tb_users;
select * from tb_users; 
-- A linha abaixo adiciona um campo a tabela;