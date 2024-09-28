-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2024 at 08:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehiclebookings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tms_admin`
--

CREATE TABLE `tms_admin` (
  `a_id` int(20) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_admin`
--

INSERT INTO `tms_admin` (`a_id`, `a_name`, `a_email`, `a_pwd`) VALUES
(1, 'System Admin', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `tms_contact`
--

CREATE TABLE `tms_contact` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tms_contact`
--

INSERT INTO `tms_contact` (`id`, `fname`, `phone`, `email`, `message`) VALUES
(6, 'Abdullah', '0175984562', 'asm@gmail.com', 'Good'),
(8, 'Rakib', '0175895465', 'rakib@gmail.com', 'Service is very good'),
(10, 'Abir', '01758945635', 'abir@gmail.com', 'Service is very good');

-- --------------------------------------------------------

--
-- Table structure for table `tms_feedback`
--

CREATE TABLE `tms_feedback` (
  `f_id` int(20) NOT NULL,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_feedback`
--

INSERT INTO `tms_feedback` (`f_id`, `f_uname`, `f_content`, `f_status`) VALUES
(1, 'Elliot Gape', 'I arranged the transfer from Mauritius Airport to my accommodation and from the accommodation back to the airport, as well as renting a car for 3 weeks through Maki. Everything was 100% satisfactory. For the transfer, you\'re informed a day in advance where the driver will be waiting for you. They wait at the airport for 1 hour after landing, holding a sign with your last name, making them easy to find. As for the rental car, I booked a Hyundai i10 Grand Automatic and received exactly that. The car was delivered to my accommodation and picked up from there as well. It was one year old with 18,000 km on it. I drove 1500 km in the 3 weeks and everything went smoothly. The car was in great condition. I didn\'t even have to leave a deposit. I had ordered the car with all available insurances, so I was covered in case of any issues. Getting used to driving on the left side of the road takes some getting used to, so it\'s better to be fully insured. Cleaning the car, inside and out, cost me 300 Rupees, which is about €6.', 'Published'),
(2, 'Mark L. Anderson', 'We had a rental car in Mauritius for 1 week. Perfect service, hotel delivery (Intercontinental Hotel) and pick-up, everything went perfectly. Good instructions for the rental car and helpful tips for the island. I would rent a car again at any time. Greets to the friendly staff.', 'Published'),
(3, 'Liam Moore ', 'test number 3', 'Pending'),
(4, 'Mohiuddin Islam ', 'We had a rental car in Mauritius for 1 week. Perfect service, hotel delivery (Intercontinental Hotel) and pick-up, everything went perfectly. Good instructions for the rental car and helpful tips for the island. I would rent a car again at any time. Greets to the friendly staff.', 'Published'),
(5, 'Mohiuddin Islam ', 'We had a rental car in Mauritius for 1 week. Perfect service, hotel delivery (Intercontinental Hotel) and pick-up, everything went perfectly. Good instructions for the rental car and helpful tips for the island. I would rent a car again at any time. Greets to the friendly staff.', '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_pwd_resets`
--

CREATE TABLE `tms_pwd_resets` (
  `r_id` int(20) NOT NULL,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_pwd_resets`
--

INSERT INTO `tms_pwd_resets` (`r_id`, `r_email`) VALUES
(2, 'admin@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tms_syslogs`
--

CREATE TABLE `tms_syslogs` (
  `l_id` int(20) NOT NULL,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_ip` varbinary(200) NOT NULL,
  `u_city` varchar(200) NOT NULL,
  `u_country` varchar(200) NOT NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_user`
--

CREATE TABLE `tms_user` (
  `u_id` int(20) NOT NULL,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_addr` varchar(200) NOT NULL,
  `u_category` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_car_type` varchar(200) NOT NULL,
  `u_car_regno` varchar(200) NOT NULL,
  `u_car_bookdate` varchar(200) NOT NULL,
  `u_car_book_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_user`
--

INSERT INTO `tms_user` (`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_addr`, `u_category`, `u_email`, `u_pwd`, `u_car_type`, `u_car_regno`, `u_car_bookdate`, `u_car_book_status`) VALUES
(21, 'Safin', 'Ahmed', '01752437563', 'Basabo', 'Driver', 'arif@gmail.com', 'arif123', '', '', '', ''),
(22, 'Jamil', 'Ahmed', '01752437545', 'Motizil', 'Driver', 'jamil@gmail.com', 'jamil123', '', '', '', ''),
(23, 'Karim', 'Mia', '01789632545', 'Rampura', 'Driver', 'karim@gmail.com', 'karim', '', '', '', ''),
(24, 'Nur', 'Hasan', '01789632458', 'Mirpur', 'Driver', 'nur@gmail.com', 'nur123', '', '', '', ''),
(25, 'Mahamud', 'Hasan', '01785469324', 'Dhanmondi', 'User', 'mahamud@gmail.com', 'mahamud', '', '', '', ''),
(27, 'Saif', 'Jahan Dewana', '01789632545', 'Dhanmondi', 'Driver', 'saif@gmail.com', 'saif123', '', '', '', ''),
(30, 'Hasib', 'Mahmud', '01752437955', 'Basabo', 'Driver', 'hasib@gmail.com', '123456', '', '', '', ''),
(31, 'Jamal', 'Hossain', '01752437589', 'Mirpur', 'Driver', 'jamal@gmail.com', '123456', '', '', '', ''),
(32, 'Sabuj', 'Hossain', '01752437589', 'Motizil', 'Driver', 'sabuj@gmail.com', '123456', '', '', '', ''),
(34, 'Safiq', 'Ahmed', '01758964562', 'Mohakhali', 'Driver', 'safiq@gmail.com', 'safiq123', 'AXS', 'CA2077', '2024-09-27', 'Pending'),
(38, 'Jamil', 'Hossain', '01785469324', 'Dhanmondi', 'User', 'jamil@gmail.com', '123456', 'Sedan', 'CA1690', '2024-09-23', 'Approved'),
(39, 'Asad', 'Ahmed', '0175985436', 'Mirpur', 'User', 'asad@gmail.com', 'asad123', 'CR-V', 'GH4560214', '2024-09-24', 'Approved'),
(40, 'Fahim', 'Ahmed', '01785698456', 'Badda', 'User', 'fahim@gmail.com', '123456', 'CR-V', 'GH4560214', '2024-09-23', 'Approved'),
(41, 'Sohan', 'Hossain', '01752437589', 'Rampura', 'User', 'sohan@gmail.com', '123456', 'Sedan', 'CA1690', '2024-09-24', 'Approved'),
(42, 'Hasan', 'Mahmud', '01752437563', 'Badda', 'User', 'hasan@gmail.com', '123456', 'AXS', 'CA2077', '2024-09-24', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vehicle`
--

CREATE TABLE `tms_vehicle` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) NOT NULL,
  `v_pass_no` varchar(200) NOT NULL,
  `v_driver` varchar(200) NOT NULL,
  `v_category` varchar(200) NOT NULL,
  `v_dpic` varchar(200) NOT NULL,
  `v_price` int(11) NOT NULL,
  `v_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_vehicle`
--

INSERT INTO `tms_vehicle` (`v_id`, `v_name`, `v_reg_no`, `v_pass_no`, `v_driver`, `v_category`, `v_dpic`, `v_price`, `v_status`) VALUES
(4, 'Honda Accord', 'CA2077', '5', 'Joseph Yung', 'AXS', '2019_honda_accord_angularfront.jpg', 0, 'Available'),
(5, 'Volkswagen Passat', 'CA1690', '5', 'Jesse Robinson', 'Sedan', 'volkswagen-passat-500.jpg', 0, 'Available'),
(6, 'Nissan Rogue', 'CA1001', '7', 'Demo User', 'AXS', 'Nissan_Rogue_SV_2021.jpg', 0, 'Available'),
(7, 'Subaru Legacy', 'CA7700', '5', 'John Settles', 'AXS', 'Subaru_Legacy_Premium_2022_2.jpg', 0, 'Available'),
(13, 'Toyota', 'AC75007', '8', 'Safin Ahmed', 'Land Cruiser', 'toyta1.jpg', 0, 'Available'),
(14, 'Toyota', 'AC15007', '5', 'Safin Ahmed', 'Corolla', 'toyta3.jpg', 0, 'Available'),
(15, 'Tata-Harrier-EV', 'GH4560214', '5', 'Nur Hasan', 'CR-V', 'Tata-Harrier-EV.jpg', 0, 'Available'),
(16, 'Nissan', 'GH45678914', '5', 'Karim Mia', 'X-Pander', 'mitsubeshi_xpander.jpg', 0, 'Available'),
(17, 'Mitsubishi', 'AD456789', '5', 'Nur Hasan', 'X-Pander', 'mitsubeshi.jpeg', 0, 'Available'),
(18, 'Mitsubishi', 'ASF457896', '5', 'Karim Mia', 'AXS', 'mitsubeshi_asx.webp', 0, 'Available'),
(19, 'Toyota', 'ASF456987', '5', 'Safiq Ahmed', 'Primeo', 'toyta2.jpg', 0, 'Available'),
(20, 'Tesla', 'ACF85698', '5', 'John', 'Volvo', '', 2000, 'Avaiable'),
(21, 'Lamburgini', 'ABD4569', '5', 'Jamil Ahmed', 'Hybrid', 'AUDI Image5.jpg.jpg', 0, 'Available'),
(22, 'Ferari', 'ACF4568', '5', 'Hasib Mahmud', 'Sedan', 'AUDI Image6.jpg.jpg', 1500, 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tms_admin`
--
ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tms_contact`
--
ALTER TABLE `tms_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_admin`
--
ALTER TABLE `tms_admin`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tms_contact`
--
ALTER TABLE `tms_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tms_user`
--
ALTER TABLE `tms_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
