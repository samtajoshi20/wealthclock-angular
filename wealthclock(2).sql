-- phpMyAdmin SQL Dump
-- version 4.6.5.1deb3+deb.cihar.com~trusty.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2016 at 11:38 AM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 7.0.14-2+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wealthclock`
--

-- --------------------------------------------------------

--
-- Table structure for table `wc_city`
--

CREATE TABLE `wc_city` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `stateId` int(20) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` datetime NOT NULL,
  `updatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_city`
--

INSERT INTO `wc_city` (`id`, `name`, `stateId`, `status`, `createdDate`, `updatedDate`) VALUES
(62, 'Pune', 2, 1, '2016-12-07 15:45:08', '2016-12-07 10:15:08'),
(63, 'Mumbai', 2, 1, '2016-12-07 15:47:20', '2016-12-07 10:17:20'),
(64, 'sfd', 2, 1, '2016-12-15 15:31:23', '2016-12-15 10:01:23'),
(65, 'sfdadsasdads', 2, 1, '2016-12-15 15:31:41', '2016-12-15 10:01:41'),
(66, 'qwe', 2, 1, '2016-12-15 16:41:57', '2016-12-15 11:11:57'),
(67, 'asdfa', 2, 1, '2016-12-15 16:42:32', '2016-12-15 11:12:32'),
(68, 'fdsdf', 2, 1, '2016-12-15 16:42:45', '2016-12-15 11:12:45'),
(69, 'we', 2, 1, '2016-12-15 16:43:47', '2016-12-15 11:13:47'),
(70, 'asdf', 2, 1, '2016-12-21 14:50:11', '2016-12-21 09:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `wc_company`
--

CREATE TABLE `wc_company` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `companyEmail` varchar(50) NOT NULL,
  `companyPassword` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_company`
--

INSERT INTO `wc_company` (`id`, `name`, `companyEmail`, `companyPassword`, `status`, `createdDate`, `updatedDate`) VALUES
(1, 'Wealthclock', 'samta@gmail.com', '123', 1, '0000-00-00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wc_contact`
--

CREATE TABLE `wc_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `companyGroup` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` text,
  `pinCode` varchar(45) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `sourceType` int(11) DEFAULT NULL,
  `sourceStatus` varchar(45) DEFAULT NULL,
  `sourceDetails` varchar(45) DEFAULT NULL,
  `businessValue` varchar(45) DEFAULT NULL,
  `RM` int(11) DEFAULT NULL,
  `ARM` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `information` varchar(45) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `followDate` varchar(45) DEFAULT NULL,
  `followTime` varchar(45) DEFAULT NULL,
  `notify` int(11) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `companyId` int(11) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_contact`
--

INSERT INTO `wc_contact` (`id`, `name`, `companyGroup`, `place`, `label`, `email`, `address`, `pinCode`, `city`, `sourceType`, `sourceStatus`, `sourceDetails`, `businessValue`, `RM`, `ARM`, `product`, `information`, `type`, `status`, `followDate`, `followTime`, `notify`, `remark`, `companyId`, `createdDate`, `updatedDate`) VALUES
(7, 'asf', 'fasdf', 'asdf', 'sfda', 'samta.joshi@wwindia.com', 'asdf', 'asdf', 63, NULL, 'fsdfdsf', 'dsfsf', 'dsfsdf', NULL, NULL, NULL, NULL, 0, '1', 'sdf', 'sd', NULL, 'fds', 1, '2016-12-21 15:36:49', '2016-12-21 10:06:49'),
(8, 'sdfsdf', 'hfdjk', 'h', 'hjh', 'jhf@gmi.combjkdfjh', 'hjh', 'hjjhjj', 62, 4, 'asdf', 'asf', 'sdf', 3, 4, 1, NULL, 0, '1', 'sdfa', 'sad', 3, 'df', 1, '2016-12-21 16:08:51', '2016-12-21 10:38:51'),
(9, 'sdfsdf', 'hfdjk', 'h', 'hjh', 'jhf@gmi.combjkdfjh', 'hjh', 'hjjhjj', 62, 4, 'asdf', 'asf', 'sdf', 3, 4, 1, 'dasdasd', 0, '1', 'sdfa', 'sad', 3, 'df', 1, '2016-12-21 16:09:58', '2016-12-21 10:39:58'),
(10, 'sdfsdf', 'hfdjk', 'h', 'hjh', 'jhf@gmi.combjkdfjh', 'hjh', 'hjjhjj', 62, 4, 'asdf', 'asf', 'sdf', 3, 4, 1, 'dasdasd', 0, '1', 'sdfa', 'sad', 3, 'df', 1, '2016-12-21 16:16:03', '2016-12-21 10:46:03'),
(11, 'sdfsdf', 'hfdjk', 'h', 'hjh', 'jhf@gmi.combjkdfjh', 'hjh', 'hjjhjj', 62, 4, 'asdf', 'asf', 'sdf', 3, 4, 1, 'dasdasd', 0, '1', 'sdfa', 'sad', 3, 'df', 1, '2016-12-21 16:16:10', '2016-12-21 10:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `wc_country`
--

CREATE TABLE `wc_country` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_employee`
--

CREATE TABLE `wc_employee` (
  `id` int(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `companyId` int(20) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_employee`
--

INSERT INTO `wc_employee` (`id`, `name`, `designation`, `companyId`, `status`, `createdDate`, `updatedDate`) VALUES
(1, 'Samta', 'RM', 1, 1, '0000-00-00', '0000-00-00'),
(2, 'Vikas', 'ARM', 1, 1, '0000-00-00', '0000-00-00'),
(3, 'Garima', 'RM', 1, 1, '0000-00-00', '0000-00-00'),
(4, 'Siddarth', 'ARM', 1, 1, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `wc_employeemoduleaccess`
--

CREATE TABLE `wc_employeemoduleaccess` (
  `id` int(20) NOT NULL,
  `employeeId` int(20) NOT NULL,
  `moduleId` int(10) NOT NULL,
  `create` tinyint(2) NOT NULL,
  `read` tinyint(2) NOT NULL,
  `update` tinyint(2) NOT NULL,
  `delete` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_modules`
--

CREATE TABLE `wc_modules` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_product`
--

CREATE TABLE `wc_product` (
  `id` int(11) NOT NULL,
  `product` varchar(45) DEFAULT NULL,
  `companyId` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_product`
--

INSERT INTO `wc_product` (`id`, `product`, `companyId`, `status`, `createdDate`, `updatedDate`) VALUES
(1, 'SIP', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'MF', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wc_rolemoduleaccess`
--

CREATE TABLE `wc_rolemoduleaccess` (
  `id` int(20) NOT NULL,
  `roleId` int(10) NOT NULL,
  `moduleId` int(10) NOT NULL,
  `create` tinyint(2) NOT NULL,
  `read` tinyint(2) NOT NULL,
  `update` tinyint(2) NOT NULL,
  `delete` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_roles`
--

CREATE TABLE `wc_roles` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_sourceType`
--

CREATE TABLE `wc_sourceType` (
  `id` int(11) NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_sourceType`
--

INSERT INTO `wc_sourceType` (`id`, `source`, `status`, `companyId`, `createdDate`, `updatedDate`) VALUES
(1, 'Telecalling', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Conference', '1', 1, '0000-00-00 00:00:00', '2016-12-07 13:09:52'),
(3, 'Reference', '1', 1, '0000-00-00 00:00:00', '2016-12-07 13:09:52'),
(4, 'Others', '1', 1, '0000-00-00 00:00:00', '2016-12-07 13:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `wc_state`
--

CREATE TABLE `wc_state` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `countryId` int(20) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_state`
--

INSERT INTO `wc_state` (`id`, `name`, `countryId`, `status`, `createdDate`, `updatedDate`) VALUES
(1, 'Madhya Pradesh', 1, 1, '0000-00-00', '0000-00-00'),
(2, 'Maharashtra', 1, 1, '0000-00-00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wc_city`
--
ALTER TABLE `wc_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stateId_idx` (`stateId`);

--
-- Indexes for table `wc_company`
--
ALTER TABLE `wc_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_contact`
--
ALTER TABLE `wc_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId_idx` (`companyId`),
  ADD KEY `contactCityId_idx` (`city`),
  ADD KEY `contact_sourceType_idx` (`sourceType`),
  ADD KEY `contact_RM_idx` (`RM`),
  ADD KEY `contact_ARM_idx` (`ARM`),
  ADD KEY `contact_product_idx` (`product`),
  ADD KEY `contact_notify_idx` (`notify`);

--
-- Indexes for table `wc_country`
--
ALTER TABLE `wc_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_employee`
--
ALTER TABLE `wc_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_companyId_idx` (`companyId`);

--
-- Indexes for table `wc_employeemoduleaccess`
--
ALTER TABLE `wc_employeemoduleaccess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_modules`
--
ALTER TABLE `wc_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_product`
--
ALTER TABLE `wc_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_companyId_idx` (`companyId`);

--
-- Indexes for table `wc_rolemoduleaccess`
--
ALTER TABLE `wc_rolemoduleaccess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_roles`
--
ALTER TABLE `wc_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_sourceType`
--
ALTER TABLE `wc_sourceType`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId_idx` (`companyId`);

--
-- Indexes for table `wc_state`
--
ALTER TABLE `wc_state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wc_city`
--
ALTER TABLE `wc_city`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `wc_company`
--
ALTER TABLE `wc_company`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wc_contact`
--
ALTER TABLE `wc_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wc_country`
--
ALTER TABLE `wc_country`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_employee`
--
ALTER TABLE `wc_employee`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wc_employeemoduleaccess`
--
ALTER TABLE `wc_employeemoduleaccess`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_modules`
--
ALTER TABLE `wc_modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_rolemoduleaccess`
--
ALTER TABLE `wc_rolemoduleaccess`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_roles`
--
ALTER TABLE `wc_roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_sourceType`
--
ALTER TABLE `wc_sourceType`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wc_state`
--
ALTER TABLE `wc_state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wc_city`
--
ALTER TABLE `wc_city`
  ADD CONSTRAINT `stateId` FOREIGN KEY (`stateId`) REFERENCES `wc_state` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wc_contact`
--
ALTER TABLE `wc_contact`
  ADD CONSTRAINT `contact_ARM` FOREIGN KEY (`ARM`) REFERENCES `wc_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contact_RM` FOREIGN KEY (`RM`) REFERENCES `wc_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contact_city` FOREIGN KEY (`city`) REFERENCES `wc_city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contact_companyId` FOREIGN KEY (`companyId`) REFERENCES `wc_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contact_notify` FOREIGN KEY (`notify`) REFERENCES `wc_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contact_product` FOREIGN KEY (`product`) REFERENCES `wc_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contact_sourceType` FOREIGN KEY (`sourceType`) REFERENCES `wc_sourceType` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wc_employee`
--
ALTER TABLE `wc_employee`
  ADD CONSTRAINT `employee_companyId` FOREIGN KEY (`companyId`) REFERENCES `wc_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wc_product`
--
ALTER TABLE `wc_product`
  ADD CONSTRAINT `products_companyId` FOREIGN KEY (`companyId`) REFERENCES `wc_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wc_sourceType`
--
ALTER TABLE `wc_sourceType`
  ADD CONSTRAINT `sourceType_companyId` FOREIGN KEY (`companyId`) REFERENCES `wc_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
