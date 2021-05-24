create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
descricao varchar (255) not null,
departamento varchar (255) not null,
disponivel boolean,
primary key (id)
);

insert tb_categoria (descricao, departamento, disponivel) values ("Fruta", "Frutas", true);
insert tb_categoria (descricao, departamento, disponivel) values ("Legume", "Hortaliças", true);
insert tb_categoria (descricao, departamento, disponivel) values ("Verdura", "Hortaliças", true);
insert tb_categoria (descricao, departamento, disponivel) values ("Erva", "Hortaliças", true);
insert tb_categoria (descricao, departamento, disponivel) values ("Queijo", "Laticíneos", true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
quantidade varchar (255) not null,
preco float not null,
conservado boolean not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produto (nome, quantidade, preco, conservado, categoria_id) values ("Pêra", "2kg", 15.00, true, 1);
insert tb_produto (nome, quantidade, preco, conservado, categoria_id) values ("Batata", "3kg", 22.00, true, 2);
insert tb_produto (nome, quantidade, preco, conservado, categoria_id) values ("Rúcula", "5 unidades", 18.00, true, 3);
insert tb_produto (nome, quantidade, preco, conservado, categoria_id) values ("Tomilho", "1 ramo", 2.00, true, 4);
insert tb_produto (nome, quantidade, preco, conservado, categoria_id) values ("Mussarela", "0.5kg", 30.00, true, 5);
insert tb_produto (nome, quantidade, preco, conservado, categoria_id) values ("Gorgonzola", "5kg", 150.00, true, 5);
insert tb_produto (nome, quantidade, preco, conservado, categoria_id) values ("Morango", "10 caixas", 55.00, true, 1);
insert tb_produto (nome, quantidade, preco, conservado, categoria_id) values ("Orégano", "2 ramos", 8.00, true, 4);

select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select *from tb_produto where nome like "%C%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.departamento = "Hortaliças";

select sum(preco) from tb_produto;
