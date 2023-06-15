
--SET IDENTITY_INSERT HaulRecord OFF
--SET IDENTITY_INSERT TruckInfo OFF
--SET IDENTITY_INSERT Maintnance OFF
--SET IDENTITY_INSERT Manifest OFF
--SET IDENTITY_INSERT TrailerInfo OFF
--SET IDENTITY_INSERT Employee OFF
SET IDENTITY_INSERT Driver ON
USE Truck;
GO
Declare @truckdriver int

EXEC @truckdriver = [dbo].[DriverRecord10]
	@DriverID = 12,
	@Employee_EmployeeID = 11,
	@Date_Hire = '2000-09-19',
	@Commercial_Driver_License = 1

Select 'truckdriver' = @truckdriver

GO