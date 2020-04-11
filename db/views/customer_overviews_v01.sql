SELECT distinct first_name || ' ' || last_name as name, o.date, vinnumber, c.year || ' ' || make || ' ' || model as car, ordernum, orderstatus, invoicenum, invoicestatus, paymentnum, paymentstatus, shipmentnum, shipmentstatus
FROM customers cus JOIN orders o on cus.id = o.customer_id
JOIN orderinvoices oi on oi.order_id = o.id
JOIN orderstatuses os on o.orderstatus_id = os.id
JOIN cars c on o.id = c.order_id
JOIN invoices i on oi.invoice_id = i.id
JOIN invoicestatuses ist on i.invoicestatus_id = ist.id
JOIN payments p on i.id = p.invoice_id
JOIN paymentstatuses ps on p.paymentstatus_id = ps.id
JOIN invoiceshipments ins on ins.invoice_id = i.id
JOIN shipments s on ins.shipment_id = s.id
JOIN shipmentstatuses ss on s.shipmentstatus_id = ss.id
order by o.date
