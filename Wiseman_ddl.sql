USE master

CREATE DATABASE WisemanDB
GO

USE WisemanDB

CREATE TABLE ConsumerLocations (
Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Breweries (
Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Distributorships (
Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Products (
Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
[Name] NVARCHAR(50),
BreweryId INT NOT NULL FOREIGN KEY REFERENCES Breweries(Id)
)

--CREATE TABLE Drivers (
--Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
--FirstName NVARCHAR(25) NOT NULL,
--LastName NVARCHAR(25) NOT NULL
--)

--CREATE TABLE Trucks (
--Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
--VIN CHAR(17) NOT NULL,
--[Year] INT NOT NULL,
--Make NVARCHAR(25) NOT NULL,
--Model NVARCHAR(50) NOT NULL,
--DriverId INT NOT NULL FOREIGN KEY REFERENCES Drivers(Id)
--)

CREATE TABLE Shipments (
Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
EstimatedOn DATE,
DeliveredAt DATETIME,
DistributorshipId INT NOT NULL FOREIGN KEY REFERENCES Distributorships(Id),
ProductId INT NOT NULL FOREIGN KEY REFERENCES Products(Id),
ConsumerLocationId INT NOT NULL FOREIGN KEY REFERENCES ConsumerLocations(Id)
--DriverId INT NOT NULL FOREIGN KEY REFERENCES Drivers(Id),
--TruckId INT NOT NULL FOREIGN KEY REFERENCES Trucks(Id)
)