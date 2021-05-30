create table estoque (codigo_filial int not null, codigo_produto int not null, quantidade int, primary key (codigo_filial, codigo_produto))
create table lojas (codigo int not null, ind_inativo bit, nome varchar(255), primary key (codigo))
create table preco (codigo_filial int not null, codigo int, data_fim datetime2, data_inicio datetime2, ind_inativo bit, valor bigint, primary key (codigo_filial))
create table produtos (codigo int not null, data_validade date, descricao varchar(255), ean varchar(255), ind_inativo bit, primary key (codigo))
alter table estoque add constraint FKp1ge2vlhcs2ub74aad31xfp06 foreign key (codigo_filial) references lojas
alter table estoque add constraint FK3yj605vax79qe1gnw4l059v21 foreign key (codigo_produto) references produtos
alter table preco add constraint FK5tii4oegcfiwveybi9h7ush6w foreign key (codigo_filial) references produtos
