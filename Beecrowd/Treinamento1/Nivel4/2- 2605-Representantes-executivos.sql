select  p.name, pr.name -- Seleciona as colunas 'name' de produtos e provedores
from products p -- Da tabela produtos (é a predominante das informações) --
join providers pr on p.id_providers = pr.id -- Junta com provedores onde haja conexão entre as tabelas (id_providers) 
where p.id_categories = 6 -- Onde id.categories de Produtos seja 6 
