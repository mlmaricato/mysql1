create database db_alune;

use db_alune;

create table tb_alunes(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
turma int not null,
nota double not null,
aprovado boolean,
primary key (id)
);

select * from tb_alunes;

insert into tb_alunes (nome, idade, turma, nota, aprovado) values ("Diana", 10, 2, 9.5, true);

select * from tb_alunes where nota > 7;
select * from tb_alunes where nota < 7;

update tb_alunes set aprovado = false where id = 1;