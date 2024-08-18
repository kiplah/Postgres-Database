CREATE TABLE Payslip (
    PayslipNumber INT PRIMARY KEY NOT NULL,
    WeekEndingDate DATE,
    HoursWorked DECIMAL(5, 2),
    GrossPay DECIMAL(10, 2),
    EmployeeNumber INT,
    StoreNumber INT,
    FOREIGN KEY (EmployeeNumber) REFERENCES Employee(EmployeeNumber),
    FOREIGN KEY (StoreNumber) REFERENCES Store(StoreNumber)
);