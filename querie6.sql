select a.attraction_type , a.attraction_level, d.design_name, t.name_of_theme
from attractions a 
inner join theme t
on a.theme_id = t.theme_id
inner join design d
on a.design_id = d.design_id
where d.design_name = 'Princess' and a.attraction_level = 'Low' and t.name_of_theme = 'Fantasy'























































 ;
