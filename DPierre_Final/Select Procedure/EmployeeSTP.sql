--************************************** EmployeeSTP STORED PROCEDURE**************************************
USE Truck

GO

CREATE PROCEDURE EmployeeSTP
(
@EmployeeID INT,
@Date_Of_Birth DATE,
@FirstName VARCHAR(40),
@LastName VARCHAR(40),
@Address VARCHAR(200),
@City VARCHAR(200),
@State VARCHAR(50),
@Zip INT
)
AS
BEGIN

SELECT EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip
FROM Employee
WHERE FirstName = 'John'
ORDER BY EmployeeID
END;
GO