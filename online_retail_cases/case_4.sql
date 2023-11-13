-- Nominal Rata-Rata Transaksi Pelanggan dalam 1 Bulan Terakhir
SELECT Customers.customer_id,
  Customers.customer_name,
  FORMAT(AVG(Orders.quantity * Products.price), 0) AS average_transaction
FROM Orders
  JOIN Customers ON Orders.customer_id = Customers.customer_id
  JOIN Products ON Orders.product_id = Products.product_id
WHERE Orders.order_date BETWEEN '2023-10-15' AND '2023-11-15'
GROUP BY Customers.customer_id,
  Customers.customer_name;