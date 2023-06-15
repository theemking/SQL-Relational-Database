--**************************************  EXECUTE InsertIntoEmployee STORE PROCEDURES **************************************
SET IDENTITY_INSERT Employee ON
EXEC InsertIntoEmployee 15, '08/11/2003', 'Berise', 'Loo', '75 Walt st', 'Love City', 'New York', 7578;

select * from Employee
