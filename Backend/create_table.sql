SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `Tenant`(
   `Tenant_ID` varchar(10) NOT NULL,
   `Name` varchar(50) NOT NULL, 
   `Email` varchar(50) NOT NULL, 
   `Phone_number` char(10) NOT NULL,
   `No_of_people` int(3) NOT NULL,
   PRIMARY KEY(`Tenant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `House`;
DROP TABLE IF EXISTS `Owner`;

CREATE TABLE IF NOT EXISTS `Maintenance`(
   `Request_ID` varchar(10) NOT NULL,
   `RequestDate` date NOT NULL,
   `Status` varchar(20) NOT NULL,
   `Description` varchar(255) NOT NULL,
   PRIMARY KEY(`Request_ID`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `Lease`(
   `Lease_ID` varchar(10) NOT NULL,
   `Tenant_ID` varchar(10) NOT NULL,
   `StartDate` date NOT NULL,
   `EndDate` date NOT NULL,
   `Rent` float NOT NULL,
   PRIMARY KEY(`Lease_ID`),
   FOREIGN KEY(`Tenant_ID`) REFERENCES `Tenant`(`Tenant_ID`) ON DELETE CASCADE,
   FOREIGN KEY(`Property_ID`) REFERENCES `Property`(`PropertyID`) ON DELETE CASCADE,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `Payment`(
   `Payment_ID` varchar(10) NOT NULL,
   `Amount` float NOT NULL,
   `Date` date NOT NULL,
   `Method` varchar(20) NOT NULL,
   `Tenant_ID` varchar(10) NOT NULL,
   PRIMARY KEY(`Payment_ID`),
   FOREIGN KEY(`Tenant_ID`) REFERENCES `Tenant`(`Tenant_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

COMMIT;
