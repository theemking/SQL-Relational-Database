--**************************************  EXECUTE InsertIntoDriver STORE PROCEDURES **************************************

USE Truck;

SET IDENTITY_INSERT Driver ON
EXECUTE InsertIntoDriver
@DriverID =15,
@Employee_EmployeeID =13,
@Date_Hire ='10/20/2002',
@Commercial_Driver_License  =1;

select * from driver