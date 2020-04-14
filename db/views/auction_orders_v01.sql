SELECT auctionname, sum(o.quantity) as total_orders
FROM auctions a JOIN cars c on c.auction_id = a.id
JOIN orders o on cars.order_id = c.order_id
WHERE date > CURRENT_DATE - INTERVAL '1 month'
GROUP BY auctionname
ORDER BY total_orders DESC;