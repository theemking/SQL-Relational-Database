USE [Truck]
GO
/****** Object:  StoredProcedure [dbo].[EmployeeHaulReport]    Script Date: 2/21/2021 10:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[EmployeeHaulReport]
(
@EmployeeID INT,
@FirstName VARCHAR(40), 
@LastName VARCHAR(40),
@Date_Hire DATE,
@Commercial_Driver_License BIT,
@Truck_Used VARCHAR(20),
@Client VARCHAR(40),
@Date_Delivered DATE,
@Date_Sent DATE 
)
AS
BEGIN

SELECT C.FirstName, C.LastName AS Employees, D.Date_Hire, D.Commercial_Driver_License, H.Truck_Used, H.Client, H.Date_Delivered,
		H.Date_Sent, SUM(H.MileageCount) AS "Total Mileage"
FROM Employee AS C
JOIN Driver AS D
ON C.EmployeeID = D.Employee_EmployeeID
JOIN HaulRecord AS H 
ON H.HaulRecordID = H.TruckInfo_TruckInfoID
WHERE EmployeeID =@EmployeeID
GROUP BY C.FirstName, C.LastName, D.Date_Hire, D.Commercial_Driver_License, H.Truck_Used, H.Client, H.Date_Delivered,
		H.Date_Sent

END
