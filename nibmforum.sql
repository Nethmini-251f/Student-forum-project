-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2026 at 11:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nibmforum`
--

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` int(25) NOT NULL,
  `user_id` int(25) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `user_id`, `title`, `content`, `created_at`) VALUES
(0, 1, 'Best programming for Beginners', 'I am new to programming. Which programming language is best for beginners and why?', '2026-05-22 23:01:54.374703'),
(0, 1, '', '', '2026-05-22 23:01:58.600432'),
(0, 1, 'How to improve Web Development Skills', 'Can anyone share useful tips and resources to improve HTML, CSS, PHP, Bootstrap and MYSQL Skills?', '2026-05-22 23:12:19.733760'),
(0, 0, '', '', '2026-05-24 11:07:28.863808'),
(0, 0, '', '', '2026-05-24 11:19:28.775475'),
(0, 0, '', '', '2026-05-25 04:35:50.088623'),
(0, 0, 'Student Discussion About IT Assignments', 'Let\'s discuss how to complete IT assignments, manage presentations and improve coding knowledge.', '2026-05-25 04:54:35.411067');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Nethmini', 'ashika@gmail.com', '$2y$10$Pb5lr2wJ6RudJsq4QtJzd.6Wl9E0MNIWGOP8zKbnG.ZhxXAxc3yaS'),
(2, '002', 'janu@gmail.com', '$2y$10$WcPND0DCfQMcHEOrYBbaH.tfuo52bv.CwQoc1tZfewtMzkk4oPVK.'),
(3, 'ashi', 'janu@gmail.com', '$2y$10$WzrSiduqPIT5.p73zuwsyeJu/1kCqHjBebq7cvGiuw2YV/asai2gy'),
(4, 'kawi', 'nethu@gmail.com', '$2y$10$2VGfzy/eArReO9.Cht6RrOhUhh5t5C.07p5RBvV4b8tLYag5a4vD2'),
(5, '', '', '$2y$10$Ap/ce4TQr3c3z7WcpZjBQ.76IZpl3RmNtYpKFaBuecLcHAkeYZ6Qq'),
(6, 'MADSE251F-005', 'ashi@gmail.com', '$2y$10$nzS4f4/s6s2f5iEb6lY4SeiY.un2sv0Qko5PoQloLRDaPw8pIwxTW'),
(7, 'Nethmini', 'nethu@gmail.com', '$2y$10$m.tc3LAvqVWU8SDiKCxFquoHeqfOVabIBhaW1362GF0d8cpkUbVN2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
