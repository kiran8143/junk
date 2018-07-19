-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-ipg32.eigbox.net
-- Generation Time: Jul 17, 2018 at 09:51 AM
-- Server version: 5.6.37
-- PHP Version: 4.4.9
-- 
-- Database: `followgigs`
-- 
DROP DATABASE `followgigs`;
CREATE DATABASE `followgigs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `followgigs`;

-- --------------------------------------------------------

-- 
-- Table structure for table `emp_hiring`
-- 

DROP TABLE IF EXISTS `emp_hiring`;
CREATE TABLE IF NOT EXISTS `emp_hiring` (
  `eh_id` int(12) NOT NULL AUTO_INCREMENT,
  `employer_id` int(10) NOT NULL,
  `industry` int(10) NOT NULL,
  `level` int(2) NOT NULL,
  `skills` text NOT NULL,
  `experience` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`eh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

-- 
-- Dumping data for table `emp_hiring`
-- 

INSERT INTO `emp_hiring` VALUES (19, 4, 1, 3, 'php', '5', '2017-10-17 17:08:48');
INSERT INTO `emp_hiring` VALUES (20, 3, 1, 3, 'PHP', '5', '2017-10-17 17:24:23');
INSERT INTO `emp_hiring` VALUES (21, 1, 1, 1, 'php', '2', '2017-11-05 14:14:56');
INSERT INTO `emp_hiring` VALUES (22, 1, 3, 3, 'th,gg', '5', '2017-11-05 14:14:56');
INSERT INTO `emp_hiring` VALUES (46, 5, 2, 3, 'test', '123', '2018-02-01 23:48:33');
INSERT INTO `emp_hiring` VALUES (47, 5, 1, 2, 'rest', 'te', '2018-02-01 23:48:33');
INSERT INTO `emp_hiring` VALUES (48, 5, 3, 2, '', '', '2018-02-01 23:48:33');
INSERT INTO `emp_hiring` VALUES (49, 5, 15, 1, '', '', '2018-02-01 23:48:33');
INSERT INTO `emp_hiring` VALUES (50, 5, 5, 3, '', '', '2018-02-01 23:48:33');
INSERT INTO `emp_hiring` VALUES (51, 9, 26, 2, '.Net, JAVA, Selenium', '7 Years', '2018-06-09 14:20:53');

-- --------------------------------------------------------

-- 
-- Table structure for table `job_category`
-- 

DROP TABLE IF EXISTS `job_category`;
CREATE TABLE IF NOT EXISTS `job_category` (
  `jcat_id` int(10) NOT NULL AUTO_INCREMENT,
  `jcategory` varchar(50) NOT NULL,
  `active_flag` int(1) NOT NULL DEFAULT '0',
  `created_user` int(10) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_user` int(10) NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`jcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

-- 
-- Dumping data for table `job_category`
-- 

INSERT INTO `job_category` VALUES (1, 'IT/Hardware & Computing', 1, 0, '2018-04-10 04:13:52', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (2, 'Retail', 1, 0, '2018-04-10 04:13:37', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (3, 'Sales', 1, 0, '2018-04-10 04:13:55', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (4, 'Human Resource', 1, 0, '2018-04-10 04:13:51', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (5, 'HealthCare', 1, 0, '2018-04-10 04:13:31', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (6, 'Government', 1, 0, '2018-02-23 18:49:49', 1, '2018-02-23 15:30:00');
INSERT INTO `job_category` VALUES (7, 'Banking & Finance', 1, 0, '2018-04-10 04:13:19', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (8, 'Science &amp; Engineering', 1, 0, '2018-04-10 04:13:56', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (9, 'Marketing', 1, 0, '2018-04-10 04:13:54', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (10, 'Legal', 1, 0, '2018-04-10 04:13:53', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (11, 'Education', 1, 0, '2018-04-10 04:13:23', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (12, 'Media & Communications', 1, 0, '2018-04-10 04:13:44', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (13, '', 1, 0, '2017-09-19 19:35:48', 1, '2017-09-19 05:00:00');
INSERT INTO `job_category` VALUES (14, 'Hospitality', 1, 1, '2018-04-10 04:13:44', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (15, 'Medical Chain gr', 1, 1, '2018-04-10 04:13:42', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (16, 'Medical Chain', 1, 1, '2018-04-10 04:13:43', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (17, 'Medical Chain', 1, 1, '2018-04-10 04:13:42', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (18, 'cd', 1, 1, '2018-02-23 18:49:11', 1, '2018-02-23 15:30:00');
INSERT INTO `job_category` VALUES (19, 'cdu', 1, 1, '2018-02-23 18:49:15', 1, '2018-02-23 15:30:00');
INSERT INTO `job_category` VALUES (20, 'Software', 1, 1, '2018-04-10 04:13:58', 1, '2018-04-09 14:30:00');
INSERT INTO `job_category` VALUES (21, 'IT', 1, 1, '2018-02-23 18:50:46', 1, '2018-02-23 15:30:00');
INSERT INTO `job_category` VALUES (22, 'Retail', 1, 1, '2018-04-10 15:57:52', 1, '2018-04-10 14:30:00');
INSERT INTO `job_category` VALUES (23, 'gfgf', 1, 1, '2018-04-10 15:57:49', 1, '2018-04-10 14:30:00');
INSERT INTO `job_category` VALUES (24, 'Retail', 1, 1, '2018-04-10 15:57:11', 1, '2018-04-10 14:30:00');
INSERT INTO `job_category` VALUES (25, 'Retail', 0, 1, '2018-04-10 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (26, 'IT/Hardware & Computing', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (27, 'Manufacturing', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (28, 'Human Resource', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (29, 'HealthCare', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (30, 'Government', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (31, 'Banking/Finance & Insurance', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (32, 'Science & Engineering', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (33, 'Sales & Marketing', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (34, 'Legal', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (35, 'Education/ Training', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (36, 'Media & Communications', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (37, 'Real Estate', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (38, 'Travel & Logistics', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (39, 'Others', 0, 1, '2018-04-24 14:30:00', 0, '0000-00-00 00:00:00');
INSERT INTO `job_category` VALUES (40, 'Software1', 1, 1, '2018-07-08 02:10:36', 1, '2018-07-08 00:00:00');
INSERT INTO `job_category` VALUES (41, 'Software', 0, 1, '2018-07-08 02:10:58', 1, '2018-07-08 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_city`
-- 

DROP TABLE IF EXISTS `mstr_city`;
CREATE TABLE IF NOT EXISTS `mstr_city` (
  `city_code` int(10) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(30) NOT NULL,
  `state_code` int(10) NOT NULL,
  `country_code` int(15) NOT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`city_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `mstr_city`
-- 

INSERT INTO `mstr_city` VALUES (1, 'Kochi', 1, 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (2, 'Calicut', 1, 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (3, 'Trivandrum', 1, 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (4, 'Banglore', 2, 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (5, 'Manglore', 2, 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (6, 'Chennai', 3, 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (7, 'Coimbatore', 3, 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (8, 'Trichy', 3, 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (9, 'Kollam', 1, 1, '1', '2017-10-18', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (10, 'VISAKHAPATNAM', 10, 1, '1', '2018-01-31', '', '0000-00-00', 0);
INSERT INTO `mstr_city` VALUES (11, 'Bhimavaram', 11, 1, '1', '2018-01-31', '1', '2018-01-31', 0);
INSERT INTO `mstr_city` VALUES (12, 'Santa Rosa', 5, 2, '1', '2018-05-08', '1', '2018-07-08', 1);
INSERT INTO `mstr_city` VALUES (13, 'Vizag1', 13, 1, '1', '2018-07-08', '1', '2018-07-08', 1);
INSERT INTO `mstr_city` VALUES (14, 'Vizag1', 13, 1, '1', '2018-07-08', '1', '2018-07-08', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_country`
-- 

DROP TABLE IF EXISTS `mstr_country`;
CREATE TABLE IF NOT EXISTS `mstr_country` (
  `country_code` int(10) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(20) NOT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `mobile_code` varchar(15) NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `mstr_country`
-- 

INSERT INTO `mstr_country` VALUES (1, 'INDIA', '1', '2017-10-12', '1', '2018-04-07', '', 1);
INSERT INTO `mstr_country` VALUES (2, 'USA', '1', '2017-10-12', '1', '2018-07-08', '', 1);
INSERT INTO `mstr_country` VALUES (3, 'Srilanka', '1', '2017-10-18', '1', '2018-04-07', '', 1);
INSERT INTO `mstr_country` VALUES (4, 'India', '1', '2018-01-31', '1', '2018-04-07', '', 0);
INSERT INTO `mstr_country` VALUES (5, 'Germany', '1', '2018-01-31', '1', '2018-07-08', '', 1);
INSERT INTO `mstr_country` VALUES (6, 'america', '1', '2018-01-31', '1', '2018-07-12', '', 1);
INSERT INTO `mstr_country` VALUES (7, 'Japan', '1', '2018-02-24', '1', '2018-04-07', '', 1);
INSERT INTO `mstr_country` VALUES (8, 'Nepal', '1', '2018-07-08', '', '0000-00-00', '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_designation`
-- 

DROP TABLE IF EXISTS `mstr_designation`;
CREATE TABLE IF NOT EXISTS `mstr_designation` (
  `designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `Designation` varchar(15) DEFAULT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `mstr_designation`
-- 

INSERT INTO `mstr_designation` VALUES (1, 'user2', '1', '2017-06-29', '1', '2017-06-29', 1);
INSERT INTO `mstr_designation` VALUES (2, 'cvbc', '1', '2017-06-29', '', '0000-00-00', 0);
INSERT INTO `mstr_designation` VALUES (3, 'bvcbc', '1', '2017-06-29', '', '0000-00-00', 0);
INSERT INTO `mstr_designation` VALUES (4, 'add', '1', '2017-07-01', '', '0000-00-00', 0);
INSERT INTO `mstr_designation` VALUES (5, 'nbmnbm', '1', '2017-08-19', '', '0000-00-00', 0);
INSERT INTO `mstr_designation` VALUES (6, 'bvnbn', '1', '2017-08-19', '', '0000-00-00', 0);
INSERT INTO `mstr_designation` VALUES (7, '', '1', '2017-08-19', '1', '2017-08-22', 1);
INSERT INTO `mstr_designation` VALUES (8, '', '1', '2017-08-19', '1', '2017-08-22', 1);
INSERT INTO `mstr_designation` VALUES (9, 'nvbn', '1', '2017-08-19', '1', '2017-08-22', 1);
INSERT INTO `mstr_designation` VALUES (10, ',mmmmm', '1', '2017-08-19', '1', '2017-08-22', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_function_area`
-- 

DROP TABLE IF EXISTS `mstr_function_area`;
CREATE TABLE IF NOT EXISTS `mstr_function_area` (
  `function_id` int(11) NOT NULL AUTO_INCREMENT,
  `function_area` text,
  `industry` int(11) NOT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`function_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `mstr_function_area`
-- 

INSERT INTO `mstr_function_area` VALUES (3, 'IT', 26, '1', '2018-07-06', '1', '2018-07-06', 0);
INSERT INTO `mstr_function_area` VALUES (4, 'Software', 26, '1', '2018-07-06', '1', '2018-07-06', 0);
INSERT INTO `mstr_function_area` VALUES (5, 'Digital Marketing', 26, '1', '2018-07-08', '1', '2018-07-08', 0);
INSERT INTO `mstr_function_area` VALUES (6, 'Soft', 26, '1', '2018-07-10', '1', '2018-07-12', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_jobroles`
-- 

DROP TABLE IF EXISTS `mstr_jobroles`;
CREATE TABLE IF NOT EXISTS `mstr_jobroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(1) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `mstr_jobroles`
-- 

INSERT INTO `mstr_jobroles` VALUES (1, 'Web developer', 1, '2018-05-08 02:54:35');
INSERT INTO `mstr_jobroles` VALUES (2, 'manager', 1, '2018-06-23 04:08:53');

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_levels`
-- 

DROP TABLE IF EXISTS `mstr_levels`;
CREATE TABLE IF NOT EXISTS `mstr_levels` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(15) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `mstr_levels`
-- 

INSERT INTO `mstr_levels` VALUES (1, 'Junior Level');
INSERT INTO `mstr_levels` VALUES (2, 'Mid Level');
INSERT INTO `mstr_levels` VALUES (3, 'Senior Level');

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_location`
-- 

DROP TABLE IF EXISTS `mstr_location`;
CREATE TABLE IF NOT EXISTS `mstr_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `Location` varchar(50) DEFAULT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `mstr_location`
-- 

INSERT INTO `mstr_location` VALUES (1, 'Thiruvananthapuram', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `mstr_location` VALUES (2, 'Cochin', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `mstr_location` VALUES (3, 'Banglore', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `mstr_location` VALUES (4, 'Chennai', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `mstr_location` VALUES (5, 'Hyderabad', '1', '2017-09-20', '', '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_nationality`
-- 

DROP TABLE IF EXISTS `mstr_nationality`;
CREATE TABLE IF NOT EXISTS `mstr_nationality` (
  `nationality_id` int(11) NOT NULL AUTO_INCREMENT,
  `nationality` varchar(15) DEFAULT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`nationality_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `mstr_nationality`
-- 

INSERT INTO `mstr_nationality` VALUES (1, 'PHP', '1', '2018-05-07', '1', '0000-00-00', 0);
INSERT INTO `mstr_nationality` VALUES (2, 'Java', '1', '2018-06-06', '1', '2018-06-20', 0);
INSERT INTO `mstr_nationality` VALUES (3, 'Testing', '1', '2018-06-20', '1', '2018-06-20', 0);
INSERT INTO `mstr_nationality` VALUES (4, 'Spring', '1', '2018-06-27', '', '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_qualification`
-- 

DROP TABLE IF EXISTS `mstr_qualification`;
CREATE TABLE IF NOT EXISTS `mstr_qualification` (
  `qualification_id` int(11) NOT NULL AUTO_INCREMENT,
  `qualification` text,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`qualification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `mstr_qualification`
-- 

INSERT INTO `mstr_qualification` VALUES (1, 'btech,bca', '1', '2017-08-22', '1', '2017-08-22', 1);
INSERT INTO `mstr_qualification` VALUES (2, 'Msc,MBA', '1', '2017-08-22', '1', '2017-08-22', 1);
INSERT INTO `mstr_qualification` VALUES (3, 'PHD', '', '0000-00-00', '1', '2018-07-08', 1);
INSERT INTO `mstr_qualification` VALUES (4, 'Diploma', '1', '2017-08-22', '1', '2017-08-22', 1);
INSERT INTO `mstr_qualification` VALUES (5, 'B.tech', '1', '2017-10-18', '1', '2018-07-08', 1);
INSERT INTO `mstr_qualification` VALUES (6, 'B.E', '1', '2018-01-31', '1', '2018-07-12', 1);
INSERT INTO `mstr_qualification` VALUES (7, 'B.Com', '1', '2018-07-12', '', '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_salary`
-- 

DROP TABLE IF EXISTS `mstr_salary`;
CREATE TABLE IF NOT EXISTS `mstr_salary` (
  `sal_id` int(10) NOT NULL AUTO_INCREMENT,
  `sal_range` varchar(50) NOT NULL,
  PRIMARY KEY (`sal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `mstr_salary`
-- 

INSERT INTO `mstr_salary` VALUES (1, '0 - 2 lakhs');
INSERT INTO `mstr_salary` VALUES (2, '2  - 5 lakhs');
INSERT INTO `mstr_salary` VALUES (3, '5 - 7 lakhs');
INSERT INTO `mstr_salary` VALUES (4, '7 - 10 lakhs');
INSERT INTO `mstr_salary` VALUES (5, '10 - 20 lakhs');
INSERT INTO `mstr_salary` VALUES (6, '20 - 50 lakhs');
INSERT INTO `mstr_salary` VALUES (7, '> 50 lakhs');

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_settings`
-- 

DROP TABLE IF EXISTS `mstr_settings`;
CREATE TABLE IF NOT EXISTS `mstr_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(50) DEFAULT NULL,
  `option_value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `mstr_settings`
-- 

INSERT INTO `mstr_settings` VALUES (1, 'resume_download_limit', '1');
INSERT INTO `mstr_settings` VALUES (2, 'resume_view_limit', '2');

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_skill`
-- 

DROP TABLE IF EXISTS `mstr_skill`;
CREATE TABLE IF NOT EXISTS `mstr_skill` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` text,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `mstr_skill`
-- 

INSERT INTO `mstr_skill` VALUES (1, 'fff', '1', '2017-08-22', '1', '2017-08-22', 1);
INSERT INTO `mstr_skill` VALUES (2, 'Codeigniter', '1', '2018-05-07', '', '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_state`
-- 

DROP TABLE IF EXISTS `mstr_state`;
CREATE TABLE IF NOT EXISTS `mstr_state` (
  `state_code` int(10) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(15) NOT NULL,
  `country_code` int(15) NOT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`state_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `mstr_state`
-- 

INSERT INTO `mstr_state` VALUES (1, 'Kerala', 1, '1', '2017-10-13', '1', '2018-04-06', 0);
INSERT INTO `mstr_state` VALUES (2, 'Karnataka', 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_state` VALUES (3, 'Tamil Nadu', 1, '1', '2017-10-13', '', '0000-00-00', 0);
INSERT INTO `mstr_state` VALUES (4, 'Hyderabad', 1, '1', '2017-10-13', '1', '2018-04-06', 0);
INSERT INTO `mstr_state` VALUES (5, 'Sanfranssisco', 2, '1', '2017-10-13', '1', '2018-04-06', 1);
INSERT INTO `mstr_state` VALUES (6, 'Mumbai', 1, '1', '2017-10-18', '', '0000-00-00', 0);
INSERT INTO `mstr_state` VALUES (7, 'Washington', 2, '1', '2018-01-31', '1', '2018-04-06', 1);
INSERT INTO `mstr_state` VALUES (8, 'London', 4, '1', '2018-01-31', '1', '2018-01-31', 1);
INSERT INTO `mstr_state` VALUES (9, 'Los Angels', 2, '1', '2018-01-31', '1', '2018-04-06', 1);
INSERT INTO `mstr_state` VALUES (10, 'AP', 1, '1', '2018-01-31', '1', '2018-04-06', 0);
INSERT INTO `mstr_state` VALUES (11, 'Telangana', 1, '1', '2018-01-31', '', '0000-00-00', 0);
INSERT INTO `mstr_state` VALUES (12, 'New York', 4, '1', '2018-04-06', '', '0000-00-00', 0);
INSERT INTO `mstr_state` VALUES (13, 'U.P', 1, '1', '2018-07-08', '1', '2018-07-08', 1);
INSERT INTO `mstr_state` VALUES (14, 'M.P', 1, '1', '2018-07-12', '1', '2018-07-12', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_subjects`
-- 

DROP TABLE IF EXISTS `mstr_subjects`;
CREATE TABLE IF NOT EXISTS `mstr_subjects` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idustry_id` int(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  `active_flag` int(11) NOT NULL,
  `publish_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `mstr_subjects`
-- 

INSERT INTO `mstr_subjects` VALUES (1, 1, 'java', '1', '2018-01-22', 0, 1);
INSERT INTO `mstr_subjects` VALUES (2, 1, 'php', '1', '2018-01-22', 0, 1);
INSERT INTO `mstr_subjects` VALUES (3, 1, 'dotnet', '1', '2018-01-22', 0, 1);
INSERT INTO `mstr_subjects` VALUES (4, 4, 'marketing', '1', '2018-01-22', 0, 1);
INSERT INTO `mstr_subjects` VALUES (5, 1, 'Java', '1', '2018-01-22', 1, 1);
INSERT INTO `mstr_subjects` VALUES (6, 1, 'Python', '1', '2018-01-27', 0, 1);
INSERT INTO `mstr_subjects` VALUES (7, 1, 'Reliance Model', '1', '2018-01-31', 0, 1);
INSERT INTO `mstr_subjects` VALUES (8, 9, 'Future Group', '1', '2018-01-31', 0, 1);
INSERT INTO `mstr_subjects` VALUES (9, 2, 'Reliance Model', '1', '2018-01-31', 0, 1);
INSERT INTO `mstr_subjects` VALUES (10, 1, 'PHP', '1', '2018-04-07', 0, 1);
INSERT INTO `mstr_subjects` VALUES (11, 26, 'Java', '1', '2018-07-09', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `mstr_usertype`
-- 

DROP TABLE IF EXISTS `mstr_usertype`;
CREATE TABLE IF NOT EXISTS `mstr_usertype` (
  `type_code` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) DEFAULT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `mstr_usertype`
-- 

INSERT INTO `mstr_usertype` VALUES (1, 'user2', '1', '2017-06-29', '1', '2017-06-29', 1);
INSERT INTO `mstr_usertype` VALUES (2, 'cvbc', '1', '2017-06-29', '', '0000-00-00', 0);
INSERT INTO `mstr_usertype` VALUES (3, 'bvcbc', '1', '2017-06-29', '1', '2017-08-22', 1);
INSERT INTO `mstr_usertype` VALUES (4, 'add1', '1', '2017-07-01', '1', '2017-08-22', 1);
INSERT INTO `mstr_usertype` VALUES (5, 'nbmnbm', '1', '2017-08-19', '', '0000-00-00', 0);
INSERT INTO `mstr_usertype` VALUES (6, 'bvnbn', '1', '2017-08-19', '', '0000-00-00', 0);
INSERT INTO `mstr_usertype` VALUES (7, 'nvbnvbn', '1', '2017-08-22', '1', '2017-08-22', 1);
INSERT INTO `mstr_usertype` VALUES (8, 'ghf', '1', '2017-08-22', '', '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `opensource_contribution`
-- 

DROP TABLE IF EXISTS `opensource_contribution`;
CREATE TABLE IF NOT EXISTS `opensource_contribution` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(10) NOT NULL,
  `product_name` text,
  `github_url` text,
  `blog_url` text,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `opensource_contribution`
-- 

INSERT INTO `opensource_contribution` VALUES (1, 13, 'Product Name', 'GITHUB URL Repositry', 'Blog Url', '2017-10-11 18:09:03');
INSERT INTO `opensource_contribution` VALUES (2, 13, 'Product Name', 'GITHUB URL Repositry', 'Blog Url', '2017-10-12 16:40:39');
INSERT INTO `opensource_contribution` VALUES (3, 17, 'santh', 'www.google.co.in', 'www.google.co.in', '2017-10-17 16:55:02');
INSERT INTO `opensource_contribution` VALUES (4, 17, 'santh', 'www.google.co.in', 'www.google.co.in', '2017-10-17 18:12:02');

-- --------------------------------------------------------

-- 
-- Table structure for table `search_history`
-- 

DROP TABLE IF EXISTS `search_history`;
CREATE TABLE IF NOT EXISTS `search_history` (
  `history_id` int(13) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `location` text NOT NULL,
  `industry` text NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- 
-- Dumping data for table `search_history`
-- 

INSERT INTO `search_history` VALUES (1, 13, '', 'a:1:{i:0;s:1:"1";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"2";}', '2017-12-09 15:30:00');
INSERT INTO `search_history` VALUES (2, 1, '', 's:1:"1";', 'a:1:{i:0;s:2:"26";}', '2018-06-23 00:00:00');
INSERT INTO `search_history` VALUES (3, 4, '', '', 'a:1:{i:0;s:1:"1";}', '2017-09-20 17:30:00');
INSERT INTO `search_history` VALUES (4, 14, '', '', '', '2017-11-02 17:30:00');
INSERT INTO `search_history` VALUES (5, 15, '', '', '', '2017-09-18 17:30:00');
INSERT INTO `search_history` VALUES (6, 16, '', '', '', '2017-09-18 17:30:00');
INSERT INTO `search_history` VALUES (7, 17, '', 'a:2:{i:0;s:1:"2";i:1;s:1:"3";}', 'a:1:{i:0;s:1:"7";}', '2018-05-02 14:30:00');
INSERT INTO `search_history` VALUES (8, 18, '', '', '', '2017-10-17 17:30:00');
INSERT INTO `search_history` VALUES (9, 19, '', '', '', '2017-11-02 17:30:00');
INSERT INTO `search_history` VALUES (10, 20, '', '', '', '2017-10-17 17:30:00');
INSERT INTO `search_history` VALUES (11, 21, '', 'a:1:{i:0;s:1:"2";}', 'a:1:{i:0;s:1:"1";}', '2017-10-19 17:30:00');
INSERT INTO `search_history` VALUES (12, 22, '', '', '', '2017-09-19 17:30:00');
INSERT INTO `search_history` VALUES (13, 27, '', '', '', '2018-04-04 14:30:00');
INSERT INTO `search_history` VALUES (14, 26, '', '', '', '2017-09-19 17:30:00');
INSERT INTO `search_history` VALUES (15, 28, '', '', '', '2017-09-19 17:30:00');
INSERT INTO `search_history` VALUES (16, 3, '', '', '', '2017-11-13 15:30:00');
INSERT INTO `search_history` VALUES (17, 12, '', '', '', '2018-02-06 15:30:00');
INSERT INTO `search_history` VALUES (18, 23, '', '', '', '2018-01-17 15:30:00');
INSERT INTO `search_history` VALUES (19, 5, '', 'a:1:{i:0;s:1:"3";}', 'a:1:{i:0;s:2:"10";}', '2018-02-01 15:30:00');
INSERT INTO `search_history` VALUES (20, 29, '', 'a:1:{i:0;s:1:"2";}', '', '2018-04-04 14:30:00');
INSERT INTO `search_history` VALUES (21, 30, 'Testing', 'a:1:{i:0;s:0:"";}', 'a:2:{i:0;s:2:"26";i:1;s:2:"39";}', '2018-07-03 00:00:00');
INSERT INTO `search_history` VALUES (22, 8, '', 'a:1:{i:0;s:0:"";}', '', '2018-06-06 00:00:00');
INSERT INTO `search_history` VALUES (23, 9, '', 'a:1:{i:0;s:1:"2";}', 'a:1:{i:0;s:2:"28";}', '2018-06-10 00:00:00');
INSERT INTO `search_history` VALUES (24, 31, '', 'a:1:{i:0;s:1:"2";}', '', '2018-06-10 00:00:00');
INSERT INTO `search_history` VALUES (25, 32, '', '', '', '2018-06-27 00:00:00');
INSERT INTO `search_history` VALUES (26, 33, 'Testing,QTP', 'a:1:{i:0;s:0:"";}', '', '2018-07-16 00:00:00');
INSERT INTO `search_history` VALUES (27, 11, '', 'a:1:{i:0;s:1:"2";}', 'a:6:{i:0;s:2:"25";i:1;s:2:"26";i:2;s:2:"28";i:3;s:2:"30";i:4;s:2:"32";i:5;s:2:"35";}', '2018-07-06 00:00:00');
INSERT INTO `search_history` VALUES (28, 10, '', 'a:1:{i:0;s:0:"";}', '', '2018-07-12 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_admin`
-- 

DROP TABLE IF EXISTS `tble_admin`;
CREATE TABLE IF NOT EXISTS `tble_admin` (
  `admin_id` int(15) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact_no` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `DOJ` date NOT NULL,
  `profile_pic` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `created_user` int(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` int(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `tble_admin`
-- 

INSERT INTO `tble_admin` VALUES (1, 'Emp Name', 'Address', '12423425435', 'admin@admin.com', '1970-01-01', '1970-01-01', 'emp_001595a20431b6d0.jpg', '21232f297a57a5a743894a0e4a801fc3', 1, '2017-07-03', 1, '2017-07-03', 0);
INSERT INTO `tble_admin` VALUES (2, 'Emp Name', 'Address', '987654321', 'sdfsd@fdg.try', '2017-07-11', '2017-07-11', 'emp_002595a2053ac305.jpg', 'fghfg', 1, '2017-07-03', 1, '2017-07-03', 0);
INSERT INTO `tble_admin` VALUES (3, 'edt2', 'gfhfgh', 'hfghf', 'fghfg@fdsf.ftgyr', '2017-07-10', '2017-07-10', 'emp_003595a2031c653a.jpg', 'hfghgf', 1, '2017-07-03', 1, '2017-07-03', 1);
INSERT INTO `tble_admin` VALUES (4, 'dfgdf', 'gfdgd', '5787785', 'fgdd@fdsf.tfght', '2017-07-16', '2017-07-16', 'emp_004595a205f3e3e1.jpg', 'mnbmnb', 1, '2017-07-03', 1, '2017-07-03', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_applied_jobs`
-- 

DROP TABLE IF EXISTS `tble_applied_jobs`;
CREATE TABLE IF NOT EXISTS `tble_applied_jobs` (
  `ja_id` int(20) NOT NULL AUTO_INCREMENT,
  `job_id` int(20) NOT NULL,
  `employee_id` int(20) NOT NULL,
  `applied_date` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`ja_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `tble_applied_jobs`
-- 

INSERT INTO `tble_applied_jobs` VALUES (1, 2, 12, '2017-08-25', 'pending', '');
INSERT INTO `tble_applied_jobs` VALUES (2, 2, 12, '2017-08-25', 'pending', '');
INSERT INTO `tble_applied_jobs` VALUES (3, 2, 12, '2017-08-25', 'pending', '');
INSERT INTO `tble_applied_jobs` VALUES (4, 2, 12, '2017-08-25', 'pending', '');
INSERT INTO `tble_applied_jobs` VALUES (5, 1, 12, '2017-08-25', 'pending', '');
INSERT INTO `tble_applied_jobs` VALUES (6, 1, 13, '2017-08-28', 'pending', '');
INSERT INTO `tble_applied_jobs` VALUES (7, 10, 14, '2017-09-19', 'pending', '');
INSERT INTO `tble_applied_jobs` VALUES (8, 2, 14, '2017-09-19', 'rejected', '');
INSERT INTO `tble_applied_jobs` VALUES (9, 8, 13, '2017-09-19', 'pending', '');
INSERT INTO `tble_applied_jobs` VALUES (10, 6, 13, '2017-09-19', 'pending', '');
INSERT INTO `tble_applied_jobs` VALUES (11, 10, 21, '2017-09-19', 'approved', '');
INSERT INTO `tble_applied_jobs` VALUES (12, 10, 13, '2017-09-20', 'rejected', '');
INSERT INTO `tble_applied_jobs` VALUES (13, 2, 13, '2017-09-20', 'approved', '');
INSERT INTO `tble_applied_jobs` VALUES (14, 8, 14, '2017-09-20', '', '');
INSERT INTO `tble_applied_jobs` VALUES (15, 3, 14, '2017-09-20', 'approved', '');
INSERT INTO `tble_applied_jobs` VALUES (16, 9, 13, '2017-09-20', 'rejected', '');
INSERT INTO `tble_applied_jobs` VALUES (17, 12, 13, '2017-10-17', '', '');
INSERT INTO `tble_applied_jobs` VALUES (18, 13, 18, '2017-10-18', '', '');
INSERT INTO `tble_applied_jobs` VALUES (19, 12, 18, '2017-10-18', '', '');
INSERT INTO `tble_applied_jobs` VALUES (20, 14, 17, '2017-10-18', 'approved', '');
INSERT INTO `tble_applied_jobs` VALUES (21, 14, 14, '2017-10-18', 'approved', '');
INSERT INTO `tble_applied_jobs` VALUES (22, 15, 17, '2017-10-18', '', '');
INSERT INTO `tble_applied_jobs` VALUES (23, 14, 21, '2017-10-20', '', '');
INSERT INTO `tble_applied_jobs` VALUES (24, 10, 30, '2018-05-07', '', '');
INSERT INTO `tble_applied_jobs` VALUES (25, 9, 30, '2018-05-07', '', '');
INSERT INTO `tble_applied_jobs` VALUES (26, 19, 31, '2018-06-10', '', '');
INSERT INTO `tble_applied_jobs` VALUES (27, 22, 33, '2018-07-05', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_candidate`
-- 

DROP TABLE IF EXISTS `tble_candidate`;
CREATE TABLE IF NOT EXISTS `tble_candidate` (
  `candidate_id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `address` text,
  `current_location` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `contact_no` varchar(12) DEFAULT NULL,
  `gender` varchar(5) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `maritial_status` varchar(40) NOT NULL,
  `pre_location` varchar(40) NOT NULL,
  `industry` int(10) NOT NULL,
  `functional_area` varchar(50) NOT NULL,
  `skill_set` text NOT NULL,
  `responses` text NOT NULL,
  `experience` varchar(25) NOT NULL,
  `current_salary` float(8,2) NOT NULL,
  `exp_salary` float(8,2) NOT NULL,
  `notice_period` varchar(25) NOT NULL,
  `job_type` varchar(25) NOT NULL,
  `prefered_shift` varchar(25) NOT NULL,
  `resume_title` varchar(45) NOT NULL,
  `resume` text NOT NULL,
  `qualification` text NOT NULL,
  `languages_known` text NOT NULL,
  `cur_company` varchar(50) NOT NULL,
  `job_role` varchar(50) NOT NULL,
  `min_experience` int(3) NOT NULL,
  `max_experience` int(3) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `cur_country` int(11) DEFAULT NULL,
  `cur_state` int(11) DEFAULT NULL,
  `cur_city` int(11) DEFAULT NULL,
  `visatype` int(11) NOT NULL,
  `pre_country` int(11) DEFAULT NULL,
  `pre_state` int(11) DEFAULT NULL,
  `pre_city` int(11) DEFAULT NULL,
  `intrested_in` text NOT NULL,
  `freelance_jobs` text NOT NULL,
  `trainings` text NOT NULL,
  `description` text NOT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- 
-- Dumping data for table `tble_candidate`
-- 

INSERT INTO `tble_candidate` VALUES (1, 'user2', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', 'PHP,JAVA', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-06-29', '1', '2017-06-29', 0);
INSERT INTO `tble_candidate` VALUES (2, 'cvbc', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', 'PHP', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-06-29', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (3, 'bvcbc', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', 'PHP', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-06-29', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (4, 'add', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', 'CCNA', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-07-01', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (5, 'nbmnbm', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', 'Redhat', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-08-19', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (6, 'bvnbn', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', 'Linux', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-08-19', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (7, '', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-08-19', '1', '2017-08-22', 1);
INSERT INTO `tble_candidate` VALUES (8, '', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-08-19', '1', '2017-08-22', 1);
INSERT INTO `tble_candidate` VALUES (9, 'nvbn', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-08-19', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (10, ',mmmmm1', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-08-19', '1', '2017-08-22', 0);
INSERT INTO `tble_candidate` VALUES (11, 'lllll', NULL, '', '', '', '', '', '0000-00-00', '', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-08-19', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (12, 'jyothi', 'G', NULL, '', NULL, '8089638307', 'femal', '1970-01-01', 'jyothi@123.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', 'jyothi59a156275b7ed.docx', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '12', '2017-08-26', 0);
INSERT INTO `tble_candidate` VALUES (13, 'amal', 'Dev', NULL, '2', NULL, '7894561232', 'male', '1990-01-24', 'amal@gmail.com', 'unmarried', '1', 2, 'Redhat,Linux', 'Redhat,Linux,CCNA', 'Languages Known\r\nRoles and Responsilbilites', '2', 15000.00, 25000.00, '2', 'permanent', '2', '', '', 'Educational qualification', 'Languages Known', 'Current Company', 'Job Role', 2, 3, 'full_time', 1, 0, 0, 0, 1, 0, 0, 'Intrested In', 'Freelancing Jobs', 'Trainings', 'Testingggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', '', '0000-00-00', '13', '2017-10-13', 0);
INSERT INTO `tble_candidate` VALUES (14, 'geethu', 'G', NULL, NULL, NULL, '7894561232', 'femal', '1970-01-01', 'geethug@gmial.com', 'married', '', 0, 'IT', 'Codeigniter,Laravel,Wordpress', '', '', 0.00, 0.00, '20days', '', '', '', 'geethu59e7040f81077.docx', '', '', '', '', 2, 3, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '0000-00-00', '14', '2017-10-18', 0);
INSERT INTO `tble_candidate` VALUES (15, 'Sajeer', 'Khan', NULL, '1', NULL, '9446140663', 'male', '1986-11-30', 'jiransanth@gmail.com', 'married', '1', 0, 'IT', 'Codeigniter,Laravel,Wordpress', 'Developer', '6', 35000.00, 55000.00, '1 month', 'permanent', 'Morning', '', 'Sajeer59c0aac3d64e1.docx', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '14', '2017-09-19', 0);
INSERT INTO `tble_candidate` VALUES (16, 'Gayathri', 'G', '', '1', '', '8089638307', 'femal', '1970-01-01', 'g3@gmail.com', 'unmarried', '1', 0, 'Development', 'PHP,JAVA', 'Developing, unit testing', '2', 10000.00, 15000.00, '2 months', 'permanent', '', '', 'Gayathri59a3e6022f21f.pdf', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '1', '2017-08-19', '13', '2017-08-28', 0);
INSERT INTO `tble_candidate` VALUES (17, 'Santh', 'jiran', NULL, NULL, NULL, '9446140663', 'male', '1986-04-12', 'axnoldigital@gmail.com', 'married', '', 0, 'IT', 'PHP', 'PHP Developer', '', 24000.00, 27000.00, '15 days', 'permanent', '15 days', '', 'Santh59e705cae52be.doc', 'B.Tech', 'English', 'axnol', 'PHP Developer', 6, 6, 'full_time', 1, 0, 3, 0, 1, 1, 3, 'Music', 'Yes', 'No', '6 Years of Experience in Website Development', '', '0000-00-00', '17', '2017-10-18', 0);
INSERT INTO `tble_candidate` VALUES (18, 'sai', 'Prasad', NULL, NULL, NULL, '9909898765', '', '0000-00-00', 's@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (19, 'axnol', 'digital', NULL, NULL, NULL, '9061051059', 'male', '1986-11-30', 'wrenchtechno@gmail.com', 'married', '', 0, 'IT', 'Codeigniter,Laravel,Wordpress', '', '', 0.00, 0.00, '15', 'permanent', '15', '', 'axnol59fc379721594.pdf', 'B.tech', 'English', '', '', 0, 0, 'full_time', 1, 1, 3, 0, 1, 1, 3, 'freelancing', '', '', '', '', '0000-00-00', '19', '2017-11-03', 0);
INSERT INTO `tble_candidate` VALUES (20, 'anusha', 'santh', NULL, NULL, NULL, '9446140663', '', '0000-00-00', 'smartlinks2017@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (21, 'sai', 'Prasad', NULL, NULL, NULL, '1231234568', 'male', '1971-01-01', 'seochinna@gmail.com', 'unmarried', '', 0, 'test', 'test', 'test', '', 0.00, 0.00, 'test', 'permanent', 'test', '', '', 'test', 'test', 'test', 'test', 0, 0, 'full_time', 1, 0, 1, 0, 1, 1, 1, '', '', '', 'Test engineer with 10+ years experience', '', '0000-00-00', '21', '2017-10-20', 0);
INSERT INTO `tble_candidate` VALUES (22, 'test1', 'test1', NULL, NULL, NULL, '8089638307', '', '0000-00-00', 'teamadsdev212@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (23, 'Suneesh', 'S K', NULL, NULL, NULL, '9446140663', '', '0000-00-00', 'suneeshsk3@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (24, '32134~!@#$%^&*(', '32134~!@#$%^&*(', NULL, NULL, NULL, '9000000000', '', '0000-00-00', 'vramarajus@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (25, 'sai', 'prasad', NULL, NULL, NULL, '9987654543', '', '0000-00-00', 'swtest123@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (26, 'sai', 'prasad', NULL, NULL, NULL, '9987654543', '', '0000-00-00', 'swtest123@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (27, 'sajith', 'godwin', NULL, NULL, NULL, '9597097129', '', '0000-00-00', 'sajithsmgodwin@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (28, 'sajith', 'godwin', NULL, NULL, NULL, '9597097129', '', '0000-00-00', 'sajithsmgodwin@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (29, 'Ansar', 'Najeem', NULL, NULL, NULL, '8098242456', '', '0000-00-00', 'teamadsdev2@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (30, 'Jiran', 'Santh', NULL, NULL, NULL, '9446140663', 'male', '1984-02-14', 'salesvadtrade@gmail.com', 'married', '', 26, '0', 'Testing', 'asdasdas', '', 0.00, 0.00, '12', 'permanent', '12', '', '', 'btech', 'telugu', 'asdasds', 'Tester', 0, 1, 'full_time', 2, 5, 12, 2, 1, 2, 4, 'freelancing', '', '', 'asdas asdasda asd ad', '', '0000-00-00', '30', '2018-07-03', 0);
INSERT INTO `tble_candidate` VALUES (31, 'V Raama', 'raju', NULL, NULL, NULL, '9945027588', 'male', '2018-06-13', 'vramarajus@gmail.com', 'married', '', 32, '2', '2', 'Key skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 YearsKey skills required for the job are: DevOps - Continuous Delivery-L3 (Mandatory) Jenkins-L3 Github Site Admin-L2 As a Project Manager, you are responsible for end to end project management for the assigned project - includes project planning, delivery, client interaction, trouble shooting, managing project operational parameters and people management. Project Manager span may be of 20 - 40 FTE (2-5 Project Leads) Minimum work experience:5 - 8 Years', '', 456655.00, 555555.00, '3 months', 'permanent', 'US Shift, Nightmare', '', '', 'B Tech', 'English', 'VM Tech Pvt Ltd', '1', 3, 8, 'freelancer', 1, 2, 4, 0, 1, 2, 4, 'online_offline', '', '', '', '', '0000-00-00', '31', '2018-06-10', 0);
INSERT INTO `tble_candidate` VALUES (32, 'hemanth', 'kumar', NULL, NULL, NULL, '8367670695', '', '0000-00-00', 'hemanthsemtech@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (33, 'Chaya', 'naidu', NULL, NULL, NULL, '9898786300', '', '2018-07-05', 'mgchayanaidu@gmail.com', 'married', '', 26, '5', 'Testing,QTP', 'A Software tester (software test engineer) should be capable of designing test suites and should have the ability to understand usability issues. ... The roles and responsibilities for a usability software tester are as follows: A Software Tester is responsible for designing testing scenarios for usability testing.', '', 10000.00, 5000.00, '30', 'permanent', '30', '', '', 'B.Com', 'Kannada,English', 'Jobwire', 'Tester', 0, 6, 'full_time', 1, 0, 0, 0, 1, 2, 4, 'online_offline', '', '', 'Software Engineer with 6+ Years of experience.', '', '0000-00-00', '33', '2018-07-16', 0);
INSERT INTO `tble_candidate` VALUES (34, 'ramesh', 'rao', NULL, NULL, NULL, '9000000000', '', '0000-00-00', 'ramesh@jobseeker.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (35, 'suresh', 'rao', NULL, NULL, NULL, '9000000000', '', '0000-00-00', 'suresh@jobseeker.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (36, 'naresh', 'v', NULL, NULL, NULL, '9000000000', '', '0000-00-00', 'naresh@jobseeker.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate` VALUES (37, 'Mahesh', 'varma Dr.', NULL, NULL, NULL, '9000000000', '', '0000-00-00', 'mahesh@jobseeker.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', 0, 0, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_candidate12`
-- 

DROP TABLE IF EXISTS `tble_candidate12`;
CREATE TABLE IF NOT EXISTS `tble_candidate12` (
  `candidate_id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `address` text,
  `current_location` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `contact_no` varchar(12) DEFAULT NULL,
  `gender` varchar(5) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `maritial_status` varchar(40) NOT NULL,
  `pre_location` varchar(40) NOT NULL,
  `industry` int(10) NOT NULL,
  `functional_area` varchar(50) NOT NULL,
  `skill_set` varchar(50) NOT NULL,
  `responses` text NOT NULL,
  `experience` varchar(25) NOT NULL,
  `current_salary` float(8,2) NOT NULL,
  `exp_salary` float(8,2) NOT NULL,
  `notice_period` varchar(25) NOT NULL,
  `job_type` varchar(25) NOT NULL,
  `prefered_shift` varchar(25) NOT NULL,
  `resume_title` varchar(45) NOT NULL,
  `resume` text NOT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `tble_candidate12`
-- 

INSERT INTO `tble_candidate12` VALUES (13, 'Gayathri', 'G', '', '1', '', '8089638307', 'femal', '1970-01-01', 'g3@gmail.com', 'unmarried', '1', 0, 'Development', 'PHP,JAVA', 'Developing, unit testing', '2', 10000.00, 15000.00, '2 months', 'permanent', '', '', 'Gayathri59a3e6022f21f.pdf', '1', '2017-08-19', '13', '2017-08-28', 0);
INSERT INTO `tble_candidate12` VALUES (14, 'Sajeer', 'Khan', NULL, '1', NULL, '9446140663', 'male', '1986-11-30', 'jiransanth@gmail.com', 'married', '1', 0, 'IT', 'Codeigniter,Laravel,Wordpress', 'Developer', '6', 35000.00, 55000.00, '1 month', 'permanent', 'Morning', '', 'Sajeer59c0aac3d64e1.docx', '', '0000-00-00', '14', '2017-09-19', 0);
INSERT INTO `tble_candidate12` VALUES (15, 'Jinu', 'PV', NULL, '2', NULL, '9447781866', 'male', '1986-11-19', 'jinu@gmail.com', 'unmarried', '2', 0, 'IT', 'Android', 'Developer', '2', 12000.00, 20000.00, '1 month', 'permanent', 'Morning', '', 'Jinu59c0cca3289de.pdf', '', '0000-00-00', '15', '2017-09-19', 0);
INSERT INTO `tble_candidate12` VALUES (16, 'Mohammed', 'Jeseem', NULL, '1', NULL, '9447781866', 'male', '1986-11-30', 'mohammed@gmail.com', 'unmarried', '1', 0, 'IT', 'android', 'Developer', '2', 13000.00, 18000.00, '15days', 'permanent', 'Morning', '', 'Mohammed59c0cd350cefc.pdf', '', '0000-00-00', '16', '2017-09-19', 0);
INSERT INTO `tble_candidate12` VALUES (17, 'NISHA', 'S', NULL, '2', NULL, '9447781866', 'femal', '1986-11-30', 'nisha@gmail.com', 'married', '3', 0, 'IT', 'android', 'Developer', '2', 13000.00, 16000.00, '15days', 'permanent', 'Morning', '', 'NISHA59c0cdb335752.pdf', '', '0000-00-00', '17', '2017-09-19', 0);
INSERT INTO `tble_candidate12` VALUES (18, 'Jackson', 'Varghese', NULL, '4', NULL, '9447781866', 'male', '1986-11-30', 'jackson@gmail.com', 'married', '4', 0, 'IT', 'Codeigniter,Laravel,Wordpress', 'Developer', '3', 15000.00, 25000.00, '15 days', 'permanent', 'Morning or Night', '', 'Jackson59c0ce2d1ef89.pdf', '', '0000-00-00', '18', '2017-09-19', 0);
INSERT INTO `tble_candidate12` VALUES (19, 'Vivek', 'VJ', NULL, '1', NULL, '9447781866', 'male', '1986-11-30', 'vivek@gmail.com', 'married', '2', 0, 'IT', 'Codeigniter,Laravel,Wordpress', 'Developer', '2', 15000.00, 20000.00, '30 days', 'permanent', 'Morning', '', 'Vivek59c0ce8fe2810.doc', '', '0000-00-00', '19', '2017-09-19', 0);
INSERT INTO `tble_candidate12` VALUES (20, 'Ribina', 'Salam', NULL, '1', NULL, '9447781866', 'femal', '1986-11-30', 'ribina@gmail.com', 'married', '1', 0, 'IT', 'android', 'Developer', '3', 18000.00, 25000.00, '30days', 'permanent', 'Morning', '', 'Ribina59c0cef43c1ae.pdf', '', '0000-00-00', '20', '2017-09-19', 0);
INSERT INTO `tble_candidate12` VALUES (21, 'Arya', 'V', NULL, NULL, NULL, '7894561233', '', '0000-00-00', 'arya@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate12` VALUES (22, 'jyothi', 'g', NULL, NULL, NULL, '8089638307', '', '0000-00-00', 'jyothi.g318@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate12` VALUES (23, 'jyothi', 'g', NULL, NULL, NULL, '8089638307', '', '0000-00-00', 'jyothi.g318@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate12` VALUES (24, 'jyothi', 'g', NULL, NULL, NULL, '8089638307', '', '0000-00-00', 'jyothi.g318@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate12` VALUES (25, 'Axnol', 'Digital Solutio', NULL, NULL, NULL, '7293148880', '', '0000-00-00', 'axnoldigitalsolutions@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate12` VALUES (26, 'Unni', 'Krishnan', NULL, NULL, NULL, '9061051059', '', '0000-00-00', 'kcunnikrishnan1986@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate12` VALUES (27, 'jyothi', 'g', NULL, NULL, NULL, '7894561232', '', '0000-00-00', 'teamadsdev2@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate12` VALUES (28, 'geethu', 'g', NULL, NULL, NULL, '4561235423', '', '0000-00-00', 'teamadsdev3@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_candidate12` VALUES (29, 'Unni', 'krishnan', NULL, NULL, NULL, '7293148880', '', '0000-00-00', 'teamads2@gmail.com', '', '', 0, '', '', '', '', 0.00, 0.00, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_employer`
-- 

DROP TABLE IF EXISTS `tble_employer`;
CREATE TABLE IF NOT EXISTS `tble_employer` (
  `employer_id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `company` varchar(15) DEFAULT NULL,
  `address` text,
  `country` int(10) NOT NULL,
  `state` int(10) NOT NULL,
  `city` int(10) NOT NULL,
  `location` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `contact_no` varchar(12) DEFAULT NULL,
  `gender` varchar(5) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `resume_title` varchar(45) NOT NULL,
  `resume` text NOT NULL,
  `resume_download_count` int(11) NOT NULL DEFAULT '0',
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`employer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `tble_employer`
-- 

INSERT INTO `tble_employer` VALUES (1, 'Nakshatra', 'Devaraj', 'HR', 'Vismaya', 'vismaya kowdiar', 0, 0, 0, '1', NULL, '7928524563', '', '0000-00-00', 'vismaya@gmail.com', '', '', 0, '1', '2017-11-06', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (2, 'Nakshatra', 'Devaraj', 'HR', 'Vismaya', 'vismaya kowdiar', 0, 0, 0, '1', NULL, '7928524563', '', '0000-00-00', 'vismaya1@gmail.com', '', '', 0, '1', '2017-09-14', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (3, 'Axnol', 'Digital', 'HR', 'Axnol', 'Kowdiar, Thiruvananthapuram, Kerala, India', 1, 1, 3, '1', NULL, '9061051059', '', '0000-00-00', 'jiran.winwrench@gmail.com', '', '', 0, '3', '2017-10-18', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (4, '', '', '', 'abc', NULL, 0, 0, 0, NULL, NULL, '9087654323', '', '0000-00-00', 'sai@gmail.com', '', '', 0, '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (5, 'Srinivas', 'raju', 'eng', 'Axnol', 'bangalore', 1, 3, 0, '1', NULL, '09000000000', '', '0000-00-00', 'teamadsdev232@gmail.com', '', '', 6, '5', '2018-02-02', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (6, '', '', '', 'vm', NULL, 0, 0, 0, NULL, NULL, '9000000000', '', '0000-00-00', 'v@we', '', '', 0, '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (7, '', '', '', 'Axnol', NULL, 0, 0, 0, NULL, NULL, '8098242456', '', '0000-00-00', 'teamadsdev2@gmail.com', '', '', 0, '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (8, '', '', '', 'Axnol Digital', NULL, 0, 0, 0, NULL, NULL, '9446140663', '', '0000-00-00', 'madhapursb@gmail.com', '', '', 1, '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (9, 'rao', 'venki', 'Manager', 'vm tech', 'HSR L/O', 2, 5, 12, '3', NULL, '9000000000', '', '0000-00-00', 'pvrao@gmail.com', '', '', 1, '9', '2018-06-09', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (10, '', '', '', 'Jobwire', NULL, 0, 0, 0, NULL, NULL, '0987654321', '', '0000-00-00', 'mgchaya@gmail.com', '', '', 2, '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_employer` VALUES (11, '', '', '', 'vm tech', NULL, 0, 0, 0, NULL, NULL, '9000000000', '', '0000-00-00', 'dummy@jobwire.com', '', '', 2, '', '0000-00-00', '', '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_employert1`
-- 

DROP TABLE IF EXISTS `tble_employert1`;
CREATE TABLE IF NOT EXISTS `tble_employert1` (
  `employer_id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `company` varchar(60) DEFAULT NULL,
  `address` text,
  `location` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `contact_no` varchar(12) DEFAULT NULL,
  `gender` varchar(5) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `resume_title` varchar(45) NOT NULL,
  `resume` text NOT NULL,
  `created_user` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `modified_user` varchar(15) NOT NULL,
  `modified_date` date NOT NULL,
  `active_flag` int(1) NOT NULL,
  PRIMARY KEY (`employer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `tble_employert1`
-- 

INSERT INTO `tble_employert1` VALUES (1, 'Test', 'Test', 'HR', 'Jobs', 'Vismaya, Kowdiar, Thiruvanathapuram', '1', 'Trivandrum', '7894561232', '', '0000-00-00', 'vismaya@gmail.com', '', '', '1', '2017-09-26', '', '0000-00-00', 0);
INSERT INTO `tble_employert1` VALUES (2, '', '', '', 'newone', NULL, NULL, NULL, '123456', '', '0000-00-00', 'newone@gmail.com', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_employert1` VALUES (3, '', '', '', 'axnol', NULL, 'Kowdiar', 'THiruvanathapuram', '1234567895', '', '0000-00-00', 'axnol@gmail.com', '', '', '', '0000-00-00', '', '0000-00-00', 0);
INSERT INTO `tble_employert1` VALUES (4, 'axnol', 'digital', 'CEO', 'Axnol Digital Solutions', 'Kowdiar, Thiruvananthapuram, Kerala, India', '', NULL, '09061051059', '', '0000-00-00', 'info@axnoldigitalsolutions.com', '', '', '4', '2017-09-21', '', '0000-00-00', 0);
INSERT INTO `tble_employert1` VALUES (5, '', '', '', 'Iqmatrix', NULL, NULL, NULL, '9446140663', '', '0000-00-00', 'jiransanth@yahoo.com', '', '', '', '0000-00-00', '', '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_internposts`
-- 

DROP TABLE IF EXISTS `tble_internposts`;
CREATE TABLE IF NOT EXISTS `tble_internposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL,
  `job_title` varchar(45) NOT NULL,
  `job_desc` varchar(45) NOT NULL,
  `primary_profile` varchar(45) NOT NULL,
  `internship_type` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `parttime_allowd` varchar(45) NOT NULL,
  `opening_count` int(45) NOT NULL,
  `startdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` varchar(45) NOT NULL,
  `roles_responsibilities` text NOT NULL,
  `stipend` varchar(45) NOT NULL,
  `perks` varchar(45) NOT NULL,
  `ppo` varchar(45) NOT NULL,
  `skills` varchar(45) NOT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `stipend_amount` varchar(45) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `tble_internposts`
-- 

INSERT INTO `tble_internposts` VALUES (1, 8, 'asdasdasdasd', 'aasdasd', '25', 'Regular', '', 'Regular', 12, '2018-05-11 10:01:27', '2018-05-22 14:30:00', '', 'asdasd', 'Fixed', 'Free Snacks and Beverages,', 'Yes', 'Codeigniter,', 1, 1, 1, '123', '2018-05-11 09:49:14', '2018-05-11 09:49:14');
INSERT INTO `tble_internposts` VALUES (2, 8, 'test', 'test', '38', 'Regular', '', 'Regular', 12, '2018-05-11 10:01:31', '2018-05-16 14:30:00', '', 'asdasdasdad', 'Fixed', 'Certificate,Flexible Work Hours,5 Days a week', 'Yes', 'Codeigniter,', 1, 1, 1, '12345', '2018-05-11 09:50:57', '2018-05-11 09:50:57');
INSERT INTO `tble_internposts` VALUES (3, 11, 'CC Training with certificate', 'Credit card sales training', '', 'Work From Home', '', 'Yes', 20, '2018-07-01 00:00:00', '2018-08-31 00:00:00', '', '', 'Fixed', 'Certificate,Letter of Recommendation,', 'Yes', 'Sales marketing Premier instituter PGDBM', 1, 0, 0, '', '2018-07-06 06:33:33', '2018-07-06 06:33:33');
INSERT INTO `tble_internposts` VALUES (4, 10, 'Junior  Intern', 'Junior  InternJunior  InternJunior  InternJun', '26', 'Regular', '', 'Yes', 2, '2018-07-12 00:00:00', '2018-07-25 00:00:00', '', 'Junior  Intern', 'Fixed', 'Certificate,Letter of Recommendation,', 'Yes', 'JAVA', 1, 2, 4, '', '2018-07-12 12:43:06', '2018-07-12 12:43:06');

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_interview_questions`
-- 

DROP TABLE IF EXISTS `tble_interview_questions`;
CREATE TABLE IF NOT EXISTS `tble_interview_questions` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idustry_id` int(100) NOT NULL,
  `subject_id` int(100) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_by` int(100) NOT NULL,
  `created_date` date NOT NULL,
  `active_flag` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

-- 
-- Dumping data for table `tble_interview_questions`
-- 

INSERT INTO `tble_interview_questions` VALUES (1, 1, 1, 'PHA+d2hhdCBpcyBqYXZhPzwvcD4NCg==', 'PHA+cHJvZ3JhbW1pbmcgbGFuZ3VhZ2U8L3A+DQo=', 1, '2018-01-22', 1);
INSERT INTO `tble_interview_questions` VALUES (2, 1, 2, 'PHA+d2hhdCBpcyBwaHAgPzwvcD4NCg==', 'PHA+aHlwZXIgdGV4dCBwcmVwcm9jZXNzb3I8L3A+DQo=', 1, '2018-01-22', 1);
INSERT INTO `tble_interview_questions` VALUES (3, 1, 2, 'PHA+cmVxdWlyZV9vbmNlKCksIHJlcXVpcmUoKSwgaW5jbHVkZSgpLldoYXQgaXMgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZW0/PC9wPg0K', 'PHA+cmVxdWlyZSgpIGluY2x1ZGVzIGFuZCBldmFsdWF0ZXMgYSBzcGVjaWZpYyBmaWxlLCB3aGlsZSByZXF1aXJlX29uY2UoKSBkb2VzIHRoYXQgb25seSBpZiBpdCBoYXMgbm90IGJlZW4gaW5jbHVkZWQgYmVmb3JlIChvbiB0aGUgc2FtZSBwYWdlKS4gU28sIHJlcXVpcmVfb25jZSgpIGlzIHJlY29tbWVuZGVkIHRvIHVzZSB3aGVuIHlvdSB3YW50IHRvIGluY2x1ZGUgYSBmaWxlIHdoZXJlIHlvdSBoYXZlIGEgbG90IG9mIGZ1bmN0aW9ucyBmb3IgZXhhbXBsZS4gVGhpcyB3YXkgeW91IG1ha2Ugc3VyZSB5b3UgZG9uJiMzOTt0IGluY2x1ZGUgdGhlIGZpbGUgbW9yZSB0aW1lcyBhbmQgeW91IHdpbGwgbm90IGdldCB0aGUgJnF1b3Q7ZnVuY3Rpb24gcmUtZGVjbGFyZWQmcXVvdDsgZXJyb3IuPC9wPg0K', 1, '2018-01-23', 1);
INSERT INTO `tble_interview_questions` VALUES (4, 1, 2, 'PHA+d2hhdCBpcyBQSFA/PC9wPg0K', 'PHA+aHlwZXIgdGV4dCBwcmVwcm9jZXNzb3I8L3A+DQo=', 1, '2018-01-24', 1);
INSERT INTO `tble_interview_questions` VALUES (5, 1, 2, 'PHA+d2hhdCBpcyBQSFA/PC9wPg0KDQo8cD4mbmJzcDs8L3A+DQo=', 'PHA+aHlwZXIgdGV4dCBwcmVwcm9jZXNzb3I8L3A+DQo=', 1, '2018-01-24', 1);
INSERT INTO `tble_interview_questions` VALUES (6, 1, 2, 'PHA+d2hhdCBpcyBQSFA/PC9wPg0K', 'PHA+aHlwZXIgdGV4dCBwcmVwcm9jZXNzb3I8L3A+DQo=', 1, '2018-01-24', 1);
INSERT INTO `tble_interview_questions` VALUES (7, 1, 2, 'PHA+d2hhdCBpcyBQSFA8L3A+DQo=', 'PHA+aHlwZXIgdGV4dCBwcmVwcm9jZXNzb3I8L3A+DQo=', 1, '2018-01-24', 1);
INSERT INTO `tble_interview_questions` VALUES (8, 1, 2, 'PGgzPldoYXQgaXMgUEVBUiBpbiBQSFA/PC9oMz4NCg==', 'PHA+PHN0cm9uZz5QRUFSPC9zdHJvbmc+Jm5ic3A7aXMgYSBmcmFtZXdvcmsgYW5kJm5ic3A7PGVtPnJlcG9zaXRvcnkgZm9yIHJldXNhYmxlIFBIUCBjb21wb25lbnRzPC9lbT4uIFBFQVIgc3RhbmRzIGZvciZuYnNwOzxzdHJvbmc+UEhQIEV4dGVuc2lvbiBhbmQgQXBwbGljYXRpb24gUmVwb3NpdG9yeTwvc3Ryb25nPi4gSXQgY29udGFpbnMgYWxsIHR5cGVzIG9mIFBIUCBjb2RlIHNuaXBwZXRzIGFuZCBsaWJyYXJpZXMuPC9wPg0KDQo8cD5JdCBhbHNvIHByb3ZpZGVzIGEgY29tbWFuZCBsaW5lIGludGVyZmFjZSB0byBpbnN0YWxsICZxdW90O3BhY2thZ2VzJnF1b3Q7IGF1dG9tYXRpY2FsbHkuPC9wPg0K', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (9, 1, 2, 'PGgzPldobyBpcyBrbm93biBhcyB0aGUgZmF0aGVyIG9mIFBIUD88L2gzPg0K', 'PHA+PGVtPlJhc211cyBMZXJkb3JmPC9lbT48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (10, 1, 2, 'PGgzPkV4cGxhaW4gdGhlIGRpZmZlcmVuY2UgYi93IHN0YXRpYyBhbmQgZHluYW1pYyB3ZWJzaXRlcz88L2gzPg0K', 'PHA+SW4mbmJzcDs8c3Ryb25nPnN0YXRpYyB3ZWJzaXRlczwvc3Ryb25nPiwmbmJzcDs8ZW0+Y29udGVudCBjYW4mIzM5O3QgYmUgY2hhbmdlZDwvZW0+Jm5ic3A7YWZ0ZXIgcnVubmluZyB0aGUgc2NyaXB0LiBZb3UgY2FuJiMzOTt0IGNoYW5nZSBhbnl0aGluZyBpbiB0aGUgc2l0ZS4gSXQgaXMgcHJlZGVmaW5lZC48L3A+DQoNCjxwPkluJm5ic3A7PHN0cm9uZz5keW5hbWljIHdlYnNpdGVzPC9zdHJvbmc+LCZuYnNwOzxlbT5jb250ZW50IG9mIHNjcmlwdCBjYW4gYmUgY2hhbmdlZCBhdCB0aGUgcnVuIHRpbWU8L2VtPi4gSXRzIGNvbnRlbnQgaXMgcmVnZW5lcmF0ZWQgZXZlcnkgdGltZSBhIHVzZXIgdmlzaXQgb3IgcmVsb2FkLiBHb29nbGUsIHlhaG9vIGFuZCBldmVyeSBzZWFyY2ggZW5naW5lIGlzIHRoZSBleGFtcGxlIG9mIGR5bmFtaWMgd2Vic2l0ZS48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (11, 1, 2, 'PGgzPkV4cGxhaW4gdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBQSFA0IGFuZCBQSFA1PzwvaDM+DQo=', 'PHA+UEhQNCBkb2VzbiYjMzk7dCBzdXBwb3J0IG9vcHMgY29uY2VwdCBhbmQgdXNlcyBaZW5kIEVuZ2luZSAxLjwvcD4NCg0KPHA+UEhQNSBzdXBwb3J0cyBvb3BzIGNvbmNlcHQgYW5kIHVzZXMgWmVuZCBFbmdpbmUgMi48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (12, 1, 2, 'PGgzPldoYXQgYXJlIHRoZSBwb3B1bGFyIENvbnRlbnQgTWFuYWdlbWVudCBTeXN0ZW1zIChDTVMpIGluIFBIUD88L2gzPg0K', 'PHVsPg0KCTxsaT5Xb3JkUHJlc3M8L2xpPg0KCTxsaT5Kb29tbGE8L2xpPg0KCTxsaT5NYWdlbnRvPC9saT4NCgk8bGk+RHJ1cGFsIGV0Yy48L2xpPg0KPC91bD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (13, 1, 2, 'PGgzPldoYXQgYXJlIHRoZSBwb3B1bGFyIGZyYW1ld29ya3MgaW4gUEhQPzwvaDM+DQo=', 'PHVsPg0KCTxsaT5DYWtlUEhQPC9saT4NCgk8bGk+Q29kZUlnbml0ZXI8L2xpPg0KCTxsaT5ZaWkgMjwvbGk+DQoJPGxpPlN5bWZvbnk8L2xpPg0KCTxsaT5aZW5kIEZyYW1ld29yayBldGMuPC9saT4NCjwvdWw+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (14, 1, 2, 'PGgzPldoYXQgaXMgJnF1b3Q7ZWNobyZxdW90OyBpbiBQSFA/PC9oMz4NCg==', 'PHA+UEhQIGVjaG8gb3V0cHV0IG9uZSBvciBtb3JlIHN0cmluZy4gSXQgaXMgYSBsYW5ndWFnZSBjb25zdHJ1Y3Qgbm90IGEgZnVuY3Rpb24uIFNvIHVzZSBvZiBwYXJlbnRoZXNlcyBpcyBub3QgcmVxdWlyZWQuIEJ1dCBpZiB5b3Ugd2FudCB0byBwYXNzIG1vcmUgdGhhbiBvbmUgcGFyYW1ldGVyIHRvIGVjaG8sIHVzZSBvZiBwYXJlbnRoZXNlcyBpcyByZXF1aXJlZC48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (15, 1, 2, 'PGgzPldoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiAmcXVvdDtlY2hvJnF1b3Q7IGFuZCAmcXVvdDtwcmludCZxdW90OyBpbiBQSFA/PC9oMz4NCg==', 'PHA+PHN0cm9uZz5FY2hvPC9zdHJvbmc+Jm5ic3A7Y2FuJm5ic3A7PGVtPm91dHB1dCBvbmUgb3IgbW9yZSBzdHJpbmc8L2VtPiZuYnNwO2J1dCZuYnNwOzxzdHJvbmc+cHJpbnQ8L3N0cm9uZz4mbmJzcDtjYW4gb25seSZuYnNwOzxlbT5vdXRwdXQgb25lIHN0cmluZyBhbmQgYWx3YXlzIHJldHVybnMgMTwvZW0+LjwvcD4NCg0KPHA+PHN0cm9uZz5FY2hvPC9zdHJvbmc+Jm5ic3A7aXMmbmJzcDs8ZW0+ZmFzdGVyIHRoYW4gcHJpbnQ8L2VtPiZuYnNwO2JlY2F1c2UgaXQgZG9lcyBub3QgcmV0dXJuIGFueSB2YWx1ZS48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (16, 1, 2, 'PGgzPldoYXQgaXMgdGhlIHVzZSBvZiBoZWFkZXIoKSBmdW5jdGlvbiBpbiBQSFA/PC9oMz4NCg==', 'PHA+aGUgaGVhZGVyKCkgZnVuY3Rpb24gaXMgdXNlZCB0byBzZW5kIGEgcmF3IEhUVFAgaGVhZGVyIHRvIGEgY2xpZW50LiBJdCBtdXN0IGJlIGNhbGxlZCBiZWZvcmUgc2VuZGluZyB0aGUgYWN0dWFsIG91dHB1dC4gRm9yIGV4YW1wbGUsIHlvdSBjYW4mIzM5O3QgcHJpbnQgYW55IEhUTUwgZWxlbWVudCBiZWZvcmUgdXNpbmcgdGhpcyBmdW5jdGlvbi48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (17, 1, 2, 'PGgzPldoYXQgYXJlIHRoZSBtZXRob2RzIHRvIHN1Ym1pdCBmb3JtIGluIFBIUD88L2gzPg0K', 'PHA+VGhlcmUgYXJlIHR3byBtZXRob2RzIEdFVCBhbmQgUE9TVC48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (18, 1, 2, 'PGgzPkRpZmZlcmVudGlhdGUgYmV0d2VlbiByZXF1aXJlIGFuZCBpbmNsdWRlPzwvaDM+DQo=', 'PHA+UmVxdWlyZSBhbmQgaW5jbHVkZSBib3RoIGFyZSB1c2VkIHRvIGluY2x1ZGUgYSBmaWxlLCBidXQgaWYgZmlsZSBpcyBub3QgZm91bmQmbmJzcDs8ZW0+aW5jbHVkZSBzZW5kcyB3YXJuaW5nPC9lbT4mbmJzcDt3aGVyZWFzJm5ic3A7PGVtPnJlcXVpcmUgc2VuZHMgRmF0YWwgZXJyb3I8L2VtPi48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (19, 1, 2, 'PGgzPldoYXQgaXMgYSBzZXNzaW9uPzwvaDM+DQo=', 'PHA+UEhQIEVuZ2luZSBjcmVhdGVzIGEgbG9naWNhbCBvYmplY3QgdG8gcHJlc2VydmUgZGF0YSBhY3Jvc3Mgc3Vic2VxdWVudCBIVFRQIHJlcXVlc3RzLCB3aGljaCBpcyBrbm93biBhcyBzZXNzaW9uLjwvcD4NCg0KPHA+U2Vzc2lvbnMgZ2VuZXJhbGx5IHN0b3JlIHRlbXBvcmFyeSBkYXRhIHRvIGFsbG93IG11bHRpcGxlIFBIUCBwYWdlcyB0byBvZmZlciBhIGNvbXBsZXRlIGZ1bmN0aW9uYWwgdHJhbnNhY3Rpb24gZm9yIHRoZSBzYW1lIHVzZXIuPC9wPg0KDQo8cD5TaW1wbHksIGl0IG1haW50YWlucyBkYXRhIG9mIGFuIHVzZXIgKGJyb3dzZXIpLjwvcD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (20, 1, 2, 'PGgzPldoYXQgaXMgUEhQIHNlc3Npb25fc3RhcnQoKSBhbmQgc2Vzc2lvbl9kZXN0cm95KCkgZnVuY3Rpb24/PC9oMz4NCg==', 'PHA+UEhQIHNlc3Npb25fc3RhcnQoKSBmdW5jdGlvbiBpcyB1c2VkIHRvIHN0YXJ0IHRoZSBzZXNzaW9uLiBJdCBzdGFydHMgYSBuZXcgb3IgcmVzdW1lcyB0aGUgZXhpc3Rpbmcgc2Vzc2lvbi4gSXQgcmV0dXJucyB0aGUgZXhpc3Rpbmcgc2Vzc2lvbiBpZiBzZXNzaW9uIGlzIGNyZWF0ZWQgYWxyZWFkeS4gSWYgc2Vzc2lvbiBpcyBub3QgYXZhaWxhYmxlLCBpdCBjcmVhdGVzIGFuZCByZXR1cm5zIG5ldyBzZXNzaW9ucy48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (21, 1, 2, 'PGgzPldoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBzZXNzaW9uIGFuZCBjb29raWU/PC9oMz4NCg==', 'PHA+VGhlIG1haW4gZGlmZmVyZW5jZSBiZXR3ZWVuIHNlc3Npb24gYW5kIGNvb2tpZSBpcyB0aGF0Jm5ic3A7PGVtPmNvb2tpZXMgYXJlIHN0b3JlZCBvbiB1c2VyJiMzOTtzIGNvbXB1dGVyIGluIHRoZSB0ZXh0IGZpbGU8L2VtPiZuYnNwO2Zvcm1hdCB3aGlsZSZuYnNwOzxlbT5zZXNzaW9ucyBhcmUgc3RvcmVkIG9uIHRoZSBzZXJ2ZXIgc2lkZTwvZW0+LjwvcD4NCg0KPHA+Q29va2llcyBjYW4mIzM5O3QgaG9sZCBtdWx0aXBsZSB2YXJpYWJsZXMgb24gdGhlIG90aGVyIGhhbmQgU2Vzc2lvbiBjYW4gaG9sZCBtdWx0aXBsZSB2YXJpYWJsZXMuPC9wPg0KDQo8cD5Zb3UgY2FuIG1hbnVhbGx5IHNldCBhbiBleHBpcnkgZm9yIGEgY29va2llLCB3aGlsZSBzZXNzaW9uIG9ubHkgcmVtYWlucyBhY3RpdmUgYXMgbG9uZyBhcyBicm93c2VyIGlzIG9wZW4uPC9wPg0K', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (22, 1, 2, 'PGgzPkhvdyB0byBzdG9wIHRoZSBleGVjdXRpb24gb2YgUEhQIHNjcmlwdD88L2gzPg0K', 'PHA+VGhlIGV4aXQoKSBmdW5jdGlvbiBpcyB1c2VkIHRvIHN0b3AgdGhlIGV4ZWN1dGlvbiBvZiBQSFAgc2NyaXB0LjwvcD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (23, 1, 1, 'PGgzPldoYXQgaXMgZGlmZmVyZW5jZSBiZXR3ZWVuIEpESyxKUkUgYW5kIEpWTT88L2gzPg0K', 'PGgzPkpWTTwvaDM+DQoNCjxwPkpWTSBpcyBhbiBhY3JvbnltIGZvciBKYXZhIFZpcnR1YWwgTWFjaGluZSwgaXQgaXMgYW4gYWJzdHJhY3QgbWFjaGluZSB3aGljaCBwcm92aWRlcyB0aGUgcnVudGltZSBlbnZpcm9ubWVudCBpbiB3aGljaCBqYXZhIGJ5dGVjb2RlIGNhbiBiZSBleGVjdXRlZC4gSXQgaXMgYSBzcGVjaWZpY2F0aW9uLjwvcD4NCg0KPHA+SlZNcyBhcmUgYXZhaWxhYmxlIGZvciBtYW55IGhhcmR3YXJlIGFuZCBzb2Z0d2FyZSBwbGF0Zm9ybXMgKHNvIEpWTSBpcyBwbGF0Zm9ybSBkZXBlbmRlbnQpLjwvcD4NCg0KPGgzPkpSRTwvaDM+DQoNCjxwPkpSRSBzdGFuZHMgZm9yIEphdmEgUnVudGltZSBFbnZpcm9ubWVudC4gSXQgaXMgdGhlIGltcGxlbWVudGF0aW9uIG9mIEpWTS48L3A+DQoNCjxoMz5KREs8L2gzPg0KDQo8cD5KREsgaXMgYW4gYWNyb255bSBmb3IgSmF2YSBEZXZlbG9wbWVudCBLaXQuIEl0IHBoeXNpY2FsbHkgZXhpc3RzLiBJdCBjb250YWlucyBKUkUgKyBkZXZlbG9wbWVudCB0b29scy48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (24, 1, 1, 'PGgzPldoYXQgaXMgdGhlIG1haW4gZGlmZmVyZW5jZSBiZXR3ZWVuIEphdmEgcGxhdGZvcm0gYW5kIG90aGVyIHBsYXRmb3Jtcz88L2gzPg0K', 'PHA+VGhlIEphdmEgcGxhdGZvcm0gZGlmZmVycyBmcm9tIG1vc3Qgb3RoZXIgcGxhdGZvcm1zIGluIHRoZSBzZW5zZSB0aGF0IGl0JiMzOTtzIGEgc29mdHdhcmUtYmFzZWQgcGxhdGZvcm0gdGhhdCBydW5zIG9uIHRvcCBvZiBvdGhlciBoYXJkd2FyZS1iYXNlZCBwbGF0Zm9ybXMuSXQgaGFzIHR3byBjb21wb25lbnRzOjwvcD4NCg0KPG9sPg0KCTxsaT5SdW50aW1lIEVudmlyb25tZW50PC9saT4NCgk8bGk+QVBJKEFwcGxpY2F0aW9uIFByb2dyYW1taW5nIEludGVyZmFjZSk8L2xpPg0KPC9vbD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (25, 1, 1, 'PGgzPldoYXQgaXMgY29uc3RydWN0b3I/PC9oMz4NCg==', 'PHVsPg0KCTxsaT5Db25zdHJ1Y3RvciBpcyBqdXN0IGxpa2UgYSBtZXRob2QgdGhhdCBpcyB1c2VkIHRvIGluaXRpYWxpemUgdGhlIHN0YXRlIG9mIGFuIG9iamVjdC4gSXQgaXMgaW52b2tlZCBhdCB0aGUgdGltZSBvZiBvYmplY3QgY3JlYXRpb24uPC9saT4NCjwvdWw+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (26, 1, 1, 'PGgzPldoYXQgaXMgc3RhdGljIHZhcmlhYmxlPzwvaDM+DQo=', 'PHVsPg0KCTxsaT5zdGF0aWMgdmFyaWFibGUgaXMgdXNlZCB0byByZWZlciB0aGUgY29tbW9uIHByb3BlcnR5IG9mIGFsbCBvYmplY3RzICh0aGF0IGlzIG5vdCB1bmlxdWUgZm9yIGVhY2ggb2JqZWN0KSBlLmcuIGNvbXBhbnkgbmFtZSBvZiBlbXBsb3llZXMsY29sbGVnZSBuYW1lIG9mIHN0dWRlbnRzIGV0Yy48L2xpPg0KCTxsaT5zdGF0aWMgdmFyaWFibGUgZ2V0cyBtZW1vcnkgb25seSBvbmNlIGluIGNsYXNzIGFyZWEgYXQgdGhlIHRpbWUgb2YgY2xhc3MgbG9hZGluZy48L2xpPg0KPC91bD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (27, 1, 1, 'PGgzPldoYXQgaXMgSW5oZXJpdGFuY2U/PC9oMz4NCg==', 'PHA+SW5oZXJpdGFuY2UgaXMgYSBtZWNoYW5pc20gaW4gd2hpY2ggb25lIG9iamVjdCBhY3F1aXJlcyBhbGwgdGhlIHByb3BlcnRpZXMgYW5kIGJlaGF2aW91ciBvZiBhbm90aGVyIG9iamVjdCBvZiBhbm90aGVyIGNsYXNzLiBJdCByZXByZXNlbnRzIElTLUEgcmVsYXRpb25zaGlwLiBJdCBpcyB1c2VkIGZvciBDb2RlIFJlc3VzYWJpbGl0eSBhbmQgTWV0aG9kIE92ZXJyaWRpbmcuPC9wPg0K', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (28, 1, 1, 'PGgzPldoYXQgaXMgbWV0aG9kIG92ZXJsb2FkaW5nPzwvaDM+DQo=', 'PHA+SWYgYSBjbGFzcyBoYXZlIG11bHRpcGxlIG1ldGhvZHMgYnkgc2FtZSBuYW1lIGJ1dCBkaWZmZXJlbnQgcGFyYW1ldGVycywgaXQgaXMga25vd24gYXMgTWV0aG9kIE92ZXJsb2FkaW5nLiBJdCBpbmNyZWFzZXMgdGhlIHJlYWRhYmlsaXR5IG9mIHRoZSBwcm9ncmFtLjwvcD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (29, 1, 1, 'PGgzPldoYXQgaXMgbWV0aG9kIG92ZXJyaWRpbmc/PC9oMz4NCg==', 'PHA+SWYgYSBzdWJjbGFzcyBwcm92aWRlcyBhIHNwZWNpZmljIGltcGxlbWVudGF0aW9uIG9mIGEgbWV0aG9kIHRoYXQgaXMgYWxyZWFkeSBwcm92aWRlZCBieSBpdHMgcGFyZW50IGNsYXNzLCBpdCBpcyBrbm93biBhcyBNZXRob2QgT3ZlcnJpZGluZy4gSXQgaXMgdXNlZCBmb3IgcnVudGltZSBwb2x5bW9ycGhpc20gYW5kIHRvIHByb3ZpZGUgdGhlIHNwZWNpZmljIGltcGxlbWVudGF0aW9uIG9mIHRoZSBtZXRob2QuPC9wPg0K', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (30, 1, 3, 'PGgzPldoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgQVNQIGFuZCBBU1AuTkVUPzwvaDM+DQo=', 'PHA+VGhlIG1haW4gZGlmZmVyZW5jZSBiZXR3ZWVuIEFTUCBhbmQgQVNQLk5ldCBpcyB0aGF0IEFTUCBpcyBpbnRlcnByZXRlZCwgd2hpbGUgQVNQLk5ldCBpcyBjb21waWxlZC4gQVNQIHVzZXMgVkJTY3JpcHQsIHRoZXJlZm9yZSB3aGVuIHRoZSBBU1AgcGFnZSBpcyBleGVjdXRlZCwgaXQgaXMgaW50ZXJwcmV0ZWQuIE9uIHRoZSBvdGhlciBoYW5kLCBBU1AuTmV0IHVzZXMgLk5ldCBsYW5ndWFnZXMgbGlrZSBDIyBhbmQgVkIuTkVULCB3aGljaCBpcyBjb21waWxlZCB0byBNaWNyb3NvZnQgaW50ZXJtZWRpYXRlIGxhbmd1YWdlLjwvcD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (31, 1, 3, 'PHA+V2hhdCBpcyBhIG11bHRpbGluZ3VhbCB3ZWJzaXRlPzwvcD4NCg==', 'PHA+SWYgYSB3ZWJzaXRlIHByb3ZpZGVzIGNvbnRlbnQgaW4gYSBudW1iZXIgb2YgbGFuZ3VhZ2VzLCBpdCBpcyBrbm93biBhcyBtdWx0aWxpbmd1YWwgd2Vic2l0ZS4gSXQgY29udGFpbnMgbXVsdGlwbGUgY29waWVzIGZvciBpdHMgY29udGVudCBhbmQgb3RoZXIgcmVzb3VyY2VzLCBzdWNoIGFzIGRhdGUgYW5kIHRpbWUsIGluIGRpZmZlcmVudCBsYW5ndWFnZXMuPC9wPg0K', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (32, 1, 3, 'PGgzPldoYXQgaXMgY2FjaGluZz8gRXhwbGFpbi48L2gzPg0K', 'PHA+Q2FjaGluZyBpcyB0aGUgdGVjaG5pcXVlIHdoaWNoIGZhY2lsaXRhdGVzIHlvdSB0byBzdG9yZSBmcmVxdWVudGx5IHVzZWQgaXRlbXMgaW4gbWVtb3J5IHNvIHRoYXQgdGhleSBjYW4gYmUgYWNjZXNzZWQgbW9yZSBxdWlja2x5LjwvcD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (33, 1, 3, 'PGgzPldoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBzZXNzaW9uIG9iamVjdCBhbmQgYXBwbGljYXRpb24gb2JqZWN0Pz88L2gzPg0K', 'PHA+VGhlIHNlc3Npb24gb2JqZWN0IGlzIHVzZWQgdG8gbWFpbnRhaW4gdGhlIHNlc3Npb24gb2YgZWFjaCB1c2VyLiBBIHNlc3Npb24gaWQgaXMgZ2VuZXJhdGVkIGlmIGEgdXNlciBlbnRlcnMgaW4gdGhlIGFwcGxpY2F0aW9uIGFuZCB3aGVuIHRoZSB1c2VyIGxlYXZlcyB0aGUgYXBwbGljYXRpb24sIHRoZSBzZXNzaW9uIGlkIGlzIGF1dG9tYXRpY2FsbHkgZGVsZXRlZC48L3A+DQoNCjxwPk9uIHRoZSBvdGhlciBoYW5kLCBhcHBsaWNhdGlvbiBvYmplY3QgaXMgdXNlZCB0byBzdG9yZSB0aGUgaW5mb3JtYXRpb24gYW5kIGFjY2VzcyB2YXJpYWJsZXMgZnJvbSBhbnkgcGFnZSBpbiB0aGUgYXBwbGljYXRpb24uPC9wPg0K', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (34, 1, 3, 'PGgzPldoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBjbGllbnQtc2lkZSBhbmQgc2VydmVyLXNpZGUgdmFsaWRhdGlvbnMgaW4gV2ViUGFnZXM/PC9oMz4NCg==', 'PHA+VGhlIGNsaWVudC1zaWRlIHZhbGlkYXRpb24gaXMgaGFwcGVuZWQgYXQgdGhlIGNsaWVudCYjMzk7cyBzaWRlIHdpdGggdGhlIGhlbHAgb2YgSmF2YVNjcmlwdCBhbmQgVkJTY3JpcHQuIFRoaXMgdmFsaWRhdGlvbiBpcyBvY2N1cnJlZCBiZWZvcmUgdGhlIFdlYiBwYWdlIGlzIHNlbnQgdG8gdGhlIHNlcnZlci48L3A+DQoNCjxwPlRoZSBzZXJ2ZXItc2lkZSB2YWxpZGF0aW9uIGlzIGhhcHBlbmVkIGF0IHRoZSBzZXJ2ZXIgc2lkZS48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (35, 1, 3, 'PGgzPldoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBnbG9iYWxpemF0aW9uIGFuZCBsb2NhbGl6YXRpb24/PC9oMz4NCg==', 'PHA+PHN0cm9uZz5HbG9iYWxpemF0aW9uOjwvc3Ryb25nPiZuYnNwO0dsb2JhbGl6YXRpb24gaXMgYSB0ZWNobmlxdWUgdG8gaWRlbnRpZnkgdGhlIHBhcnQgb2YgYSBXZWIgYXBwbGljYXRpb24gdGhhdCBpcyBkaWZmZXJlbnQgZm9yIGRpZmZlcmVudCBsYW5ndWFnZXMgYW5kIHNlcGFyYXRlIGl0IG91dCBmcm9tIHRoZSB3ZWIgYXBwbGljYXRpb24uPC9wPg0KDQo8cD48c3Ryb25nPkxvY2FsaXphdGlvbjo8L3N0cm9uZz4mbmJzcDtJbiBsb2NhbGl6YXRpb24geW91IHRyeSB0byBjb25maWd1cmUgYSBXZWIgYXBwbGljYXRpb24gc28gdGhhdCBpdCBjYW4gYmUgc3VwcG9ydGVkIGZvciBhIHNwZWNpZmljIGxhbmd1YWdlIG9yIGxvY2FsZS48L3A+DQo=', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (36, 1, 3, 'PGgzPldoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBzZXJ2ZXItc2lkZSBzY3JpcHRpbmcgYW5kIGNsaWVudC1zaWRlIHNjcmlwdGluZz88L2gzPg0K', 'PHA+PHN0cm9uZz5TZXJ2ZXIgc2lkZSBzY3JpcHRpbmc6PC9zdHJvbmc+Jm5ic3A7SW4gc2VydmVyIHNpZGUgc2NyaXB0aW5nLCBhbGwgdGhlIHNjcmlwdCBhcmUgZXhlY3V0ZWQgYnkgdGhlIHNlcnZlciBhbmQgaW50ZXJwcmV0ZWQgYXMgbmVlZGVkLjwvcD4NCg0KPHA+PHN0cm9uZz5DbGllbnQgc2lkZSBzY3JpcHRpbmc6PC9zdHJvbmc+Jm5ic3A7SW4gY2xpZW50IHNpZGUgc2NyaXB0aW5nLCB0aGUgc2NyaXB0IHdpbGwgYmUgZXhlY3V0ZWQgaW1tZWRpYXRlbHkgaW4gdGhlIGJyb3dzZXIgc3VjaCBhcyBmb3JtIGZpZWxkIHZhbGlkYXRpb24sIGVtYWlsIHZhbGlkYXRpb24sIGV0Yy48L3A+DQoNCjxwPlRoZSBjbGllbnQgc2lkZSBzY3JpcHRpbmcgaXMgdXN1YWxseSBjYXJyaWVkIG91dCBpbiBWQlNjcmlwdCBvciBKYXZhU2NyaXB0LjwvcD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (37, 1, 3, 'PGgzPldoYXQgaXMgZXZlbnQgYnViYmxpbmc/PC9oMz4NCg==', 'PHA+V2hlbiBjaGlsZCBjb250cm9sIHNlbmRzIGV2ZW50cyB0byBwYXJlbnQgaXQgaXMgdGVybWVkIGFzIGV2ZW50IGJ1YmJsaW5nLiBTZXJ2ZXIgY29udHJvbHMgbGlrZSBEYXRhIGdyaWQsIERhdGEgTGlzdCwgYW5kIFJlcGVhdGVyIGNhbiBoYXZlIG90aGVyIGNoaWxkIGNvbnRyb2xzIGluc2lkZSB0aGVtLjwvcD4NCg==', 1, '2018-01-24', 0);
INSERT INTO `tble_interview_questions` VALUES (38, 1, 6, 'PHA+d2hhdCBpcyBQeXRob24/PC9wPg0K', 'PHA+UHl0aG9uIC4uLi4gITwvcD4NCg==', 1, '2018-01-27', 0);
INSERT INTO `tble_interview_questions` VALUES (39, 1, 1, 'PHA+d2hhdCBpcyBqYXZhPzwvcD4NCg==', 'PHA+SmF2YSBpcyBqYXZhLi4uOi0pPC9wPg0KDQo8cD4mbmJzcDs8L3A+DQo=', 1, '2018-01-30', 1);
INSERT INTO `tble_interview_questions` VALUES (40, 4, 4, 'PHA+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkNvbWljIFNhbnMgTVMsY3Vyc2l2ZSI+PHU+PGVtPjxzdHJvbmc+PHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IzI3YWU2MCI+dGVzdGluZzwvc3Bhbj4gb24gPHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB4Ij48c3BhbiBzdHlsZT0iY29sb3I6IzhlNDRhZCI+MzEtSmFuJm5ic3A7PC9zcGFuPjwvc3Bhbj48L3N0cm9uZz48L2VtPjwvdT48c3Ryb25nPjxlbT4gJm5ic3A7ICZuYnNwOzwvZW0+PC9zdHJvbmc+PC9zcGFuPjwvcD4NCg0KPHA+PGEgaWQ9ImQiIG5hbWU9ImQiPjwvYT48L3A+DQoNCjxwPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpDb21pYyBTYW5zIE1TLGN1cnNpdmUiPjxlbT48c3Ryb25nPmh0dHBzOi8vdGltZXNvZmluZGlhLmluZGlhdGltZXMuY29tL2NpdHkvY2hhbmRpZ2FyaC9zYWNrZWQtYnNmLW1hbi1tb3Zlcy1oaWdoLWNvdXJ0LXdhbnRzLWhpcy1qb2ItYmFjay9hcnRpY2xlc2hvdy82MjcxODIzNi5jbXM8L3N0cm9uZz48L2VtPjwvc3Bhbj48L3A+DQo=', 'PHA+PGEgaWQ9ImQiIG5hbWU9ImQiPjwvYT48L3A+DQoNCjxwPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpDb21pYyBTYW5zIE1TLGN1cnNpdmUiPjxlbT48c3Ryb25nPmh0dHBzOi8vdGltZXNvZmluZGlhLmluZGlhdGltZXMuY29tL2NpdHkvY2hhbmRpZ2FyaC9zYWNrZWQtYnNmLW1hbi1tb3Zlcy1oaWdoLWNvdXJ0LXdhbnRzLWhpcy1qb2ItYmFjay9hcnRpY2xlc2hvdy82MjcxODIzNi5jbXM8L3N0cm9uZz48L2VtPjwvc3Bhbj48L3A+DQo=', 1, '2018-01-31', 0);
INSERT INTO `tble_interview_questions` VALUES (41, 1, 10, 'PHA+d2hhdCBpcyBQSFA/PC9wPg0KDQo8cD4mbmJzcDs8L3A+DQo=', 'PHA+PHN0cm9uZz5QSFAgaXMgc2NyaXB0aW5nLjwvc3Ryb25nPjwvcD4NCg==', 1, '2018-04-07', 0);
INSERT INTO `tble_interview_questions` VALUES (42, 26, 11, 'PHA+VGVzdDwvcD4NCg==', 'PHA+VGVzdDwvcD4NCg==', 1, '2018-07-09', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_jobposts`
-- 

DROP TABLE IF EXISTS `tble_jobposts`;
CREATE TABLE IF NOT EXISTS `tble_jobposts` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_code` varchar(20) NOT NULL,
  `job_title` varchar(30) NOT NULL,
  `job_desc` text NOT NULL,
  `post_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `total_openings` int(5) NOT NULL,
  `job_location` varchar(25) NOT NULL,
  `ctc` int(10) NOT NULL,
  `area` varchar(30) NOT NULL,
  `skillset` text NOT NULL,
  `qualification` text NOT NULL,
  `job_type` varchar(30) NOT NULL,
  `emp_type` text NOT NULL,
  `industry` int(10) NOT NULL,
  `prefered_shift` varchar(45) DEFAULT NULL,
  `experience` varchar(45) NOT NULL,
  `notice_period` varchar(20) DEFAULT NULL,
  `other_expected_critereas` text NOT NULL,
  `other_remarks` text NOT NULL,
  `apply_url` text NOT NULL,
  `rolesNresponses` text NOT NULL,
  `functional_area` varchar(50) NOT NULL,
  `job_role` varchar(50) NOT NULL,
  `min_experience` int(3) NOT NULL,
  `max_experience` int(3) NOT NULL,
  `cur_ctc` float(8,2) NOT NULL,
  `exp_ctc` float(8,2) NOT NULL,
  `country` int(10) NOT NULL,
  `state` int(10) NOT NULL,
  `city` int(10) NOT NULL,
  `languages` text NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_user` int(11) NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_flag` int(11) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `tble_jobposts`
-- 

INSERT INTO `tble_jobposts` VALUES (1, '100124', 'Web Developer', 'Development', '2017-08-24', '2017-08-30', 7, '3', 1, 'PHP,Javascript', 'PHP,Javascript', '4', 'permanent', '', 1, 'General', '2', '', '', '', 'Development', '', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 1, '2017-09-15 17:41:37', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (2, '1001', 'Network Engineer', 'Installation and configuration of WAN, LAN \r\nMaintain network routing using Dynamic & Static Routing, Inter-VLAN Routing\r\nIOS Up gradation of Cisco Routers and Cisco Catalyst Switches.\r\nHave experience in a Cisco environment with various network protocols (ex. OSPF, EIGRP) and verify summarization with respect to both automatic and manual.\r\nInstall, maintain and troubleshoot network equipment to include routers and switches, perform fault and problem management to ensure services are maintained according to the levels defined.\r\nExperience in Configuration of Cisco 2600, 3745, 7500, 7200 Series Routers and 4500, 6500 Series Core-Switches & 2950, 3500, 3750 Series Access Layer Switches, nexus 2k,5k, 7k.\r\nTroubleshooting on various layers (LAN & Wan i.e. Access, Distribution, Perimeter layer and at MPLS end) in case of Slowness/Down issue reported from processes and identify the root cause as well whether the problem is in our network or at client end.\r\nInstallation and configuration of Cisco switches including 2950, 3500 and 3750 series switches.\r\nExperience in design, implementation, and troubleshooting of complex networks\r\nexcellent troubleshooting skills\r\nExcellent written and oral communication skills\r\nAbility to work with minimal supervision and to divide focus among many different projects.', '2017-08-25', '2017-09-30', 8, '1', 2, 'CCNS,Redhat', 'CCNS,Redhat', '1', 'permanent', '', 2, 'night 10 pm to 6 am', '2', '20 days', '', '', '', 'Installation and configuration of WAN, LAN \nMaintain network routing using Dynamic & Static Routing, Inter-VLAN Routing\nIOS Up gradation of Cisco Routers and Cisco Catalyst Switches.\nHave experience in a Cisco environment with various network protocols (ex. OSPF, EIGRP) and verify summarization with respect to both automatic and manual.\nInstall, maintain and troubleshoot network equipment to include routers and switches, perform fault and problem management to ensure services are maintained according to the levels defined.', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 1, '2017-10-10 23:28:37', 1, '2017-10-05 05:37:49', 0);
INSERT INTO `tble_jobposts` VALUES (3, '1002', 'Support Engineer', 'Installation and configuration of WAN, LAN \r\nMaintain network routing using Dynamic & Static Routing, Inter-VLAN Routing\r\nIOS Up gradation of Cisco Routers and Cisco Catalyst Switches.\r\nHave experience in a Cisco environment with various network protocols (ex. OSPF, EIGRP) and verify summarization with respect to both automatic and manual.\r\nInstall, maintain and troubleshoot network equipment to include routers and switches, perform fault and problem management to ensure services are maintained according to the levels defined.\r\nExperience in Configuration of Cisco 2600, 3745, 7500, 7200 Series Routers and 4500, 6500 Series Core-Switches & 2950, 3500, 3750 Series Access Layer Switches, nexus 2k,5k, 7k.\r\nTroubleshooting on various layers (LAN & Wan i.e. Access, Distribution, Perimeter layer and at MPLS end) in case of Slowness/Down issue reported from processes and identify the root cause as well whether the problem is in our network or at client end.\r\nInstallation and configuration of Cisco switches including 2950, 3500 and 3750 series switches.\r\nExperience in design, implementation, and troubleshooting of complex networks\r\nexcellent troubleshooting skills\r\nExcellent written and oral communication skills\r\nAbility to work with minimal supervision and to divide focus among many different projects.', '2017-08-25', '2017-09-30', 8, '1', 2, 'CCNS,Redhat', 'CCNS,Redhat', '2', 'permanent', '', 2, 'night 10 pm to 6 am', '2', '', '', '', '', '', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 1, '2017-09-25 20:03:45', 1, '2017-09-25 20:33:45', 0);
INSERT INTO `tble_jobposts` VALUES (4, '1003', 'System Engineer', 'Installation and configuration of WAN, LAN \r\nMaintain network routing using Dynamic & Static Routing, Inter-VLAN Routing\r\nIOS Up gradation of Cisco Routers and Cisco Catalyst Switches.\r\nHave experience in a Cisco environment with various network protocols (ex. OSPF, EIGRP) and verify summarization with respect to both automatic and manual.\r\nInstall, maintain and troubleshoot network equipment to include routers and switches, perform fault and problem management to ensure services are maintained according to the levels defined.\r\nExperience in Configuration of Cisco 2600, 3745, 7500, 7200 Series Routers and 4500, 6500 Series Core-Switches & 2950, 3500, 3750 Series Access Layer Switches, nexus 2k,5k, 7k.\r\nTroubleshooting on various layers (LAN & Wan i.e. Access, Distribution, Perimeter layer and at MPLS end) in case of Slowness/Down issue reported from processes and identify the root cause as well whether the problem is in our network or at client end.\r\nInstallation and configuration of Cisco switches including 2950, 3500 and 3750 series switches.\r\nExperience in design, implementation, and troubleshooting of complex networks\r\nexcellent troubleshooting skills\r\nExcellent written and oral communication skills\r\nAbility to work with minimal supervision and to divide focus among many different projects.', '2017-08-25', '2017-09-30', 8, '1', 2, 'CCNS,Redhat', 'CCNS,Redhat', '2', 'permanent', '', 3, 'night 10 pm to 6 am', '2', '', '', '', '', '', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 1, '2017-09-15 17:41:49', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (5, '1003', 'Desktop Engineer', 'Installation and configuration of WAN, LAN \r\nMaintain network routing using Dynamic & Static Routing, Inter-VLAN Routing\r\nIOS Up gradation of Cisco Routers and Cisco Catalyst Switches.\r\nHave experience in a Cisco environment with various network protocols (ex. OSPF, EIGRP) and verify summarization with respect to both automatic and manual.\r\nInstall, maintain and troubleshoot network equipment to include routers and switches, perform fault and problem management to ensure services are maintained according to the levels defined.\r\nExperience in Configuration of Cisco 2600, 3745, 7500, 7200 Series Routers and 4500, 6500 Series Core-Switches & 2950, 3500, 3750 Series Access Layer Switches, nexus 2k,5k, 7k.\r\nTroubleshooting on various layers (LAN & Wan i.e. Access, Distribution, Perimeter layer and at MPLS end) in case of Slowness/Down issue reported from processes and identify the root cause as well whether the problem is in our network or at client end.\r\nInstallation and configuration of Cisco switches including 2950, 3500 and 3750 series switches.\r\nExperience in design, implementation, and troubleshooting of complex networks\r\nexcellent troubleshooting skills\r\nExcellent written and oral communication skills\r\nAbility to work with minimal supervision and to divide focus among many different projects.', '2017-08-25', '2017-09-30', 8, '3', 3, 'CCNS,Redhat', 'CCNS,Redhat', '3', 'permanent', '', 3, 'night 10 pm to 6 am', '2', '', '', '', '', '', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 1, '2017-09-15 17:41:55', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (6, '1009', 'Development Engineer', 'Installation and configuration of WAN, LAN \r\nMaintain network routing using Dynamic & Static Routing, Inter-VLAN Routing\r\nIOS Up gradation of Cisco Routers and Cisco Catalyst Switches.\r\nHave experience in a Cisco environment with various network protocols (ex. OSPF, EIGRP) and verify summarization with respect to both automatic and manual.\r\nInstall, maintain and troubleshoot network equipment to include routers and switches, perform fault and problem management to ensure services are maintained according to the levels defined.\r\nExperience in Configuration of Cisco 2600, 3745, 7500, 7200 Series Routers and 4500, 6500 Series Core-Switches & 2950, 3500, 3750 Series Access Layer Switches, nexus 2k,5k, 7k.\r\nTroubleshooting on various layers (LAN & Wan i.e. Access, Distribution, Perimeter layer and at MPLS end) in case of Slowness/Down issue reported from processes and identify the root cause as well whether the problem is in our network or at client end.\r\nInstallation and configuration of Cisco switches including 2950, 3500 and 3750 series switches.\r\nExperience in design, implementation, and troubleshooting of complex networks\r\nexcellent troubleshooting skills\r\nExcellent written and oral communication skills\r\nAbility to work with minimal supervision and to divide focus among many different projects.', '2017-08-25', '2017-09-22', 8, '3', 4, 'CCNS,Redhat', 'CCNS,Redhat', '3', 'permanent', '', 4, 'night 10 pm to 6 am', '3', '', '', '', '', '', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 1, '2017-09-15 17:42:04', 1, '2017-09-14 08:14:40', 0);
INSERT INTO `tble_jobposts` VALUES (7, '1007', 'System Support Engineer', 'Installation and configuration of WAN, LAN \nMaintain network routing using Dynamic & Static Routing, Inter-VLAN Routing\nIOS Up gradation of Cisco Routers and Cisco Catalyst Switches.\nHave experience in a Cisco environment with various network protocols (ex. OSPF, EIGRP) and verify summarization with respect to both automatic and manual.\nInstall, maintain and troubleshoot network equipment to include routers and switches, perform fault and problem management to ensure services are maintained according to the levels defined.\nExperience in Configuration of Cisco 2600, 3745, 7500, 7200 Series Routers and 4500, 6500 Series Core-Switches & 2950, 3500, 3750 Series Access Layer Switches, nexus 2k,5k, 7k.\nTroubleshooting on various layers (LAN & Wan i.e. Access, Distribution, Perimeter layer and at MPLS end) in case of Slowness/Down issue reported from processes and identify the root cause as well whether the problem is in our network or at client end.\nInstallation and configuration of Cisco switches including 2950, 3500 and 3750 series switches.\nExperience in design, implementation, and troubleshooting of complex networks\nexcellent troubleshooting skills\nExcellent written and oral communication skills\nAbility to work with minimal supervision and to divide focus among many different projects.', '2017-08-25', '2017-09-30', 8, '3', 3, 'CCNS,Redhat', 'CCNS,Redhat', '2', 'permanent', 'fulltime', 3, 'night 10 pm to 6 am', '2', '', '', '', '', '', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 1, '2017-10-10 23:28:26', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (8, '12345658', 'Web Designer', 'We are looking for below professionals for our client ,', '2017-09-16', '2017-10-31', 8, '1', 1, 'HTML5,CSS3', 'HTML5,CSS3', '1', 'permanent', '', 1, '2-10 pm', '1', '', '', '', '', '', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 1, '2017-10-04 17:07:08', 1, '2017-10-05 05:37:08', 0);
INSERT INTO `tble_jobposts` VALUES (9, 'A100', 'PHP Developer', '1.Work experience in PHP,Codeigniter Framework is must.\r\n\r\n2.Knowledge of PHP, MySQL, Json, Ajax and JavaScript.\r\n\r\n3. Good Knowledge of object oriented programming.\r\n\r\n4. Understanding of web services/payment gateways.\r\n\r\n5.Good knowledge of integrating Payment Gateways, API integration..\r\n\r\n6.Work experience in Laravel framework or Open Source CMS like Wordpress is an added advantage.\r\n\r\nSend your updated resume to info[at]axnoldigitalsolutions[dot]com along with current salary and notice period.', '2017-09-19', '2017-09-30', 10, '1', 2, 'IT', 'Codeigniter', '1', 'permanent', '', 1, 'Morning', '2', '15days', 'PHP,Laravel,Wordpress', 'Freshers need not apply.', 'https://www.indeed.co.in/viewjob?t=php+developer&jk=abe8b1ba5adff4f1&_ga=2.67244113.1379435969.1505727901-259456555.1505120348', '', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 4, '2017-09-20 17:04:23', 4, '2017-09-21 05:34:23', 0);
INSERT INTO `tble_jobposts` VALUES (10, 'A101', 'Android Developer', '\n1)Experience of submitting at least one app to Google Play Store.\n\n2)Excellent in Android UI, Application framework, SDKs.\n\n3)Design and build advanced applications for the Android platform.\n\n4)Excellent in OOPS concepts, XML, JSON, Web Services, MySQL/SQLite databases.\n\n5)Send your updated resume to info[at]axnoldigitalsolutions[dot]com along with current salary and notice period.', '2017-09-19', '2017-10-31', 10, '1', 2, 'IT', 'Android,Java', '1', 'permanent', 'fulltime', 1, 'Morning', '2', '15', 'Android Studio,Json', 'Freshers plz excuse', 'https://www.indeed.co.in/viewjob?t=android+developer&jk=02e121e0242813d6&_ga=2.130118095.1379435969.1505727901-259456555.1505120348', '', '', '', 0, 0, 0.00, 0.00, 0, 0, 0, '', 4, '2017-09-19 22:14:13', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (11, '54365cb', 'bvbvc', 'bvcbvcb', '2017-10-11', '2017-10-27', 6, '', 0, 'CCNS,Redhat', 'HTML5,CSS3', 'btech', 'temprory', 'fulltime', 5, 'vcbc', '', '2', '', '', '', 'bvcbc', 'cvbc', '', 2, 3, 0.00, 20000.00, 1, 4, 0, 'english', 1, '2017-10-10 22:19:43', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (12, '0001', 'DevOps engineer', 'DevOps engineer', '2017-10-17', '2017-10-31', 0, '', 0, 'DevOps engineer', 'DevOps engineer', 'DevOps engineer', 'permanent', 'fulltime', 1, 'DevOps engineer', '', 'DevOps engineer', 'DevOps engineer', 'DevOps engineer', 'DevOps engineer', 'DevOps engineer', 'DevOps engineer', 'DevOps engineer', 0, 0, 0.00, 0.00, 1, 1, 3, 'DevOps engineer', 1, '2017-10-17 02:09:06', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (13, 'A700', 'PHP Developer', 'Hi,\r\n\r\nUrgent Opening for PHP programmer having experience in Codeigniter framework.\r\n\r\nExp:- 1+Year\r\n\r\nJob Description:\r\n\r\n1.Good knowledge and experience in PHP, Codeigniter Framework.\r\n\r\n2.Experience in Wordpress is an added advantage.\r\n\r\n3.Knowledge of PHP, MySQL, Ajax, Json and JavaScript.\r\n\r\n4. Good knowledge of integrating Payment Gateways, API integration.\r\n\r\nNote:- Freshers need not apply.\r\n\r\nSend your updated resume to info[at]axnoldigitalsolutions[dot]com', '2017-10-18', '2017-11-30', 2, '', 0, 'IT', 'Codeigniter,Laravel,Wordpress', 'B.tech', 'permanent', '', 1, 'Morning', '', '15 days', 'PHP', '', 'https://www.indeed.co.in/viewjob?t=php+programmer+codeigniter&jk=3c0922400f4a8893&_ga=2.127072261.967525608.1508129201-259456555.1505120348', 'Developer', 'IT', 'PHP Developer', 1, 5, 3.00, 3.50, 1, 1, 3, 'english', 4, '2017-10-18 05:35:08', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (14, 'A800', 'Codeigniter Developer', 'Hi,\r\n\r\nUrgent Opening for PHP programmer having experience in Codeigniter framework.\r\n\r\nExp:- 1+Year\r\n\r\nJob Description:\r\n\r\n1.Good knowledge and experience in PHP, Codeigniter Framework.\r\n\r\n2.Experience in Wordpress is an added advantage.\r\n\r\n3.Knowledge of PHP, MySQL, Ajax, Json and JavaScript.\r\n\r\n4. Good knowledge of integrating Payment Gateways, API integration.\r\n\r\nNote:- Freshers need not apply.\r\n\r\nSend your updated resume to info[at]axnoldigitalsolutions[dot]com', '2017-10-18', '2017-11-30', 10, '', 0, 'IT', 'Codeigniter', 'B.tech', 'permanent', 'fulltime', 1, 'Morning', '', '15 days', 'PHP', '', 'https://www.indeed.co.in/viewjob?t=android+developer&jk=02e121e0242813d6&_ga=2.130118095.1379435969.1505727901-259456555.1505120348', 'Developer', 'IT', 'PHP Developer', 1, 5, 3.00, 3.50, 1, 1, 3, 'English', 3, '2017-10-18 05:57:42', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (15, 'A701', 'Android Developer', 'testing', '2017-10-18', '2017-10-19', 10, '4', 0, 'edrer', 'ere', 'edred', 'permanent', 'fulltime', 1, 'Morning', '', 're', 'ere', 'rere', 'erer', 'ewre', 'err', 'erer', 0, 0, 0.00, 0.00, 1, 1, 3, 're', 3, '2018-06-16 15:24:09', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (16, '169159', 'Devops Engineer', '- Dev ops \r\ntest', '2018-02-09', '2017-12-08', 10, '2', 0, 'Python', 'Java, Python', 'B.E', 'temprory', 'fulltime', 1, 'night shift', '', '2 months', '', 'Test', 'https://www.naukri.com/job-listings-Devops-Engineer-SAP-Cloud-Platform-Integration-Cloud-Platform-SAP-Labs-India-Pvt-Ltd-Bengaluru-3-to-6-years-010218900809?src=rcntSrchWithCount&sid=15175748964792&xp=1&px=1&qp=devops&srcPage=s', '', 'Devops', 'Devops Eng.', 6, 2, 150000.00, 120000.00, 1, 2, 5, 'Telugu, English', 5, '2018-06-16 15:23:38', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (17, '712345', 'PHP Developer', 'Seeking experienced software developers who are passionate about building web applications using technologies such as PHP, MySQL, JavaScript, AJAX, XML, HTML, CSS, JQuery, WordPress etc. test', '2018-04-06', '2018-12-31', 10, '2', 0, 'Wordpress', 'php, wordpress', '2', 'permanent', '', 0, 'day', '', '2 months', '', '', '', 'Write secure, performant and maintainable code using best practices and standards.\r\n\r\nCollaborate with other software developers and operation engineers to solve technical challenges.\r\n\r\nContinuously learn and broaden your technical skill set with new technologies.', 'website', 'Web developer', 1, 3, 0.00, 300000.00, 2, 5, 0, '', 8, '2018-06-23 04:25:42', 8, '2018-06-23 01:55:42', 0);
INSERT INTO `tble_jobposts` VALUES (18, '100025', 'Test Job', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-04-25', '2018-08-30', 10, '4', 0, 'Hyderabad', 'PHP,CI,MAGENTO', '', 'permanent', '', 26, 'Morning', '', '15', '', '', 'http://megaclassifieds.in/followgigs/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'IT', 'Team Lead', 5, 10, 10.00, 12.00, 1, 3, 0, 'English', 8, '2018-06-16 15:22:48', 8, '2018-05-05 21:58:28', 0);
INSERT INTO `tble_jobposts` VALUES (19, 'MA - 123', 'Manager', 'Job Description:\r\nInitiate and develop a no touch deployment architecture.\r\nDesign for scalable, fault tolerant and high performing.\r\nDeployment Tools & Processes for CI, deployments in hybrid Container + Azure based environments.\r\nMaintain and enhance Kubernetes (or similar) based Docker Containers architecture.\r\nProvide leadership in converting all legacy deployments to Azure Cloud deployments.\r\nwork with stakeholders to define Security and monitoring tools in place.\r\nTrain and guide Devops Engineers to implement and maintain the deployments.\r\nCome up with playbooks for deployments.\r\nQualifications:\r\nBachelor''s degree or professional diploma and 5+ years relevant work experience, or equivalent.\r\nExperience in Designing Highly scalable and available automated devops process.\r\nExperience with automation/configuration management using either Puppet, Chef or an equivalent.\r\nExperience of software build and release processes including Continuous Integration/Deployment/delivery.\r\nGit stash experience.\r\nBuild automation: Jenkins, Maven, Bamboo or similar tools.\r\nMonitoring tools experience.\r\nPackaging tools Experience.\r\nA working understanding of code and script (Java, Python, JavaScript, HTML5,Poweshell, Bash).\r\nNice to have: \r\nAbility to use a wide variety of open source technologies and cloud services (experience with Azure is Highly Desirable).\r\nExperience working in hybrid cloud environments\r\nJira stack experience .\r\nKnowledge of systems security (infrastructure and software).\r\nWeb Servers: tomcat.\r\nDeployment and performance tuning of web applications - caching, proxies.\r\nSalary: INR 15,00,000 - 27,50,000 P.A. Based on Evaluation\r\n\r\nIndustry:IT-Software / Software Services\r\n\r\nFunctional Area:IT Software - Application Programming , Maintenance\r\n\r\nRole Category:Programming & Design\r\n\r\nRole:Team Lead/Technical Lead\r\n\r\nEmployment Type: Permanent Job, Full Time', '2018-06-01', '2018-06-08', 123, '3', 0, 'Devops, Jenkins,AWS', 'Jira stack experience', '6', 'temprory', '', 26, 'Night Shift, UK Shift, Europe Shift', '', '100', 'Bangalore candidates only', 'Immediate Joinees Preferred', 'www.google.com', 'Job Description:\r\nInitiate and develop a no touch deployment architecture.\r\nDesign for scalable, fault tolerant and high performing.\r\nDeployment Tools & Processes for CI, deployments in hybrid Container + Azure based environments.\r\nMaintain and enhance Kubernetes (or similar) based Docker Containers architecture.\r\nProvide leadership in converting all legacy deployments to Azure Cloud deployments.\r\nwork with stakeholders to define Security and monitoring tools in place.\r\nTrain and guide Devops Engineers to implement and maintain the deployments.\r\nCome up with playbooks for deployments.\r\nQualifications:\r\nBachelor''s degree or professional diploma and 5+ years relevant work experience, or equivalent.\r\nExperience in Designing Highly scalable and available automated devops process.\r\nExperience with automation/configuration management using either Puppet, Chef or an equivalent.\r\nExperience of software build and release processes including Continuous Integration/Deployment/delivery.\r\nGit stash experience.\r\nBuild automation: Jenkins, Maven, Bamboo or similar tools.\r\nMonitoring tools experience.\r\nPackaging tools Experience.\r\nA working understanding of code and script (Java, Python, JavaScript, HTML5,Poweshell, Bash).\r\nNice to have: \r\nAbility to use a wide variety of open source technologies and cloud services (experience with Azure is Highly Desirable).\r\nExperience working in hybrid cloud environments\r\nJira stack experience .\r\nKnowledge of systems security (infrastructure and software).\r\nWeb Servers: tomcat.\r\nDeployment and performance tuning of web applications - caching, proxies.\r\nSalary: INR 15,00,000 - 27,50,000 P.A. Based on Evaluation\r\n\r\nIndustry:IT-Software / Software Services\r\n\r\nFunctional Area:IT Software - Application Programming , Maintenance\r\n\r\nRole Category:Programming & Design\r\n\r\nRole:Team Lead/Technical Lead\r\n\r\nEmployment Type: Permanent Job, Full Time', 'Devops', 'java', 3, 100, 600000.00, 15000.00, 1, 2, 0, 'Telugu, English, Tamil', 9, '2018-06-16 15:22:10', 9, '2018-06-10 09:58:49', 0);
INSERT INTO `tble_jobposts` VALUES (20, 'dev001', 'Devops engineer', 'Devops engineer Devops engineer Devops engineer Devops engineer', '2018-06-17', '2018-06-30', 2, '2', 0, 'devops', 'git,python,docker', 'B.E', 'permanent', 'fulltime', 26, '9 to 6', '', '15', '', '', '', 'GIT,Maven,Jenkins....', 'Devops engineer', 'Devops engineer', 2, 3, 12.00, 15.00, 1, 2, 4, '', 8, '2018-06-16 15:21:08', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (21, 'tester', 'tester', 'testing testing testing testing testing testing testing testing testing testing testing', '2018-07-03', '2018-07-05', 2, '', 0, 'testing', 'testing', 'B.E', 'permanent', 'fulltime', 26, '9 to 6', '', '20', 'testing', 'test', '', 'testing testing testing testing testing testing testing testing testing testing ', '0', 'Tester', 0, 8, 12.00, 13.00, 1, 2, 4, 'english', 8, '2018-07-03 11:25:52', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `tble_jobposts` VALUES (22, 'JB001', 'looking for testers', 'A Software tester (software test engineer) should be capable of designing test suites and should have the ability to understand usability issues. ... The roles and responsibilities for a usability software tester are as follows: A Software Tester is responsible for designing testing scenarios for usability testing.', '2018-07-12', '2018-07-12', 2, '', 0, 'Tester', 'Git,Docker', '1', 'permanent', '', 26, 'day shift', '', '30', 'Tester', 'np', 'np', 'A Software tester (software test engineer) should be capable of designing test suites and should have the ability to understand usability issues. ... The roles and responsibilities for a usability software tester are as follows: A Software Tester is responsible for designing testing scenarios for usability testing.', '0', 'Tester', 2, 6, 1000000.00, 1000000.00, 1, 2, 0, 'English,Telugu', 10, '2018-07-12 12:35:29', 10, '2018-07-12 10:05:29', 0);
INSERT INTO `tble_jobposts` VALUES (23, 'Sales-001', 'Distribution Manager Retail Sa', 'Sales Ensuring Primary and Secondary Targets are met\r\nTo ensure coverage and expansion as per FK plan\r\nTo Identify and correct the gaps in Reach Numeric & Weighted\r\nTo track and monitor ROI / Absolute income of Distributors and ways to improve the same\r\nTo manage schemes re-distribution so as to drive sales objectives\r\nTo ensure improvement in FOS productivity using various tools\r\nTo ensure optimum Span of Control for all GR manpower on roll & off roll\r\nTo ensure quality Direct Dealers and build Priority Dealers with set parameters\r\nTo ensure timely communication of schemes, new models, events etc. to the Trade Partners\r\nTo monitor and ensure structured Standard Operating Procedure for Field Force\r\nTo create and monitor a Field Force docket and ensure FOS to carry it at all field visits\r\nTo ensure a strong network against competition\r\nTo develop localised plans to ensure health and motivation of network\r\nTo ensure category wise OPD performance on a monthly basis\r\nTo ensure range selling in GR/ DD\r\nTo ensure improvement in Weighted Distribution by converting A*, A Dealers as Direct Dealers', '2018-07-05', '2018-07-31', 5, '', 0, 'SALES', 'Sales, Retail sales, Credit card sales', '2', 'permanent', '', 25, 'General', '', '4 weeks', 'Distribution management', 'Willing to work in night shifts ?', '', 'Sales Ensuring Primary and Secondary Targets are met\r\nTo ensure coverage and expansion as per FK plan\r\nTo Identify and correct the gaps in Reach Numeric & Weighted\r\nTo track and monitor ROI / Absolute income of Distributors and ways to improve the same\r\nTo manage schemes re-distribution so as to drive sales objectives\r\nTo ensure improvement in FOS productivity using various tools\r\nTo ensure optimum Span of Control for all GR manpower on roll & off roll\r\nTo ensure quality Direct Dealers and build Priority Dealers with set parameters\r\nTo ensure timely communication of schemes, new models, events etc. to the Trade Partners\r\nTo monitor and ensure structured Standard Operating Procedure for Field Force\r\nTo create and monitor a Field Force docket and ensure FOS to carry it at all field visits\r\nTo ensure a strong network against competition\r\nTo develop localised plans to ensure health and motivation of network\r\nTo ensure category wise OPD performance on a monthly basis\r\nTo ensure range selling in GR/ DD\r\nTo ensure improvement in Weighted Distribution by converting A*, A Dealers as Direct DealersSales Ensuring Primary and Secondary Targets are met\r\nTo ensure coverage and expansion as per FK plan\r\nTo Identify and correct the gaps in Reach Numeric & Weighted\r\nTo track and monitor ROI / Absolute income of Distributors and ways to improve the same\r\nTo manage schemes re-distribution so as to drive sales objectives\r\nTo ensure improvement in FOS productivity using various tools\r\nTo ensure optimum Span of Control for all GR manpower on roll & off roll\r\nTo ensure quality Direct Dealers and build Priority Dealers with set parameters\r\nTo ensure timely communication of schemes, new models, events etc. to the Trade Partners\r\nTo monitor and ensure structured Standard Operating Procedure for Field Force\r\nTo create and monitor a Field Force docket and ensure FOS to carry it at all field visits\r\nTo ensure a strong network against competition\r\nTo develop localised plans to ensure health and motivation of network\r\nTo ensure category wise OPD performance on a monthly basis\r\nTo ensure range selling in GR/ DD\r\nTo ensure improvement in Weighted Distribution by converting A*, A Dealers as Direct Dealers', '0', 'Distribution Manager- Retail Sales', 5, 8, 5.00, 8.00, 1, 2, 0, 'English, Hindi, German, French, Telugu', 11, '2018-07-06 06:25:04', 11, '2018-07-06 03:55:03', 0);
INSERT INTO `tble_jobposts` VALUES (24, 'sales-002', 'Area Retail Executive Karnatak', '(A)	Purpose of the Job: \r\nTo ensure that the right merchandise for the Brand is available and visible for sales on time at the right place. \r\n\r\n(B)	Size of the Job: \r\nFinancial: Rs. 3-4 Crs\r\nNo. of direct reportees: NA\r\nNo. of people handled: NA\r\n\r\n(C)	Dimensions of the Job:\r\nHe is the first point of contact for dealers/ retailers in the market. It essentially involves portraying the right image of the brand and ensuring that the merchandise is available on time in full at all outlets the company is dealing with to facilitate higher sell through.\r\n\r\n(D)	Principal Accountabilities:\r\nOutlet Coverage\r\nEnsure Presence in the relevant Key dealers across the region\r\nLiase synergistically with Dealers/Retailers/MBO owners etc.\r\nProvide inputs to Retailers in terms of display of product (visual merchandising), selling skills to his staff.\r\nSales Achievement\r\nAchieve primary sales target.\r\nCredit Management\r\nManage returns and ensure timely collections from dealers including SOR.', '2018-07-13', '2018-07-21', 2, '', 0, 'sales', 'sales', '2', 'temprory', '', 25, 'General', '', '', '', '', '', 'Role Category: Retail Sales\r\nRole: Sales Executive/Officer', '', '', 0, 0, 0.00, 9.00, 0, 0, 0, '', 11, '2018-07-06 06:29:50', 11, '2018-07-06 03:59:50', 0);
INSERT INTO `tble_jobposts` VALUES (25, 'JB001', 'Devops engineer', 'Devops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineer', '2018-07-08', '2018-07-14', 2, '', 0, 'Tester', 'Docker', 'B.E', 'permanent', 'fulltime', 26, 'day shift', '', '30', 'testing', 'test', '', 'Devops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineerDevops engineer', '4', 'Devops engineer', 6, 0, 1000000.00, 1000000.00, 1, 2, 4, 'English', 10, '2018-07-08 12:05:58', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tble_jobposts2`
-- 

DROP TABLE IF EXISTS `tble_jobposts2`;
CREATE TABLE IF NOT EXISTS `tble_jobposts2` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_code` varchar(20) NOT NULL,
  `job_title` varchar(30) NOT NULL,
  `job_desc` text NOT NULL,
  `post_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `total_openings` int(5) NOT NULL,
  `job_location` varchar(25) NOT NULL,
  `ctc` int(10) NOT NULL,
  `area` varchar(30) NOT NULL,
  `skillset` text NOT NULL,
  `qualification` text NOT NULL,
  `job_type` varchar(30) NOT NULL,
  `emp_type` text NOT NULL,
  `industry` int(10) NOT NULL,
  `prefered_shift` varchar(45) DEFAULT NULL,
  `experience` varchar(45) NOT NULL,
  `notice_period` varchar(20) DEFAULT NULL,
  `other_expected_critereas` text NOT NULL,
  `other_remarks` text NOT NULL,
  `apply_url` text NOT NULL,
  `rolesNresponses` text NOT NULL,
  `functional_area` varchar(50) NOT NULL,
  `job_role` varchar(50) NOT NULL,
  `min_experience` float(3,1) NOT NULL,
  `max_experience` float(3,1) NOT NULL,
  `cur_ctc` float(8,2) NOT NULL,
  `exp_ctc` float(8,2) NOT NULL,
  `country` int(10) NOT NULL,
  `state` int(10) NOT NULL,
  `city` int(10) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_user` int(11) NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_flag` int(11) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tble_jobposts2`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tble_login`
-- 

DROP TABLE IF EXISTS `tble_login`;
CREATE TABLE IF NOT EXISTS `tble_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(15) NOT NULL,
  `active_flg` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

-- 
-- Dumping data for table `tble_login`
-- 

INSERT INTO `tble_login` VALUES (1, 'jyothi@123.com', '261c9009c551ab7785ff22dc26289313', 12, 'employee', 0);
INSERT INTO `tble_login` VALUES (2, 'vismaya@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 'employer', 0);
INSERT INTO `tble_login` VALUES (3, 'newone@gmail.com', '959c7c560318f57945360c2ef5a6fc23', 2, 'employer', 0);
INSERT INTO `tble_login` VALUES (5, 'g3@gmail.com', '202cb962ac59075b964b07152d234b70', 13, 'employee', 0);
INSERT INTO `tble_login` VALUES (6, 'info@axnoldigitalsolutions.com', 'e10adc3949ba59abbe56e057f20f883e', 4, 'employer', 0);
INSERT INTO `tble_login` VALUES (7, 'jiransanth@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 5, 'employer', 0);
INSERT INTO `tble_login` VALUES (8, 'jiransanth@gmail.com', 'b0dc6974a638838dace804e378916f5f', 14, 'employee', 0);
INSERT INTO `tble_login` VALUES (9, 'jinu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 15, 'employee', 0);
INSERT INTO `tble_login` VALUES (10, 'mohammed@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 16, 'employee', 0);
INSERT INTO `tble_login` VALUES (11, 'nisha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 17, 'employee', 0);
INSERT INTO `tble_login` VALUES (12, 'jackson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 18, 'employee', 0);
INSERT INTO `tble_login` VALUES (13, 'vivek@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 19, 'employee', 0);
INSERT INTO `tble_login` VALUES (14, 'ribina@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 20, 'employee', 0);
INSERT INTO `tble_login` VALUES (15, 'arya@gmail.com', '202cb962ac59075b964b07152d234b70', 21, 'employee', 0);
INSERT INTO `tble_login` VALUES (16, 'jyothi.g318@gmail.com', 'c0d492886ee0dceb91b850b15ea05fa8', 22, 'employee', 0);
INSERT INTO `tble_login` VALUES (19, 'axnoldigitalsolutions@gmail.com', '25f9e794323b453885f5181f1b624d0b', 25, 'employee', 0);
INSERT INTO `tble_login` VALUES (20, 'kcunnikrishnan1986@gmail.com', 'd1f491a404d6854880943e5c3cd9ca25', 26, 'employee', 0);
INSERT INTO `tble_login` VALUES (22, 'teamadsdev3@gmail.com', '4c56ff4ce4aaf9573aa5dff913df997a', 28, 'employee', 0);
INSERT INTO `tble_login` VALUES (23, 'teamads2@gmail.com', '25f9e794323b453885f5181f1b624d0b', 29, 'employee', 0);
INSERT INTO `tble_login` VALUES (24, 'axnoldigital@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 17, 'employee', 0);
INSERT INTO `tble_login` VALUES (25, 's@gmail.com', 'c45c82c24b99730e27542fec5eccfe2d', 18, 'employee', 0);
INSERT INTO `tble_login` VALUES (26, 'wrenchtechno@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 19, 'employee', 0);
INSERT INTO `tble_login` VALUES (27, 'jiran.winwrench@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3, 'employer', 0);
INSERT INTO `tble_login` VALUES (28, 'smartlinks2017@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 20, 'employee', 0);
INSERT INTO `tble_login` VALUES (29, 'seochinna@gmail.com', 'f9b39e611863a6435dcbdd887ab23619', 21, 'employee', 0);
INSERT INTO `tble_login` VALUES (30, 'sai@gmail.com', 'c45c82c24b99730e27542fec5eccfe2d', 4, 'employer', 0);
INSERT INTO `tble_login` VALUES (31, 'teamadsdev212@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 22, 'employee', 0);
INSERT INTO `tble_login` VALUES (32, 'teamadsdev232@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 5, 'employer', 0);
INSERT INTO `tble_login` VALUES (33, 'suneeshsk3@gmail.com', 'cb5e80ec0360e55440fcf6f63a9f7350', 23, 'employee', 0);
INSERT INTO `tble_login` VALUES (35, 'teamadsdev2@gmail.com', '3fb3c4253fbc96c1f6c9647e9c5d0bd3', 7, 'employer', 2);
INSERT INTO `tble_login` VALUES (36, 'salesvadtrade@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 30, 'employee', 2);
INSERT INTO `tble_login` VALUES (37, 'madhapursb@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 8, 'employer', 2);
INSERT INTO `tble_login` VALUES (38, 'pvrao@gmail.com', '202cb962ac59075b964b07152d234b70', 9, 'employer', 2);
INSERT INTO `tble_login` VALUES (39, 'vramarajus@gmail.com', '202cb962ac59075b964b07152d234b70', 31, 'employee', 2);
INSERT INTO `tble_login` VALUES (40, 'hemanthsemtech@gmail.com', '3b1bab309bda71d65844d306e41e8a73', 32, 'employee', 2);
INSERT INTO `tble_login` VALUES (41, 'mgchayanaidu@gmail.com', 'c246ad314ab52745b71bb00f4608c82a', 33, 'employee', 2);
INSERT INTO `tble_login` VALUES (42, 'mgchaya@gmail.com', 'c246ad314ab52745b71bb00f4608c82a', 10, 'employer', 2);
INSERT INTO `tble_login` VALUES (43, 'dummy@jobwire.com', '62608e08adc29a8d6dbc9754e659f125', 11, 'employer', 2);
INSERT INTO `tble_login` VALUES (44, 'ramesh@jobseeker.com', 'cd73502828457d15655bbd7a63fb0bc8', 34, 'employee', 2);
INSERT INTO `tble_login` VALUES (45, 'suresh@jobseeker.com', 'cd73502828457d15655bbd7a63fb0bc8', 35, 'employee', 2);
INSERT INTO `tble_login` VALUES (46, 'naresh@jobseeker.com', 'cd73502828457d15655bbd7a63fb0bc8', 36, 'employee', 2);
INSERT INTO `tble_login` VALUES (47, 'mahesh@jobseeker.com', 'cd73502828457d15655bbd7a63fb0bc8', 37, 'employee', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `visatype`
-- 

DROP TABLE IF EXISTS `visatype`;
CREATE TABLE IF NOT EXISTS `visatype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `country` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `visatype`
-- 

INSERT INTO `visatype` VALUES (1, 'test Srilanka', 3, 1);
INSERT INTO `visatype` VALUES (2, 'test USA', 2, 1);
