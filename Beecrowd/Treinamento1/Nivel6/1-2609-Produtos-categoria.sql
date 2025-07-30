select cat.name, sum(p.amount)
from categories cat
join products p on cat.id = p.id_categories
group by cat.name -- A função de agregação SUM precisa agrupar esses dados. No caso pela categoria