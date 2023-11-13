-- Melihat kategori barang yang paling banyak barangnya
SELECT categories.category_name,
  COUNT(products.product_id) AS total_product
FROM products
  JOIN categories ON products.category_id = categories.category_id
GROUP BY products.category_id
ORDER BY total_product DESC
LIMIT 1;