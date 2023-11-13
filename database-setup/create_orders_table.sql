-- Membuat tabel Orders untuk menyimpan informasi pesanan
CREATE TABLE IF NOT EXISTS Orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  product_id INT,
  quantity INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);