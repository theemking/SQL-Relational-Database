--**************************************  EXECUTE InsertIntoManifest STORE PROCEDURES **************************************
SET IDENTITY_INSERT TrailerInfo ON
EXECUTE InsertIntoTrailerInfo 14, 'Feeder', '17 tones', 567, 'Pell Haul', 11;

select * from TrailerInfo
