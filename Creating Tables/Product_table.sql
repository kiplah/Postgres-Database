CREATE TABLE Product (
    ProductNumber INT PRIMARY KEY NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2)
);