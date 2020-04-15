select distinct first_name || ' ' || last_name as name, email, i.invoicenum, i.invoicedate, invoicestatus
FROM customers cus JOIN orders o on cus.id = o.customer_id
JOIN orderstatuses os on os.id = o.orderstatus_id
JOIN payments p on cus.id = p.customer_id
JOIN paymentstatuses ps on ps.id = p.paymentstatus_id
JOIN invoices i on i.customer_id = cus.id
JOIN invoicestatuses ist on ist.id = i.invoicestatus_id
WHERE invoicestatus not like '%Paid%'
AND paymentstatus not like '%Paid%'
AND i.invoicedate >  CURRENT_DATE - INTERVAL '1 month'
order by i.invoicedate;
