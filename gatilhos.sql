Create or replace function vi_diminui_estoque() returns trigger as $body$
Begin
Update produto set qtd_estoque = qtd_estoque – new.qtd
Where pk_produto = new.fk_produto.
Return new;
End
$body$
Language plpgsql;

Create trigger aumentar_estoque beforte delete on venda_item for each row execute procedure vi_aumenta_estoque();

Create or replace function ci_diminui_estoque() returns trigger as 
$body$
Begin
Update produto set qtd_estoque = qtd_estoque – old.qtd
Wherepk_produto = new.fk_produto;
Return new;
End
$body$
Language plpgsql;

Create trogger diminuir_estoque before delete on compra_item for each row execute procedure ci_diminui_estoque();

Create or replace function ci_atualiza_estoque () returns trigger as
$body$
Begin update produto set qtd_estoque = qtd_estoque – old.qtd + new.qtd
Return new;
$body$

Language plpgsql;

Create trigger atualizar_estoque before update on compra_item for each row execute procedure ci_atualiza_estoque();
Create or replace funciton ci_aumenta_estoque() returns trigger as
$body$
Begin
Update produto set qtd_estoque = qtd_estoque + new.qtd
Where pk_produto = new.fk_produto;
Return new;
End
$body$
Language plpgsql;

Create trigger aumentar_estoque before inserto on compra_item fo each row exeexecute procedure ci_aumenta_estoque();
