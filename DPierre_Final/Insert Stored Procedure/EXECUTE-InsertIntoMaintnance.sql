--**************************************  EXECUTE InsertIntoMaintnance STORE PROCEDURES **************************************
SET IDENTITY_INSERT Maintnance ON
EXEc InsertIntoMaintnance 14, 12, '06-29-2010', '07-02-2010', 'Replace Engine', 100;

select * from Maintnance
