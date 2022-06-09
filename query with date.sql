select p.payment_owner_name, t.price, t.expiration_date, p.type_of_payment , p.email_adress
from payment p
inner join payed pd
on pd.payment_id = p.payment_id
inner join ticket t 
on t.ticket_id = pd.ticket_id
where t.price ='150' and( t.expiration_date between TO_DATE('01/07/2023', 'dd/mm/yyyy') and TO_DATE('15/07/2023', 'dd/mm/yyyy')or t.expiration_date between TO_DATE('01/07/2022', 'dd/mm/yyyy') and TO_DATE('15/07/2022', 'dd/mm/yyyy')or t.expiration_date between TO_DATE('01/07/2024', 'dd/mm/yyyy') and TO_DATE('15/07/2024', 'dd/mm/yyyy') ) and  p.type_of_payment NOT IN ('GiftCards','Check');

 
--changement de la query with date avec chaque annee
