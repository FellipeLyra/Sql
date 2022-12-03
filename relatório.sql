CREATE
TABLE cliente (pk_cliente serial primary key, nome varchar(90), cpf char (11)
UNIQUE);
 

create
table cliente_endereco(
                 pk_endereco serial primary key
,
                 fk_cliente serial not null,
                 logradouro varchar (80) not
null,
                 bairro varchar(30)not null,
                 cidade varchar(58) not null,
                 estado varchar(20) default
'GO',
                 pais varchar(30) default
'Brasil',
                 cep varchar(8) not null,
                 unique (fk_cliente,
logradouro,bairro, cidade)
                 foreign key (fk_cliente)
references cliente (pk_cliente)
                 on delete cascade on update
cascade
         );

 
CREATE
TABLE cargo (pk_cargo serial primary key, nome varchar (80) unique not 
null,
descricao varchar (100));
 
CREATE
TABLE funcionario (
pk_funcionario
serial primary key,
fk_cargo
int not null,
nome
varchar(80) not null,
cpf
char(11) not null unique,
CONSTRAINT
fk_cargo_key FOREIGN KEY (fk_cargo) REFERENCES cargo(pk_ca
rgo)
ON UPDATE CASCADE
);

 
CREATE
TABLE funcionario_endereco (
pk_endereco
serial primary key,
fk_funcionario
int not null,
logradouro
varchar(60) not null,
bairro
varchar(60) not null,
cidade
varchar (60) not null,
estado
char(2) default 'GO',
pais
varchar (40) default 'Brasil',
cep
char(9),
UNIQUE
(fk_funcionario, logradouro, bairro, cidade, estado),
FOREIGN
KEY (fk_funcionario) REFERENCES funcionario(pk_funcionario) O
N
UPDATE CASCADE
); 
create
table produto(
                 pk_produto serial primary key,
                 nome varchar(30) not null,
                 estoque_minimo int default
'100',
                 qtd_estoque  int default '0',
         );
 
create
table venda(
                 pk_venda serial primary key,
                 fk_cliente serial,
                 fk_vendedor serial,
                 numero int,
                 data date default current_date,
                 check(numero>=0),
                 check(data>=current_date),
                 foreign key (fk_cliente)
references cliente (pk_cliente)
                 on delete restrict on update
cascade
                 foreign key (fk_vendedor)
references funcionario (pk_funcionario)
                 on delete restrict on update
cascade
         );
create
table venda_item(
                 pk_item serial primary key,
                 fk_venda serial,
                 fk_produto serial,
                 qtd int,
                 valor_unitario decimal(10,2),
                 check (valor_unitario>0 and
qdt >0 ),
                 unique (fk_produto, fk_venda),
                 foreign key (fk_venda)
references venda(pk_venda)
                 on delete restrict on update
cascade,
                 foreign key (fk_produto)
references produto (pk_produto)
                 on delete  restrict on update cascade
         );
CREATE
TABLE fornecedor(
pk_fornecedor
serial primary key,
nome
varchar(90),
cpf
char(11) unique
);
 
create
table fornecedor_endereco(
                 pk_endereco serial primary key,
                 fk_fornecedor serial,
                 logradouro varchar (80) not
null,
                 cidade varchar(58) not null,
                 bairro varchar(20) not null,
                 estado varchar(20) default
'GO',
                 pais varchar (30) default
'Brasil',
                 cep varchar(9),
                 unique (fk_fornecerdor, logradouro,
bairro, cidade, estado ,pais, cep),
                 foreign key (fk_fornecedor)
references fornecedor(pk_fornecedor)
                 on delete cascade on update
cascade
         );
CREATE
TABLE compra(
pk_compra
bigSerial primary key,
fk_fornecedor
int not null,
numero
int check (numero > 0),
data
date default current_date,
check
(data >= current_date),
FOREIGN
KEY (fk_fornecedor) REFERENCES fornecedor(pk_fornecedor) ON U
PDATE
CASCADE
);
CREATE
TABLE compra_item(
pk_item
serial primary key,
fk_compra
bigserial,
fk_produto
serial,
qtd
int,
valor_unitario
decimal,
check
(qtd > 0 and valor_unitario > 0),
unique
(fk_compra, fk_produto),
FOREIGN
KEY (fk_compra) REFERENCES compra(pk_compra) ON DELETE RESTRI
CT
ON 
 UPDATE CASCADE,
FOREIGN
KEY (fk_produto) REFERENCES produto(pk_produto) ON DELETE RES
TRICT
ON
UPDATE CASCADE
);
CREATE
TABLE financeiro_entrada(
pk_financeiro
serial primary key,
fk_vendas
biGserial not null,
data_emissao
date default current_date,
check
(data_emissao >= current_date),
data_vencimento
date,
check
(data_vencimento > data_emissao),
data_baixa
date,
check
(data_baixa > data_vencimento),
valor
decimal check (valor > 0),
forma_recebimento
varchar(60),
FOREIGN
KEY (fk_vendas) REFERENCES vendas(pk_venda) ON UPDATE CASCADE
);
create
table financeiro_saida(
                 pk_financeiro serial primary
key,
                 fk_compra serial,
                 data_emissão date default
current_date,
                 data_vencimento date,
                 data_baixa date,
                 valor decimal (10,2),
                 forma_pagamento varchar (30),
                 check
(data_emissao>=current_date and data_vencimento>data_emissao and
data_baixa>data_vencimento and valor>0),
                 foreign key (fk_compra)
references compra(pk_compra)
on delete restrict on update cascade
