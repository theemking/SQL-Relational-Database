--******************** TRUCK DATABASE ********************

USE master;
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE [Name] = 'Truck')
BEGIN
CREATE DATABASE Truck
ON PRIMARY
(
NAME = 'Truck',
FILENAME = 'C:\Pierre System Programming\School\Champlain College\CMIT-200 Relational Database Design and SQL\Final Project\Truck.mdf',
SIZE = 10MB,
MAXSIZE = UNLIMITED,
FILEGROWTH =10%
)
LOG ON
(
NAME = 'Truck_Log',
FILENAME = 'C:\Pierre System Programming\School\Champlain College\CMIT-200 Relational Database Design and SQL\Final Project\Truck.Ldf',
SIZE = 2MB,
MAXSIZE = 500MB,
FILEGROWTH = 2MB
);
END
GO

