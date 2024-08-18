CREATE TABLE Patron (
    CustomerNumber INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    MobileNumber VARCHAR(20),
    Address VARCHAR(255)
);