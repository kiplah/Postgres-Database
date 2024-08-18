CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY NOT NULL,
    ProductNumber INT,
    StoreNumber INT,
    QuantityAvailable INT,
    QuantityOrdered INT,
    FOREIGN KEY (ProductNumber) REFERENCES Product(ProductNumber),
    FOREIGN KEY (StoreNumber) REFERENCES Store(StoreNumber)
);
