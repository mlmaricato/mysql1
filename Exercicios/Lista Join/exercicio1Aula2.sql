create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
nome varchar (255) not null,
tipo varchar (255) not null,
publico varchar (255) not null,
primary key (id)
); 

insert into tb_classe (nome, tipo, publico) values ("Reino Encantado", "Fantasia", "Todas as idades");
insert into tb_classe (nome, tipo, publico) values ("Ataque ao Presidente", "Ação", "+16 anos");
insert into tb_classe (nome, tipo, publico) values ("Apocalipse Químico", "Terror", "+18 anos");
insert into tb_classe (nome, tipo, publico) values ("Revolução Comunista", "Ação", "+16 anos");
insert into tb_classe (nome, tipo, publico) values ("Revolta das Princesas", "Fantasia", "Todas as idades");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome_personagem varchar(255) not null,
tipo_personagem varchar(255) not null,
poder_ataque int not null,
poder_defesa int not null,
vilao boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_classe (id)
);

insert tb_personagem (nome_personagem, tipo_personagem, poder_ataque, poder_defesa, vilao, categoria_id) values ("Lolly Sparks", "Feiticeira", 3500, 2000, false, 1);
insert tb_personagem (nome_personagem, tipo_personagem, poder_ataque, poder_defesa, vilao, categoria_id) values ("Bolsoquina", "Monstro", 2300, 1700, true, 2);
insert tb_personagem (nome_personagem, tipo_personagem, poder_ataque, poder_defesa, vilao, categoria_id) values ("Virusion", "Monstro", 1800, 3400, true, 3);
insert tb_personagem (nome_personagem, tipo_personagem, poder_ataque, poder_defesa, vilao, categoria_id) values ("Carla Vermelha", "Heroína", 5000, 1300, false, 4);
insert tb_personagem (nome_personagem, tipo_personagem, poder_ataque, poder_defesa, vilao, categoria_id) values ("El Príncipe", "Monstro", 1500, 600, true, 5);
insert tb_personagem (nome_personagem, tipo_personagem, poder_ataque, poder_defesa, vilao, categoria_id) values ("LulaPai", "Herói", 13000, 13000, false, 2);
insert tb_personagem (nome_personagem, tipo_personagem, poder_ataque, poder_defesa, vilao, categoria_id) values ("La Vacinex", "Heroína", 2600, 5200, false, 3);
insert tb_personagem (nome_personagem, tipo_personagem, poder_ataque, poder_defesa, vilao, categoria_id) values ("El Gado", "Monstro", 1700, 1700, true, 4);

select * from tb_personagem;

select * from tb_personagem where poder_ataque > 2000;
select * from tb_personagem where poder_defesa between 1000 and 2000;
select * from tb_personagem where nome_personagem like "C%";

-- select count(*) from tb_personagem;

select tb_personagem.nome_personagem, tb_personagem.tipo_personagem, tb_personagem.poder_ataque, tb_personagem.poder_defesa, tb_classe.nome, tb_classe.tipo
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;

select tb_personagem.nome_personagem, tb_personagem.tipo_personagem, tb_personagem.poder_ataque, tb_personagem.poder_defesa, tb_classe.nome, tb_classe.tipo
from tb_personagem left join tb_classe on tb_classe.id = tb_personagem.categoria_id;

select tb_personagem.nome_personagem, tb_personagem.tipo_personagem, tb_personagem.poder_ataque, tb_personagem.poder_defesa, tb_classe.nome, tb_classe.tipo
from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.categoria_id
where tb_personagem.tipo_personagem like "%H%"









