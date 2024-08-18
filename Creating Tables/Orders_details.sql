CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY NOT NULL,
    OrderNumber INT,
    ProductNumber INT,
    QuantityOrdered INT,
    FOREIGN KEY (OrderNumber) REFERENCES Orders(OrderNumber),
    FOREIGN KEY (ProductNumber) REFERENCES Product(ProductNumber)
);