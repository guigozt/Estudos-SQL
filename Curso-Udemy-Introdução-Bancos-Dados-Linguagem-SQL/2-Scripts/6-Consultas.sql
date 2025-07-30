-- Seleciona todas as colunas da tabela clientes
select * from clientes
-- Selecionar colunas da tabela
select cliente, sexo, status from clientes
-- Selecionar colunas que tenham status Silver ou Platinum
select cliente, sexo, status 
from clientes 
where status = 'Silver' or status = 'Platinum'
-- Usando o in (percorre dentro de alguma coisa)
select cliente, status
from clientes
where status in ('Silver','Platinum')
-- Selecionar os clientes que tenham o texto 'Alb' em qualquer parte
select cliente, estado
from clientes
where cliente like '%Alb%'
-- Ordenar cliente em ordem crescente (padrão)
select cliente
from clientes
order by cliente
-- Ordernar em ordem decrescente
select cliente
from clientes
order by clientes DESC
-- Ordenar por cliente, caso tenha repetição de nome, ordena pelo status
select cliente, status
from clientes
order by cliente DESC, status
-- Seleciona apenas valores unicos de uma coluna
select distinct status
from clientes

-- VENDAS -----------------------------------------------------------
-- Selecionar vendas com total maior que 10.000
select * from vendas
where total > 10000
-- Procura um valor entre um intervalo (between)
select * from vendas
where total between 6000 and 8000
-- Limita a seleção a apenas 10 registros
select * from vendas
limit 10
-- Conta o total de registros da tabela
select count(*) 
from vendas
-- Contagem com where
select count(*)
from vendas
where total > 15000
-- Contando os registros de venda de cada vendedor
select idvendedor, count(idvendedor)
from vendas
group by idvendedor
-- Contando os registros de venda de cada vendedor, que tenham mais de 40 vendas
select idvendedor, count(idvendedor)
from vendas
group by idvendedor
having count(idvendedor) > 40

-- JOIN -------------------------------------------------------------------------
-- Selecionar o nome e total das tabelas (vendas e vendedores) onde tenham colunas relacionadas
select nome, total
from vendas, vendedores
where vendas.idvendedor = vendedores.idvendedor
-- Contagem de vendas com a junção da tabela vendedores (INNER JOIN)
select count(*) 
from vendas
inner join vendedores
on vendas.idvendedor = vendedores.idvendedor
-- Usando Left join, mesmo resultado pois toda venda tem um vendedor -> Diferente se alguma venda não tivesse vendedor
-- Left join (tabela vendas)
select count(*)
from vendas
left join vendedores
on vendas.idvendedor = vendedores.idvendedor
--
INSERT INTO vendedores(nome) values ('Guilherme Gomes')
-- Contagem de vendas, mas apos inserir um vendedor, ele não tem vendas, então o registro na junção aumenta em vendedores
-- Right join (tabela vendedores)
select count(*)
from vendas
right join vendedores
on vendas.idvendedor = vendedores.idvendedor
-- Apelidos
select cliente, total
from vendas v
inner join clientes c
on v.idCliente = c.idCliente