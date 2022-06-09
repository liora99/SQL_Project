select p.type_of_payment ,  count(p.payment_id)
from payment p
inner join payed pd
on p.payment_id = pd.payment_id
group by p.type_of_payment 
