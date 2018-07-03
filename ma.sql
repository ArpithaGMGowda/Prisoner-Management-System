-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 03:12 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ma1`
--

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE `court` (
  `court_name` varchar(20) NOT NULL,
  `court_location` varchar(20) NOT NULL,
  `warrentno` int(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `sentence` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `date_of_trial` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `court`
--

INSERT INTO `court` (`court_name`, `court_location`, `warrentno`, `section`, `sentence`, `email`, `date_of_trial`) VALUES
('District Court', 'Udupi', 101, 'section 420', '12 years', 'distcourt@ud.gov.in', '2011-08-12'),
('District Court', 'Manglore', 102, 'section 610', '8 years', 'distcourt@ml.gov.in', '2015-10-19'),
('District Court', 'Udupi', 103, 'section 377', '25 years', 'distcourt@ud.gov.in', '2013-03-25'),
('District Court', 'Mysore', 104, 'section 110', '5 years', 'distcourt@my.gov.in', '2017-09-25'),
('District Court', 'Manglore', 105, 'section 321', '25 years', 'distcourt@ml.gov.in', '2017-09-25'),
('District Court', 'Manglore', 106, 'section 377', '25 years', 'distcourt@ml.gov.in', '2010-02-28'),
('District Court', 'Mysore', 107, 'section 420', '12 years', 'distcourt@my.gov.in', '2013-02-28'),
('Supreme Court', 'Delhi', 111, 'section 377', '25 years', 'supreme@india.gov.in', '2013-12-22'),
('High Court', 'Kerala', 222, 'section 420', '12 years', 'court@ker.gov.in', '2015-12-18'),
('High Court', 'Karnataka', 333, 'section 120', '20 years', 'court@kar.gov.in', '2011-07-24'),
('High Court', 'Tamilnadu', 444, 'section 120', '20 years', 'court@tn.gov.in', '2010-06-30'),
('Supreme Court', 'Delhi', 555, 'section 510', '10 years', 'supreme@india.gov.in', '2015-09-23'),
('District Court', 'Manglore', 666, 'section 110', '5 years', 'distcourt@ml.gov.in', '2017-06-15'),
('District Court', 'Udupi', 777, 'section 610', '8 years', 'distcourt@ud.gov.in', '2017-03-28'),
('Supreme Court', 'Delhi', 888, 'section 120', '20 years', 'supreme@india.gov.in', '2015-09-19'),
('District Court', 'Mysore', 999, 'section 401', '18 years', 'distcourt@my.gov.in', '2016-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackby_guard`
--

CREATE TABLE `feedbackby_guard` (
  `subject` varchar(20) NOT NULL,
  `message` varchar(20) DEFAULT NULL,
  `feedback_id` int(20) NOT NULL,
  `pno` int(20) NOT NULL,
  `guid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackby_guard`
--

INSERT INTO `feedbackby_guard` (`subject`, `message`, `feedback_id`, `pno`, `guid`) VALUES
('Behaviour', 'Good', 1, 13, 3333),
('work', 'good keep it up', 2, 14, 5555),
('Behaviour', 'bad', 3, 16, 5555),
('work', 'technically strong', 4, 20, 4444);

-- --------------------------------------------------------

--
-- Table structure for table `feedbackby_sup`
--

CREATE TABLE `feedbackby_sup` (
  `subject1` varchar(20) NOT NULL,
  `message1` varchar(20) DEFAULT NULL,
  `fb_id` int(20) DEFAULT NULL,
  `sid` int(20) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackby_sup`
--

INSERT INTO `feedbackby_sup` (`subject1`, `message1`, `fb_id`, `sid`, `date`) VALUES
('Behaviour', 'very good', 1, 11, '2018-01-13'),
('Behaviour', 'Changing ', 3, 11, '2017-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `guard`
--

CREATE TABLE `guard` (
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `mobile_no` int(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gid` int(15) NOT NULL,
  `sid` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guard`
--

INSERT INTO `guard` (`name`, `address`, `mobile_no`, `email`, `gender`, `username`, `password`, `gid`, `sid`) VALUES
('Vishnu', 'Sunkadkatte,Mandya', 21342367, 'vishnu10@gov.in', 'male', 'vishnu', 'vishnu', 1010, 11),
('p c ghose', 'andhra pradesh', 2147483647, 'pcghose@gov.in', 'male', 'pcghose', 'pcghose', 1111, 11),
('meena kumari', 'manipur', 2147483647, 'meena@gov.in', 'female', 'meena', 'meena', 2222, 11),
('k j sengupta', 'andhra pradesh', 2147483647, 'sengupta@gov.in', 'male', 'sengupta', 'sengupta', 3333, 11),
('Mohan', 'Belagavi', 2147483647, 'mohan4444@gov.com', 'female', 'mohan', 'mohan', 4444, 11),
('gopala krishna', 'belagavi', 2147483647, 'gopala5555@gov.in', 'male', 'gopala', 'gopala', 5555, 11),
('Sushma', 'Machenahalli', 27686547, 'sush@gmail.com', 'female', 'sushma', 'sushma', 6666, 11),
('chinna', 'vaynaad', 2147483647, 'cinna@gmail.com', 'male', 'chinna', 'nandan', 7777, 11),
('Ganga', 'Yelchenahalli', 672981736, 'ganga@gmail.com', 'female', 'ganga', 'ganga', 8888, 11),
('sindhu', 'pune', 2147483647, 'sindhu@gmail.com', 'male', 'sindhu', 'sindhu', 9999, 11);

-- --------------------------------------------------------

--
-- Table structure for table `prisoner`
--

CREATE TABLE `prisoner` (
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  `father_name` varchar(20) NOT NULL,
  `gender` varchar(10) DEFAULT 'male',
  `marital_status` varchar(20) NOT NULL,
  `age` int(12) NOT NULL,
  `section` varchar(20) NOT NULL,
  `sentence` varchar(20) NOT NULL,
  `date_of_admission` date NOT NULL,
  `date_of_release` date DEFAULT NULL,
  `mobile_no` int(15) DEFAULT NULL,
  `account_number` int(15) NOT NULL,
  `height` int(20) NOT NULL,
  `weight` int(12) NOT NULL,
  `known_work` varchar(12) DEFAULT NULL,
  `work_assigned` varchar(20) NOT NULL,
  `identification` varchar(20) DEFAULT NULL,
  `time` time NOT NULL,
  `education` varchar(20) DEFAULT NULL,
  `pid` int(15) NOT NULL,
  `wno` int(15) NOT NULL,
  `sid` int(15) NOT NULL,
  `guid` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prisoner`
--

INSERT INTO `prisoner` (`name`, `address`, `country`, `father_name`, `gender`, `marital_status`, `age`, `section`, `sentence`, `date_of_admission`, `date_of_release`, `mobile_no`, `account_number`, `height`, `weight`, `known_work`, `work_assigned`, `identification`, `time`, `education`, `pid`, `wno`, `sid`, `guid`) VALUES
('Umesh Kumar', 'Papareddipalya,Kolar', 'India', 'Rajeeva', 'male', 'unmarried', 20, 'section 420', '12 year', '2016-06-24', '2028-06-28', 2147483647, 123456789, 5, 34, 'cooking', 'kitchen', '6 finger', '20:12:01', 'sslc', 12, 222, 11, 2222),
('Nagappan', 'Rajasthan', 'India', 'Arun', 'male', 'married', 35, 'section 610', '8 years', '2018-01-15', '2026-06-15', 2147483647, 123567898, 5, 45, 'carpenter', 'wood work', '12 finger', '20:11:01', 'puc', 13, 777, 11, 4444),
('Sanjeev kumar', 'Jayaprakash Nagar,Hassan', 'India', 'swamy', 'male', 'married', 26, 'section 120', '20 year', '2012-03-23', '2034-03-23', 123456785, 12345789, 3, 45, 'cooking', 'kitchen', 'birthmark on face', '16:16:16', 'diploma', 14, 444, 11, 3333),
('Mahadevappa', 'goraguntepalya', 'India', 'Kariyappa', 'male', 'unmarried', 27, 'section 510', '10 years', '2016-04-28', '2026-04-28', 2134567890, 14566, 5, 59, 'sculpture', 'cleaning', 'birthmark on face', '10:45:20', 'seventh standard', 15, 555, 11, 5555),
('Krishna', 'Gandhinagar,Chikmagalur', 'India', 'Prakash', 'male', 'married', 37, 'section 120', '20 years', '2012-12-30', '2032-12-30', 2040193450, 234789992, 5, 45, 'construction', 'construction', 'mole on leftleg', '07:23:30', 'uneducated', 16, 333, 11, 5555),
('Shankar', 'Malleshwaram,Banglore', 'India', 'Halappa', 'male', 'unmarried', 27, 'section 377', '25 years', '2015-01-28', '2040-01-28', 2039817839, 23819191, 6, 49, 'electronic', 'electronic', 'mole on left leg', '15:34:46', 'puc', 17, 111, 11, 3333),
('Aditya Hegde', 'Kundapura', 'India', 'Subramanya', 'male', 'unmarried', 38, 'section 610', '8 years', '2016-12-20', '2021-12-20', NULL, 231389123, 5, 45, 'plumber', 'plumber', 'squinted eyes', '09:25:39', 'uneducated', 18, 102, 11, 5555),
('Sachin ', 'Belthangadi,Udupi', 'India', 'Hanumathappa', 'male', 'unmarried', 29, 'section 420', '12 years', '2011-12-12', '2023-12-12', NULL, 342019110, 5, 47, 'mechanic', 'repairer', 'squinted eyes', '14:26:08', 'eighth standard', 19, 101, 11, 5555),
('Chethan', 'Hanasawadi,Shivamogga', 'India', 'Mahadevappa', 'male', 'unmarried', 27, 'section 120', '20 years', '2017-12-11', '2037-12-01', NULL, 123456234, 4, 43, 'carpenter', 'carpenter', '6 fingers in hands', '20:34:12', 'sslc', 20, 888, 11, 4444),
('Rakesh Gadaddar', 'Malali,Davangere', 'India', 'Lakshman', 'male', 'unmarried', 26, 'section 110', '5 years', '2018-01-26', '2023-03-26', NULL, 1234567, 5, 60, 'gold smith', 'cooking', 'wound mark on nose', '19:23:58', 'puc', 21, 666, 11, 1111),
('Dushyantha', 'Kadirenahalli,Kunigal', 'India', 'Narayan', 'male', 'married', 25, 'section 377', '25 years', '2012-11-01', '2037-11-01', NULL, 56885334, 6, 45, 'computerwork', 'cooking', 'birthmark on nose', '15:45:39', 'degree', 22, 106, 11, 4444),
('Harisha', 'Chikkegowdanapalya,Kadur', 'India', 'Manjunatha', 'male', 'unmarried', 40, 'section 401', '18 years', '2018-06-24', '2036-06-24', NULL, 2376489, 5, 60, 'agriculture', 'gardening', 'handicap', '20:12:32', 'uneducated', 24, 999, 11, 1111),
('praveen', 'c/o shahshidhar bellary', 'India', 'shambulinga', 'male', 'married', 45, '321', '25 years', '2018-10-26', '2023-10-26', 1234545, 8763221, 5, 35, 'nothing', 'cleaning', 'short height', '14:26:08', 's.s.l.c', 42, 105, 11, 8888),
('sathish', 's/o sannidhi shivamogga ', 'India', 'sannidhi', 'male', 'single', 27, '110', '5 years', '2018-03-12', '2023-03-12', 23132434, 54321, 5, 65, 'painter', 'cleaning&painting', 'one leg collapsed', '20:34:12', 'MBA', 44, 104, 11, 6666),
('suresh', 'Dummalli,Bengaluru', 'India', 'subbu', 'male', 'single', 19, 'section 420', '12 years', '2015-03-11', '2027-03-11', 19025368, 97531, 6, 97, 'medicalprac', 'health test', 'moleinrighside head', '17:45:12', 'MSc', 66, 107, 11, 4444);

-- --------------------------------------------------------

--
-- Table structure for table `remission`
--

CREATE TABLE `remission` (
  `old_sentence` varchar(20) NOT NULL,
  `decrease_punishment` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `fb_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `superintendent`
--

CREATE TABLE `superintendent` (
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `mobile_no` int(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gender` char(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sup_id` int(20) NOT NULL,
  `wno` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superintendent`
--

INSERT INTO `superintendent` (`name`, `address`, `mobile_no`, `email`, `gender`, `username`, `password`, `sup_id`, `wno`) VALUES
('K GIRIJA SHANKAR', 'BANGALORE', 2147483647, 'GIRIJA@GOV.IN', 'MALE', 'GIRIJA', 'GIRIJA', 11, 111);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_to`
--

CREATE TABLE `transfer_to` (
  `from_prison` varchar(50) NOT NULL,
  `to_prison` varchar(50) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `transfer_id` int(15) NOT NULL,
  `pno` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_to`
--

INSERT INTO `transfer_to` (`from_prison`, `to_prison`, `reason`, `transfer_id`, `pno`) VALUES
('Central Prison Ramnagaram', 'Central Prison Gulbarga', 'SECURITY PURPOSE', 1, 12),
('Central Prison Ramnagaram', 'Central Prison Vijayawada', 'Helath Issues', 2, 13),
('Central Prison Ramnagaram', 'Central Prison Banglore', 'On request by prisoner', 3, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`warrentno`);

--
-- Indexes for table `feedbackby_guard`
--
ALTER TABLE `feedbackby_guard`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `guid` (`guid`),
  ADD KEY `pno` (`pno`);

--
-- Indexes for table `feedbackby_sup`
--
ALTER TABLE `feedbackby_sup`
  ADD KEY `sid` (`sid`),
  ADD KEY `fb_id` (`fb_id`);

--
-- Indexes for table `guard`
--
ALTER TABLE `guard`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `wno` (`wno`),
  ADD KEY `guid` (`guid`);

--
-- Indexes for table `remission`
--
ALTER TABLE `remission`
  ADD KEY `fb_id` (`fb_id`);

--
-- Indexes for table `superintendent`
--
ALTER TABLE `superintendent`
  ADD PRIMARY KEY (`sup_id`),
  ADD UNIQUE KEY `wno` (`wno`);

--
-- Indexes for table `transfer_to`
--
ALTER TABLE `transfer_to`
  ADD PRIMARY KEY (`transfer_id`),
  ADD UNIQUE KEY `pno` (`pno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbackby_guard`
--
ALTER TABLE `feedbackby_guard`
  MODIFY `feedback_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedbackby_guard`
--
ALTER TABLE `feedbackby_guard`
  ADD CONSTRAINT `feedbackby_guard_ibfk_1` FOREIGN KEY (`guid`) REFERENCES `guard` (`gid`),
  ADD CONSTRAINT `feedbackby_guard_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `prisoner` (`pid`);

--
-- Constraints for table `feedbackby_sup`
--
ALTER TABLE `feedbackby_sup`
  ADD CONSTRAINT `feedbackby_sup_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `superintendent` (`sup_id`),
  ADD CONSTRAINT `feedbackby_sup_ibfk_2` FOREIGN KEY (`fb_id`) REFERENCES `feedbackby_guard` (`feedback_id`);

--
-- Constraints for table `guard`
--
ALTER TABLE `guard`
  ADD CONSTRAINT `guard_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `superintendent` (`sup_id`);

--
-- Constraints for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD CONSTRAINT `prisoner_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `superintendent` (`sup_id`),
  ADD CONSTRAINT `prisoner_ibfk_2` FOREIGN KEY (`wno`) REFERENCES `court` (`warrentno`),
  ADD CONSTRAINT `prisoner_ibfk_3` FOREIGN KEY (`guid`) REFERENCES `guard` (`gid`);

--
-- Constraints for table `remission`
--
ALTER TABLE `remission`
  ADD CONSTRAINT `remission_ibfk_1` FOREIGN KEY (`fb_id`) REFERENCES `feedbackby_guard` (`feedback_id`);

--
-- Constraints for table `superintendent`
--
ALTER TABLE `superintendent`
  ADD CONSTRAINT `superintendent_ibfk_1` FOREIGN KEY (`wno`) REFERENCES `court` (`warrentno`);

--
-- Constraints for table `transfer_to`
--
ALTER TABLE `transfer_to`
  ADD CONSTRAINT `transfer_to_ibfk_1` FOREIGN KEY (`pno`) REFERENCES `prisoner` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
