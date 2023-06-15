--**************************************  EXECUTE InsertIntoTruckInfo STORE PROCEDURES **************************************
SET IDENTITY_INSERT TruckInfo ON
EXECUTE InsertIntoTruckInfo 13, 11, 'BClass Feeder', 'E-Longated', 'Large Trailor', '30 Speed', 'Desiel', 19000, 'New';

select * from TruckInfo
