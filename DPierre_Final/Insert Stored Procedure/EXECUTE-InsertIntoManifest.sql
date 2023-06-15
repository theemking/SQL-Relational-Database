--**************************************  EXECUTE InsertIntoManifest STORE PROCEDURES **************************************
SET IDENTITY_INSERT Manifest ON
EXEC InsertIntoManifest 13, 11, 'Bird', 'Chicken', 800, 10, 10 ;

select * from Manifest
