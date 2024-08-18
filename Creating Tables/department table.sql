CREATE TABLE Department (
    DepartmentNumber INT PRIMARY KEY NOT NULL,
    Title VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    EmailAddress VARCHAR(255),
    StoreNumber INT,
    FOREIGN KEY (StoreNumber) REFERENCES Store(StoreNumber)
);