create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
construcao boolean not null,
hidraulica boolean not null, 
decoracao boolean not null,
primary key (id)
);

insert tb_categoria (construcao, hidraulica, decoracao) values (true, false, false);
insert tb_categoria (construcao, hidraulica, decoracao) values (false, true, false);
insert tb_categoria (construcao, hidraulica, decoracao) values (false, false, true);
insert tb_categoria (construcao, hidraulica, decoracao) values (true, false, false);
insert tb_categoria (construcao, hidraulica, decoracao) values (false, false, true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
tipo varchar (255) not null,
preco float not null,
disponivel boolean not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produto (nome, tipo, preco, disponivel, categoria_id) values ("Azuleijo pequena", "Banheiro", 100.00, true, 1);
insert tb_produto (nome, tipo, preco, disponivel, categoria_id) values ("Caixa D'água", "Plástico", 500.00, true, 2);
insert tb_produto (nome, tipo, preco, disponivel, categoria_id) values ("Abajur", "Delicado", 25.00, false, 3);
insert tb_produto (nome, tipo, preco, disponivel, categoria_id) values ("Piso Madeira", "Avernizado", 75.00, false, 1);
insert tb_produto (nome, tipo, preco, disponivel, categoria_id) values ("Cano", "PVC", 45.00, true, 2);
insert tb_produto (nome, tipo, preco, disponivel, categoria_id) values ("Lustre", "Cristal", 1000, true, 3);
insert tb_produto (nome, tipo, preco, disponivel, categoria_id) values ("Torneira", "Metal", 13.00, true, 1);
insert tb_produto (nome, tipo, preco, disponivel, categoria_id) values ("Lâmpada", "220V", 5.00, true, 1);

select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%c%";

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.decoracao = true;

-- select sum(preco) from tb_produto;




