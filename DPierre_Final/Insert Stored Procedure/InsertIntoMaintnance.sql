--************************************** InsertIntoMaintnance STORE PROCEDURES **************************************

USE Truck;
GO
CREATE PROCEDURE InsertIntoMaintnance
(
@MaintnanceID INT,
@TruckInfo_TruckInfoID INT,
@Maintnance_Start DATE,
@Maintnance_End DATE,
@Maintnance_Type VARCHAR(20),
@Maintnance_Code INT
)
AS
BEGIN
SET NOCOUNT ON;
--**************************************  INSERT INTO Maintnance **************************************
BEGIN TRANSACTION;
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
	Values(@MaintnanceID, @TruckInfo_TruckInfoID, @Maintnance_Start, @Maintnance_End, @Maintnance_Type, @Maintnance_Code)
	
COMMIT TRANSACTION;
SET NOCOUNT OFF;
END;