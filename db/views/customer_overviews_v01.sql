create MATERIALIZED VIEW customer_overviews AS
SELECT distinct first_name || ' ' || last_name as name, o.date, vinnumber, c.year || ' ' || make || ' ' || model as car, ordernum, orderstatus, invoicenum, invoicestatus, paymentnum, paymentstatus, shipmentnum, shipmentstatus, cus.user_id
FROM customers cus JOIN orders o on cus.id = o.customer_id
JOIN orderstatuses os on o.orderstatus_id = os.id
JOIN cars c on o.id = c.order_id
JOIN invoices i on o.invoice_id = i.id
JOIN invoicestatuses ist on i.invoicestatus_id = ist.id
JOIN payments p on i.id = p.invoice_id
JOIN paymentstatuses ps on p.paymentstatus_id = ps.id
JOIN shipments s on i.shipment_id = s.id
JOIN shipmentstatuses ss on s.shipmentstatus_id = ss.id
full JOIN users u on cus.user_id = u.id
order by o.date desc;