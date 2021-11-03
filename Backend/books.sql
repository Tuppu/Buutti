-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2021 at 10:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpzag_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `author` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `description`, `created`, `modified`) VALUES
(1, 'Sand County Almanac', 'Aldo Leopold', '“I first read this book in high school, in the 1980s, and again every couple of years since then,” says Stan Rullman, Ph.D., director of research at Earthwatch. “Leopold’s poetic observations of the natural world have sparked many fields of ecological study —a large percentage confirming Leopold’s hypotheses—and have inspired many more students and ecologists to help figure out how nature works. It should be required reading for every student, teacher, politician, and voter.”  ', '2021-11-03 10:22:47', '2021-11-03 09:25:02'),
(2, 'This Changes Everything: Capitalism vs. the Climate', 'Naomi Klein', 'Rullman says this should be another mandatory read for politicians and economists, and maybe everyone else. “Though the current COVID-19 crisis is somewhat tangential to the climate crisis, what we are learning about how incredibly fragile our global Jenga-conomy is to disruptions should be a wake-up call for the looming elephant-in-the-china-shop calamity that our rapidly changing climate portends,” he says. “With passion and eloquence and a grounding in strong science, Naomi tells us we need to change our ways.”  ', '2021-11-03 10:25:14', '2021-11-03 09:25:49'),
(3, 'How to Be a Good Creature', 'Sy Montgomery', '“I was first introduced to Sy’s incredible writing when I picked up The Soul of an Octopus years ago,” says Alix Morris, Earthwatch’s director of communications. “I was riveted. The way she explores the consciousness of creatures is profound, reminding us how much we still have to learn about the world around us.”\r\n\r\nIn the opening of her book How to Be a Good Creature, Montgomery attributes her impressive career as a science writer and naturalist to Earthwatch, and details her first expedition following emus in the Australian Outback. “Sy shows us how much we can learn from creatures, how to see and hear the wild world in new ways, and how to better understand and appreciate our place in this universe. Combine this with a heavy dose of humor and poetic prose and you have yourself a fantastic read.”', '2021-11-03 10:25:51', '2021-11-03 09:26:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
