create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
nome varchar (255) not null,
tamanho varchar (255) not null,
disponivel boolean,
primary key (id)
);

insert tb_categoria (nome, tamanho, disponivel) values ("Delicia Italiana", "Família", true);
insert tb_categoria (nome, tamanho, disponivel) values ("Cocorico", "Broto", false);
insert tb_categoria (nome, tamanho, disponivel) values ("Maravilha", "Grande", true);
insert tb_categoria (nome, tamanho, disponivel) values ("Pipoquinha", "Família", false);
insert tb_categoria (nome, tamanho, disponivel) values ("Porquinho", "Broto", true);

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
sabor varchar (255) not null,
borda_recheada boolean not null,
bebida boolean not null,
preco float not null,
delivery boolean not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_pizza (sabor, borda_recheada, bebida, preco, delivery, categoria_id) values ("Marguerita", true, true, 55.50, false, 1);
insert tb_pizza (sabor, borda_recheada, bebida, preco, delivery, categoria_id) values ("Frango com catupiry", false, true, 28.50, true, 2);
insert tb_pizza (sabor, borda_recheada, bebida, preco, delivery, categoria_id) values ("Alho", true, true, 46.00, true, 3);
insert tb_pizza (sabor, borda_recheada, bebida, preco, delivery, categoria_id) values ("Milho", false, false, 51.75, false, 4);
insert tb_pizza (sabor, borda_recheada, bebida, preco, delivery, categoria_id) values ("Calabresa", false, true, 22.50, true, 5);
insert tb_pizza (sabor, borda_recheada, bebida, preco, delivery, categoria_id) values ("Milho com frango", true, false, 43.50, false, 4);

select*from tb_pizza;

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where sabor like "C%";

select * from tb_pizza
	inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
    where tb_categoria.tamanho = "Família";
    
select sum(preco) from tb_pizza;
select avg (preco) as media_preco from tb_pizza;





    

    







