create MATERIALIZED VIEW auction_orders AS
SELECT auctionname, sum(o.quantity) as total_orders
FROM auctions a JOIN cars c on c.auction_id = a.ID 
JOIN orders o on c.order_id = o.id
WHERE date > CURRENT_DATE - INTERVAL '1 month'
GROUP BY auctionname
ORDER BY total_orders DESC;