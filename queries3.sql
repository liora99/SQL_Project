select a.attraction_level , d.design_name ,  a.attraction_id , t.theme_id , a.minimum_age_required , t.name_of_theme
from attractions a 
inner join theme t 
on t.theme_id = a.theme_id
inner join design d
on d.design_id = a.design_id
where a.minimum_age_required = '18' and ( d.design_name='Horror' OR d.design_name='Haloween' ) and ( t.name_of_theme = 'Adventure' ) 
