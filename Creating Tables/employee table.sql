CREATE TABLE Employee (
    EmployeeNumber INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(255),
    MobileNumber VARCHAR(20),
    Email VARCHAR(255),
    TFN VARCHAR(20),
    Salary DECIMAL(10, 2),
    JoiningDate DATE,
    EmploymentType VARCHAR(50),
    DepartmentNumber INT,
    FOREIGN KEY (DepartmentNumber) REFERENCES Department(DepartmentNumber)
);