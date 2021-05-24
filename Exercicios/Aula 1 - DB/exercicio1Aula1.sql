create database db_funcionaries;

use db_funcionaries;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255) not null,
cpf varchar(20) not null,
idade int not null,
salario double not null,
primary key(id)
);

select*from tb_funcionaries;

insert into tb_funcionaries (nome, cpf, idade, salario) values ("Victoria", "42678543234", 43, 5700.00);

select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set salario = 2300 where id = 1;


