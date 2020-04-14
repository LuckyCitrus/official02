SELECT auctionname, sum(o.quantity) as total_orders
FROM auctions a JOIN orders o on o.auction_id = a.id
WHERE date > CURRENT_DATE - INTERVAL '1 month'
GROUP BY auctionname
ORDER BY total_orders DESC;