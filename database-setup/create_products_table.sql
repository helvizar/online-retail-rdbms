-- Membuat tabel Products untuk menyimpan informasi produk
CREATE TABLE IF NOT EXISTS Products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(50) NOT NULL,
  price INT NOT NULL,
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);