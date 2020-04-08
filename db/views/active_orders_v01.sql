SELECT first_name || ' ' || last_name as name, email, ordernum, o.date, orderstatus, paymentstatus, shipmentstatus, containernum, warehousename
FROM customers cus JOIN orders o on cus.id = o.customer_id
JOIN orderstatuses os on os.id = o.orderstatus_id
JOIN payments p on cus.id = p.customer_id
JOIN paymentstatuses ps on ps.id = p.paymentstatus_id
JOIN containerorders co on o.id = co.order_id
JOIN containers con on con.id = co.container_id
JOIN shipments s on s.id = con.shipment_id
JOIN shipmentstatuses ss on ss.id = s.shipmentstatus_id
JOIN warehouses w on w.id = s.warehouse_id
WHERE orderstatus != 'Completed
'
AND paymentstatus = 'Complete
'
AND o.date >  CURRENT_DATE - INTERVAL '1 month'
order by date;
