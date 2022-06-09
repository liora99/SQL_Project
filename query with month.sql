SELECT p.type_of_payment,t.price,p.payment_owner_name,   TO_CHAR ( TRUNC (t.expiration_date, 'MONTH')
        , 'Mon YYYY'
      ) AS month_expiration
FROM    ticket t
inner join payed pd
on pd.ticket_id = t.ticket_id
inner join payment p
on p.payment_id = pd.payment_id
inner join attractions a
on a.ticket_id = t.ticket_id
WHERE   t.expiration_date  >= CURRENT_TIMESTAMP
AND   t.expiration_date  < TO_DATE('31/12/2022', 'dd/mm/yyyy') and p.type_of_payment = 'GiftCards' and( t.price = '2300' or t.price = '4500' or t.price = '6800')
group by trunc( t.expiration_date ,'mm'),t.expiration_date, p.type_of_payment,t.price,p.payment_owner_name
ORDER BY  TRUNC (t.expiration_date, 'MONTH')
;
