-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2017 at 05:37 PM
-- Server version: 5.5.54
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tapX`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_admins`
--

CREATE TABLE IF NOT EXISTS `business_admins` (
  `business_id` int(8) DEFAULT NULL,
  `user_id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL DEFAULT 'admin',
  `password` varchar(60) NOT NULL DEFAULT '',
  `salt` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  KEY `business_id` (`business_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Truncate table before insert `business_admins`
--

TRUNCATE TABLE `business_admins`;
--
-- Dumping data for table `business_admins`
--

INSERT INTO `business_admins` (`business_id`, `user_id`, `username`, `password`, `salt`) VALUES
(1, 1, 'admin_1', '$2a$06$Y0aITCfE.4ypuur/yQw/4etGnO6I3MWTSuucXrGRyAlWVBMYYM68a', '$2a$06$KpsKrhRddlHZwbd1EbErA.tXHauVERXda3qSfTAEjcF8h0pSCDwA.'),
(2, 2, 'admin_2', '$2a$06$qQM1yOWbjCXn9f1hq06O4OGkokO0rmLfCiFCL31qhcVnst8IlwiMa', '$2a$06$UaFhGMdA48xq7lhJ/f0/N.SFyLwzrACmij6jME4cMWrM0otDMLRC.'),
(3, 3, 'admin_3', '$2a$06$90aFKAa2taUviyLrzqgyieC4qKtILZvvqicttMVqavsaZ/Vr7pvHG', '$2a$06$7YmHSy2bgqklkLa1qoOfgeM7UY7A7Rfk4SrYIhQ96ztk5ziWLY31S'),
(1, 4, 'admin_1alt', '$2a$06$lcDvMYIAxjNLa.iZtooowOgo79h40U5IGpufe9k3NfAw6ukm0rnDO', '$2a$06$Jvzh.wW34jf4c1AIEynxQ.I0iTwUbH./4bIsMPkVF6vHf8kMXChRm'),
(4, 5, 'admin_4', '$2y$10$cpv58WUPRH0rpVkhZihhwO6UG/t.yiysJHDXB.9j1MECstJOitUiG', '$2y$10$5lIqhD.RTtq7CJWmqXbt3.r3kTwHp5npqdbsJSo9NZ9euqZ4tCUhO'),
(5, 6, 'admin_5', '$2y$10$6byioAkt8m07r0Yp89/H9eVE.sTiHATM9dG5LAn4MEbm3X0kvJOLm', '$2y$10$pGoJPQ7Sjp7IaFntWUEb/.DQIcKn01.e1UwmHtou22l1B/YFHbIIe'),
(2, 7, '', '$2y$10$b5HIZBbBCIvbZDaeC5OBPugSiNPEdpdD7G8dpkOBJyl3fG2U.2/IW', '$2y$10$y8h2IXFJjETZfxpfhy1onOgl6ZwKiV4DM6hZ6ruF3PDDyUMT68adi');

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE IF NOT EXISTS `businesses` (
  `business_id` int(8) NOT NULL AUTO_INCREMENT,
  `business_name` varchar(35) NOT NULL DEFAULT '',
  `address` varchar(35) DEFAULT NULL,
  `address2` varchar(16) DEFAULT NULL,
  `city` varchar(35) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `ZIP` int(5) DEFAULT NULL,
  PRIMARY KEY (`business_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Truncate table before insert `businesses`
--

TRUNCATE TABLE `businesses`;
--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`business_id`, `business_name`, `address`, `address2`, `city`, `state`, `ZIP`) VALUES
(1, 'Harpo''s Bar and Grill', '29 S 10th Street', NULL, 'Columbia', 'MO', 65201),
(2, 'Campus Bar & Grill', '304 S 9th St', NULL, 'Columbia', 'MO', 65201),
(3, 'McNally''s', '7 N 6th St', NULL, 'Columbia', 'MO', 65201),
(4, 'Gus'' Food & Spirits', '2421 Coral Ct', NULL, 'Coralville', 'IA', 52241),
(5, 'Lantern''s Keep', '49 W 44th St', NULL, 'New York', 'NY', 10036);

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE IF NOT EXISTS `item_list` (
  `business_id` int(8) NOT NULL DEFAULT '0',
  `Burger` decimal(4,2) DEFAULT NULL,
  `Bacon_Burger` decimal(4,2) DEFAULT NULL,
  `Cheeseburger` decimal(4,2) DEFAULT NULL,
  `Double_Cheeseburger` decimal(4,2) DEFAULT NULL,
  `Double_Bacon_Cheeseburger` decimal(4,2) DEFAULT NULL,
  `Fries` decimal(4,2) DEFAULT NULL,
  `Onion_Rings` decimal(4,2) DEFAULT NULL,
  `Cheese_Fries` decimal(4,2) DEFAULT NULL,
  `Bud_Light_Draft_16oz` decimal(4,2) DEFAULT NULL,
  `Bud_Light_Bottle` decimal(4,2) DEFAULT NULL,
  `Bud_Light_Pitcher` decimal(4,2) DEFAULT NULL,
  `Budweiser_Draft_16oz` decimal(4,2) DEFAULT NULL,
  `Budweiser_Bottle` decimal(4,2) DEFAULT NULL,
  `Budweiser_Pitcher` decimal(4,2) DEFAULT NULL,
  `Coors_Light_Draft_16oz` decimal(4,2) DEFAULT NULL,
  `Coors_Light_Bottle` decimal(4,2) DEFAULT NULL,
  `Coors_Light_Pitcher` decimal(4,2) DEFAULT NULL,
  `Heinekin_Draft_16oz` decimal(4,2) DEFAULT NULL,
  `Heinekin_Bottle` decimal(4,2) DEFAULT NULL,
  `Heinekin_Pitcher` decimal(4,2) DEFAULT NULL,
  `Gin_and_Tonic_Single_Well` decimal(4,2) DEFAULT NULL,
  `Gin_and_Tonic_Double_Well` decimal(4,2) DEFAULT NULL,
  `Gin_and_Tonic_Triple_Well` decimal(4,2) DEFAULT NULL,
  `Jack_and_Coke_Single_Well` decimal(4,2) DEFAULT NULL,
  `Jack_and_Coke_Double_Well` decimal(4,2) DEFAULT NULL,
  `Jack_and_Coke_Triple_Well` decimal(4,2) DEFAULT NULL,
  `Screwdriver_Single_Well` decimal(4,2) DEFAULT NULL,
  `Screwdriver_Double_Well` decimal(4,2) DEFAULT NULL,
  `Screwdriver_Triple_Well` decimal(4,2) DEFAULT NULL,
  `Whiskey_Coke_Single_Well` decimal(4,2) DEFAULT NULL,
  `Whiskey_Coke_Double_Well` decimal(4,2) DEFAULT NULL,
  `Whiskey_Coke_Triple_Well` decimal(4,2) DEFAULT NULL,
  `Vodka_Cranberry_Juice_Single_Well` decimal(4,2) DEFAULT NULL,
  `Vodka_Cranberry_Juice_Double_Well` decimal(4,2) DEFAULT NULL,
  `Vodka_Cranberry_Juice_Triple_Well` decimal(4,2) DEFAULT NULL,
  `Whiskey_Orange_Juice_Single_Well` decimal(4,2) DEFAULT NULL,
  `Whiskey_Orange_Juice_Double_Well` decimal(4,2) DEFAULT NULL,
  `Whiskey_Orange_Juice_Triple_Well` decimal(4,2) DEFAULT NULL,
  `Margarita` decimal(4,2) DEFAULT NULL,
  `Margarita_Pitcher` decimal(4,2) DEFAULT NULL,
  `Fireball_Shot` decimal(4,2) DEFAULT NULL,
  `Rumplemintz_Shot` decimal(4,2) DEFAULT NULL,
  `Tequila_Shot` decimal(4,2) DEFAULT NULL,
  `Vodka_Shot` decimal(4,2) DEFAULT NULL,
  `Whiskey_Shot` decimal(4,2) DEFAULT NULL,
  `Jager_Bomb` decimal(4,2) DEFAULT NULL,
  `Vegas_Bomb` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`business_id`),
  UNIQUE KEY `business_id_2` (`business_id`),
  UNIQUE KEY `business_id_3` (`business_id`),
  KEY `business_id` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `item_list`
--

TRUNCATE TABLE `item_list`;
--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`business_id`, `Burger`, `Bacon_Burger`, `Cheeseburger`, `Double_Cheeseburger`, `Double_Bacon_Cheeseburger`, `Fries`, `Onion_Rings`, `Cheese_Fries`, `Bud_Light_Draft_16oz`, `Bud_Light_Bottle`, `Bud_Light_Pitcher`, `Budweiser_Draft_16oz`, `Budweiser_Bottle`, `Budweiser_Pitcher`, `Coors_Light_Draft_16oz`, `Coors_Light_Bottle`, `Coors_Light_Pitcher`, `Heinekin_Draft_16oz`, `Heinekin_Bottle`, `Heinekin_Pitcher`, `Gin_and_Tonic_Single_Well`, `Gin_and_Tonic_Double_Well`, `Gin_and_Tonic_Triple_Well`, `Jack_and_Coke_Single_Well`, `Jack_and_Coke_Double_Well`, `Jack_and_Coke_Triple_Well`, `Screwdriver_Single_Well`, `Screwdriver_Double_Well`, `Screwdriver_Triple_Well`, `Whiskey_Coke_Single_Well`, `Whiskey_Coke_Double_Well`, `Whiskey_Coke_Triple_Well`, `Vodka_Cranberry_Juice_Single_Well`, `Vodka_Cranberry_Juice_Double_Well`, `Vodka_Cranberry_Juice_Triple_Well`, `Whiskey_Orange_Juice_Single_Well`, `Whiskey_Orange_Juice_Double_Well`, `Whiskey_Orange_Juice_Triple_Well`, `Margarita`, `Margarita_Pitcher`, `Fireball_Shot`, `Rumplemintz_Shot`, `Tequila_Shot`, `Vodka_Shot`, `Whiskey_Shot`, `Jager_Bomb`, `Vegas_Bomb`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.00', '2.00', NULL, '3.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.05', NULL, '2.50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.05', '1.50', NULL, '1.85', '1.50', '6.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.50', NULL, NULL, '2.00', '2.25', '7.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.00', NULL, '1.00', '1.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE IF NOT EXISTS `tables` (
  `business_id` int(8) DEFAULT NULL,
  `table_id` int(8) NOT NULL AUTO_INCREMENT,
  `table_num` int(3) NOT NULL DEFAULT '0',
  `table_pass` varchar(60) NOT NULL DEFAULT '',
  `salt` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`table_id`),
  UNIQUE KEY `table_id` (`table_id`),
  KEY `business_id` (`business_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Truncate table before insert `tables`
--

TRUNCATE TABLE `tables`;
--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`business_id`, `table_id`, `table_num`, `table_pass`, `salt`) VALUES
(1, 2, 1, '$2a$06$9tfZXkaYG6SrQWdShxXifezYn2vs1w3UsK3U36CiQ.gduNTlsMOaq', '$2a$06$vMAFClS/nNVAjoJvRJ65YOc3WH6ucdzX6sFXGgDQtBXg77LHoGn3G'),
(1, 4, 2, '$2a$06$GhJWgWHvb7Xy9lxENf3Q2eN4JTesR/9bl2njaaVmve5Eryf34up6e', '$2a$06$jpLS0nyzo.vRWazFlzFEReJZd2xvlqvIVBsijcRv8/Ae6tkaxqMp2'),
(2, 5, 1, '$2a$06$dIUqwWPnUOrYKIl7Swr9wOUjHX5kFKZHWv0AgtugZt3EMQJCiqKMe', '$2a$06$dejEUmtOxruIDqP3S8.QUO4jMTu4Dw49V6U74/WKORqt1Dvk9.112'),
(2, 7, 2, '$2a$06$PiiPONivoXdVWgIFbMIQGOUk5jrlvIgHx6LQioDJIa2m6.M0enJUW', '$2a$06$yJL6/WolIbbqjkjQIMtIreIFPDjTPOGjv3WQYv1PmegTt0x6Mqiqa'),
(3, 8, 0, '$2a$06$z8sRvRVMEzZ1s3IphO/NqOH7rG/7XSYfGgfIeu4ujKyr5a0YCmKS6', '$2a$06$yMm4QqpLC060Qmz1/KJsE.e6248/S8aOTM/pUWkw7zfWLWD3G9eIW'),
(3, 9, 1, '$2y$10$ThT2EobUAZNcY0V7/i7.RugYBW0tK3E3x8pGu0RObSkOWu8IAwTmm', '$2y$10$n1K5tHfq2WswAdhPTuOle.sfEPacq/vXgSuqVCgqhZEXXb8siIDAu'),
(4, 10, 0, '$2y$10$IM5KRFzTn2Tn128UiPYjLO/LvG006YbvkkqFC8Ooop7teOKuwNZJe', '$2y$10$7YHXFuKjBMO8BTbQc0edt.ITLChdkABzyXJVJ0efxujVsKbzyRW0G'),
(5, 11, 0, '$2y$10$0aXsn0.rxXD1xdTHUieqleAa9GL9MaP2d9c.6UObykx1Lf3k3rIRq', '$2y$10$RS8oLhfOSCcZ0JfZF6/NC.9GW14.l4Mu8gfolVpYPdBSvu1Bjh/Zq'),
(1, 12, 3, '$2y$10$v7.eBXTFLgqtsYWSkHFRU.NNF6kVgMe/wHMXHobGYYkEdrokKaigS', '$2y$10$hGVLspxe.Hy9oObaLZUV9.SDjEUczrMjvArA6iAly.pMj7HuIVAl2'),
(1, 13, 4, '$2y$10$MFgJOKHF7yKtFQKIhOkg1eAJDrt3zzrP.3qmYr.K6lcA/2p30Tmuy', '$2y$10$mge70GmvAy0.ciSfBtWCTeFM6x/qaCA6Y2itnSimowsrnJcyHomsq'),
(1, 14, 5, '$2y$10$MnWEdal/leihE7pw5iP0UOAL9FOiuedJgy3FY7X/AFWdjQMOPO02e', '$2y$10$5/WVBJorGFgZ0U9JGl4HWOvBQnmzi.tZZGpsnVhpDkKvTVC7ph5Si'),
(1, 15, 6, '$2y$10$ppkMXsZPL6t.mlKcsg3TW.eBIT1yx56ULlnFQXEqh5TBD8MXFwQ0m', '$2y$10$YNVfz7hRj5LfMX04VR7sKumy5hONSjPqJRB3gdQhLHA2OLZOsU8dW'),
(1, 16, 7, '$2y$10$2TaGT9QjWHVa8o423dBPiuwJmRRwAxk3KRmI.PXWXe5SxPQpAYAHa', '$2y$10$Xbsy5O4YSMKExauu/D13GexJYC52jhjyWokpMPs8CMBCJQ0UgoNWq'),
(1, 17, 8, '$2y$10$CR5/HRE54URKrlyxOc78gOL49MEvnVeF48QxpR2Hw.Yj/bSz3nFTS', '$2y$10$Uwb8qSUCgL4faQYDvvgcIO1mgJ/K9uB0Gs5DafPMxtYlR0/UUE8py'),
(2, 18, 3, '$2y$10$.cWt8tsJ7K0pZPfEZ4R9oeTmA8SrjcuhUwfrNFpUIYzV0Q5VthQK.', '$2y$10$oYOFIXcTDp6k1l1W..jNw.4V6JxtgXpxZRkEmgI5vpbRk4ibijtv2'),
(2, 19, 4, '$2y$10$qHWEkoj0bBzP3u8KtmAORurck2bky2GpINYyRiEnzNWWujEtyj6oi', '$2y$10$I7f3CW8Cc4TYlGhRu8JMkOr4kqGEZO40gaEPC.EU5oC7SdQdWwE.C'),
(2, 20, 5, '$2y$10$gdt4VW5/0Oz9bWwsW353B.BvxkCK3mRxXbkl1gtMJvSgiFieU9ccS', '$2y$10$im6V4SMfV3Ku6/MYbdfwOe5pfB2zbKNbMmiUCY0O66FvuLVrGT4Wu'),
(2, 21, 6, '$2y$10$uClFtGrTbi4pjQYHB5YdPO7bTCnXFcq.rCLjlyqiJ71Y3HKa9MWzq', '$2y$10$U3DMTQR2G5KDN0zggIbMbe30nK/g9O7ZRtMf.L6U/Qt.4kFFIaJJy'),
(2, 22, 7, '$2y$10$DpCvKeBsWSgYdlEJ.CeDmucpR/CTI0f7PjVrWDKe9Sw0Alu39eER6', '$2y$10$Xh8B6wydv2zYMyQg5Ix.TORVGUWswbZeeQAPNewBxArRg847VSDam'),
(2, 23, 8, '$2y$10$e1x/zB.tU8W0p7Eh2gQqvuDOv0XNa/4pnatBibZT3.CNLKA32r65y', '$2y$10$2y57zO5mpIajJpxRmnuS1eLTi39k9JCLEL/0dfMkcCpwG5tFOGPl6'),
(2, 24, 9, '$2y$10$fQNCiyzlKiAN4dK.JlN/3e8NHRKtRwihcEgZa5flrtNMCHs7hpjyK', '$2y$10$JZW7J9DnGSuekzpJaVJX1emh9.jxz5qy7mygqsOTfuPAMLYaWbgk2'),
(2, 25, 10, '$2y$10$Q0LMzx7GxxrgBxp4iAvqp.YftBrKSmi5DLSgPTMNBj8gnyPqrz5N.', '$2y$10$cSEWhP6K0cPixk8LQdwyluZYV48PqLjL6JOyKy9QTSWXrgwGPFXVe'),
(2, 26, 11, '$2y$10$fjwgV65y6aRspphVVfv.P.C.PdrCXJNcTFqLpItgOq8M8f3OTCVSK', '$2y$10$TzmfPg4zEhErsmS6xR0zYOmY/PnfSdCx3ntXfmMbV8d3oi1MnhCBC'),
(2, 27, 12, '$2y$10$o9AVMJWSE8OMXTW3.91wsuJ6sOMg3jcBwtWTHm3Ghgf6uK9BAUl.C', '$2y$10$YtvQcvTCUXsix1CSxJget.Q72qCfx9BNGiO2q92XHCwoVXZ2X0SnC'),
(2, 28, 13, '$2y$10$fZaUlks6v1oNK5BDUyP7VO/K3X6aOKvU9EWiB2HQxpGmNQBnI7KqW', '$2y$10$ykB1lCF4BXQ00S0Jz8c.6ODH7EyF7J9gVfylbBn/aHGs9xFbDy24i'),
(2, 29, 14, '$2y$10$z4ZTv.Cp7olzRFhjmogHnu5QJ36BEaoCGKOvKPJA6vh9fK4RJtfAe', '$2y$10$f1LItOric7Z20dzC5NeWoeTWfXO.BZv4HhMrn9bX7MSWQdN8XnG2m'),
(2, 30, 15, '$2y$10$6GZ4zh7rLvJpxs1qFx0yhelOvuC3HtSCgu4lgP5oaVNEVCioKwiyu', '$2y$10$Uc4Npsy2d5ZnIWnK2WqQsueMP7MApvhwgvMDAsFu27/6v2.hcxCP2'),
(2, 31, 16, '$2y$10$BCPX4wgcPwJh90IJ8XumRucL8wwatQVFyQxCK8OtfWHBAeRw6yg72', '$2y$10$bfcdfkf5Si6INDlbfedeEuH3OOh5qPXwlUH4T0p/76JrwIer/AENi'),
(2, 32, 17, '$2y$10$71uLrQJItILEg2NDEhF1eeANMTZAqCFW8s4YFO14BdrYWdewlRiD6', '$2y$10$d2CeWPuIws1qyE9pMJ/5SuzsGfxVWOC5O6wOXrxjjeww6IuIAbHWy'),
(2, 33, 18, '$2y$10$BCUnJF1z.U5fXO.w7.g32utX7twPFYNDjPH4h.jykH.IvfnmZ1t7K', '$2y$10$VxbybAqmO/3ebTC8RnkGyOUJjOas.gPgWkIJiqEWVc1SXfCMX7xbu'),
(2, 34, 19, '$2y$10$uxCrZp5RduXnHVkNzRkU9.hC14wyX.rBybpDKUnTc1A28/7xjLruu', '$2y$10$qLTzxsRDlnhMvbe.cKzOyuN.KwhZTyN0rpspGhI1MYzUw4yYpPso2'),
(2, 35, 20, '$2y$10$Q0lhFtzjqgUE4N2wm0VIiOE9avOuj6QRLbqOC1ffyuwh5GIxRhbMq', '$2y$10$R7MnvZOoL1XQJg3/Jr22A.gE0u3SCT7lldyf3N5k19LpefoOtUagS'),
(2, 36, 22, '$2y$10$jD7Ka4ghQUN6kVsbyDXP2.z6nZzOb0WKBXnPtlyH9evPTDCPwc6je', '$2y$10$WwRHYMtY2h48u0hhGuzWb.S4K3Vmh13reZFLHVLUH8QPSVHHW/ZWy');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business_admins`
--
ALTER TABLE `business_admins`
  ADD CONSTRAINT `business_admins_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`business_id`);

--
-- Constraints for table `item_list`
--
ALTER TABLE `item_list`
  ADD CONSTRAINT `item_list_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`business_id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`business_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

