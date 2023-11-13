-- Membuat tabel Categories untuk menyimpan kategori produk
CREATE TABLE IF NOT EXISTS Categories (
  category_id INT PRIMARY KEY AUTO_INCREMENT,
  category_name VARCHAR(50) NOT NULL
);