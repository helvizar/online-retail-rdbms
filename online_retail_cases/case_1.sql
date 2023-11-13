-- Data untuk 1 Pelanggan Membeli 3 Barang yang Berbeda
SELECT Customers.customer_id,
  Customers.customer_name,
  Products.product_name,
  Orders.quantity,
  Products.price
FROM Customers
  JOIN Orders ON Customers.customer_id = Orders.customer_id
  JOIN Products ON Orders.product_id = Products.product_id
WHERE Customers.customer_id = 1
LIMIT 3;