--**************************************  EXECUTE InsertIntoHaulRecord STORE PROCEDURES **************************************
SET IDENTITY_INSERT HaulRecord ON
EXECUTE InsertIntoHaulRecord 13, 'Rough Feeder', 'Giant', 'Big Box', '09-29-2020', '09-30-2020', 9664, 'Painted', 12;

SELECT * FROM HaulRecord;

