create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (255) not null,
departamento varchar(255) not null,
disponivel boolean,
primary key (id)
);

insert tb_categoria (tipo, departamento, disponivel) values ("Analgésico", "Farmácia", true);
insert tb_categoria (tipo, departamento, disponivel) values ("Absorvente", "Higiene", true);
insert tb_categoria (tipo, departamento, disponivel) values ("Antibiótico", "Farmácia", false);
insert tb_categoria (tipo, departamento, disponivel) values ("Shampoo", "Cosméticos", true);
insert tb_categoria (tipo, departamento, disponivel) values ("Tinta", "Cosméticos", false);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
quantidade varchar (255) not null,
marca varchar (255) not null,
preco float not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produto (nome, quantidade, marca, preco, categoria_id) values ("Dipirona", "2 caixas", "Bayer", 12.50, 1);
insert tb_produto (nome, quantidade, marca, preco, categoria_id) values ("Absorvente fluxo suave", "1 unidade", "Always", 2.50, 2);
insert tb_produto (nome, quantidade, marca, preco, categoria_id) values ("Bactrin", "5 caixas", "Bayer", 60.50, 3);
insert tb_produto (nome, quantidade, marca, preco, categoria_id) values ("Cabelos Secos", "1 unidade", "Dove", 13.50, 4);
insert tb_produto (nome, quantidade, marca, preco, categoria_id) values ("Tinta Vermelha", "2 caixas", "Koleston", 26.50, 5);
insert tb_produto (nome, quantidade, marca, preco, categoria_id) values ("Advil", "6 caixas", "Bayer", 18.00, 1);
insert tb_produto (nome, quantidade, marca, preco, categoria_id) values ("OB", "10 caixas", "Sempre Livre", 72.50, 2);
insert tb_produto (nome, quantidade, marca, preco, categoria_id) values ("Cabelos Oleosos", "5 unidades", "Seda", 56.50, 4);

select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "B%";

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.departamento = "Cosméticos"
and
tb_categoria.disponivel = true;

select sum(preco) from tb_produto;
select avg(preco) as media_preco from tb_produto;


