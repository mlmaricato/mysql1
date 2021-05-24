create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
java boolean not null,
mysql boolean not null,
angular boolean not null,
primary key (id)
);

insert tb_categoria (java, mysql, angular) values (true, false, false);
insert tb_categoria (java, mysql, angular) values (false, true, false);
insert tb_categoria (java, mysql, angular) values (false, false, true);

select * from (tb_categoria);

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
conteudo varchar(255) not null,
tipo varchar(255) not null,
preco float not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id) 
);

insert tb_produto (nome, conteudo, tipo, preco, categoria_id) values ("Curso Básico", "Variáveis", "Online", 120.00, 1);
insert tb_produto (nome, conteudo, tipo, preco, categoria_id) values ("Curso Básico", "Banco de Dados", "Online", 40.00, 2);
insert tb_produto (nome, conteudo, tipo, preco, categoria_id) values ("Curso Básico", "Formulários", "Online", 70.00, 3);
insert tb_produto (nome, conteudo, tipo, preco, categoria_id) values ("Curso Avançado", "POO", "Online", 420.00, 1);
insert tb_produto (nome, conteudo, tipo, preco, categoria_id) values ("Curso Intermediário", "Join", "Online", 220.00, 2);

select * from tb_produto;

select * from tb_produto where preco >50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where conteudo like "%J%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
    where tb_categoria.java = true;
    
-- select avg(preco) from tb_produto;

