create database db_produtos;

use db_produtos;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
tipo varchar (255) not null,
tamanho varchar (10) not null,
cor varchar (10) not null,
preco float not null,
primary key (id)
);

select * from tb_produtos;

insert into tb_produtos (nome, tipo, tamanho, cor, preco) values ("Anel", "prata", "20", "prata", 1150);

alter table tb_produtos change estado tamanho varchar (255);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set cor = "azul claro" where id = 7;

