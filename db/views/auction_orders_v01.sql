SELECT auctionname, COUNT(o.quantity) as total_orders
FROM auctions a join order_auctions oa on a.id = oa.auction_id
JOIN orders o on o.id = oa.order_id
WHERE date > CURRENT_DATE - INTERVAL '1 months'
GROUP BY auctionname
ORDER BY total_orders DESC;