--**************************************  UpdateEmployee STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UpdateEmployee
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
	BEGIN TRANSACTION;

	IF(@Date_Of_Birth IS NOT NULL)
	UPDATE Employee
	SET Date_Of_Birth = @Date_Of_Birth
	WHERE EmployeeID = @EmployeeID;
	
	IF(@FirstName IS NOT NULL)
	UPDATE Employee
	SET FirstName = @FirstName
	WHERE EmployeeID = @EmployeeID;

	IF(@LastName IS NOT NULL)
	UPDATE Employee
	SET LastName = @LastName
	WHERE EmployeeID = @EmployeeID;

	IF(@Address IS NOT NULL)
	UPDATE Employee
	SET Address = @Address
	WHERE EmployeeID = @EmployeeID;
		
	IF(@City IS NOT NULL)
	UPDATE Employee
	SET City = @City
	WHERE EmployeeID = @EmployeeID;

	IF(@State IS NOT NULL)
	UPDATE Employee
	SET State = @State
	WHERE EmployeeID = @EmployeeID;

	IF(@Zip IS NOT NULL)
	UPDATE Employee
	SET Zip = @Zip
	WHERE EmployeeID = @EmployeeID;

	COMMIT TRANSACTION;
	SET NOCOUNT OFF;

END;
GO
