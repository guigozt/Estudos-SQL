select p.id, p.name
from products p
join categories cat on p.id_categories = cat.id
where cat.name like 'super%' -- Onde a coluna tenha texto que comecem com 'Super' - LIKE -> "Tudo que"