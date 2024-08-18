CREATE TABLE Orders (
    OrderNumber INT PRIMARY KEY NOT NULL,
    OrderDate DATE,
    CustomerNumber INT,
    FOREIGN KEY (CustomerNumber) REFERENCES Patron(CustomerNumber)
);