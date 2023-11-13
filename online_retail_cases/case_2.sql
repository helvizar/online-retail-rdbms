-- Melihat 3 produk yang paling sering dibeli oleh pelanggan
SELECT products.product_name,
  COUNT(orders.product_id) AS total_quantity_sold
FROM orders
  JOIN products ON orders.product_id = products.product_id
GROUP BY orders.product_id
ORDER BY total_quantity_sold DESC
LIMIT 3;