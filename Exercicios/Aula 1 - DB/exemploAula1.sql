-- criar um banco de dados
create database db_quitanda;

-- acessar banco de dados
use db_quitanda;

-- criar tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco float not null,
primary key (id)
);

-- busca de dados
select * from tb_produtos;

-- insert
insert into tb_produtos (nome, preco) values ("uva",6);

-- atualizar dados
 update tb_produtos set nome = "banana" where id = 2;

delete from tb_produtos where id = 5;

 alter table tb_produtos
 add descricao varchar(255);

alter table tb_produtos change descricao descricao_produtos varchar (255);

-- alter table tb_produtos
-- drop column descricao_produtos






