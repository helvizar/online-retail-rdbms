-- Mengambil total jumlah penjualan per pelanggan
SELECT products.product_id,
  products.product_name,
  SUM(orders.quantity) AS total_quantity_sold
FROM products
  JOIN orders ON products.product_id = orders.product_id
GROUP BY products.product_id,
  products.product_name;