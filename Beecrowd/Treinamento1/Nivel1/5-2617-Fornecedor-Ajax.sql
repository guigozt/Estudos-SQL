select p.name, pro.name
from products p
inner join providers pro
on p.id_providers = pro.id
where pro.name = 'Ajax SA'