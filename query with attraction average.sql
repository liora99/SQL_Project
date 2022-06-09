SELECT
     d.design_name, t.name_of_theme,a.attraction_level,
    ROUND( AVG( a.minimum_age_required ),2 ) avg_minimum_age_required
FROM
    attractions a
    inner join design d 
    using(design_id)
    inner join theme t 
    using(theme_id)
GROUP BY
    d.design_name,t.name_of_theme,a.attraction_level
ORDER BY
    d.design_name;
