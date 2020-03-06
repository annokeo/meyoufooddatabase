-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2020 at 07:21 PM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MeYouAndFood`
--

-- --------------------------------------------------------
CREATE DATABASE MeYouFood;

USE MeYouFood;

--
-- Table structure for table `Dairy`
--

CREATE TABLE IF NOT EXISTS `Dairy` (
  `DairyID` int(11) NOT NULL DEFAULT '0',
  `DiaryName` varchar(64) DEFAULT NULL,
  `DairyDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dairy`
--

INSERT INTO `Dairy` (`DairyID`, `DiaryName`, `DairyDescription`) VALUES
(1, 'Milk', 'whole milk'),
(2, 'Butter', 'unsalted'),
(3, 'Yogurt', 'greek'),
(4, 'Cheese', 'Cheedar'),
(5, 'Ice Cream', 'Vanilla');

-- --------------------------------------------------------

--
-- Table structure for table `Grain`
--

CREATE TABLE IF NOT EXISTS `Grain` (
  `GrainID` int(11) NOT NULL DEFAULT '0',
  `GrainName` varchar(64) DEFAULT NULL,
  `GrainDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Grain`
--

INSERT INTO `Grain` (`GrainID`, `GrainName`, `GrainDescription`) VALUES
(1, 'Millet', 'Millet falls on the sweeter end of the whole grain scale; some people liken the flavor to corn.'),
(2, 'Rice', 'Jasmine White Rice'),
(3, 'Wheat', 'Wheat is a grass widely cultivated for its seed, a cereal grain which is a worldwide staple food. '),
(4, 'Barley', 'Barley, a member of the grass family, is a major cereal grain grown in temperate climates globally.'),
(5, 'Adzuki Bean', 'The adzuki bean, or red mung bean, is an annual vine widely cultivated throughout East Asia for its small bean.');

-- --------------------------------------------------------

--
-- Table structure for table `Ingredients`
--

CREATE TABLE IF NOT EXISTS `Ingredients` (
  `IngredientID` int(11) NOT NULL DEFAULT '0',
  `MeatID` int(11) DEFAULT NULL,
  `GrainID` int(11) DEFAULT NULL,
  `DairyID` int(11) DEFAULT NULL,
  `VeggieID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ingredients`
--

INSERT INTO `Ingredients` (`IngredientID`, `MeatID`, `GrainID`, `DairyID`, `VeggieID`) VALUES
(123, 1, 1, 1, 12),
(262, 4, 4, 4, 52),
(456, 2, 2, 2, 32),
(789, 3, 3, 3, 41),
(845, 5, 5, 5, 91);

-- --------------------------------------------------------

--
-- Table structure for table `Measurements`
--

CREATE TABLE IF NOT EXISTS `Measurements` (
  `MeasurementID` int(11) NOT NULL DEFAULT '0',
  `Teaspoon` varchar(64) DEFAULT NULL,
  `Tablespoon` varchar(64) DEFAULT NULL,
  `Ounces` varchar(64) DEFAULT NULL,
  `Cups` varchar(64) DEFAULT NULL,
  `Pints` varchar(64) DEFAULT NULL,
  `Quarts` varchar(64) DEFAULT NULL,
  `Gallons` varchar(64) DEFAULT NULL,
  `Milliliters` varchar(64) DEFAULT NULL,
  `Liters` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Measurements`
--

INSERT INTO `Measurements` (`MeasurementID`, `Teaspoon`, `Tablespoon`, `Ounces`, `Cups`, `Pints`, `Quarts`, `Gallons`, `Milliliters`, `Liters`) VALUES
(26, '8', '2', '5', '0', '5', '1', '3', '2', '0'),
(41, '2', '5', '2', '8', '2', '0', '0', '8', '0'),
(51, '2', '7', '4', '3', '2', '7', '0', '0', '1'),
(56, '3', '1', '4', '5', '6', '1', '0', '2', '0'),
(82, '8', '2', '1', '4', '7', '0', '0', '7', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Meat`
--

CREATE TABLE IF NOT EXISTS `Meat` (
  `MeatID` int(11) NOT NULL DEFAULT '0',
  `MeatName` varchar(64) DEFAULT NULL,
  `MeatDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Meat`
--

INSERT INTO `Meat` (`MeatID`, `MeatName`, `MeatDescription`) VALUES
(1, 'Beef', 'Red Meat'),
(2, 'Lamb', 'Red Meat'),
(3, 'Chicken', 'Poultry'),
(4, 'Goat', 'Red Met'),
(5, 'Pork', 'Pig Meat');

-- --------------------------------------------------------

--
-- Table structure for table `Recipe`
--

CREATE TABLE IF NOT EXISTS `Recipe` (
  `RecipeID` int(11) NOT NULL DEFAULT '0',
  `MeasurementID` int(11) DEFAULT NULL,
  `IngredientID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Recipe`
--

INSERT INTO `Recipe` (`RecipeID`, `MeasurementID`, `IngredientID`) VALUES
(11, 26, 123),
(22, 26, 262),
(33, 51, 456),
(44, 56, 789),
(55, 82, 845);

-- --------------------------------------------------------

--
-- Table structure for table `Track`
--

CREATE TABLE IF NOT EXISTS `Track` (
  `TrackID` int(11) NOT NULL DEFAULT '0',
  `UserID` int(11) DEFAULT NULL,
  `RecipeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Track`
--

INSERT INTO `Track` (`TrackID`, `UserID`, `RecipeID`) VALUES
(1239, 5, 11),
(1278, 3, 33),
(1653, 4, 22),
(1853, 2, 44),
(7834, 1, 55);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `UserID` int(11) NOT NULL DEFAULT '0',
  `FirstName` varchar(64) DEFAULT NULL,
  `LastName` varchar(64) DEFAULT NULL,
  `Email` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserID`, `FirstName`, `LastName`, `Email`) VALUES
(1, 'William A. Otero', 'Otero', 'WilliamAOtero@dayrep.com'),
(2, 'Mark B.', 'Jones', 'MarkBJones@armyspy.com'),
(3, 'Mary T.', 'Jensen', 'MaryTJensen@teleworm.us'),
(4, 'Patrick R.', 'Whitham', '\r\nPatrickRWhitham@dayrep.com'),
(5, 'Rosena J.', 'Brunet', 'RosenaJBrunet@rhyta.com');

-- --------------------------------------------------------

--
-- Table structure for table `Veggies`
--

CREATE TABLE IF NOT EXISTS `Veggies` (
  `VeggieID` int(11) NOT NULL DEFAULT '0',
  `VeggieName` varchar(64) DEFAULT NULL,
  `VeggieDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Veggies`
--

INSERT INTO `Veggies` (`VeggieID`, `VeggieName`, `VeggieDescription`) VALUES
(12, 'Cauliflower', 'Cauliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the family Brassicaceae.'),
(32, 'Garden Asparagus', 'Asparagus, or garden asparagus, folk name sparrow grass, scientific name Asparagus officinalis, is a perennial flowering plant species in the genus Asparagus.'),
(41, 'Garlic', 'Garlic is a species in the onion genus, Allium. '),
(52, 'Spinach', 'Spinach is a leafy green flowering plant native to central and western Asia. It is of the order Caryophyllales, family Amaranthaceae, subfamily Chenopodioideae.'),
(91, 'Potato', 'The potato is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself, a perennial in the family Solanaceae.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Dairy`
--
ALTER TABLE `Dairy`
  ADD PRIMARY KEY (`DairyID`);

--
-- Indexes for table `Grain`
--
ALTER TABLE `Grain`
  ADD PRIMARY KEY (`GrainID`);

--
-- Indexes for table `Ingredients`
--
ALTER TABLE `Ingredients`
  ADD PRIMARY KEY (`IngredientID`),
  ADD KEY `MeatID` (`MeatID`),
  ADD KEY `GrainID` (`GrainID`),
  ADD KEY `DairyID` (`DairyID`),
  ADD KEY `VeggieID` (`VeggieID`);

--
-- Indexes for table `Measurements`
--
ALTER TABLE `Measurements`
  ADD PRIMARY KEY (`MeasurementID`);

--
-- Indexes for table `Meat`
--
ALTER TABLE `Meat`
  ADD PRIMARY KEY (`MeatID`);

--
-- Indexes for table `Recipe`
--
ALTER TABLE `Recipe`
  ADD PRIMARY KEY (`RecipeID`),
  ADD KEY `MeasurementID` (`MeasurementID`),
  ADD KEY `IngredientID` (`IngredientID`);

--
-- Indexes for table `Track`
--
ALTER TABLE `Track`
  ADD PRIMARY KEY (`TrackID`),
  ADD KEY `RecipeID` (`RecipeID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `Veggies`
--
ALTER TABLE `Veggies`
  ADD PRIMARY KEY (`VeggieID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Ingredients`
--
ALTER TABLE `Ingredients`
  ADD CONSTRAINT `Ingredients_ibfk_1` FOREIGN KEY (`MeatID`) REFERENCES `Meat` (`MeatID`),
  ADD CONSTRAINT `Ingredients_ibfk_2` FOREIGN KEY (`GrainID`) REFERENCES `Grain` (`GrainID`),
  ADD CONSTRAINT `Ingredients_ibfk_3` FOREIGN KEY (`DairyID`) REFERENCES `Dairy` (`DairyID`),
  ADD CONSTRAINT `Ingredients_ibfk_4` FOREIGN KEY (`VeggieID`) REFERENCES `Veggies` (`VeggieID`);

--
-- Constraints for table `Recipe`
--
ALTER TABLE `Recipe`
  ADD CONSTRAINT `Recipe_ibfk_1` FOREIGN KEY (`MeasurementID`) REFERENCES `Measurements` (`MeasurementID`),
  ADD CONSTRAINT `Recipe_ibfk_2` FOREIGN KEY (`IngredientID`) REFERENCES `Ingredients` (`IngredientID`);

--
-- Constraints for table `Track`
--
ALTER TABLE `Track`
  ADD CONSTRAINT `Track_ibfk_1` FOREIGN KEY (`RecipeID`) REFERENCES `Recipe` (`RecipeID`),
  ADD CONSTRAINT `Track_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
