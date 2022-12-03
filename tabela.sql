INSERT
INTO cliente (nome, cpf) VALUES
         ('Geraldo', '11111111'),
         ('Ana', '22222222222'),
         ('Jorge', '33333333333'),
         ('João', '44444444444'),
         ('Maria', '55555555555');
 
INSERT
INTO cliente_endereco (fk_cliente, logradouro, bairro, cidade, estado, pais,
cep) 
VALUES
 (1, 'bolinhas', 'trnagulos', 'Caldas
Novas', 'Go', 'Brasil', '111111'),
         (2, 'nat', 'you', 'Brasília', 'DF', 'Brasil',
'2222222'),
         (3, 'nat', 'you', 'Brasília', 'DF', 'Brasil',
'333333'),
         (4, 'affs', 'coisinhas', 'Brasilia', , 'Alemanha',
'73900123'),
         (5, 'a', 'b', 'Goiânia', 'Go', 'Brasil',
'73900123');
 
INSERT
INTO cargo (nome, descrição) VALUES
                          ('Vendedor', 'vender
produtos'),
                          ('Secretaria',
'realizar agendamento'),
                          ('Gerente', 'mediar
relação');
 
INSERT
INTO funcionario (fk_cargo, nome, cpf) VALUES
         (1, 'Matheus', '121212121'),
         (1, 'Maria', '2332232323'),
         (1, 'Carlos', '3434434344'),
         (2, 'Alice', '454545454'),
         (2, 'Analu', '545454545'),
         (3, 'Eric', '6565656');
 
INSERT
INTO fornecedor (nome, cpf) VALUES
         ('Ej', '"111111111"'),
         ('Campus', '22222222222'),
         ('CN', '3333333333');
 
INSERT
INTO produto (nome, estoque_minimo, qtd_estoque) VALUES
         ('colgate',10,200),
         ('macarrão',10,80),
         ('pneu', 5,10),
         ('arroz',30,100),
         ('ovo',12,30);
INSERT
INTO compra (fk_fornecedor, numero) VALUES
         (1, 1),
         (3, 2),
         (2, 2);
 
INSERT
INTO compra_item (fk_compra, fk_produto, qtd, valor_unitario) VALUES
         (1, 1, 2, 2.00),
         (2, 1, 7, 10.00),
         (3, 3, 90, 30.00);
 
INSERT
INTO venda (fk_cliente, fk_vendedor, numero) VALUES
         (1, 1, 2),
         (2, 2, 2),
         (3, 3, 2),
         (4, 4, 2),
         (5, 5, 2);
 
INSERT
INTO venda_item (fk_venda, fk_produto, qtd, valor_unitario) VALUES
         (1, 1, 10, 2.00),
         (1, 2, 6, 10.00),
         (2, 2, 6, 10.00),
         (3, 2, 5, 12.00),
         (3, 1, 3, 40.00);
 
INSERT
INTO financeiro_saida(fk_compra, data_emissao, data_vencimento, data_baixa,
valor, forma_pagamento)
VALUES
         (1, '2022-07-28', '2022-08-20',
'2022-08-21', 950, 'A vista'),
         (1, '2022-08-25', '2022-09-30',
'2022-10-05', 1350, 'A vista'),
         (2, '2022-06-27', '2022-06-30',
'2022-07-04', 245000, 'A prazo'),
         (2, '2022-06-24', '2022-06-29',
'2022-06-30', 435000, 'A vista'),
         (3, '2022-06-15', '2022-06-27',
'2022-06-30', 1313900, 'A prazo'),
         (3, '2022-06-12', '2022-06-15',
'2022-06-16', 2212500, 'A prazo'),
         (1, '2022-06-10', '2022-06-20',
'2022-06-21', 70, 'Pix'),
         (2, '2022-06-18', '2022-06-24',
'2022-06-30', 48, 'A vista'),
         (2, '2022-07-15', '2022-07-30',
'2022-08-02', 1470, 'A vista'),
         (3, '2022-07-25', '2022-07-30',
'2022-08-03', 770, 'A vista'),
         (3, '2022-08-25', '2022-08-30',
'2022-09-05', 1800, 'A prazo'),
         (3, '2022-06-29', '2022-07-19',
'2022-07-21', 5250, 'A vista');
 
INSERT
INTO financeiro_entrada(fk_venda, data_emissao, data_vencimento, data_baixa,
valor, forma_recebimento)
VALUES
         (1, '2022-06-28', '2022-07-20',
'2022-07-21', 23, 'A vista'),
         (1, '2022-06-25', '2022-06-30',
'2022-07-05', 42, 'A vista'),
         (2, '2022-06-27', '2022-06-30',
'2022-07-04', 65, 'A prazo'),
         (2, '2022-06-24', '2022-06-29',
'2022-06-30', 115, 'A vista'),
         (3, '2022-06-15', '2022-06-27',
'2022-06-30', 9028, 'A prazo'),
         (3, '2022-06-12', '2022-06-15',
'2022-06-16', 42, 'Pix'),
         (4, '2022-06-10', '2022-06-20',
'2022-06-21', 94, 'Pix'),
         (4, '2022-06-18', '2022-06-24',
'2022-06-30', 660, 'A prazo'),
         (5, '2022-07-15', '2022-07-30',
'2022-08-02', 3150, 'A vista'),
         (5, '2022-07-25', '2022-07-30',
'2022-08-03', 3550, 'A vista'),
         (5, '2022-08-25', '2022-08-30',
'2022-09-05', 10975, 'A prazo'),
         (2, '2022-08-27', '2022-09-03',
'2022-09-05', 1295, 'A vista'),
         (4, '2022-08-06', '2022-08-12',
'2022-08-15', 1753, 'A prazo'),
         (4, '2022-07-22', '2022-07-29',
'2022-07-30', 1913, 'A vista'),
         (1, '2022-08-08', '2022-08-11',
'2022-08-16', 797, 'Pix'),
         (1, '2022-07-17', '2022-07-24',
'2022-07-28', 85, 'Pix'),
         (1, '2022-09-19', '2022-09-28',
'2022-09-30', 77, 'Pix'),
         (2, '2022-10-13', '2022-10-19',
'2022-10-21', 128, 'Pix'),
         (3, '2022-11-15', '2022-11-24',
'2022-11-29', 7000, 'A prazo'),
         (3, '2022-12-24', '2022-12-30',
'2023-01-02', 2750, 'A vista');
 
2-
select nome,estoque_minimo, qtd_estoque from produto
 
select
cliente.nome  as
"nomeCliente",data_vencimento,valor from financeiro_entrada
inner
join venda on pk_venda = fk_venda
inner
join cliente on pk_cliente = fk_cliente
where
data_vencimento > date(current_date)
 
select
fornecedor.nome  as
"nomeFornecedor",data_vencimento,valor from financeiro_saida
inner
join compra on pk_compra = fk_compra
inner
join fornecedor on pk_fornecedor = fk_fornecedor
where
data_vencimento > date(current_date)
 
select
fornecedor.nome ,data_baixa,valor, 'S' as "origem"  from financeiro_saida
inner
join compra on pk_compra = fk_compra
inner
join fornecedor on pk_fornecedor = fk_fornecedor
where
data_baixa < date(current_date) union
select
cliente.nome,data_baixa,valor, 'E' as "origem" from
financeiro_entrada
inner
join venda on pk_venda = fk_venda
inner
join cliente on pk_cliente = fk_cliente
where
data_baixa < date(current_date)
 
select
date_part('year', data_baixa) as "ano", date_part('month',
data_baixa) as "mês", sum(valor) as "saldo" from
(select
fornecedor.nome ,data_baixa, valor*-1 as "valor", 'S' as
"origem"  from financeiro_saida
inner
join compra on pk_compra = fk_compra
inner
join fornecedor on pk_fornecedor = fk_fornecedor
union
select
cliente.nome,data_baixa, valor, 'E' as "origem" from
financeiro_entrada
inner
join venda on pk_venda = fk_venda
inner
join cliente on pk_cliente = fk_cliente) as "gastos"
group
by date_part('month', data_baixa),date_part('year', data_baixa)
 
 
SELECT
  cliente.nome,
  sum(qtd * valor_unitario) valortotal
FROM
  venda
  join venda_item on venda.pk_venda =
venda_item.fk_venda
  join cliente on venda.fk_cliente =
cliente.pk_cliente
group
by
  cliente.nome;
 
 
SELECT
  funcionario.pk_funcionario,
  funcionario.nome,
  sum(qtd * valor_unitario) valortotal,
  sum(qtd * valor_unitario) * 0.05 comissão
FROM
  venda
  join venda_item on venda.pk_venda =
venda_item.fk_venda
  join funcionario on venda.fk_vendedor = funcionario.pk_funcionario
group
by
  funcionario.pk_funcionario,
  funcionario.nome;
 
 
SELECT
  cliente_endereco.cidade,
  sum(qtd * valor_unitario) valortotal
from
  cliente
  JOIN cliente_endereco on cliente.pk_cliente =
cliente_endereco.fk_cliente
  JOIN venda on venda.fk_cliente =
cliente.pk_cliente
  join venda_item on venda_item.fk_venda =
venda.pk_venda
group
by
  cliente_endereco.cidade;
 
SELECT
  cliente_endereco.estado,
  sum(qtd * valor_unitario) valortotal
from
  cliente
  JOIN cliente_endereco on cliente.pk_cliente =
cliente_endereco.fk_cliente
  JOIN venda on venda.fk_cliente =
cliente.pk_cliente
  join venda_item on venda_item.fk_venda =
venda.pk_venda
group
by
  cliente_endereco.estado;
 
 
SELECT
  produto.nome,
  sum(qtd * valor_unitario) valortotal
from
  produto
  join venda_item on produto.pk_produto =
venda_item.fk_produto
group
by
  produto.nome;
 
SELECT
  funcionario.nome,
  produto.nome,
  date_part('year', data) ano,
  sum(venda_item.qtd)
FROM
  venda
  JOIN venda_item on venda.pk_venda =
venda_item.fk_venda
  JOIN funcionario on
funcionario.pk_funcionario = venda.fk_vendedor
  join produto on produto.pk_produto =
venda_item.fk_produto
group
by
  funcionario.nome,
  produto.nome,
  ano;
 
 
 
 
3-select
  cliente.nome,
  fornecedor.nome,
  cr.data
from
  (
    SELECT * from venda
    EXCEPT
    select
      venda.pk_venda,venda.fk_cliente,
      venda.fk_vendedor,venda.numero,venda.data
    from
      venda
      join financeiro_entrada on
financeiro_entrada.fk_venda = venda.pk_venda
  ) cr
  join cliente on cr.fk_cliente =
cliente.pk_cliente
  join fornecedor on cr.fk_vendedor =
fornecedor.pk_fornecedor;
 
 
select
  cliente.nome, fornecedor.nome, valortotalreal.data
from
  (
    SELECT * from
      (
        SELECT
          venda.pk_venda, venda.fk_cliente,
          venda.fk_vendedor, venda.data,
          sum(qtd * valor_unitario) valorTotal
        from venda
          join venda_item on venda_item.fk_venda
= venda.pk_venda
        group by
          venda.pk_venda, venda.fk_cliente,
          venda.fk_vendedor, venda.data
      ) valortotalvenda
      join financeiro_entrada on
financeiro_entrada.fk_venda = valortotalvenda.pk_venda
    WHERE
      valortotalvenda.valorTotal >
financeiro_entrada.valor
  ) valortotalreal
  join cliente on cliente.pk_cliente =
valortotalreal.fk_cliente
  join fornecedor on fornecedor.pk_fornecedor =
valortotalreal.fk_vendedor;
 
 
SELECT
* from
  (SELECT * from
      (
        SELECT
          comprar.pk_compra,
comprar.fk_fornecedor, comprar.data,
          sum(qtd * valor_unitario) valorTotal
        from comprar
          join comprar_item on
comprar.pk_compra = comprar_item.fk_compra
        group by
          comprar.pk_compra,
comprar.fk_fornecedor, comprar.data
      ) comparVentaTotalSoma
      join financeiro_saida on
financeiro_saida.fk_comprar = comparVentaTotalSoma.pk_compra
    WHERE
      comparVentaTotalSoma.valorTotal >
financeiro_saida.valor
  ) cmt
  join fornecedor on fornecedor.pk_fornecedor =
cmt.fk_fornecedor;
 
 
SELECT
  pk_financeiro, fk_comprar,
  data_vencimento, data_emissao,
  data_baixa, valor, forma_pagamento
FROM
  financeiro_saida
EXCEPT
SELECT
  pk_financeiro,
  fk_comprar,
  data_vencimento,
  data_emissao,
  data_baixa,
  valor,
  forma_pagamento
FROM
  comprar
  JOIN financeiro_saida on
financeiro_saida.fk_comprar = comprar.pk_compra;
 
 
SELECT
  nome,
  qtd_estoque
from
  produto
WHERE
  produto.qtd_estoque < 0;
 
 
SELECT
*  from
  cliente
  join funcionario on cliente.cpf =
funcionario.cpf
 
 
select
* from
  (
    SELECT
      pk_endereco, fk_cliente as fk,
logradouro, bairro,
      cidade, estado, pais, cep
    from cliente
      join cliente_endereco on
cliente.pk_cliente = cliente_endereco.fk_cliente
    INTERSECT
    SELECT
      pk_endereco, fk_funcionario as fk,
logradouro, bairro,
      cidade, estado, pais, cep
    from funcionario
      join "funcionário_endereco" as
fe on funcionario.pk_funcionario = fe.fk_funcionario
  ) 
  JOIN cliente on ce.fk = cliente.pk_cliente;
 
 
SELECT
* FROM
  cliente
  JOIN cliente_endereco ON cliente.pk_cliente =
cliente_endereco.fk_cliente;
 
4-
create or replce view peoduto_vendido_abaixo_preço_medio_compra as
Select
nome, avg as valor_medio_compra,valor_unitario as valor_venda from produto pr
join
(select
vi.fk_produto,avg, valor_unitario from venda_item vi join
(select
fk_produto, avg(qtd*valor_unitario from compra_item
Group
by fk_produto)as s1
On
vi.fk_produto=s1.fk_produto
Where
valor_unitario < avg) as s2
On
pk_produto = s2.fk_produto; 
Cretae
or replace view recebimento_atraso as
Select
nome, data_emissao, data_vencimento, valor from cliente cl join
(select
* from venda v join
(select
* from (select* from financeiro_entrada
Where
data_baixa is null) as s1
Where
date_part(‘year’, current_date) >= date_parte (‘year’, data_vencimento) anda
date_part (‘month’, current_date) >= date_part (‘month’, data_vencimento)
anda date_part (‘day’, current_date) >= date_part (‘day’,
data_vencimento))as s2
On
pk_venda = fk_venda) as s3
On
pk_cliente = fk_cliente;
 
Create
or replace view pagamento_adiantado as
Select
nome, data_emissao, data_vencimento, data_baixa from fornecedor f join
(select
* form compra co join
(select
* from (select * from financeiro_saida
Where
data_baixa is not null) as s1
Where
date_part (‘year’, current_date) >= date_part (‘year’,data_vencimento) anda
date_part (‘month’, current_date) >= date_part (‘month’, data_vencimento)
and date_part (‘day’, current_date) >= date_part (‘day’, data_vencimento))
as s2
On
pk_compra = fk_compra) as s3
On
pk_fornecedor = fk_fornecedor;
 
5-
select * from produto_vendido_abaixo_preco_medio_compra
Where
(valor_venda – valor_media_compra) > (valor_medio_compra * 0.7
);
 
Select
* from recebimento_atraso
Where
current_date – data_vencimento > 60;
 
Select
* from pagamento_adiantado
Where
data_baixa – data_emissao >15
6-
create or replace view rel_venda as
Select
cl.nome as cliente, s3.nome as vendedor, pk_venda, valor_a_ser_recebido from
cliente cl join
(select
* from funcionário f join
(select
* from venda v join
(select
fk_venda, sum(valor) as valor_a_ser_recebido from financeiro_entrada
Where
data_baixa is null
Group
by fk_venda) as s1
On
pk_venda = fk_venda) as s2
On
pk_funcionario = fk_vendedor) as s3
On
pk_cliente = fk_cliente
Union
Select
cl.nome as cliente, s3.nome as vendedor, pk_venda, valor_recebido from cliente
cl join
(select
* from funcionário f join
(select
* from venda v join
(select
fk_venda, sum(valor) as valor_recebido from financeiro_entrada
Where
data_baixa is not null
Group
by fk_venda) as s1
On
pk_venda = fk_venda) as s2
On
pk_funcionario = fk_vendedor) as s3
On
pk_cliente = fk_cliente;
 
7-
alter table funcionaro add column salario decimal(10,2) default 1100;
 
Alter
table funcionário add check (salario >= 0);
 
Alter
table cargo drop column descrição;
 
Alter
table cargo drop constraint cargo_nome_key;
 
Alter
table funcionário alter column nome type carchar(130);
Alter
table fornecedor_endereco drop constraint fornecedor_endereço_fk_fornecedor_fkey.
 
Alter
table fornecedor_endereco add foreing key(fk_fornecedor) references fornecedor(pk_fornecedor)
on update cascade on delete cascade;
 
Create
table log_alteracoes(pk_log serial primary key,
Data_hora
date, usuário varchar(100),
Tabela
varchar(100), tipo_acao varchar(100));
 
Alter
table log_alteracoes alter column data_hora set default current_date;
Alter
table log_alteracoes add check (data_hora >= current_date);
Alter
table log_alteracoes alter column data_hora set not null, alter column usuário set
not null;
Alter
table log_alteracoes add column acao varchar(100) not null;
Alter
table log_alteracoes rename to log;
Alter
table log alter column acao type varchar(200);
Alter
table log alter column acao drop not null;
 
8-
update funcionário set salario = salario + (salario * 0.05) from funcionario_endereco
Where
funcionário_endereco.estado = ‘GO’
And
funcionário.pk_funcionario = funcionaro_endereco.fk_funcionario
And
funcionário.fk_cargo = 3;
