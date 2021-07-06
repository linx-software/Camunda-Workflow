CREATE DATABASE `FileImport` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `CountryRegionMap` (
  `Country` varchar(200) NOT NULL,
  `Region` varchar(200) NOT NULL,
  PRIMARY KEY (`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Files` (
  `Id` char(8) NOT NULL,
  `DateCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ProcessInstanceId` char(36) NOT NULL,
  `FilePath` varchar(260) NOT NULL,
  `SourceFilePath` varchar(260) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Reason` text,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `ProcessInstanceId_UNIQUE` (`ProcessInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `SourceCustomers` (
  `FileId` char(8) NOT NULL,
  `Id` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Postcode` varchar(50) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `TargetCustomers` (
  `FileId` char(8) NOT NULL,
  `Id` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Postcode` varchar(50) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Region` varchar(200) DEFAULT NULL,
  `IsValid` tinyint(1) NOT NULL DEFAULT '0',
  `ValidationFailureReason` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `MasterCustomers` (
  `Id` varchar(50) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Postcode` varchar(50) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Region` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `CountryRegionMap` (`Country`,`Region`) 
VALUES 
('Australia','Oceania'),
('United Kingdom','Europe'),
('United States','Americas');