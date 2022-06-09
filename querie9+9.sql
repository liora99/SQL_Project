select payment_owner_name,t.expiration_date,p.type_of_payment,pd.payment_id, count(*) as count_payment
FROM payment p
inner join payed pd
on pd.payment_id = p.payment_id
inner join ticket t on pd.ticket_id = t.ticket_id
inner join attractions a 
inner join design d
on d.design_id =a.design_id
on a.ticket_id = t.ticket_id
where (p.type_of_payment = 'Cash' OR p.type_of_payment = 'Cards' ) and (a.minimum_age_required = '1' or a.minimum_age_required ='3') and d.design_name not in ('Horror','Haloween','Space')
group by p.payment_owner_name , t.expiration_date , p.type_of_payment,pd.payment_id
having count(*)>1;
