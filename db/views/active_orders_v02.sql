SELECT first_name || ' ' || last_name as name, email, ordernum, o.date, orderstatus, paymentstatus, shipmentstatus, containernum, warehousename
FROM customers cus JOIN orders o on cus.id = o.customer_id
JOIN orderstatuses os on os.id = o.orderstatus_id
JOIN payments p on cus.id = p.customer_id
JOIN paymentstatuses ps on ps.id = p.paymentstatus_id
JOIN containers con on con.id = o.container_id
JOIN shipments s on s.id = con.shipment_id
JOIN shipmentstatuses ss on ss.id = s.shipmentstatus_id
JOIN warehouses w on w.id = s.warehouse_id
WHERE orderstatus not like  '%Completed%'
AND paymentstatus like '%Complete%'
AND o.date >  CURRENT_DATE - INTERVAL '1 month'
order by date;