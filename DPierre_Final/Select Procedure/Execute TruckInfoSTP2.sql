
--USE Truck;

CREATE PROCEDURE EmployeeHaulReport
(
@EmployeeID INT
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
GO

--HAVING MileageCount = 100
--ORDER BY C.FirstName, C.LastName, D.Date_Hire, D.Commercial_Driver_License, H.Truck_Used, H.Client, H.Date_Delivered, H.Date_Sent

--Select * from [dbo].[Employee]
--Select * from [dbo].[Driver]
--Select * from [dbo].[HaulRecord]
--Select * from [dbo].[HaulRecord]
--Select * from [dbo].[Maintnance]
--Select * from [dbo].[Manifest]
--Select * from [dbo].[TrailerInfo]
--Select * from [dbo].[TruckInfo]