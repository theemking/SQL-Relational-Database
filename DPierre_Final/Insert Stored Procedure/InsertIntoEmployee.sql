--**************************************  InsertIntoEmployee STORE PROCEDURES **************************************

USE Truck;
GO
CREATE PROCEDURE InsertIntoEmployee
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
SET NOCOUNT ON;
--**************************************  INSERT INTO EMPLOYEE **************************************
BEGIN TRANSACTION;
INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip) 
			VALUES(@EmployeeID, @Date_Of_Birth, @FirstName, @LastName, @Address, @City, @State, @Zip);

COMMIT TRANSACTION;
SET NOCOUNT OFF;
END;



