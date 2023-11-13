-- Membuat tabel Customers untuk menyimpan informasi pelanggan
CREATE TABLE IF NOT EXISTS Customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);