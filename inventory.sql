# IMPORT THIS FILE TO YOUR MYSQL DATABASE TO SET UP THE DB STRUCTURE - OBVIOUSLY THE DATA ENTRY IS UP TO YOU## phpMyAdmin SQL Dump# version 2.5.7-pl1# http://www.phpmyadmin.net## Host: localhost# Generation Time: Aug 13, 2008 at 02:59 PM# Server version: 5.0.22# PHP Version: 5.1.6# # Database : `inventory`# # --------------------------------------------------------## Table structure for table `accessorytype`#CREATE TABLE `accessorytype` (  `ID` int(11) NOT NULL auto_increment,  `Name` varchar(255) NOT NULL default '',  PRIMARY KEY  (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;# --------------------------------------------------------## Table structure for table `cat_X_kit`#CREATE TABLE `cat_X_kit` (  `ID` int(10) NOT NULL auto_increment,  `KITID` varchar(255) NOT NULL,  `CATID` varchar(255) NOT NULL,  PRIMARY KEY  (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;# --------------------------------------------------------## Table structure for table `catagories`#CREATE TABLE `catagories` (  `ID` int(16) NOT NULL auto_increment,  `Name` varchar(255) NOT NULL,  PRIMARY KEY  (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;# --------------------------------------------------------## Table structure for table `checkedout`#CREATE TABLE `checkedout` (  `ID` int(11) NOT NULL auto_increment,  `KitID` int(11) NOT NULL default '0',  `StudentID` int(11) NOT NULL default '0',  `DateOut` datetime NOT NULL default '0000-00-00 00:00:00',  `ExpectedDateIn` datetime NOT NULL default '0000-00-00 00:00:00',  `DateIn` varchar(255) NOT NULL default '',  `FinePaid` varchar(255) default NULL,  `Reserved` int(11) default NULL,  `Accessories` varchar(255) NOT NULL default '',  `Notes` varchar(255) default NULL,  `Problem` int(1) NOT NULL default '0',  `CheckoutUser` varchar(255) NOT NULL default '0',  `CheckinUser` varchar(255) NOT NULL default '',  PRIMARY KEY  (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=536 ;# --------------------------------------------------------## Table structure for table `class`#CREATE TABLE `class` (  `ID` int(11) NOT NULL auto_increment,  `Name` varchar(255) NOT NULL default '',  UNIQUE KEY `ID` (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;# --------------------------------------------------------## Table structure for table `kit`#CREATE TABLE `kit` (  `ID` int(16) NOT NULL auto_increment,  `Name` varchar(255) NOT NULL default '',  `Image` varchar(255) default NULL,  `SerialNumber` varchar(100) default NULL,  `ModelNumber` varchar(100) default NULL,  `ImageThumb` varchar(100) default NULL,  `Notes` varchar(255) default NULL,  `CheckedOut` int(1) NOT NULL default '0',  `Student_ID` varchar(255) NOT NULL default '',  `DateOut` varchar(255) NOT NULL default '',  `DueBack` varchar(255) NOT NULL default '',  `Value` varchar(10) NOT NULL,  UNIQUE KEY `ID` (`ID`),  UNIQUE KEY `ID_2` (`ID`),  KEY `Name` (`Name`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=131 ;# --------------------------------------------------------## Table structure for table `kit_accessorytype`#CREATE TABLE `kit_accessorytype` (  `ID` int(16) NOT NULL auto_increment,  `KitID` int(16) NOT NULL default '0',  `AccessorytypeID` int(16) NOT NULL default '0',  PRIMARY KEY  (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=709 ;# --------------------------------------------------------## Table structure for table `kit_class`#CREATE TABLE `kit_class` (  `ID` int(16) NOT NULL auto_increment,  `KitID` int(16) NOT NULL default '0',  `ClassID` int(16) NOT NULL default '0',  `CheckHours` int(16) NOT NULL default '0',  `OverNightAllowed` int(1) NOT NULL default '0',  PRIMARY KEY  (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=519 ;## Dumping data for table `kit_class`#INSERT INTO `kit_class` VALUES (384, 71, 7, 24, 1);INSERT INTO `kit_class` VALUES (1, 2, 1, 24, 1);INSERT INTO `kit_class` VALUES (2, 4, 1, 24, 1);INSERT INTO `kit_class` VALUES (3, 5, 1, 24, 1);INSERT INTO `kit_class` VALUES (4, 7, 1, 24, 1);INSERT INTO `kit_class` VALUES (5, 8, 1, 24, 1);INSERT INTO `kit_class` VALUES (6, 9, 1, 24, 1);INSERT INTO `kit_class` VALUES (518, 10, 1, 24, 1);# --------------------------------------------------------## Table structure for table `student_class`#CREATE TABLE `student_class` (  `ID` int(16) NOT NULL auto_increment,  `StudentID` varchar(255) NOT NULL default '0',  `ClassID` int(16) NOT NULL default '0',  PRIMARY KEY  (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;# --------------------------------------------------------## Table structure for table `students`#CREATE TABLE `students` (  `ID` int(11) NOT NULL auto_increment,  `StudentID` varchar(255) NOT NULL default '',  `FirstName` varchar(255) NOT NULL default '',  `LastName` varchar(255) NOT NULL default '',  `Email` varchar(255) default NULL,  `Phone` varchar(255) default NULL,  `ContractSigned` int(1) default NULL,  UNIQUE KEY `ID` (`ID`),  UNIQUE KEY `ID_2` (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;# --------------------------------------------------------## Table structure for table `users`#CREATE TABLE `users` (  `ID` int(11) NOT NULL auto_increment,  `Username` varchar(255) NOT NULL default '',  `Password` varchar(255) NOT NULL default '',  PRIMARY KEY  (`ID`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;