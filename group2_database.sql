-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 05:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mwsc_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `SectorID` int(5) NOT NULL,
  `SectorName` text NOT NULL,
  `ZoneName` text NOT NULL,
  `BillerRatio` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`SectorID`, `SectorName`, `ZoneName`, `BillerRatio`) VALUES
(44335, 'Kacyiru', 'amen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ZoneID` int(5) NOT NULL,
  `ZoneName` text NOT NULL,
  `NumberOfPremises` int(5) NOT NULL,
  `CustomerName` text NOT NULL,
  `RatioFromBiller` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ZoneID`, `ZoneName`, `NumberOfPremises`, `CustomerName`, `RatioFromBiller`) VALUES
(23422, 'amen', 1, 'Marthely', 4);

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `PlantID` int(5) NOT NULL,
  `PlantName` text NOT NULL,
  `ZoneSupplied` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`PlantID`, `PlantName`, `ZoneSupplied`) VALUES
(23231, 'Muhima', 'kwanayinzira'),
(23231, 'Nyamirambo', 'amen');

-- --------------------------------------------------------

--
-- Table structure for table `premises`
--

CREATE TABLE `premises` (
  `PremisesName` varchar(30) NOT NULL,
  `PremisesID` int(5) NOT NULL,
  `ZoneName` text NOT NULL,
  `SectorName` text NOT NULL,
  `DomesticOrCommercial` text NOT NULL,
  `ActiveOrSuspended` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premises`
--

INSERT INTO `premises` (`PremisesName`, `PremisesID`, `ZoneName`, `SectorName`, `DomesticOrCommercial`, `ActiveOrSuspended`) VALUES
('', 44335, 'amen', 'Kacyiru', 'Domestic', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `SectorID` int(5) NOT NULL,
  `SectorName` text NOT NULL,
  `SectorOffice` text NOT NULL,
  `PlantNumber` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`SectorID`, `SectorName`, `SectorOffice`, `PlantNumber`) VALUES
(44335, 'Kacyiru', 'KH', 1),
(34543, 'Kimironko', 'Nayinzira', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `SectorID` int(11) NOT NULL,
  `SectorName` varchar(30) NOT NULL,
  `SectorOffice` varchar(30) NOT NULL,
  `BillOrSup` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `ZoneID` int(5) NOT NULL,
  `PlantID` int(5) NOT NULL,
  `SectorID` int(5) NOT NULL,
  `ZoneName` text NOT NULL,
  `SectorName` text NOT NULL,
  `SectorOffice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`ZoneID`, `PlantID`, `SectorID`, `ZoneName`, `SectorName`, `SectorOffice`) VALUES
(34321, 34347, 11111, 'kwanayinzira', 'Kacyiru', 'KH'),
(23422, 23213, 44335, 'amen', 'Kacyiru', 'KH'),
(23235, 34321, 44335, 'wuzeri', 'Kacyiru', 'KH'),
(34434, 34345, 44335, 'ewdr', 'Kacyiru', 'KH'),
(21213, 22213, 44335, 'Perue', 'Kacyiru', 'KH'),
(33422, 34434, 34543, 'erww', 'Kimironko', 'Nayinzira'),
(44321, 34321, 34543, 'Kfhs', 'Kimironko', 'Nayinzira'),
(33214, 34344, 34543, 'erwq', 'Kimironko', 'Nayinzira'),
(23231, 22231, 34543, 'kimi', 'Kimironko', 'Nayinzira');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
