-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2022 at 06:07 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gkcsl`
--

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `center_id` int(11) NOT NULL,
  `center_name` varchar(100) NOT NULL,
  `center_dec` varchar(255) DEFAULT NULL,
  `feild_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(5) NOT NULL DEFAULT 1 COMMENT '0=deactive, 1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`center_id`, `center_name`, `center_dec`, `feild_id`, `created_at`, `status`) VALUES
(9, '২১ নং কেন্দ্র ( মমতাজ বেগম )', 'মোবাইল নং : 01885212524', 15, '2022-10-06 00:00:00', 1),
(10, '২৫ নং কেন্দ্র ( আমেনা বেগম ) ', 'মোবাইল নং : 01815342113', 15, '2022-10-06 00:00:00', 1),
(11, '১১ নং কেন্দ্র ( রেজিয়া বেগম ) ', 'মোবাইল নং : 01865243790', 16, '2022-10-06 00:00:00', 1),
(12, '২৪ নং কেন্দ্র ( নাছিমা বেগম ) ', 'মোবাইল নং : 01402735050', 16, '2022-10-06 00:00:00', 1),
(13, '১৫ নং কেন্দ্র ( নুরজাহান বেগম )', 'মোবাইল নং : 01814403530', 17, '2022-10-06 00:00:00', 1),
(14, '২০ নং কেন্দ্র ( আমেনা বেগম ১ )', 'মোবাইল নং : 01831861341', 17, '2022-10-06 00:00:00', 1),
(15, '১০ নং কেন্দ্র ( ফরিদা বেগম ) ', 'মোবাইল নং : 01810434530', 18, '2022-10-06 00:00:00', 1),
(16, '০৯ নং কেন্দ্র ( শাহারা বেগম )', 'মোবাইল নং : 01703009407', 18, '2022-10-06 00:00:00', 1),
(17, '০৬ নং কেন্দ্র ( সাজু বেগম )', ' মোবাইল নং : 01933622423', 23, '2022-10-06 00:00:00', 1),
(18, '০৭ নং কেন্দ্র ( ফাতেমা বেগম ) ', 'মোবাইল নং : 01873109504', 23, '2022-10-06 00:00:00', 1),
(19, '১২ নং কেন্দ্র ( ছকিন বেগম )', 'মোবাইল নং : 01720282860', 23, '2022-10-06 00:00:00', 1),
(20, '২২ নং কেন্দ্র ( হাসনা বেগম ) ', 'মোবাইল নং : 01816463119', 23, '2022-10-06 00:00:00', 1),
(21, '২৩ নং ফিল্ড ( জোসনা বেগম )', 'মোবাইল নং : 01874265658', 23, '2022-10-06 00:00:00', 1),
(22, '০৮ নং কেন্দ্র ( চিন্তাবালা ধর ) ', 'মোবাইল নং : 01870017318', 20, '2022-10-06 00:00:00', 1),
(23, '১৬ নং কেন্দ্র ( মুন্নি বসাক )', 'মোবাইল নং : 01876842261', 20, '2022-10-06 00:00:00', 1),
(24, '১৮ নং কেন্দ্র ( ঝুমুর বড়ুয়া )', 'মোবাইল নং : 01881525238', 20, '2022-10-06 00:00:00', 1),
(25, '২৮ নং কেন্দ্র ( মোঃ সুমন )', 'মোবাইল নং : 01676193673', 21, '2022-10-06 00:00:00', 1),
(26, '১৩ নং কেন্দ্র ( জান্নাতি বেগম ) ', 'মোবাইল নং : 01814052601', 22, '2022-10-06 00:00:00', 1),
(27, '১৭ নং কেন্দ্র ( রুশিয়া বেগম ) ', 'মোবাইল নং : 01879037161', 22, '2022-10-06 00:00:00', 1),
(28, '১৯ নং কেন্দ্র ( লাভলী বেগম ) ', 'মোবাইল নং : 01837663534', 22, '2022-10-06 00:00:00', 1),
(29, '২৬ নং কেন্দ্র ( হোসনে আরা )', 'মোবাইল নং : 01870618351', 22, '2022-10-06 00:00:00', 1),
(30, '১৪ নং কেন্দ্র ( মোহসেনা বেগম ) ', 'মোবাইল নং : 01860758360', 23, '2022-10-06 00:00:00', 1),
(31, '২৯ নং কেন্দ্র ( জুলেখা )', 'মোবাইল নং : 01610990572', 15, '2022-10-06 00:00:00', 1),
(32, '২৭ নং কেন্দ্র ( দৈনিক গ্রাহক )', 'শুধুমাত্র দৈনিক গ্রাহগনের জন্য', 15, '2022-10-06 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client_registers`
--

CREATE TABLE `client_registers` (
  `client_id` int(20) NOT NULL,
  `feild_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `register_officer` varchar(100) NOT NULL,
  `book` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `husbands_name` varchar(255) DEFAULT NULL,
  `fathers_name` varchar(255) DEFAULT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `client_nid` varchar(50) NOT NULL,
  `client_dob` date NOT NULL,
  `client_occupation` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `client_gander` varchar(50) NOT NULL,
  `client_img` varchar(255) NOT NULL,
  `client_mobile_1` text NOT NULL,
  `client_mobile_2` text DEFAULT NULL,
  `client_income` int(11) NOT NULL,
  `client_position` tinytext NOT NULL,
  `blood_grp` varchar(10) DEFAULT NULL,
  `client_back_acc` int(50) DEFAULT NULL,
  `check_no` int(50) DEFAULT NULL,
  `present_address` longtext NOT NULL,
  `parmanent_address` longtext NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `closing_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_registers`
--

INSERT INTO `client_registers` (`client_id`, `feild_id`, `center_id`, `register_officer`, `book`, `name`, `husbands_name`, `fathers_name`, `mothers_name`, `client_nid`, `client_dob`, `client_occupation`, `religion`, `client_gander`, `client_img`, `client_mobile_1`, `client_mobile_2`, `client_income`, `client_position`, `blood_grp`, `client_back_acc`, `check_no`, `present_address`, `parmanent_address`, `status`, `created_at`, `updated_at`, `closing_at`) VALUES
(20, 16, 11, '78', 3052, 'রেজিয়া বেগম', 'শেখ মোঃ সোলাইমান', '', 'হোসনে আরা বেগম', '435453423423', '1982-07-25', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_634c6456ae667.jpg', '01865243790', '', 180000, 'C', 'null', 0, 0, 'বাড়ির এবং রাস্তাঃ হাজী ইব্রাহিম কলোনি , সৈয়দ শাহ রোড, গ্রামঃ কালামিয়া বাজার , ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ সুলতান আহমদের বাড়ি, গ্রামঃ পূর্ব গোমদন্ডি, ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বোয়ালখালি, পোষ্ট অফিসঃ বোয়ালখালি, জেলাঃ চট্টগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-06 00:00:00', '2022-10-17 00:00:00', NULL),
(21, 22, 28, '78', 697, 'লাভলি আক্তার', '', 'আবুল কাশেম', 'জোবেদা খাতুন', '2376758201', '1988-02-10', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_633eeb38d2274.jpg', '01837663534', '', 180000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ সাবেক সওঃ বাড়ী , গ্রামঃ আবু জাফর রোড, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ জলিলের বাড়ী, গ্রামঃ ফরমতলা, ওয়ার্ড নম্বরঃ ০৩, উপজেলাঃ মুরাদনগর, পোষ্ট অফিসঃ ফরমতলা, জেলাঃ কুমিল্লা, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-06 00:00:00', '2022-10-06 00:00:00', NULL),
(22, 15, 32, '78', 376, 'দিলোয়ারা বেগম', 'আবুল কাশেম', '', 'রোকেয়া বেগম', '19901517488000195', '1990-02-04', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_633eee166e888.png', '01810438750', '', 180000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ আক্তার সওঃ কলোনি , গ্রামঃ পশ্চিম পাড়া, ওয়ার্ড নম্বরঃ 19, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ আমান আলীর বাড়ী, গ্রামঃ মইশ করম, ওয়ার্ড নম্বরঃ ০৪, উপজেলাঃ রাউজান, পোষ্ট অফিসঃ উরকির চর - ৪৩৩৬, জেলাঃ চট্টগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-06 00:00:00', '2022-10-06 00:00:00', NULL),
(23, 16, 11, '78', 6012, 'রেজিয়া বেগম', 'মোঃ সোলাইমান', 'আব্দুর রশিদ', 'হোস্নে আরা বেগম', '19821516194131647', '1982-07-25', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_633ef1162f550.jpeg', '01865243790', '', 220000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ হাজী ইব্রাহীম কলোনি,  সৈয়দ শাহ রোড, গ্রামঃ কালামিয়া বাজার , ওয়ার্ড নম্বরঃ 18, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ সুলতান আহমদের বাড়ি, গ্রামঃ জিড়ি, ওয়ার্ড নম্বরঃ ৪, উপজেলাঃ পটিয়া, পোষ্ট অফিসঃ জিড়ি মাদ্রাসা, জেলাঃ চট্টগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-06 00:00:00', '2022-10-06 00:00:00', NULL),
(24, 15, 10, '78', 3497, 'তাসলিমা আক্তার ', 'আলা উদ্দীন', '', 'হনুফা বিবি', '20074670470088620', '1999-05-06', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_634163a710266.jpg', '01628234353', '', 180000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ আলম কুটির বিল্ডিং, গ্রামঃ সৈয়দ শাহ রোড , ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ জামাল মাষ্টারের বাড়ি, গ্রামঃ মেডাঙ্গর, ওয়ার্ড নম্বরঃ ০৪, উপজেলাঃ মুরাদনগর, পোষ্ট অফিসঃ পান্ডুরা, জেলাঃ কুমিল্লা, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL),
(25, 22, 28, '78', 3498, 'আমেনা বেগম', 'মোঃ রাব্বান মিয়া', '', 'হাজেরা বেগম', '1918185598941', '1973-01-03', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_634166c42872f.jpg', '01845031629', '', 180000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ আবু বাপের বিল্ডিং, গ্রামঃ বালুর মাঠ, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ মোতালেব মিয়ার বাড়ি, গ্রামঃ রামচন্দ্রপুর, ওয়ার্ড নম্বরঃ ০৪, উপজেলাঃ মুরাদনগর, পোষ্ট অফিসঃ রামচন্দ্রপুর - ৩৫৪১, জেলাঃ কুমিল্লা, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL),
(26, 18, 15, '78', 3496, 'জান্নতুল ফেরদৌস', '', 'মোঃ সামসুদ্দীন', 'ফাতেমা বেগম', '1918185598942', '2000-01-01', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_634169cce86b7.jpg', '01829395540', '', 220000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ এক কিলোটার, গ্রামঃ ১ কিলোটার, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ হাজী আনোয়ারের বাড়ি, গ্রামঃ ওছখালি, ওয়ার্ড নম্বরঃ ০৩, উপজেলাঃ হাতিয়া, পোষ্ট অফিসঃ হাতিয়া, জেলাঃ নোয়াখালি, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL),
(27, 15, 32, '78', 375, 'মোঃ তোফাজ্জল', '', 'মৃত তরু মিয়া', 'কাপ্তান বেগম', '1468497720', '1973-05-21', 'ব্যবসা', 'ইসলাম', 'পুরুষ', 'client_63416cba972b0.jpg', '01948480035', '', 180000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ এসহাকের পুল, গ্রামঃ মিয়াখান নগর, ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ আব্দদুল র বাড়ি, গ্রামঃ কাহাতুরা, ওয়ার্ড নম্বরঃ ০৪, উপজেলাঃ মুরাদনগর, পোষ্ট অফিসঃ চাপাতলি, জেলাঃ কুমিল্লা, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL),
(28, 18, 16, '78', 696, 'আকলিমা বেগম', 'মোঃ নুরুল ইসলাম', '', 'মোছাঃ মোক্তা বেগম', '2381323027', '1989-07-08', 'চাকুরি', 'ইসলাম', 'মহিলা', 'client_634171dc1ea1f.jpg', '01615098806', '', 180000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ মুরাদ কলোনি, গ্রামঃ ইয়াসিন হাজির বাড়ি, ওয়ার্ড নম্বরঃ ০৬, উপজেলাঃ চান্দগাও, পোষ্ট অফিসঃ চান্দগাও, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ হানিফ মোল্লা বাড়ি, গ্রামঃ মঙ্গলপুর, ওয়ার্ড নম্বরঃ ০৪, উপজেলাঃ নওগাঁ, পোষ্ট অফিসঃ ফতেহপুর, জেলাঃ নওগাঁ, বিভাগঃ রাজশাহী।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL),
(29, 21, 25, '78', 3495, 'সানজিদা সুলতানা', '', 'মৃত মনিরুল ইসলাম', 'রোকেয়া বেগম', '1595511542892', '1988-07-04', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_634173ede6f0f.jpg', '01682045333', '', 190000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ আসমা জমিদার - ৭১৬-ডি, গ্রামঃ য়াম বাগান, ওয়ার্ড নম্বরঃ ১৩, উপজেলাঃ খুলশী, পোষ্ট অফিসঃ পাহাড়তলি, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ মিলুতুল্লা পাটুয়ারি বাড়ি, গ্রামঃ রাখালিয়া, ওয়ার্ড নম্বরঃ ০৪, উপজেলাঃ লক্ষীপুর, পোষ্ট অফিসঃ রায়পুর, জেলাঃ লক্ষীপুর, বিভাগঃ বরিশাল।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL),
(30, 16, 11, '78', 3494, 'বিলকিস বেগম', 'মোঃ আরিক', '', 'মমতাজ বেগম', '2357694097', '1990-01-02', 'চাকুরি', 'ইসলাম', 'মহিলা', 'client_634175a0d8b41.png', '01849256126', '', 200000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ কাশেমের কলোনি, গ্রামঃ ময়দার মিল মোড়, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ কাশেম ড্রাইভারের বাড়ি, গ্রামঃ রুপমানিয়া, ওয়ার্ড নম্বরঃ ০৪, উপজেলাঃ সাতকানিয়া, পোষ্ট অফিসঃ ভইলিয়াপাড়া, জেলাঃ চট্টগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL),
(31, 15, 9, '78', 3493, 'আলেয়া বেগম', '', 'নুর মোহাম্মদ', 'ফয়জুন নেছা', '4178727204', '1978-03-16', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_6341774dade70.jpg', '01865587255', '', 180000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ জসিমের কলোনি, গ্রামঃ আলেক্কা চোয়ানি রোড, ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ সেলিম মেম্বারের বাড়ি, গ্রামঃ পশ্চিম চর মটুয়া, ওয়ার্ড নম্বরঃ ০৪, উপজেলাঃ নোয়াখালি, পোষ্ট অফিসঃ মটুয়া - ৩৮০৯, জেলাঃ নোয়াখালি, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL),
(32, 22, 28, '78', 3492, 'বিলকিস আক্তার', '', 'মোঃ আলি', 'পারভীন আক্তার', '4174263451', '1993-02-20', 'গৃহিনী', 'ইসলাম', 'মহিলা', 'client_6341790ac552d.jpg', '01962533104', '', 180000, 'C', NULL, 0, 0, 'বাড়ির এবং রাস্তাঃ এ কে এন টাউয়ার, গ্রামঃ নয়া মসজিদ, ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ সেলিমের বাড়ি, গ্রামঃ কদমতলি, ওয়ার্ড নম্বরঃ ০৪, উপজেলাঃ মুরাদনগর, পোষ্ট অফিসঃ রামচন্দ্রপুর - ৩৫৪১, জেলাঃ কুমিল্লা, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL),
(33, 16, 12, '78', 41, 'Kane Rojas', 'Olga Fischer', 'Ocean Cooke', 'Marny Conley', '87', '2022-11-09', 'রিক্সা চালক', 'হিন্দু', 'অন্যান্য', 'client_6346e5d7e787f.jpg', '153', '54', 137, 'C', 'AB+', 75, 10, 'বাড়ির এবং রাস্তাঃ Reprehenderit paria, গ্রামঃ Quia aliquam do et v, ওয়ার্ড নম্বরঃ Quia voluptatum accu, উপজেলাঃ Voluptatem eum accus, পোষ্ট অফিসঃ Aspernatur illo anim, জেলাঃ Et iusto veniam con, বিভাগঃ রংপুর।', 'বাড়ির এবং রাস্তাঃ Nulla voluptas exerc, গ্রামঃ Ea voluptas distinct, ওয়ার্ড নম্বরঃ Sapiente ducimus co, উপজেলাঃ Sed beatae est libe, পোষ্ট অফিসঃ Aliquip placeat a d, জেলাঃ Neque sit molestias, বিভাগঃ বরিশাল।', 1, '2022-10-12 00:00:00', '2022-10-12 00:00:00', NULL),
(34, 21, 25, '77', 93, 'Tasha Craig', 'Dakota Merritt', 'Liberty Lewis', 'Brenden Pena', '89', '2015-09-21', 'ড্রাইভার', 'খ্রিস্টান', 'পুরুষ', 'client_6346e7ba84130.jpg', '595', '701', 975, 'B', 'A-', 41, 92, 'বাড়ির এবং রাস্তাঃ Autem non et est qu, গ্রামঃ Facilis ut earum sae, ওয়ার্ড নম্বরঃ Qui labore quo Nam v, উপজেলাঃ At voluptate sed per, পোষ্ট অফিসঃ Velit nihil molesti, জেলাঃ Lorem enim dolorem e, বিভাগঃ বরিশাল।', 'বাড়ির এবং রাস্তাঃ Et cumque sint iure , গ্রামঃ Natus laudantium ip, ওয়ার্ড নম্বরঃ Corrupti tempore c, উপজেলাঃ Officiis aliquid qui, পোষ্ট অফিসঃ Alias delectus porr, জেলাঃ At sunt voluptates n, বিভাগঃ ঢাকা।', 1, '2022-10-12 00:00:00', '2022-10-12 00:00:00', NULL),
(35, 15, 9, '77', 84, 'Shannon Lowe', 'Moses Fischer', 'Sierra Flynn', 'Emery Grant', '26', '2003-02-02', 'রিক্সা চালক', 'ইসলাম', 'অন্যান্য', 'client_634b8c6bebb2e.jpg', '85', '42', 284, 'B', 'O-', 11, 22, 'বাড়ির এবং রাস্তাঃ Dolor placeat asper, গ্রামঃ Voluptas qui id perf, ওয়ার্ড নম্বরঃ Sed rem ratione dele, উপজেলাঃ Quam qui commodo est, পোষ্ট অফিসঃ Quia quibusdam accus, জেলাঃ Ea explicabo Qui am, বিভাগঃ সিলেট।', 'বাড়ির এবং রাস্তাঃ Minim consequuntur i, গ্রামঃ Est sit ipsum reru, ওয়ার্ড নম্বরঃ Fugiat autem do qua, উপজেলাঃ Sint fugiat volupt, পোষ্ট অফিসঃ Tempore aut debitis, জেলাঃ Dolor voluptas magna, বিভাগঃ সিলেট।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL),
(36, 15, 9, '78', 26, 'Adrian Soto', 'Stuart Hebert', 'Sawyer Ferrell', 'Cassady Morse', '5', '2016-06-08', 'ড্রাইভার', 'খ্রিস্টান', 'অন্যান্য', 'client_634b8cddf13e4.jpg', '879', '98', 601, 'C', 'AB-', 29, 54, 'বাড়ির এবং রাস্তাঃ Aut aut lorem ut et , গ্রামঃ Magnam quidem aliqui, ওয়ার্ড নম্বরঃ Tenetur voluptatibus, উপজেলাঃ Neque odit qui saepe, পোষ্ট অফিসঃ Esse placeat est i, জেলাঃ Eos sequi dolores in, বিভাগঃ ঢাকা।', 'বাড়ির এবং রাস্তাঃ Veritatis aut quod m, গ্রামঃ Excepturi magni exer, ওয়ার্ড নম্বরঃ Porro facilis tempor, উপজেলাঃ Aliqua Sequi except, পোষ্ট অফিসঃ Provident molestiae, জেলাঃ Ut aut fugiat commo, বিভাগঃ রাজশাহী।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL),
(37, 15, 9, '78', 50, 'Abdul Lambert', 'Philip Burke', 'Fredericka Griffin', 'Katell Stuart', '67', '1977-09-18', 'ড্রাইভার', 'বৌদ্ধ', 'মহিলা', 'client_634b8e15acb23.jpg', '705', '271', 61, 'C', 'O+', 93, 24, 'বাড়ির এবং রাস্তাঃ Ratione eius possimu, গ্রামঃ Expedita hic beatae , ওয়ার্ড নম্বরঃ Accusantium sed veli, উপজেলাঃ In sint aut illum q, পোষ্ট অফিসঃ Facilis mollitia eaq, জেলাঃ Velit exercitatione, বিভাগঃ বরিশাল।', 'বাড়ির এবং রাস্তাঃ Unde veniam repudia, গ্রামঃ Aut voluptatem deser, ওয়ার্ড নম্বরঃ Laborum Irure quia , উপজেলাঃ Animi cupidatat exp, পোষ্ট অফিসঃ Sed ullam earum pers, জেলাঃ Neque quia quasi mag, বিভাগঃ ময়মনসিংহ।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL),
(38, 15, 9, '77', 92, 'মোনা গিবস', 'MacKensie Mayer', 'Driscoll Sparks', 'Lionel Woods', '99', '1989-10-13', 'রিক্সা চালক', 'হিন্দু', 'অন্যান্য', 'client_634b8ef5af3bc.jpg', '103', '884', 531, 'C', 'B-', 5, 62, 'বাড়ির এবং রাস্তাঃ Ea sed sunt architec, গ্রামঃ Eos non voluptate do, ওয়ার্ড নম্বরঃ Eum ipsum ad assumen, উপজেলাঃ Ullam culpa possimus, পোষ্ট অফিসঃ Accusamus explicabo, জেলাঃ Irure nihil omnis ea, বিভাগঃ ময়মনসিংহ।', 'বাড়ির এবং রাস্তাঃ Praesentium libero r, গ্রামঃ Magni ut anim beatae, ওয়ার্ড নম্বরঃ Voluptatem a possimu, উপজেলাঃ Iste itaque suscipit, পোষ্ট অফিসঃ Asperiores consequat, জেলাঃ Doloribus sed ea ex , বিভাগঃ রংপুর।', 1, '2022-10-16 00:00:00', '2022-10-17 00:00:00', NULL),
(39, 15, 9, '77', 88, 'Casey Francis', 'Wyatt Chang', 'Adria Mccray', 'Dolan Holland', '42', '2015-10-24', 'চাকুরি', 'বৌদ্ধ', 'পুরুষ', 'client_634b8fb9bbfb0.jpg', '504', '935', 846, 'C', 'O-', 100, 58, 'বাড়ির এবং রাস্তাঃ Sit ea doloribus ame, গ্রামঃ Iusto perspiciatis , ওয়ার্ড নম্বরঃ Deserunt exercitatio, উপজেলাঃ Quas adipisci blandi, পোষ্ট অফিসঃ Aut laborum Consequ, জেলাঃ Quam vel qui obcaeca, বিভাগঃ খুলনা।', 'বাড়ির এবং রাস্তাঃ Iure perspiciatis l, গ্রামঃ Ratione qui culpa nu, ওয়ার্ড নম্বরঃ Aut cillum nobis eli, উপজেলাঃ Consequuntur in est , পোষ্ট অফিসঃ Et sit ut aut quis e, জেলাঃ Ad voluptate debitis, বিভাগঃ বরিশাল।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL),
(40, 15, 9, '78', 53, 'Ariana Olsen', 'Eugenia Tucker', 'Cora Shaffer', 'Aphrodite Acevedo', '19', '2011-06-03', 'গৃহিনী', 'খ্রিস্টান', 'পুরুষ', 'client_634b8fffbf73e.jpg', '48', '128', 43, 'C', 'O-', 55, 39, 'বাড়ির এবং রাস্তাঃ Consectetur mollit d, গ্রামঃ Cupidatat eum nostru, ওয়ার্ড নম্বরঃ Reiciendis quo conse, উপজেলাঃ Odio tenetur ea nost, পোষ্ট অফিসঃ Nisi odio magni non , জেলাঃ Qui qui consequuntur, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ Sunt voluptas ut no, গ্রামঃ A quia id expedita , ওয়ার্ড নম্বরঃ Minim in sed similiq, উপজেলাঃ Distinctio Rem sit , পোষ্ট অফিসঃ Sunt in distinctio , জেলাঃ Minima cumque facili, বিভাগঃ ঢাকা।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL),
(41, 15, 9, '77', 63, 'Buckminster Johnson', 'Mia Hicks', 'Hilel Farrell', 'Macaulay Parker', '34', '2014-12-22', 'ড্রাইভার', 'হিন্দু', 'পুরুষ', 'client_634b909e4f0fb.jpg', '118', '90', 210, 'A', 'AB+', 2, 43, 'বাড়ির এবং রাস্তাঃ Animi sit mollitia , গ্রামঃ Duis eius eiusmod en, ওয়ার্ড নম্বরঃ Sequi beatae quia es, উপজেলাঃ Facere vitae dolorum, পোষ্ট অফিসঃ Dolorem est facilis , জেলাঃ Ut quis reiciendis v, বিভাগঃ বরিশাল।', 'বাড়ির এবং রাস্তাঃ Soluta voluptas quis, গ্রামঃ Sint odio unde quia , ওয়ার্ড নম্বরঃ Lorem in et sunt no, উপজেলাঃ Expedita aspernatur , পোষ্ট অফিসঃ Quia aut veritatis m, জেলাঃ Sed aut impedit qua, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL),
(42, 15, 9, '77', 28, 'Hanna Chapman', 'Illana Pearson', 'Nissim Singleton', 'Francesca Pacheco', '9943563', '2009-08-22', 'চাকুরি', 'হিন্দু', 'অন্যান্য', 'client_634b90f9aa343.jpg', '66', '724', 72, 'C', 'O-', 25, 68, 'বাড়ির এবং রাস্তাঃ Quo alias non incidi, গ্রামঃ Cupiditate ipsum mol, ওয়ার্ড নম্বরঃ Dolor quos consequat, উপজেলাঃ Sit do est eiusmod , পোষ্ট অফিসঃ Et earum quaerat vel, জেলাঃ Assumenda deleniti s, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ Beatae reiciendis qu, গ্রামঃ Tempore at corporis, ওয়ার্ড নম্বরঃ Inventore id molesti, উপজেলাঃ Quam itaque lorem po, পোষ্ট অফিসঃ Quod omnis odio sit, জেলাঃ Ut voluptatem dolor, বিভাগঃ বরিশাল।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL),
(43, 15, 9, '77', 58, 'Freya Newman', 'Doris Maldonado', 'Ima Aguirre', 'Rebekah Harris', '50', '2011-02-07', 'গৃহিনী', 'হিন্দু', 'পুরুষ', 'client_635033a301a11.jpg', '806', '244', 215, 'A', 'B-', 70, 88, 'বাড়ির এবং রাস্তাঃ Ut aliquid dolor at , গ্রামঃ Eaque aspernatur dol, ওয়ার্ড নম্বরঃ Illo nobis mollit re, উপজেলাঃ Tempor corporis expl, পোষ্ট অফিসঃ Eius ut ex exercitat, জেলাঃ Mollit distinctio T, বিভাগঃ খুলনা।', 'বাড়ির এবং রাস্তাঃ Et est non ullamco , গ্রামঃ Ut maiores debitis r, ওয়ার্ড নম্বরঃ Ipsam placeat moles, উপজেলাঃ Aut qui deleniti sun, পোষ্ট অফিসঃ In dolore repellendu, জেলাঃ Eos est quia velit, বিভাগঃ সিলেট।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL),
(44, 15, 9, '78', 13, 'Murphy Blake', 'Jaime Mcfadden', 'Rowan Farrell', 'Charde Gregory', '35', '1992-11-08', 'শ্রমিক', 'হিন্দু', 'পুরুষ', 'client_635033de4535d.png', '806', '20', 816, 'C', 'AB+', 60, 38, 'বাড়ির এবং রাস্তাঃ Perspiciatis deleni, গ্রামঃ Deserunt cupiditate , ওয়ার্ড নম্বরঃ Quasi recusandae Ir, উপজেলাঃ Sed qui ut veniam b, পোষ্ট অফিসঃ Facilis velit distin, জেলাঃ Maxime dicta quod in, বিভাগঃ রংপুর।', 'বাড়ির এবং রাস্তাঃ Aperiam est dicta so, গ্রামঃ Nam reiciendis qui i, ওয়ার্ড নম্বরঃ Expedita expedita co, উপজেলাঃ Est ut aspernatur do, পোষ্ট অফিসঃ Numquam id minima d, জেলাঃ Molestiae illum est, বিভাগঃ বরিশাল।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL),
(45, 15, 9, '78', 7, 'Brielle Wall', 'MacKenzie Horn', 'Jael Booth', 'Kai Prince', '93', '1990-06-11', 'অন্যান্য', 'হিন্দু', 'অন্যান্য', 'client_6350340a0568e.jpg', '546', '626', 758, 'A', 'B+', 80, 22, 'বাড়ির এবং রাস্তাঃ Dolorem perspiciatis, গ্রামঃ Dolor id aliquip per, ওয়ার্ড নম্বরঃ Occaecat itaque accu, উপজেলাঃ Et nulla adipisci eu, পোষ্ট অফিসঃ Fugiat exercitation, জেলাঃ Sequi alias explicab, বিভাগঃ ঢাকা।', 'বাড়ির এবং রাস্তাঃ Iste excepturi minus, গ্রামঃ Sunt cupidatat iust, ওয়ার্ড নম্বরঃ Saepe obcaecati esse, উপজেলাঃ Mollit eos illum v, পোষ্ট অফিসঃ Et eos quis libero o, জেলাঃ Molestiae fugiat re, বিভাগঃ সিলেট।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL),
(46, 15, 9, '77', 14, 'Odysseus Vazquez', 'Fitzgerald Petersen', 'Simone Jarvis', 'Carlos Harrell', '21', '2015-03-01', 'চাকুরি', 'ইসলাম', 'পুরুষ', 'client_63503422ab754.jpg', '327', '15', 403, 'C', 'O-', 80, 17, 'বাড়ির এবং রাস্তাঃ Voluptatem tempor es, গ্রামঃ Ad quae eum mollitia, ওয়ার্ড নম্বরঃ Blanditiis doloribus, উপজেলাঃ Aut eius dicta porro, পোষ্ট অফিসঃ Pariatur Perspiciat, জেলাঃ Est quas pariatur V, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ Nihil sapiente et al, গ্রামঃ Aspernatur quia sint, ওয়ার্ড নম্বরঃ Aliquip accusantium , উপজেলাঃ Aperiam magnam volup, পোষ্ট অফিসঃ Provident ipsa nih, জেলাঃ Facere laboris a iur, বিভাগঃ খুলনা।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL),
(47, 15, 9, '78', 96, 'Warren Christian', 'Debra Lynch', 'Alfonso Chambers', 'Jameson Nieves', '36', '2007-02-20', 'গৃহিনী', 'ইসলাম', 'অন্যান্য', 'client_6350350b88e05.jpg', '961', '414', 886, 'B', 'O+', 34, 68, 'বাড়ির এবং রাস্তাঃ Mollitia voluptas vo, গ্রামঃ Et reprehenderit ea, ওয়ার্ড নম্বরঃ Quaerat commodo corp, উপজেলাঃ Beatae omnis et sed , পোষ্ট অফিসঃ Sed eu sunt occaecat, জেলাঃ Laudantium tenetur , বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ Aliquip minim mollit, গ্রামঃ Ea veniam ea fugiat, ওয়ার্ড নম্বরঃ Adipisci est quis co, উপজেলাঃ Est amet in reicien, পোষ্ট অফিসঃ Consequat Blanditii, জেলাঃ Ut qui enim explicab, বিভাগঃ রাজশাহী।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL),
(48, 15, 9, '78', 21, 'Laura Beard', 'Dahlia Woods', 'Wanda Simpson', 'Griffin Craft', '6732', '1984-05-03', 'চাকুরি', 'হিন্দু', 'অন্যান্য', 'client_63503539a7042.jpg', '117', '177', 992, 'A', 'AB-', 19, 69, 'বাড়ির এবং রাস্তাঃ Quasi dolor debitis , গ্রামঃ Commodo doloremque e, ওয়ার্ড নম্বরঃ Velit aliqua Except, উপজেলাঃ Harum omnis iusto si, পোষ্ট অফিসঃ Molestiae non sit ac, জেলাঃ Molestiae in est la, বিভাগঃ ঢাকা।', 'বাড়ির এবং রাস্তাঃ Esse architecto sun, গ্রামঃ Lorem dolor rerum qu, ওয়ার্ড নম্বরঃ Et ipsum do eligend, উপজেলাঃ Iure eaque accusanti, পোষ্ট অফিসঃ Placeat soluta nisi, জেলাঃ Dolor iure amet ill, বিভাগঃ বরিশাল।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL),
(49, 15, 9, '77', 282, 'Charity Glenn', 'Charde Mcintyre', 'Calista Madden', 'Amos Dominguez', '9', '1977-07-05', 'ব্যবসা', 'হিন্দু', 'অন্যান্য', 'client_63503571e1fce.jpeg', '350', '548', 661, 'C', 'AB+', 56, 40, 'বাড়ির এবং রাস্তাঃ Consequat Minus doloribus id inventore assumenda ut in aut officiis dolor non vel esse dolore perf, গ্রামঃ Occaecat architecto aliquam ut irure ex velit et ut sit odio numquam, ওয়ার্ড নম্বরঃ Voluptatem ut asperiores ut reiciendis aut architecto, উপজেলাঃ Commodi minima distinctio Sit totam in accusantium blanditiis velit dolore fuga Rerum quia iusto, পোষ্ট অফিসঃ Consequatur omnis suscipit at sed et sed laboris quidem ipsam aut, জেলাঃ Laudantium odio natus pariatur In non odit aute amet aut mollit cillum eius quibusdam irure, বিভাগঃ চট্টগ্রাম।', 'বাড়ির এবং রাস্তাঃ Aut velit sapiente a possimus culpa magni enim, গ্রামঃ Enim est totam nihil et consequat Harum ea do magnam voluptatem, ওয়ার্ড নম্বরঃ Sed labore voluptates veniam id elit consectetur dolor consectetur fugiat laboriosam in exerci, উপজেলাঃ Asperiores consequatur eaque consequuntur consequat, পোষ্ট অফিসঃ Quia in quae qui libero reiciendis velit aliquam quam facere doloribus autem veniam fugit beatae p, জেলাঃ Ipsa optio reiciendis molestiae facere porro dolore rerum nostrum reprehenderit, বিভাগঃ বরিশাল।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL),
(50, 15, 9, '78', 25, 'Jane Garner', 'Maryam Herring', 'Brody Salas', 'Noble Rogers', '57', '1995-02-17', 'ড্রাইভার', 'বৌদ্ধ', 'মহিলা', 'client_6350395d78a28.jpg', '340', '502', 414, 'C', 'B-', 33, 39, 'বাড়ির এবং রাস্তাঃ Ipsum exercitationem modi quis tenetur saepe temporibus at voluptas ea facere eum qui rerum irure si, গ্রামঃ Illum et commodo praesentium rerum est quia consequatur do architecto incidunt architecto ut, ওয়ার্ড নম্বরঃ Magni nostrum est illum aut praesentium aliqua Impedit harum quis totam ut, উপজেলাঃ Id facilis voluptas temporibus eum sint officia labore dolorum libero officiis ab et in temporibus e, পোষ্ট অফিসঃ Vitae enim non proident est reiciendis natus do dolores dolore aut laudantium aut, জেলাঃ Reprehenderit optio natus voluptatem magna recusandae Ea voluptatem Aut autem sint tempora, বিভাগঃ ময়মনসিংহ।', 'বাড়ির এবং রাস্তাঃ Dolores ad voluptatem Laudantium labore excepteur irure debitis dolor corrupti impedit quos aute, গ্রামঃ Et est consequat Est aperiam et minima, ওয়ার্ড নম্বরঃ Facilis nisi optio ea est aspernatur nisi nostrum veniam unde amet qui doloremque sint veniam c, উপজেলাঃ Facilis voluptatem Dolore consequatur Libero nihil rerum cum est similique magnam voluptate volupt, পোষ্ট অফিসঃ Ullamco cum sed officia deserunt necessitatibus ipsa et vel ducimus qui perferendis voluptatibus o, জেলাঃ Aut tenetur suscipit corporis sequi aut doloremque neque qui exercitation enim officiis quia nihil q, বিভাগঃ রাজশাহী।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL),
(51, 15, 9, '77', 33, 'Colby Larson', 'Juliet Juarez', 'Fay Walsh', 'Tamara Buckley', '196574', '1971-09-05', 'গৃহিনী', 'ইসলাম', 'অন্যান্য', 'client_63503983a7021.jpg', '595', '554', 340, 'A', 'AB-', 6, 20, 'বাড়ির এবং রাস্তাঃ Deserunt dolorem inventore non sequi minima nesciunt excepteur illo reiciendis consequatur Sint ut, গ্রামঃ Sed voluptates dignissimos repellendus Perspiciatis provident adipisci hic ratione autem rem volu, ওয়ার্ড নম্বরঃ Adipisicing officia omnis cupidatat culpa alias voluptates culpa dolor perferendis et dolorem face, উপজেলাঃ Reiciendis est deserunt nesciunt cumque velit ut assumenda, পোষ্ট অফিসঃ Esse aliqua Optio ullam voluptas quia facilis aut soluta natus iste ipsum in voluptate id aliqui, জেলাঃ Molestiae qui voluptas officiis quis excepturi, বিভাগঃ সিলেট।', 'বাড়ির এবং রাস্তাঃ Facilis quia dolore amet nostrud incidunt excepteur animi impedit magnam sed adipisicing fugit , গ্রামঃ Delectus dolore illum eum omnis exercitation cupidatat eveniet laudantium, ওয়ার্ড নম্বরঃ Ex non autem corporis qui sit officia nulla, উপজেলাঃ Ut incidunt qui autem sint elit lorem, পোষ্ট অফিসঃ Quia voluptates qui repellendus Et voluptas nobis enim dolores et fugit architecto exercitation am, জেলাঃ Totam vel officia qui qui voluptatum deserunt et explicabo Tempor temporibus enim, বিভাগঃ ঢাকা।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL),
(52, 15, 9, '77', 330, 'Signe Matthews', 'Jillian Weiss', 'Jade Diaz', 'Caesar Clay', '505', '1988-09-20', 'শ্রমিক', 'খ্রিস্টান', 'অন্যান্য', 'client_635157ada0292.jpg', '488', '889', 949, 'C', 'O-', 32, 89, 'বাড়ির এবং রাস্তাঃ Impedit cum eius voluptas in quasi eaque et sapiente iste facere, গ্রামঃ Illo odio in qui aut magni quas et non accusantium nobis non ut dolorum nemo occaecat autem laudanti, ওয়ার্ড নম্বরঃ Omnis culpa dolor dolor consequatur Similique dolor et odio inventore molestiae perferendis quaerat, উপজেলাঃ Ea aperiam rerum nulla hic quaerat iure rerum culpa necessitatibus quia irure et voluptatem Id sap, পোষ্ট অফিসঃ Mollitia enim quia et explicabo Facilis ab, জেলাঃ Laudantium debitis debitis magnam ex reprehenderit molestiae eos temporibus incidunt ut, বিভাগঃ রাজশাহী।', 'বাড়ির এবং রাস্তাঃ Dolores excepturi ad velit dolore numquam aut incididunt qui iusto vitae molestiae vel amet dolore, গ্রামঃ Alias est quos aut consequatur Sit qui magnam cupiditate, ওয়ার্ড নম্বরঃ Illo reprehenderit magna veniam ut in recusandae Ex beatae adipisicing ad corrupti in non sint, উপজেলাঃ Deserunt ut est odit Nam et cumque dicta similique, পোষ্ট অফিসঃ Magnam ullam quas aut est aspernatur voluptas eiusmod sit facilis quo nihil est deserunt libero, জেলাঃ Possimus quos ipsa est quos id enim voluptatem quaerat accusamus sed, বিভাগঃ সিলেট।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL),
(53, 15, 9, '78', 6, 'Lavinia Mcfadden', 'Keiko Rivas', 'Courtney Lynch', 'Bruno Alexander', '70', '1978-11-14', 'রিক্সা চালক', 'হিন্দু', 'অন্যান্য', 'client_635158c6e16fc.jpg', '149', '813', 947, 'C', 'B+', 98, 84, 'বাড়ির এবং রাস্তাঃ Molestiae irure neque excepturi quasi totam, গ্রামঃ Ullamco numquam quasi repellendus Autem illo aut dolor dolore qui dolor sint, ওয়ার্ড নম্বরঃ Tempor omnis amet totam quod laborum beatae eligendi exercitationem quis impedit et praesentium mi, উপজেলাঃ Sint ad dolores magnam deserunt cupidatat autem officia ut unde velit dolorem mollit vel iure laboru, পোষ্ট অফিসঃ Sunt explicabo Consectetur magnam dolorum et commodi quam duis sint sed ipsum tempora quo doloribu, জেলাঃ Vitae maiores et blanditiis aliqua Impedit molestiae in est pariatur Ipsa perferendis illum nec, বিভাগঃ সিলেট।', 'বাড়ির এবং রাস্তাঃ Mollit quo enim id ea repudiandae vel atque ex ipsam iste quia quo tempor ullam velit quibusdam qui, গ্রামঃ Optio iure consectetur incidunt suscipit veritatis minim quis quam quo quas, ওয়ার্ড নম্বরঃ Dolore in sit consequuntur vel aut ducimus nulla eligendi sit, উপজেলাঃ Ex exercitation consectetur soluta distinctio, পোষ্ট অফিসঃ Ex deserunt vero repudiandae cumque at recusandae Sed modi dolorem, জেলাঃ Iste tenetur non expedita obcaecati tempora voluptatem maiores autem molestiae lorem quis vel quam , বিভাগঃ ঢাকা।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL),
(54, 15, 10, '78', 81, 'Blaine Bell', 'Wyoming Massey', 'Ashely Clements', 'Harlan Francis', '5786', '1983-02-09', 'গৃহিনী', 'খ্রিস্টান', 'অন্যান্য', 'client_6351771ccd60b.jpeg', '115', '174', 904, 'C', 'O-', 68, 28, 'বাড়ির এবং রাস্তাঃ Ut tenetur itaque sequi voluptatem et asperiores duis aute exercitation eveniet, গ্রামঃ Commodi incididunt autem reiciendis unde sequi, ওয়ার্ড নম্বরঃ Earum esse cillum est quia ea hic ullamco nesciunt vel, উপজেলাঃ Nisi consectetur cumque porro nisi ipsum reprehenderit ea quia excepteur totam, পোষ্ট অফিসঃ Eiusmod tenetur vero quae quod dolorem animi, জেলাঃ Ipsum voluptas voluptatum deserunt nisi eveniet rerum laborum in veniam voluptas officia enim, বিভাগঃ রংপুর।', 'বাড়ির এবং রাস্তাঃ Eius ex quidem commodi dignissimos lorem irure, গ্রামঃ Quas rerum neque sit eu ut voluptatem quos elit optio quia quos cupiditate consequat Asperiores, ওয়ার্ড নম্বরঃ Eligendi fugit ad non repudiandae quod ut ipsum eos non deleniti ut voluptate quisquam laboris sae, উপজেলাঃ Repudiandae voluptatibus cupidatat est velit placeat amet eu consequat Ea, পোষ্ট অফিসঃ In enim sit ea vel natus animi repudiandae iure facilis pariatur Velit, জেলাঃ Dignissimos occaecat in alias consequat Explicabo In suscipit veniam cum necessitatibus ut modi e, বিভাগঃ ময়মনসিংহ।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL),
(55, 15, 10, '78', 10, 'Piper Kelly', 'Nash Patel', 'Ila Finch', 'Neil Crawford', '1', '2022-04-08', 'ব্যবসা', 'খ্রিস্টান', 'অন্যান্য', 'client_6351773a6c6e0.jpg', '49', '300', 943, 'B', 'A-', 90, 17, 'বাড়ির এবং রাস্তাঃ Vero pariatur Eius rem ducimus ut nemo quis et voluptates molestiae veniam labore qui dolores, গ্রামঃ Ipsum adipisci aliquip dolor accusantium autem praesentium anim voluptas illo, ওয়ার্ড নম্বরঃ Dolor quis odit nemo id elit dicta rem animi qui culpa dolorem, উপজেলাঃ Culpa eos ad elit velit esse et commodi totam quis consectetur pariatur Nesciunt et quae ut qu, পোষ্ট অফিসঃ Iusto aute inventore qui impedit saepe voluptatem velit est non deserunt amet enim perferendis, জেলাঃ Minima quibusdam magnam est unde unde eu laborum laborum iusto quibusdam, বিভাগঃ রংপুর।', 'বাড়ির এবং রাস্তাঃ Cillum facilis quis aliquid in sint eveniet delectus tempor autem et aut ullam omnis id consequat, গ্রামঃ Est ducimus laudantium reiciendis omnis tenetur atque qui aliquid laboris necessitatibus sunt porr, ওয়ার্ড নম্বরঃ Laboris sapiente ut veritatis est illo aspernatur pariatur Ut fuga Magna excepteur minus cupiditat, উপজেলাঃ Ipsa aut provident ratione labore aspernatur, পোষ্ট অফিসঃ Veniam incidunt omnis esse deserunt omnis dolores laboriosam inventore sint suscipit praesentium, জেলাঃ Similique beatae sit labore asperiores, বিভাগঃ সিলেট।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL),
(56, 15, 10, '77', 76, 'Joy Boyer', 'Tatum Lester', 'Paloma Floyd', 'Armando Johnson', '95', '2002-01-26', 'শ্রমিক', 'হিন্দু', 'মহিলা', 'client_63526464eed4f.jpg', '343', '57', 53, 'C', 'A-', 42, 50, 'বাড়ির এবং রাস্তাঃ Eaque vel exercitation facere sit exercitation similique minima do sed laborum, গ্রামঃ Voluptate deserunt similique nulla error autem aliquip aliquam, ওয়ার্ড নম্বরঃ Quasi officia ea quo ex dolor sint sit dignissimos aut et expedita est voluptate, উপজেলাঃ Qui nisi laudantium magnam ut repellendus Enim in necessitatibus quae quibusdam accusantium mollit, পোষ্ট অফিসঃ Maiores in ad voluptas architecto est sed, জেলাঃ Tenetur nobis amet cillum dolorem excepteur sint voluptatibus dolorem ea in exercitationem laborios, বিভাগঃ রাজশাহী।', 'বাড়ির এবং রাস্তাঃ Non qui necessitatibus pariatur Quidem libero et iure sunt officia quis ut sunt ea quas, গ্রামঃ Temporibus omnis expedita nisi debitis eius voluptate dolor ullam et illo est anim perspiciatis Nam, ওয়ার্ড নম্বরঃ Aliquid sunt assumenda ea tempore quod cumque occaecat id ex velit proident error dolor aut dolore, উপজেলাঃ Et tempor aut aut explicabo In facere doloremque, পোষ্ট অফিসঃ Ad lorem esse accusamus quis aperiam laboris non magnam temporibus eu ad, জেলাঃ Neque qui enim eligendi exercitation natus rerum incididunt et tempore pariatur Eveniet consectet, বিভাগঃ ঢাকা।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL),
(57, 15, 10, '77', 24, 'Barclay Duke', 'Brooke Harding', 'Yuli Carney', 'Arsenio Dawson', '7', '1998-01-16', 'অন্যান্য', 'ইসলাম', 'অন্যান্য', 'client_63526487dfca5.jpg', '900', '487', 443, 'C', 'B-', 7, 79, 'বাড়ির এবং রাস্তাঃ Inventore et sit distinctio Exercitationem harum culpa asperiores voluptatem eaque dolores culpa, গ্রামঃ Veniam fugit laboris ex autem est ipsum harum assumenda incididunt sint possimus accusantium ut , ওয়ার্ড নম্বরঃ Rem blanditiis eum reprehenderit dolor distinctio Et consequatur dolorum quo veritatis omnis est n, উপজেলাঃ Est excepturi quod quae ducimus nihil vel voluptas sint cillum aut ea sint distinctio, পোষ্ট অফিসঃ Ea cumque ea quos in ea aut reiciendis accusamus quidem molestiae ea libero, জেলাঃ Nisi non amet dolor impedit, বিভাগঃ খুলনা।', 'বাড়ির এবং রাস্তাঃ Consequatur excepteur aut ducimus quisquam in dolore rem sint enim tenetur, গ্রামঃ Non maxime modi voluptatibus voluptatum enim dolore laudantium nobis excepturi incididunt nemo inve, ওয়ার্ড নম্বরঃ Perferendis doloribus porro saepe dolor veniam quisquam et sed aut quasi mollit culpa porro id atqu, উপজেলাঃ Pariatur Officia qui ipsa sint do rerum quis asperiores sed voluptatem minus, পোষ্ট অফিসঃ Corporis qui ut ratione quia at fugiat maiores accusamus libero esse omnis est ipsam consectetur , জেলাঃ Commodi voluptate quas velit dolore et alias non illum dolore voluptas et vitae in delectus, বিভাগঃ খুলনা।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL),
(58, 15, 10, '77', 91, 'Justine Gross', 'Hashim Willis', 'Erich Gomez', 'Hilda Horne', '14', '2000-07-16', 'অন্যান্য', 'বৌদ্ধ', 'মহিলা', 'client_635264ab7eaa3.jpg', '465', '776', 785, 'C', 'A-', 84, 40, 'বাড়ির এবং রাস্তাঃ Amet ipsa ea quia numquam eos maiores rerum id soluta sit aut cumque asperiores, গ্রামঃ Quis ipsam in sit saepe non aliqua Fugiat in maiores blanditiis illo voluptatum laboriosam nihil, ওয়ার্ড নম্বরঃ Ipsam cumque est natus vero aspernatur, উপজেলাঃ Voluptatem quia qui eiusmod sed qui, পোষ্ট অফিসঃ Perferendis proident rerum quibusdam illo libero Nam quaerat est ipsam unde est optio animi aut l, জেলাঃ Vel iure atque voluptate officia vel, বিভাগঃ সিলেট।', 'বাড়ির এবং রাস্তাঃ Enim quos est aut aliqua Amet quia nulla, গ্রামঃ Vero do libero reiciendis maiores excepturi in a doloremque quia, ওয়ার্ড নম্বরঃ Quo fugit sed optio sapiente ex, উপজেলাঃ Voluptas Nam qui est vitae exercitation et quaerat laboriosam, পোষ্ট অফিসঃ Voluptatem assumenda provident omnis doloremque rerum iusto assumenda qui aliquip in ipsum, জেলাঃ Officiis et commodo esse voluptates fugiat, বিভাগঃ ঢাকা।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL),
(59, 15, 10, '77', 47, 'Nissim Conrad', 'Genevieve Golden', 'Carly Carlson', 'Daryl Cochran', '6', '2009-04-06', 'শ্রমিক', 'খ্রিস্টান', 'পুরুষ', 'client_635264c994670.jpg', '12', '308', 814, 'C', 'B+', 58, 90, 'বাড়ির এবং রাস্তাঃ Consequatur Dolor ratione et aliqua Et nulla quo rerum sit enim quaerat vero eveniet voluptas nu, গ্রামঃ Autem omnis quaerat est ut ut ullam accusamus beatae cum quae vitae ullam, ওয়ার্ড নম্বরঃ Ex vel praesentium laboriosam natus excepturi praesentium nihil in deserunt quis laborum quo, উপজেলাঃ Cum id asperiores est aliqua, পোষ্ট অফিসঃ Rerum ullam illo Nam aut velit veritatis dicta occaecat voluptatem laboriosam quibusdam officia am, জেলাঃ Aliquid necessitatibus provident consequatur Nihil labore sunt officia et qui, বিভাগঃ ঢাকা।', 'বাড়ির এবং রাস্তাঃ Sunt earum consequatur et enim alias error, গ্রামঃ Ipsa architecto laborum Nam earum aut quasi officia elit ad qui rem in quos asperiores et qui aut, ওয়ার্ড নম্বরঃ Deserunt reiciendis officia tenetur voluptate ut reprehenderit dolore sed voluptatem est quia aut, উপজেলাঃ Labore labore nisi in qui vitae molestias consequat Totam quod tempore laudantium iusto dolore, পোষ্ট অফিসঃ Eum quo ullamco voluptate quod libero aliqua Voluptatem ipsam amet voluptatem Quia quam ut amet , জেলাঃ Minim aspernatur ipsum dolor dolore sunt, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL),
(60, 22, 26, '77', 138, 'Petra David', 'Blythe Summers', 'Sybill Cobb', 'Blossom Mack', '37', '2014-05-02', 'শ্রমিক', 'হিন্দু', 'অন্যান্য', 'client_635264eae71f6.jpg', '573', '669', 378, 'C', 'B+', 38, 3, 'বাড়ির এবং রাস্তাঃ Mollitia non ipsum dolorum debitis architecto optio voluptas quae proident reprehenderit eum nem, গ্রামঃ Non eius provident et alias quis totam enim dolorem qui ratione est, ওয়ার্ড নম্বরঃ Velit irure tempora lorem ut consectetur suscipit minim distinctio Est officia cupiditate aut hic, উপজেলাঃ Irure quidem quae non magnam culpa excepteur asperiores Nam inventore iste sunt consequatur dolor, পোষ্ট অফিসঃ Ad neque placeat iusto consequatur Vel consequuntur reiciendis labore explicabo Qui amet, জেলাঃ Sapiente ut ut provident illum mollitia eu enim sed minus sint dolor rem, বিভাগঃ রংপুর।', 'বাড়ির এবং রাস্তাঃ Dolor quasi doloremque sunt laudantium velit ut ratione, গ্রামঃ Debitis ea iusto provident dolores repudiandae amet quisquam culpa reiciendis repudiandae cum sunt, ওয়ার্ড নম্বরঃ Maiores atque amet similique ratione dolorum, উপজেলাঃ Aute quos nihil inventore aliquam facere et suscipit eum sit laboriosam possimus tenetur, পোষ্ট অফিসঃ Voluptatibus repudiandae et temporibus maiores qui eligendi dolores eligendi mollitia quasi quia, জেলাঃ Iste dolor labore reprehenderit minus in ullamco obcaecati eos dicta labore numquam, বিভাগঃ রংপুর।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL),
(61, 20, 22, '77', 8, 'Christopher Cole', 'Bo Johnston', 'Geoffrey Mays', 'Jasper Cardenas', '13', '1972-08-28', 'অন্যান্য', 'ইসলাম', 'অন্যান্য', 'client_6354c8eda87ac.png', '47', '236', 65, 'C', 'A-', 82, 91, 'বাড়ির এবং রাস্তাঃ Necessitatibus nihil non qui ad id ut libero soluta ullam consequat Odit est vero alias harum ad, গ্রামঃ Distinctio Et nihil velit est Nam corrupti ratione necessitatibus, ওয়ার্ড নম্বরঃ Ut amet sed sit earum qui doloremque minima ipsum et laborum eos, উপজেলাঃ Nemo cumque optio incidunt atque sapiente esse anim odit accusantium tempore commodo ea corporis, পোষ্ট অফিসঃ Rerum et qui et aut reprehenderit beatae molestiae do saepe sed aut odio natus molestias maxime dolo, জেলাঃ Qui nostrum consequuntur sit ipsum esse officiis cupidatat illo quia tempore deserunt exercitation, বিভাগঃ ময়মনসিংহ।', 'বাড়ির এবং রাস্তাঃ Possimus sed sed lorem dicta incididunt soluta non nulla non proident fugiat irure excepturi dolor, গ্রামঃ Totam voluptates excepturi id est consequuntur cupidatat animi qui minima perspiciatis dolore, ওয়ার্ড নম্বরঃ Necessitatibus fugiat amet fugiat magnam, উপজেলাঃ Quo amet doloremque ut distinctio Reprehenderit alias nihil nulla modi est ratione deserunt ut of, পোষ্ট অফিসঃ Reprehenderit culpa velit cumque sed quae illum qui vitae esse nisi eu id, জেলাঃ Qui quasi velit iure ad sit, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-23 00:00:00', '2022-10-23 00:00:00', NULL),
(62, 17, 13, '77', 470, 'Kellie Edwards', 'Fatima Goodwin', 'Colby Flores', 'Raphael Mckay', '930', '2018-06-22', 'গৃহিনী', 'বৌদ্ধ', 'অন্যান্য', 'client_6356b8e2e4044.jpeg', '865', '355', 370, 'B', 'A-', 51, 41, 'বাড়ির এবং রাস্তাঃ Exercitation hic adipisci dignissimos qui autem obcaecati dolorum cumque alias perferendis dolores u, গ্রামঃ Adipisicing veritatis consequatur Exercitation est nihil eos ipsam saepe ad qui pariatur Sapiente, ওয়ার্ড নম্বরঃ Animi veniam cupiditate esse occaecat autem est consequatur Omnis sunt voluptatem sed veniam , উপজেলাঃ Itaque dolores sit cupidatat nisi corrupti culpa explicabo Est id vel, পোষ্ট অফিসঃ Qui tempore duis ducimus dolor culpa adipisicing do, জেলাঃ ময়মনসিংহ, বিভাগঃ সিলেট।', 'বাড়ির এবং রাস্তাঃ Exercitation in fuga Debitis laborum Animi qui inventore et ex quis laboriosam aspernatur sit e, গ্রামঃ Mollitia praesentium dolores itaque dolores, ওয়ার্ড নম্বরঃ Id ipsam minima amet est odit consequatur Aspernatur hic ut fugiat dolorum ut dolorem lorem, উপজেলাঃ Distinctio Saepe in distinctio Facilis quia nobis et qui adipisci et neque voluptatem At non ea e, পোষ্ট অফিসঃ Quod omnis laudantium rerum deserunt adipisicing sed, জেলাঃ চট্টগ্রাম, বিভাগঃ সিলেট।', 1, '2022-10-24 00:00:00', '2022-10-24 00:00:00', NULL),
(63, 18, 15, '78', 60, 'Jael Williamson', 'Murphy Fox', 'Aretha Joyner', 'Yetta Hunt', '75345', '1993-08-09', 'শ্রমিক', 'হিন্দু', 'মহিলা', 'client_6356b93e8fc4b.jpeg', '782', '927', 559, 'C', 'AB-', 91, 64, 'বাড়ির এবং রাস্তাঃ Et in mollitia officiis fugit et sunt repudiandae iusto magnam, গ্রামঃ Provident commodi duis quidem quia est quasi minima explicabo Aut, ওয়ার্ড নম্বরঃ Aut quibusdam est dolores nisi velit excepteur alias tempora recusandae Officiis architecto elit , উপজেলাঃ Quibusdam optio soluta enim eligendi nostrud, পোষ্ট অফিসঃ Doloribus elit id ut rerum praesentium at porro sunt provident eu consequatur Nam veniam quis a, জেলাঃ নরসিংদী, বিভাগঃ সিলেট।', 'বাড়ির এবং রাস্তাঃ Fugiat aut in debitis dolorem et a adipisci consequat Ut in voluptates, গ্রামঃ Cumque voluptate repudiandae id deleniti dolores ut, ওয়ার্ড নম্বরঃ Tempore dicta placeat id tenetur illum in est eum eveniet laborum Ipsum ut corporis aut ut in , উপজেলাঃ Repellendus Eos officia nulla praesentium quia assumenda, পোষ্ট অফিসঃ Dicta aspernatur repudiandae in qui nihil, জেলাঃ রাজবাড়ি, বিভাগঃ রংপুর।', 1, '2022-10-24 00:00:00', '2022-10-24 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `expence` int(11) NOT NULL,
  `details` longtext NOT NULL,
  `type` tinyint(5) NOT NULL COMMENT '1=daily_expence, 2=FDR_interest, 3=officers_salary,\r\n4= acc_closing_interest\r\n',
  `officer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `date`, `expence`, `details`, `type`, `officer_id`, `created_at`, `updated_at`) VALUES
(13, '2022-10-01 00:00:00', 200, 'ষ্টেশনারী', 1, 1, '2022-10-12 19:09:44', '2022-10-12 19:09:44'),
(14, '2022-10-02 00:00:00', 500, 'বিদ্যুৎ বিল', 1, 1, '2022-10-12 19:10:33', '2022-10-12 19:10:33'),
(15, '2022-10-05 00:00:00', 300, 'বিদ্যুৎ বিল', 1, 1, '2022-10-12 19:17:02', '2022-10-12 19:17:02'),
(17, '2022-10-01 00:00:00', 5000, '78', 3, 1, '2022-10-12 19:43:50', '2022-10-12 19:43:50'),
(19, '2022-10-07 00:00:00', 500, '77', 3, 1, '2022-10-12 19:45:28', '2022-10-12 19:45:28'),
(20, '2022-10-01 00:00:00', 4000, 'হাবিব', 2, 1, '2022-10-12 20:31:22', '2022-10-12 00:00:00'),
(21, '2022-10-06 00:00:00', 3000, 'আনজুমান', 2, 1, '2022-10-12 20:40:37', '2022-10-12 00:00:00'),
(22, '2022-10-08 00:00:00', 200, 'অফিস ভাড়া', 1, 1, '2022-10-12 21:06:45', '2022-10-12 21:06:45'),
(24, '2022-10-12 00:00:00', 5, 'বই নং 41 | সঞ্চয় ক্লোজ<br><bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ২৪ নং কেন্দ্র ( নাছিমা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 41<br> <bold>নামঃ</bold> Kane Rojas  <br> <bold>আমানত ছিলোঃ<', 4, 0, '2022-10-12 22:07:16', '2022-10-12 22:07:16'),
(25, '2022-10-12 00:00:00', 250, 'বই নং 93 | সঞ্চয় ক্লোজ<br><bold>ফিল্ডঃ</bold> ০৭ নং ফিল্ড ( আগ্রাবাদ )  <br> <bold>কেন্দ্রঃ</bold> ২৮ নং কেন্দ্র ( মোঃ সুমন )  <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 93<br> <bold>নামঃ</bold> Tasha Craig  <br> <bold>আমানত ছিলোঃ</bold> 500 টাকা<br> <bold>লাভ দিয়েছেঃ</bold> 250 টাকা <br> <bold>সর্বমোটঃ<bold> 750 টাকা', 4, 1, '2022-10-12 22:14:39', '2022-10-12 22:14:39'),
(27, '2022-10-18 00:00:00', 500, 'আনজুমান', 2, 1, '2022-10-18 00:13:11', '2022-10-18 00:13:11'),
(28, '2022-10-18 00:00:00', 500, 'আনজুমান', 2, 1, '2022-10-18 00:14:10', '2022-10-18 00:14:10'),
(29, '2022-10-18 00:00:00', 100, 'আপ্যায়ন খরচ', 1, 1, '2022-10-18 00:14:43', '2022-10-18 00:14:43'),
(30, '2022-10-19 00:00:00', 100, 'হাবিব', 2, 1, '2022-10-18 11:21:01', '2022-10-18 11:21:01'),
(31, '2022-10-18 00:00:00', 1000, 'হাবিব', 2, 1, '2022-10-18 11:21:46', '2022-10-18 11:21:46'),
(32, '2022-10-24 00:00:00', 160, 'যাতায়াত খরচ', 1, 1, '2022-10-24 22:31:03', '2022-10-24 22:31:03'),
(33, '2022-10-25 00:00:00', 6000, 'Clark Wilkerson', 2, 1, '2022-10-25 17:30:04', '2022-10-25 17:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `fdr_lists`
--

CREATE TABLE `fdr_lists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deposit` int(11) NOT NULL,
  `start` date NOT NULL,
  `expiry` date NOT NULL,
  `details` mediumtext NOT NULL,
  `interest` int(11) NOT NULL DEFAULT 0,
  `officers_id` int(11) NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 0 COMMENT '0=deactive, 1=active\r\n',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fdr_lists`
--

INSERT INTO `fdr_lists` (`id`, `name`, `deposit`, `start`, `expiry`, `details`, `interest`, `officers_id`, `status`, `created_at`) VALUES
(6, 'Clark Wilkerson', 130000, '2022-10-06', '2026-11-18', '', 6000, 1, 1, '2022-10-08 00:00:00'),
(7, 'হাবিব', 120000, '2021-06-11', '2025-07-30', '', 1100, 1, 1, '2022-10-08 00:00:00'),
(8, 'আনজুমান', 100000, '2022-10-20', '2022-10-11', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 1000, 1, 0, '2022-10-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feilds`
--

CREATE TABLE `feilds` (
  `feild_id` int(11) NOT NULL,
  `field_name` varchar(100) NOT NULL,
  `field_dec` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= active, 0= deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feilds`
--

INSERT INTO `feilds` (`feild_id`, `field_name`, `field_dec`, `created_at`, `status`) VALUES
(15, '০১ নং ফিল্ড ( কালামিয়া বাজার )', 'কালামিয়া বাজারের দৈনিক,সাপ্তাহিক,মাসিক ফিল্ড ।', '2022-10-06 00:00:00', 1),
(16, '০২ নং ফিল্ড ( সৈয়দ শাহ রোড )', 'সাপ্তাহিক,মাসিক,বাৎসরিক ও দরিদ্র ফিল্ড', '2022-10-06 00:00:00', 1),
(17, '০৩ নং ফিল্ড ( নয়া মসজিদ )', '', '2022-10-06 00:00:00', 1),
(18, '০৪ নং ফিল্ড ( এক কিলোমিটার )', '', '2022-10-06 00:00:00', 1),
(19, '০৫ নং ফিল্ড ( মুহাম্মদপুর )', '', '2022-10-06 00:00:00', 1),
(20, '০৬ নং ফিল্ড ( সি এম বি )', '', '2022-10-06 00:00:00', 1),
(21, '০৭ নং ফিল্ড ( আগ্রাবাদ )', '', '2022-10-06 00:00:00', 1),
(22, '০৮ নং ( বালূড় মাঠ ) ', '', '2022-10-06 00:00:00', 1),
(23, '০৯ নং ফিল্ড ( মুরাদপুর )', '', '2022-10-06 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `income` int(11) NOT NULL,
  `details` text NOT NULL,
  `officer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `date`, `income`, `details`, `officer_id`, `created_at`, `updated_at`) VALUES
(6, '2022-10-12', 500, 'বই ফি', 1, '2022-10-12 00:00:00', '2022-10-12 00:00:00'),
(7, '2022-10-12', 400, 'ফরম ফি', 1, '2022-10-12 00:00:00', '2022-10-12 00:00:00'),
(8, '2022-10-01', 350, 'জরিমানা', 1, '2022-10-12 00:00:00', '2022-10-12 00:00:00'),
(10, '2022-10-03', 800, 'বীমা ফি', 1, '2022-10-12 00:00:00', '2022-10-12 00:00:00'),
(12, '2022-10-08', 700, 'ক্লোজিং ফি', 1, '2022-10-12 00:00:00', '2022-10-12 13:03:04'),
(13, '2022-10-10', 500, 'বই ফি', 1, '2022-10-12 00:00:00', '2022-10-12 13:03:44'),
(14, '2022-10-06', 400, 'বীমা ফি', 1, '2022-10-12 00:00:00', '2022-10-12 15:18:44'),
(15, '1971-07-25', 279, 'ফরম ফি', 1, '2022-10-24 00:00:00', '2022-10-24 22:22:40'),
(16, '2022-10-24', 234, 'জরিমানা', 1, '2022-10-24 00:00:00', '2022-10-24 22:23:24'),
(18, '2022-10-24', 962, 'বীমা ফি', 1, '2022-10-24 00:00:00', '2022-10-24 22:25:00'),
(19, '2022-10-24', 50, 'ক্লোজিং ফি', 1, '2022-10-24 00:00:00', '2022-10-24 22:28:56'),
(20, '2022-10-27', 969, 'বীমা ফি', 1, '2022-10-27 00:00:00', '2022-10-27 13:44:00'),
(21, '2022-10-29', 348, 'বীমা ফি', 1, '2022-10-29 21:41:43', '2022-10-29 21:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `loan_acc_checks`
--

CREATE TABLE `loan_acc_checks` (
  `acc_check_id` int(11) NOT NULL,
  `loan_profile_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `loan_recover` int(11) NOT NULL DEFAULT 0,
  `loan_remaining` int(11) NOT NULL DEFAULT 0,
  `interest_recover` int(11) NOT NULL DEFAULT 0,
  `interest_remaining` int(11) NOT NULL DEFAULT 0,
  `checked_officer_id` int(11) NOT NULL,
  `checked_at` datetime NOT NULL DEFAULT current_timestamp(),
  `next_check_date` date DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 1 COMMENT '0=deactive, 1=active, 2= checked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_acc_checks`
--

INSERT INTO `loan_acc_checks` (`acc_check_id`, `loan_profile_id`, `client_id`, `book`, `field_id`, `center_id`, `period_id`, `balance`, `loan_recover`, `loan_remaining`, `interest_recover`, `interest_remaining`, `checked_officer_id`, `checked_at`, `next_check_date`, `status`) VALUES
(5, 9, 23, 6012, 16, 11, 36, 0, 0, 100000, 0, 22000, 78, '2022-10-06 21:21:53', '2022-10-31', 2),
(6, 10, 21, 697, 22, 28, 17, 0, 0, 50000, 0, 6000, 77, '2022-10-08 09:13:35', '2022-11-01', 2),
(7, 11, 24, 3497, 15, 10, 18, 0, 0, 1000, 0, 10, 78, '2022-10-17 12:39:01', '2023-01-15', 0),
(8, 12, 35, 84, 15, 9, 26, 0, 0, 65000, 0, 11700, 77, '2022-10-20 20:29:39', '2022-04-05', 2),
(9, 13, 61, 8, 20, 22, 26, 0, 0, 640000, 0, 115200, 78, '2022-10-24 03:10:27', '2022-09-01', 1),
(10, 14, 29, 3495, 21, 25, 26, 0, 0, 50000, 0, 7500, 77, '2022-10-24 22:00:10', '2022-10-12', 1),
(11, 9, 23, 6012, 16, 11, 36, 2896, 37512, 62488, 8262, 13738, 1, '2022-10-30 16:36:04', '2022-11-02', 1),
(12, 10, 21, 697, 22, 28, 17, 130, 837, 49163, 102, 5898, 1, '2022-10-30 16:39:34', '2022-11-29', 1),
(13, 12, 35, 84, 15, 9, 26, 953, 1355, 63645, 245, 11455, 1, '2022-10-31 00:23:10', '2023-01-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_collections`
--

CREATE TABLE `loan_collections` (
  `collection_id` int(20) NOT NULL,
  `client_id` int(11) NOT NULL,
  `loan_prof_id` int(11) NOT NULL,
  `feild_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `loan` int(11) NOT NULL,
  `interest` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `expression` varchar(255) DEFAULT NULL,
  `officers_id` int(11) DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 2 COMMENT '1=active, 0=deactive, 2= panding',
  `created_at_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_collections`
--

INSERT INTO `loan_collections` (`collection_id`, `client_id`, `loan_prof_id`, `feild_id`, `center_id`, `period_id`, `book`, `deposit`, `loan`, `interest`, `total`, `expression`, `officers_id`, `status`, `created_at_date`, `created_at_time`) VALUES
(26, 23, 9, 16, 11, 36, 6012, 416, 4168, 918, 5502, '', 1, 1, '2022-10-07 00:00:00', '2022-10-29 14:56:05'),
(27, 23, 9, 16, 11, 36, 6012, 416, 4168, 918, 5502, '', 1, 1, '2022-10-07 00:00:00', '2022-10-29 14:56:18'),
(28, 23, 9, 16, 11, 36, 6012, 416, 4168, 918, 5502, '', 1, 1, '2022-10-07 00:00:00', '2022-10-29 14:56:42'),
(30, 23, 9, 16, 11, 36, 6012, 100, 4168, 918, 5186, '', 1, 1, '2022-10-07 00:00:00', '2022-10-29 14:58:55'),
(31, 23, 9, 16, 11, 36, 6012, 400, 4168, 918, 5486, '', 78, 1, '2022-10-12 00:00:00', '2022-10-29 21:13:20'),
(32, 23, 9, 16, 11, 36, 6012, 400, 4168, 918, 5486, '', 1, 1, '2022-10-14 00:00:00', '2022-10-29 09:19:26'),
(33, 21, 10, 22, 28, 17, 697, 50, 279, 34, 363, '', 1, 1, '2022-10-14 00:00:00', '2022-10-29 15:16:33'),
(34, 23, 9, 16, 11, 36, 6012, 416, 4168, 918, 5502, '', 1, 1, '2022-10-14 00:00:00', '2022-10-29 15:16:51'),
(35, 24, 11, 15, 10, 18, 3497, 0, 1000, 10, 1010, '', 1, 0, '2022-10-17 00:00:00', '2022-10-29 12:40:17'),
(36, 21, 10, 22, 28, 17, 697, 50, 279, 34, 363, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:15:07'),
(37, 23, 9, 16, 11, 36, 6012, 416, 4168, 918, 5502, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:17:21'),
(38, 23, 9, 16, 11, 36, 6012, 416, 4168, 918, 5502, '', 1, 1, '2022-10-23 00:00:00', '2022-10-29 10:51:27'),
(39, 21, 10, 22, 28, 17, 697, 50, 279, 34, 363, '', 1, 1, '2022-10-23 00:00:00', '2022-10-29 10:51:57'),
(40, 35, 12, 15, 9, 26, 84, 953, 1355, 245, 2553, '', 1, 1, '2022-10-27 00:00:00', '2022-10-29 21:45:20'),
(41, 23, 9, 16, 11, 36, 6012, 416, 4168, 918, 5502, '', 1, 2, '2022-10-29 21:00:10', '2022-10-29 21:00:10'),
(42, 21, 10, 22, 28, 17, 697, 50, 279, 34, 363, '', 1, 2, '2022-10-30 10:25:17', '2022-10-30 10:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `loan_profiles`
--

CREATE TABLE `loan_profiles` (
  `loan_profile_id` int(20) NOT NULL,
  `field_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `reg_officer_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `savings` int(11) NOT NULL,
  `total_loan` int(11) NOT NULL,
  `total_intsallment` int(11) NOT NULL,
  `interest` int(11) NOT NULL,
  `total_interest` int(11) NOT NULL,
  `total_loan_w_ints` int(11) NOT NULL,
  `loan_installment` int(11) NOT NULL,
  `interest_installment` int(11) NOT NULL,
  `duration` date NOT NULL,
  `total_deposit` int(11) NOT NULL,
  `total_withdrawal` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `loan_recover` int(11) NOT NULL,
  `loan_remaining` int(11) NOT NULL,
  `interest_recover` int(11) NOT NULL,
  `interest_remaining` int(11) NOT NULL,
  `collection_ids` longtext NOT NULL,
  `withdraw_ids` longtext NOT NULL,
  `nominee_name` varchar(255) NOT NULL,
  `nominee_husband` varchar(255) DEFAULT NULL,
  `nominee_father` varchar(255) DEFAULT NULL,
  `nominee_mother` varchar(255) NOT NULL,
  `nominee_dob` date NOT NULL,
  `nominee_nid` int(50) NOT NULL,
  `nominee_occupation` varchar(50) NOT NULL,
  `nominee_relation` varchar(50) NOT NULL,
  `nominee_gendar` varchar(50) NOT NULL,
  `nominee_img` varchar(100) NOT NULL,
  `nominee_address` longtext NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `closing_fee` int(11) DEFAULT NULL,
  `closing_expression` varchar(255) NOT NULL,
  `closing_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_profiles`
--

INSERT INTO `loan_profiles` (`loan_profile_id`, `field_id`, `center_id`, `period_id`, `reg_officer_id`, `client_id`, `book`, `savings`, `total_loan`, `total_intsallment`, `interest`, `total_interest`, `total_loan_w_ints`, `loan_installment`, `interest_installment`, `duration`, `total_deposit`, `total_withdrawal`, `balance`, `loan_recover`, `loan_remaining`, `interest_recover`, `interest_remaining`, `collection_ids`, `withdraw_ids`, `nominee_name`, `nominee_husband`, `nominee_father`, `nominee_mother`, `nominee_dob`, `nominee_nid`, `nominee_occupation`, `nominee_relation`, `nominee_gendar`, `nominee_img`, `nominee_address`, `status`, `created_at`, `updated_at`, `closing_fee`, `closing_expression`, `closing_at`) VALUES
(9, 16, 11, 36, 1, 23, 6012, 416, 100000, 24, 22, 22000, 122000, 4168, 918, '2024-08-17', 3396, 500, 2896, 37512, 62488, 8262, 13738, ', 27, 28, 30, 31, 31, 32, 34, 37, 38', '6, ', 'সাইদুজ্জামান রাফি', '', 'মোঃ সোলাইমান', 'রেজিয়া বেগম', '2002-11-22', 2147483647, 'চাকুরি', 'মা / ছেলে', 'পুরুষ', 'nominee_633ef29177c0d.jpeg', 'বাড়ির এবং রাস্তাঃ হাজী ইব্রাহীম কলোনি, গ্রামঃ কালামিয়া বাজার, ওয়ার্ড নম্বরঃ 18, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-11 00:00:00', '2022-10-06 00:00:00', NULL, '', NULL),
(10, 22, 28, 17, 1, 21, 697, 50, 50000, 180, 12, 6000, 56000, 279, 34, '2025-06-08', 150, 20, 130, 837, 49163, 102, 5898, ', 33, 36, 39', '7, ', 'জোবেদা খাতুন', 'আবুল কাশেম', '', 'সখিনা বানু', '2022-10-12', 2147483647, 'গৃহিনী', 'মা / মেয়ে', 'মহিলা', 'nominee_6340eadf4f445.jpg', 'বাড়ির এবং রাস্তাঃ At deserunt nesciunt, গ্রামঃ Chittagong, ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ Et et enim quas eum, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, '', NULL),
(11, 15, 10, 18, 78, 24, 3497, 0, 1000, 1, 1, 10, 1010, 1000, 10, '2022-10-26', 0, 0, 100, 1000, 0, 10, 0, ', 35', '', 'নিহা আক্তার', 'Scarlet Witt', 'মোঃ শুক্কুর', 'রেজিয়া বেগম', '2022-10-15', 234235, 'রিক্সা চালক', 'স্বামী / স্ত্রী', 'অন্যান্য', 'nominee_634cf88563b03.jpeg', 'বাড়ির এবং রাস্তাঃ আক্তার সওঃ কলোনি , গ্রামঃ Chittagong, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ ঢাকা।', 0, '2022-10-17 00:00:00', '2022-10-17 00:00:00', 100, '', '2022-10-17'),
(12, 15, 9, 26, 77, 35, 84, 953, 65000, 48, 18, 11700, 76700, 1355, 245, '2007-12-26', 953, 0, 953, 1355, 63645, 245, 11455, ', 40', '', 'Meredith Kline', 'Dorian Mckinney', 'Colin Slater', 'Maite Guzman', '1975-04-12', 66, 'শ্রমিক', 'বাবা / মেয়ে', 'পুরুষ', 'nominee_63515b533cc44.jpeg', 'বাড়ির এবং রাস্তাঃ In vero voluptate corporis vel distinctio Animi mollit dolores sequi qui est aperiam veritatis eve, গ্রামঃ Dolores minus atque amet aute eum recusandae Nulla natus dolore est est quibusdam asperiores sunt, ওয়ার্ড নম্বরঃ Ipsum quia aut eos soluta laborum minus qui corporis officiis, উপজেলাঃ Voluptatem duis sed enim sit sit in laudantium, পোষ্ট অফিসঃ Est reprehenderit consequatur Qui libero autem impedit aut sunt qui earum quis, জেলাঃ Fugit temporibus non sit ipsum, বিভাগঃ বরিশাল।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL, '', NULL),
(13, 20, 22, 26, 78, 61, 8, 100, 640000, 73, 18, 115200, 755200, 8768, 1579, '1979-04-06', 0, 0, 0, 0, 640000, 0, 115200, '', '', 'Caldwell Kirkland', 'Laith Walker', 'Halla Slater', 'Sebastian Tyson', '1999-12-20', 71, 'রিক্সা চালক', 'ভাই / বোন', 'পুরুষ', 'nominee_6355adc37de3c.jpg', 'বাড়ির এবং রাস্তাঃ Culpa quia exercitation accusamus dicta aliquam, গ্রামঃ Aliquam voluptas in quam laborum Do aliquip consequatur non neque quo fugit placeat voluptatum, ওয়ার্ড নম্বরঃ Doloremque velit consectetur reiciendis et et expedita, উপজেলাঃ Quo cillum consequatur excepturi voluptas elit dignissimos dolores cupiditate sapiente vero modi e, পোষ্ট অফিসঃ Similique tempor eveniet dolorem labore incidunt facilis velit et eligendi quibusdam amet reicien, জেলাঃ Sit provident eum ipsum quaerat minim voluptatem fuga, বিভাগঃ খুলনা।', 2, '2022-10-24 00:00:00', '2022-10-24 00:00:00', NULL, '', NULL),
(14, 21, 25, 26, 77, 29, 3495, 200, 50000, 12, 15, 7500, 57500, 4168, 625, '2022-10-28', 0, 0, 0, 0, 50000, 0, 7500, '', '', 'নিহা আক্তার', 'Scarlet Witt', '', 'সখিনা বানু', '0000-00-00', 0, 'ছাত্র', 'স্বামী / স্ত্রী', 'মহিলা', 'nominee_6356b68a96c26.jpg', 'বাড়ির এবং রাস্তাঃ আক্তার সওঃ কলোনি , গ্রামঃ Chittagong, ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ ফরিদপুর, বিভাগঃ চট্টগ্রাম।', 2, '2022-10-24 00:00:00', '2022-10-24 00:00:00', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_savings_withdrawals`
--

CREATE TABLE `loan_savings_withdrawals` (
  `withdraw_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `loan_prof_id` int(11) NOT NULL,
  `feild_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `withdrawal` int(11) NOT NULL,
  `balance_remaining` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `officers_id` int(11) NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 2 COMMENT '	1=active, 0=deactive, 2= panding	',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_savings_withdrawals`
--

INSERT INTO `loan_savings_withdrawals` (`withdraw_id`, `client_id`, `loan_prof_id`, `feild_id`, `center_id`, `period_id`, `book`, `withdrawal`, `balance_remaining`, `expression`, `officers_id`, `status`, `created_at`) VALUES
(6, 23, 9, 16, 11, 36, 6012, 500, 1248, 'nil', 77, 1, '2022-10-14 00:00:00'),
(7, 21, 10, 22, 28, 17, 697, 20, 30, 'test', 77, 1, '2022-10-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `from_officer_id` int(11) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `to_officer_id` int(11) NOT NULL COMMENT '0=all_officer',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(5) NOT NULL DEFAULT 0 COMMENT '0=Unseen, 1=seen'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `from_officer_id`, `sub`, `details`, `to_officer_id`, `created_at`, `status`) VALUES
(13, 78, 'বই নং 3052 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ১১ নং কেন্দ্র ( রেজিয়া বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 3052<br> <bold>নামঃ</bold> রেজিয়া বেগম  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 1000 টাকা<br> <bold>মেয়াদঃ</bold> 30/01/2025 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 30 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 60000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 78000 টাকা', 1, '2022-10-06 20:28:26', 1),
(14, 78, 'বই নং 697 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৮ নং ( বালূড় মাঠ )   <br> <bold>কেন্দ্রঃ</bold> ১৯ নং কেন্দ্র ( লাভলী বেগম )   <br> <bold>ক্ষেত্রঃ</bold> দরিদ্র DPS  <br> <bold>বই নংঃ/<bold> 697<br> <bold>নামঃ</bold> লাভলি আক্তার  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 200 টাকা<br> <bold>মেয়াদঃ</bold> 01/10/2028 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 14400 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 19440 টাকা', 1, '2022-10-06 20:50:32', 1),
(15, 78, 'বই নং 376 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৭ নং কেন্দ্র ( দৈনিক গ্রাহক )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 376<br> <bold>নামঃ</bold> দিলোয়ারা বেগম  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 200 টাকা<br> <bold>মেয়াদঃ</bold> 01/10/2024 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 15 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 21600 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 24840 টাকা', 1, '2022-10-06 21:02:46', 1),
(16, 78, 'বই নং 6012 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ১১ নং কেন্দ্র ( রেজিয়া বেগম )   <br> <bold>ক্ষেত্রঃ</bold> বাৎসরিক DPS  <br> <bold>বই নংঃ/<bold> 6012<br> <bold>নামঃ</bold> রেজিয়া বেগম  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 15000 টাকা<br> <bold>মেয়াদঃ</bold> 22/12/2031 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 50 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 180000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 270000 টাকা', 1, '2022-10-06 21:15:34', 0),
(17, 78, 'বই নং 6012 | ঋণ পত্র নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ১১ নং কেন্দ্র ( রেজিয়া বেগম )   <br> <bold>ক্ষেত্রঃ</bold> বাৎসরিক ঋণ   <br> <bold>বই নংঃ/<bold> 6012<br> <bold>নামঃ</bold> রেজিয়া বেগম  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 416 টাকা<br> <bold>ঋণ প্রদানঃ<bold> 100000 টাকা<br> <bold>মেয়াদঃ</bold> 17/08/2024 তারিখ পর্যন্ত<br> <bold>কিস্তি সংখ্যাঃ <bold> 24 টি<br> <bold>লাভ<bold> 22% <br> <bold>সর্বমোট লাভঃ <bold> 22000 টাকা<br> <bold>সর্বমোট ঋণ (লাভ সহ)ঃ <bold> 122000 টাকা', 1, '2022-10-06 21:21:53', 1),
(18, 77, 'বই নং 697 | ঋণ পত্র নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৮ নং ( বালূড় মাঠ )   <br> <bold>কেন্দ্রঃ</bold> ১৯ নং কেন্দ্র ( লাভলী বেগম )   <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 697<br> <bold>নামঃ</bold> লাভলি আক্তার  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 50 টাকা<br> <bold>ঋণ প্রদানঃ<bold> 50000 টাকা<br> <bold>মেয়াদঃ</bold> 08/06/2025 তারিখ পর্যন্ত<br> <bold>কিস্তি সংখ্যাঃ <bold> 180 টি<br> <bold>লাভ<bold> 12% <br> <bold>সর্বমোট লাভঃ <bold> 6000 টাকা<br> <bold>সর্বমোট ঋণ (লাভ সহ)ঃ <bold> 56000 টাকা', 1, '2022-10-08 09:13:35', 0),
(19, 1, 'Ab expedita ex dolor', 'Ut perferendis beata', 80, '2022-10-08 11:34:07', 1),
(20, 1, 'Maxime voluptas ut d', 'Dolorem eius exercit', 78, '2022-10-08 11:55:07', 1),
(21, 1, 'In ex aut enim quo e', 'Deserunt dolorum ull', 79, '2022-10-08 11:56:09', 1),
(22, 1, 'Aliquam cupiditate a', 'Modi laboriosam ita', 77, '2022-10-08 11:57:21', 1),
(23, 78, 'বই নং 3497 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 3497<br> <bold>নামঃ</bold> তাসলিমা আক্তার   <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 1000 টাকা<br> <bold>মেয়াদঃ</bold> 26/09/2027 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 30 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 60000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 78000 টাকা', 1, '2022-10-08 17:48:55', 0),
(24, 78, 'বই নং 3498 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৮ নং ( বালূড় মাঠ )   <br> <bold>কেন্দ্রঃ</bold> ১৯ নং কেন্দ্র ( লাভলী বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 3498<br> <bold>নামঃ</bold> আমেনা বেগম  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 1000 টাকা<br> <bold>মেয়াদঃ</bold> 28/09/2028 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 72000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 97200 টাকা', 1, '2022-10-08 18:02:12', 0),
(25, 78, 'বই নং 3496 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৪ নং ফিল্ড ( এক কিলোমিটার )  <br> <bold>কেন্দ্রঃ</bold> ১০ নং কেন্দ্র ( ফরিদা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 3496<br> <bold>নামঃ</bold> জান্নতুল ফেরদৌস  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 1000 টাকা<br> <bold>মেয়াদঃ</bold> 26/09/2028 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 72000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 97200 টাকা', 1, '2022-10-08 18:15:08', 0),
(26, 78, 'বই নং 375 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৭ নং কেন্দ্র ( দৈনিক গ্রাহক )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 375<br> <bold>নামঃ</bold> মোঃ তোফাজ্জল  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 200 টাকা<br> <bold>মেয়াদঃ</bold> 15/09/2024 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 15 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 146000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 167900 টাকা', 1, '2022-10-08 18:27:38', 0),
(27, 78, 'বই নং 696 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৪ নং ফিল্ড ( এক কিলোমিটার )  <br> <bold>কেন্দ্রঃ</bold> ০৯ নং কেন্দ্র ( শাহারা বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দরিদ্র DPS  <br> <bold>বই নংঃ/<bold> 696<br> <bold>নামঃ</bold> আকলিমা বেগম  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 300 টাকা<br> <bold>মেয়াদঃ</bold> 13/09/2022 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 21600 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 29160 টাকা', 1, '2022-10-08 18:49:32', 0),
(28, 78, 'বই নং 3495 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৭ নং ফিল্ড ( আগ্রাবাদ )  <br> <bold>কেন্দ্রঃ</bold> ২৮ নং কেন্দ্র ( মোঃ সুমন )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 3495<br> <bold>নামঃ</bold> সানজিদা সুলতানা  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 1000 টাকা<br> <bold>মেয়াদঃ</bold> 17/09/2028 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 72000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 97200 টাকা', 1, '2022-10-08 18:58:21', 0),
(29, 78, 'বই নং 3494 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ১১ নং কেন্দ্র ( রেজিয়া বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 3494<br> <bold>নামঃ</bold> বিলকিস বেগম  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 500 টাকা<br> <bold>মেয়াদঃ</bold> 14/09/2028 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 36000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 48600 টাকা', 1, '2022-10-08 19:05:36', 0),
(30, 78, 'বই নং 3493 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 3493<br> <bold>নামঃ</bold> আলেয়া বেগম  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 1000 টাকা<br> <bold>মেয়াদঃ</bold> 28/09/2028 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 72000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 97200 টাকা', 1, '2022-10-08 19:12:45', 0),
(31, 78, 'বই নং 3492 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৮ নং ( বালূড় মাঠ )   <br> <bold>কেন্দ্রঃ</bold> ১৯ নং কেন্দ্র ( লাভলী বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 3492<br> <bold>নামঃ</bold> বিলকিস আক্তার  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 500 টাকা<br> <bold>মেয়াদঃ</bold> 15/09/2028 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 36000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 48600 টাকা', 1, '2022-10-08 19:20:10', 0),
(32, 78, 'বই নং 41 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ২৪ নং কেন্দ্র ( নাছিমা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 41<br> <bold>নামঃ</bold> Kane Rojas  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 10 টাকা<br> <bold>মেয়াদঃ</bold> 22/08/2007 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 50 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 10 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 15 টাকা', 1, '2022-10-12 22:05:43', 0),
(33, 1, 'বই নং 41 | সঞ্চয় ক্লোজ', '<bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ২৪ নং কেন্দ্র ( নাছিমা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 41<br> <bold>নামঃ</bold> Kane Rojas  <br> <bold>আমানত ছিলোঃ</bold> 10 টাকা<br> <bold>লাভ দিয়েছেঃ</bold> 5 টাকা <br> <bold>সর্বমোটঃ<bold> 15 টাকা', 1, '2022-10-12 22:07:16', 1),
(34, 77, 'বই নং 93 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৭ নং ফিল্ড ( আগ্রাবাদ )  <br> <bold>কেন্দ্রঃ</bold> ২৮ নং কেন্দ্র ( মোঃ সুমন )  <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 93<br> <bold>নামঃ</bold> Tasha Craig  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 500 টাকা<br> <bold>মেয়াদঃ</bold> 10/02/2010 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 50 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 500 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 750 টাকা', 1, '2022-10-12 22:13:46', 0),
(35, 1, 'বই নং 93 | সঞ্চয় ক্লোজ', '<bold>ফিল্ডঃ</bold> ০৭ নং ফিল্ড ( আগ্রাবাদ )  <br> <bold>কেন্দ্রঃ</bold> ২৮ নং কেন্দ্র ( মোঃ সুমন )  <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 93<br> <bold>নামঃ</bold> Tasha Craig  <br> <bold>আমানত ছিলোঃ</bold> 500 টাকা<br> <bold>লাভ দিয়েছেঃ</bold> 250 টাকা <br> <bold>সর্বমোটঃ<bold> 750 টাকা', 1, '2022-10-12 22:14:39', 1),
(36, 77, 'বই নং 84 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> বাৎসরিক DPS  <br> <bold>বই নংঃ/<bold> 84<br> <bold>নামঃ</bold> Shannon Lowe  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 4000 টাকা<br> <bold>মেয়াদঃ</bold> 29/10/2017 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 192000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 259200 টাকা', 1, '2022-10-16 10:45:32', 0),
(37, 78, 'বই নং 26 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দরিদ্র DPS  <br> <bold>বই নংঃ/<bold> 26<br> <bold>নামঃ</bold> Adrian Soto  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 710 টাকা<br> <bold>মেয়াদঃ</bold> 20/04/1970 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 97 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 39050 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 76929 টাকা', 1, '2022-10-16 10:47:26', 0),
(38, 78, 'বই নং 50 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 50<br> <bold>নামঃ</bold> Abdul Lambert  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 330 টাকা<br> <bold>মেয়াদঃ</bold> 14/09/2001 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 11 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 24420 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 27106 টাকা', 1, '2022-10-16 10:52:37', 0),
(39, 77, 'বই নং 92 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 92<br> <bold>নামঃ</bold> Mona Gibbs  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 50 টাকা<br> <bold>মেয়াদঃ</bold> 02/12/2017 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 18 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 36500 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 43070 টাকা', 1, '2022-10-16 10:56:21', 0),
(40, 77, 'বই নং 88 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 88<br> <bold>নামঃ</bold> Casey Francis  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 610 টাকা<br> <bold>মেয়াদঃ</bold> 29/02/1984 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 36600 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 49410 টাকা', 1, '2022-10-16 10:59:37', 0),
(41, 78, 'বই নং 53 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দরিদ্র DPS  <br> <bold>বই নংঃ/<bold> 53<br> <bold>নামঃ</bold> Ariana Olsen  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 800 টাকা<br> <bold>মেয়াদঃ</bold> 02/02/2000 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 30 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 39200 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 50960 টাকা', 1, '2022-10-16 11:00:47', 0),
(42, 77, 'বই নং 63 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 63<br> <bold>নামঃ</bold> Buckminster Johnson  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 720 টাকা<br> <bold>মেয়াদঃ</bold> 05/03/2002 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 30 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 72000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 93600 টাকা', 1, '2022-10-16 11:03:26', 0),
(43, 77, 'বই নং 28 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দরিদ্র DPS  <br> <bold>বই নংঃ/<bold> 28<br> <bold>নামঃ</bold> Hanna Chapman  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 480 টাকা<br> <bold>মেয়াদঃ</bold> 19/09/2016 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 20 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 38880 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 46656 টাকা', 1, '2022-10-16 11:04:57', 0),
(44, 78, 'বই নং 3497 | ঋণ পত্র নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> শনিবার  <br> <bold>বই নংঃ/<bold> 3497<br> <bold>নামঃ</bold> তাসলিমা আক্তার   <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 0 টাকা<br> <bold>ঋণ প্রদানঃ<bold> 1000 টাকা<br> <bold>মেয়াদঃ</bold> 26/10/2022 তারিখ পর্যন্ত<br> <bold>কিস্তি সংখ্যাঃ <bold> 1 টি<br> <bold>লাভ<bold> 1% <br> <bold>সর্বমোট লাভঃ <bold> 10 টাকা<br> <bold>সর্বমোট ঋণ (লাভ সহ)ঃ <bold> 1010 টাকা', 1, '2022-10-17 12:39:01', 0),
(45, 1, 'বই নং 3497 | ঋণ ক্লোজ', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> শনিবার  <br> <bold>বই নংঃ/<bold> 3497<br> <bold>নামঃ</bold> তাসলিমা আক্তার   <br> <bold>সঞ্চয় ছিলোঃ</bold> 0 টাকা<br> <bold>ঋণ দিয়েছেঃ</bold> 1000 টাকা <br> <bold>ঋণ আদায়ঃ <bold> 1000 টাকা <br> <bold>ঋণ বাকি <bold> 0 টাকা<bold>সর্বমোট লাভঃ<bold> 10 টাকা <br> <bold>লাভ আদায়ঃ <bold> 10 টাকা <br> <bold>লাভ বাকি <bold> 0 টাকা', 1, '2022-10-17 12:42:14', 0),
(46, 78, 'বই নং 376 | নতুন সদস্য নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৭ নং কেন্দ্র ( দৈনিক গ্রাহক )  <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 376<br> <bold>নামঃ</bold> দিলোয়ারা বেগম  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 82 টাকা<br> <bold>মেয়াদঃ</bold> 12/01/2014 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 15 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 10660 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 12259 টাকা', 1, '2022-10-18 12:52:49', 1),
(47, 77, 'বই নং 58 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 58<br> <bold>নামঃ</bold> Freya Newman  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 100 টাকা<br> <bold>মেয়াদঃ</bold> 26/03/2013 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 32 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 2600 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 3432 টাকা', 1, '2022-10-19 23:28:03', 0),
(48, 78, 'বই নং 13 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 13<br> <bold>নামঃ</bold> Murphy Blake  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 150 টাকা<br> <bold>মেয়াদঃ</bold> 29/05/1985 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 26 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 7350 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 9261 টাকা', 1, '2022-10-19 23:29:02', 0),
(49, 78, 'বই নং 7 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 7<br> <bold>নামঃ</bold> Brielle Wall  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 200 টাকা<br> <bold>মেয়াদঃ</bold> 09/03/1971 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 29 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 17800 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 22962 টাকা', 1, '2022-10-19 23:29:46', 0),
(50, 77, 'বই নং 14 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 14<br> <bold>নামঃ</bold> Odysseus Vazquez  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 100 টাকা<br> <bold>মেয়াদঃ</bold> 02/05/1972 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 17 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 9300 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 10881 টাকা', 1, '2022-10-19 23:30:10', 0),
(51, 78, 'বই নং 96 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 96<br> <bold>নামঃ</bold> Warren Christian  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 250 টাকা<br> <bold>মেয়াদঃ</bold> 08/04/1983 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 14 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 17750 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 20235 টাকা', 1, '2022-10-19 23:34:03', 0),
(52, 78, 'বই নং 21 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 21<br> <bold>নামঃ</bold> Laura Beard  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 50 টাকা<br> <bold>মেয়াদঃ</bold> 24/12/1986 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 78 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 1050 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 1869 টাকা', 1, '2022-10-19 23:34:49', 0),
(53, 77, 'বই নং 282 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 282<br> <bold>নামঃ</bold> Charity Glenn  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 300 টাকা<br> <bold>মেয়াদঃ</bold> 01/07/1985 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 41 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 4500 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 6345 টাকা', 1, '2022-10-19 23:35:45', 0),
(54, 78, 'বই নং 25 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 25<br> <bold>নামঃ</bold> Jane Garner  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 100 টাকা<br> <bold>মেয়াদঃ</bold> 29/04/1970 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 21 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 3700 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 4477 টাকা', 1, '2022-10-19 23:52:29', 0),
(55, 77, 'বই নং 33 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 33<br> <bold>নামঃ</bold> Colby Larson  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 100 টাকা<br> <bold>মেয়াদঃ</bold> 22/06/1980 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 67 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 9600 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 16032 টাকা', 1, '2022-10-19 23:53:07', 0),
(56, 77, 'বই নং 330 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 330<br> <bold>নামঃ</bold> Signe Matthews  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 100 টাকা<br> <bold>মেয়াদঃ</bold> 10/10/1970 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 21 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 1400 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 1694 টাকা', 1, '2022-10-20 20:14:05', 0),
(57, 78, 'বই নং 6 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 6<br> <bold>নামঃ</bold> Lavinia Mcfadden  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 65 টাকা<br> <bold>মেয়াদঃ</bold> 28/03/1991 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 59 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 1625 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 2584 টাকা', 1, '2022-10-20 20:18:46', 0),
(58, 78, 'বই নং 26 | নতুন সদস্য নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দরিদ্র DPS  <br> <bold>বই নংঃ/<bold> 26<br> <bold>নামঃ</bold> Adrian Soto  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 100 টাকা<br> <bold>মেয়াদঃ</bold> 20/10/2022 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 12 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 5000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 5600 টাকা', 1, '2022-10-20 20:27:54', 0),
(59, 77, 'বই নং 84 | ঋণ পত্র নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক ঋণ  <br> <bold>বই নংঃ/<bold> 84<br> <bold>নামঃ</bold> Shannon Lowe  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 953 টাকা<br> <bold>ঋণ প্রদানঃ<bold> 65000 টাকা<br> <bold>মেয়াদঃ</bold> 26/12/2007 তারিখ পর্যন্ত<br> <bold>কিস্তি সংখ্যাঃ <bold> 48 টি<br> <bold>লাভ<bold> 18% <br> <bold>সর্বমোট লাভঃ <bold> 11700 টাকা<br> <bold>সর্বমোট ঋণ (লাভ সহ)ঃ <bold> 76700 টাকা', 1, '2022-10-20 20:29:39', 0),
(60, 78, 'বই নং 81 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 81<br> <bold>নামঃ</bold> Blaine Bell  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 80 টাকা<br> <bold>মেয়াদঃ</bold> 20/01/2012 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 7520 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 10152 টাকা', 1, '2022-10-20 22:28:12', 0),
(61, 78, 'বই নং 10 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> দরিদ্র DPS  <br> <bold>বই নংঃ/<bold> 10<br> <bold>নামঃ</bold> Piper Kelly  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 90 টাকা<br> <bold>মেয়াদঃ</bold> 30/08/1982 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 26 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 7740 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 9752 টাকা', 1, '2022-10-20 22:28:42', 0),
(62, 77, 'বই নং 76 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 76<br> <bold>নামঃ</bold> Joy Boyer  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 100 টাকা<br> <bold>মেয়াদঃ</bold> 09/04/1997 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 18 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 7600 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 8968 টাকা', 1, '2022-10-21 15:20:37', 0),
(63, 77, 'বই নং 24 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>বই নংঃ/<bold> 24<br> <bold>নামঃ</bold> Barclay Duke  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 67 টাকা<br> <bold>মেয়াদঃ</bold> 24/04/2002 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 18 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 5896 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 6957 টাকা', 1, '2022-10-21 15:21:11', 0),
(64, 77, 'বই নং 91 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 91<br> <bold>নামঃ</bold> Justine Gross  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 89 টাকা<br> <bold>মেয়াদঃ</bold> 12/05/2020 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 5 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 5785 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 6074 টাকা', 1, '2022-10-21 15:21:47', 0),
(65, 77, 'বই নং 47 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> বাৎসরিক DPS  <br> <bold>বই নংঃ/<bold> 47<br> <bold>নামঃ</bold> Nissim Conrad  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 44 টাকা<br> <bold>মেয়াদঃ</bold> 16/05/1975 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 2 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 2288 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 2334 টাকা', 1, '2022-10-21 15:22:17', 0),
(66, 77, 'বই নং 138 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৮ নং ( বালূড় মাঠ )   <br> <bold>কেন্দ্রঃ</bold> ১৩ নং কেন্দ্র ( জান্নাতি বেগম )   <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 138<br> <bold>নামঃ</bold> Petra David  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 15 টাকা<br> <bold>মেয়াদঃ</bold> 01/01/1973 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 6 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 555 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 588 টাকা', 1, '2022-10-21 15:22:50', 0),
(67, 77, 'বই নং 8 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৬ নং ফিল্ড ( সি এম বি )  <br> <bold>কেন্দ্রঃ</bold> ০৮ নং কেন্দ্র ( চিন্তাবালা ধর )   <br> <bold>ক্ষেত্রঃ</bold> UK DPS  <br> <bold>বই নংঃ/<bold> 8<br> <bold>নামঃ</bold> Christopher Cole  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 400 টাকা<br> <bold>মেয়াদঃ</bold> 29/11/2006 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 35 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 24000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 32400 টাকা', 1, '2022-10-23 10:54:05', 0),
(68, 78, 'বই নং 8 | ঋণ পত্র নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৬ নং ফিল্ড ( সি এম বি )  <br> <bold>কেন্দ্রঃ</bold> ০৮ নং কেন্দ্র ( চিন্তাবালা ধর )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক ঋণ  <br> <bold>বই নংঃ/<bold> 8<br> <bold>নামঃ</bold> Christopher Cole  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 100 টাকা<br> <bold>ঋণ প্রদানঃ<bold> 640000 টাকা<br> <bold>মেয়াদঃ</bold> 06/04/1979 তারিখ পর্যন্ত<br> <bold>কিস্তি সংখ্যাঃ <bold> 73 টি<br> <bold>লাভ<bold> 18% <br> <bold>সর্বমোট লাভঃ <bold> 115200 টাকা<br> <bold>সর্বমোট ঋণ (লাভ সহ)ঃ <bold> 755200 টাকা', 1, '2022-10-24 03:10:27', 0),
(69, 77, 'বই নং 3495 | ঋণ পত্র নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৭ নং ফিল্ড ( আগ্রাবাদ )  <br> <bold>কেন্দ্রঃ</bold> ২৮ নং কেন্দ্র ( মোঃ সুমন )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক ঋণ  <br> <bold>বই নংঃ/<bold> 3495<br> <bold>নামঃ</bold> সানজিদা সুলতানা  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 200 টাকা<br> <bold>ঋণ প্রদানঃ<bold> 50000 টাকা<br> <bold>মেয়াদঃ</bold> 28/10/2022 তারিখ পর্যন্ত<br> <bold>কিস্তি সংখ্যাঃ <bold> 12 টি<br> <bold>লাভ<bold> 15% <br> <bold>সর্বমোট লাভঃ <bold> 7500 টাকা<br> <bold>সর্বমোট ঋণ (লাভ সহ)ঃ <bold> 57500 টাকা', 1, '2022-10-24 22:00:10', 0),
(70, 77, 'বই নং 470 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৩ নং ফিল্ড ( নয়া মসজিদ )  <br> <bold>কেন্দ্রঃ</bold> ১৫ নং কেন্দ্র ( নুরজাহান বেগম )  <br> <bold>ক্ষেত্রঃ</bold> দৈনিক   <br> <bold>বই নংঃ/<bold> 470<br> <bold>নামঃ</bold> Kellie Edwards  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 420 টাকা<br> <bold>মেয়াদঃ</bold> 02/11/1987 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 18 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 24780 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 29240 টাকা', 1, '2022-10-24 22:10:10', 0),
(71, 78, 'বই নং 60 | সঞ্চয় নিবন্ধন', '<bold>ফিল্ডঃ</bold> ০৪ নং ফিল্ড ( এক কিলোমিটার )  <br> <bold>কেন্দ্রঃ</bold> ১০ নং কেন্দ্র ( ফরিদা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> বাৎসরিক DPS  <br> <bold>বই নংঃ/<bold> 60<br> <bold>নামঃ</bold> Jael Williamson  <br> <bold>নির্ধারিত সঞ্চয়ঃ </bold> 40 টাকা<br> <bold>মেয়াদঃ</bold> 20/07/1971 তারিখ পর্যন্ত<br> <bold>লাভ<bold> 30 টাকা<br> <bold>সর্বমোট (লাভ ছাড়া)ঃ<bold> 12000 টাকা<br> <bold>সর্বমোট (লাভ সহ)ঃ<bold> 15600 টাকা', 1, '2022-10-24 22:11:42', 0),
(72, 1, 'Impedit lorem eaque est sint impedit eiusmod quam consectetur est voluptate cupidatat nulla sit', 'Accusantium sunt magnam ea porro ea soluta exercitation', 78, '2022-10-29 21:29:22', 0),
(78, 1, 'বই নং 3493 | মাসিক DPS বই চেক', '<bold>নামঃ</bold> আলেয়া বেগম  <br> <bold>বই নংঃ<bold> 3493<br> <bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>সর্বশেষ চেক ছিলোঃ</bold> 08-10-2022 <br> <bold>পরবর্তি চেকঃ</bold> 02-11-2022<br> 02-11-2022 তারিখের মধ্যে বইটি চেকের জন্য অফিসে আনার অনুরোধ করা হলো। <br>', 0, '2022-10-31 10:56:07', 0),
(79, 1, 'বই নং 3497 | মাসিক DPS বই চেক', '<bold>নামঃ</bold> তাসলিমা আক্তার   <br> <bold>বই নংঃ<bold> 3497<br> <bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>সর্বশেষ চেক ছিলোঃ</bold> 08-10-2022 <br> <bold>পরবর্তি চেকঃ</bold> 06-11-2022<br> 06-11-2022 তারিখের মধ্যে বইটি চেকের জন্য অফিসে আনার অনুরোধ করা হলো। <br>', 0, '2022-10-31 10:56:07', 0),
(80, 1, 'বই নং 6012 | বাৎসরিক ঋণ  বই চেক', '<bold>নামঃ</bold> রেজিয়া বেগম  <br> <bold>বই নংঃ<bold> 6012<br> <bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ১১ নং কেন্দ্র ( রেজিয়া বেগম )   <br> <bold>ক্ষেত্রঃ</bold> বাৎসরিক ঋণ   <br> <bold>সর্বশেষ চেক ছিলোঃ</bold> 30-10-2022 <br> <bold>পরবর্তি চেকঃ</bold> 02-11-2022<br> 02-11-2022 তারিখের মধ্যে বইটি চেকের জন্য অফিসে আনার অনুরোধ করা হলো। <br>', 0, '2022-10-31 10:56:07', 0),
(81, 1, 'বই নং 3493 | মাসিক DPS বই চেক', '<bold>নামঃ</bold> আলেয়া বেগম  <br> <bold>বই নংঃ<bold> 3493<br> <bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>সর্বশেষ চেক ছিলোঃ</bold> 08-10-2022 <br> <bold>পরবর্তি চেকঃ</bold> 02-11-2022<br> 02-11-2022 তারিখের মধ্যে বইটি চেকের জন্য অফিসে আনার অনুরোধ করা হলো। <br>', 0, '2022-10-31 10:57:23', 0),
(82, 1, 'বই নং 3497 | মাসিক DPS বই চেক', '<bold>নামঃ</bold> তাসলিমা আক্তার   <br> <bold>বই নংঃ<bold> 3497<br> <bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>সর্বশেষ চেক ছিলোঃ</bold> 08-10-2022 <br> <bold>পরবর্তি চেকঃ</bold> 06-11-2022<br> 06-11-2022 তারিখের মধ্যে বইটি চেকের জন্য অফিসে আনার অনুরোধ করা হলো। <br>', 0, '2022-10-31 10:57:23', 0),
(83, 1, 'বই নং 6012 | বাৎসরিক ঋণ  বই চেক', '<bold>নামঃ</bold> রেজিয়া বেগম  <br> <bold>বই নংঃ<bold> 6012<br> <bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ১১ নং কেন্দ্র ( রেজিয়া বেগম )   <br> <bold>ক্ষেত্রঃ</bold> বাৎসরিক ঋণ   <br> <bold>সর্বশেষ চেক ছিলোঃ</bold> 30-10-2022 <br> <bold>পরবর্তি চেকঃ</bold> 02-11-2022<br> 02-11-2022 তারিখের মধ্যে বইটি চেকের জন্য অফিসে আনার অনুরোধ করা হলো। <br>', 0, '2022-10-31 10:57:23', 0),
(84, 1, 'বই নং 3493 | মাসিক DPS বই চেক', '<bold>নামঃ</bold> আলেয়া বেগম  <br> <bold>বই নংঃ<bold> 3493<br> <bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২১ নং কেন্দ্র ( মমতাজ বেগম )  <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>সর্বশেষ চেক ছিলোঃ</bold> 08-10-2022 <br> <bold>পরবর্তি চেকঃ</bold> 02-11-2022<br> 02-11-2022 তারিখের মধ্যে বইটি চেকের জন্য অফিসে আনার অনুরোধ করা হলো। <br>', 0, '2022-10-31 10:57:38', 0),
(85, 1, 'বই নং 3497 | মাসিক DPS বই চেক', '<bold>নামঃ</bold> তাসলিমা আক্তার   <br> <bold>বই নংঃ<bold> 3497<br> <bold>ফিল্ডঃ</bold> ০১ নং ফিল্ড ( কালামিয়া বাজার )  <br> <bold>কেন্দ্রঃ</bold> ২৫ নং কেন্দ্র ( আমেনা বেগম )   <br> <bold>ক্ষেত্রঃ</bold> মাসিক DPS  <br> <bold>সর্বশেষ চেক ছিলোঃ</bold> 08-10-2022 <br> <bold>পরবর্তি চেকঃ</bold> 06-11-2022<br> 06-11-2022 তারিখের মধ্যে বইটি চেকের জন্য অফিসে আনার অনুরোধ করা হলো। <br>', 0, '2022-10-31 10:57:38', 0),
(86, 1, 'বই নং 6012 | বাৎসরিক ঋণ  বই চেক', '<bold>নামঃ</bold> রেজিয়া বেগম  <br> <bold>বই নংঃ<bold> 6012<br> <bold>ফিল্ডঃ</bold> ০২ নং ফিল্ড ( সৈয়দ শাহ রোড )  <br> <bold>কেন্দ্রঃ</bold> ১১ নং কেন্দ্র ( রেজিয়া বেগম )   <br> <bold>ক্ষেত্রঃ</bold> বাৎসরিক ঋণ   <br> <bold>সর্বশেষ চেক ছিলোঃ</bold> 30-10-2022 <br> <bold>পরবর্তি চেকঃ</bold> 02-11-2022<br> 02-11-2022 তারিখের মধ্যে বইটি চেকের জন্য অফিসে আনার অনুরোধ করা হলো। <br>', 0, '2022-10-31 10:57:38', 0);

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `period_id` int(11) NOT NULL,
  `period_name` varchar(100) NOT NULL,
  `period` int(11) NOT NULL COMMENT 'in days',
  `period_type` varchar(10) NOT NULL COMMENT '1=savings, 2=loan',
  `period_details` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(5) NOT NULL DEFAULT 1 COMMENT '0=deactive, 1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`period_id`, `period_name`, `period`, `period_type`, `period_details`, `created_at`, `status`) VALUES
(17, 'দৈনিক ', 1, '1,2', 'শুধুমাত্র দৈনিক কালেকশন', '2022-10-06 00:00:00', 1),
(18, 'শনিবার', 7, '2', '', '2022-10-06 00:00:00', 1),
(19, 'রবিবার', 7, '2', '', '2022-10-06 00:00:00', 1),
(20, 'সোমবার', 7, '2', '', '2022-10-06 00:00:00', 1),
(21, 'মঙ্গলবার', 7, '2', '', '2022-10-06 00:00:00', 1),
(22, 'বুধবার', 7, '2', '', '2022-10-06 00:00:00', 1),
(23, 'বৃহস্পতিবার', 7, '2', '', '2022-10-06 00:00:00', 1),
(24, 'UK DPS', 7, '1', '', '2022-10-06 00:00:00', 1),
(25, 'মাসিক DPS', 30, '1', '', '2022-10-06 00:00:00', 1),
(26, 'মাসিক ঋণ', 30, '2', '', '2022-10-06 00:00:00', 1),
(27, 'দরিদ্র DPS', 30, '1', '', '2022-10-06 00:00:00', 1),
(28, 'শনিবার দরিদ্র ঋণ', 7, '2', '', '2022-10-06 00:00:00', 1),
(29, 'রবিবার দরিদ্র ঋণ', 7, '2', '', '2022-10-06 00:00:00', 1),
(30, 'সোমবার দরিদ্র ঋণ', 7, '2', '', '2022-10-06 00:00:00', 1),
(31, 'মঙ্গলবার দরিদ্র ঋণ', 7, '2', '', '2022-10-06 00:00:00', 1),
(32, 'বুধবার দরিদ্র ঋণ', 7, '2', '', '2022-10-06 00:00:00', 1),
(33, 'বৃহস্পতিবার দরিদ্র ঋণ', 7, '2', '', '2022-10-06 00:00:00', 1),
(34, 'দরিদ্র মাসিক ঋণ ', 30, '2', '', '2022-10-06 00:00:00', 1),
(35, 'বাৎসরিক DPS', 365, '1', '', '2022-10-06 00:00:00', 1),
(36, 'বাৎসরিক ঋণ ', 365, '2', '', '2022-10-06 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `savings_acc_checks`
--

CREATE TABLE `savings_acc_checks` (
  `acc_check_id` int(11) NOT NULL,
  `saving_profiles_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `balance` int(11) DEFAULT 0,
  `checked_officer_id` int(11) NOT NULL,
  `checked_at` datetime NOT NULL DEFAULT current_timestamp(),
  `next_check_date` date DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 1 COMMENT '0=deactive, 1=active, 2=checked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `savings_acc_checks`
--

INSERT INTO `savings_acc_checks` (`acc_check_id`, `saving_profiles_id`, `client_id`, `book`, `field_id`, `center_id`, `period_id`, `balance`, `checked_officer_id`, `checked_at`, `next_check_date`, `status`) VALUES
(14, 26, 20, 3052, 16, 11, 25, 0, 78, '2022-10-06 20:28:26', '2022-10-31', 2),
(15, 27, 21, 697, 22, 28, 27, 0, 78, '2022-10-06 20:50:32', '2022-11-02', 2),
(16, 28, 22, 376, 15, 32, 17, 0, 78, '2022-10-06 21:02:46', '2022-11-05', 2),
(17, 29, 23, 6012, 16, 11, 35, 0, 78, '2022-10-06 21:15:34', '2022-11-03', 2),
(18, 30, 24, 3497, 15, 10, 25, 0, 78, '2022-10-08 17:48:55', '2022-11-06', 1),
(19, 31, 25, 3498, 22, 28, 25, 0, 78, '2022-10-08 18:02:12', '2022-10-30', 2),
(20, 32, 26, 3496, 18, 15, 25, 0, 78, '2022-10-08 18:15:08', '2022-10-21', 2),
(21, 33, 27, 375, 15, 32, 17, 0, 78, '2022-10-08 18:27:38', '2022-10-17', 1),
(22, 34, 28, 696, 18, 16, 27, 0, 78, '2022-10-08 18:49:32', '2022-10-02', 1),
(23, 35, 29, 3495, 21, 25, 25, 0, 78, '2022-10-08 18:58:21', '2022-10-01', 1),
(24, 36, 30, 3494, 16, 11, 25, 0, 78, '2022-10-08 19:05:36', '2022-11-09', 1),
(25, 37, 31, 3493, 15, 9, 25, 0, 78, '2022-10-08 19:12:45', '2022-11-02', 1),
(26, 38, 32, 3492, 22, 28, 25, 0, 78, '2022-10-08 19:20:10', NULL, 1),
(27, 39, 33, 41, 16, 12, 17, 0, 78, '2022-10-12 22:05:43', NULL, 0),
(28, 40, 34, 93, 21, 25, 24, 0, 77, '2022-10-12 22:13:46', NULL, 0),
(29, 41, 35, 84, 15, 9, 35, 0, 77, '2022-10-16 10:45:32', NULL, 1),
(30, 42, 36, 26, 15, 9, 27, 0, 78, '2022-10-16 10:47:26', NULL, 1),
(31, 43, 37, 50, 15, 9, 24, 0, 78, '2022-10-16 10:52:37', NULL, 1),
(32, 44, 38, 92, 15, 9, 17, 0, 77, '2022-10-16 10:56:21', NULL, 1),
(33, 45, 39, 88, 15, 9, 25, 0, 77, '2022-10-16 10:59:37', NULL, 1),
(34, 46, 40, 53, 15, 9, 27, 0, 78, '2022-10-16 11:00:47', NULL, 1),
(35, 47, 41, 63, 15, 9, 24, 0, 77, '2022-10-16 11:03:26', NULL, 1),
(36, 48, 42, 28, 15, 9, 27, 0, 77, '2022-10-16 11:04:57', NULL, 1),
(37, 49, 22, 376, 15, 32, 24, 0, 78, '2022-10-18 12:52:49', '2023-01-16', 1),
(38, 50, 43, 58, 15, 9, 17, 0, 77, '2022-10-19 23:28:03', NULL, 1),
(39, 51, 44, 13, 15, 9, 17, 0, 78, '2022-10-19 23:29:02', NULL, 1),
(40, 52, 45, 7, 15, 9, 17, 0, 78, '2022-10-19 23:29:46', NULL, 1),
(41, 53, 46, 14, 15, 9, 24, 0, 77, '2022-10-19 23:30:10', NULL, 1),
(42, 54, 47, 96, 15, 9, 17, 0, 78, '2022-10-19 23:34:03', NULL, 1),
(43, 55, 48, 21, 15, 9, 25, 0, 78, '2022-10-19 23:34:49', NULL, 1),
(44, 56, 49, 282, 15, 9, 24, 0, 77, '2022-10-19 23:35:45', NULL, 1),
(45, 57, 50, 25, 15, 9, 17, 0, 78, '2022-10-19 23:52:29', NULL, 1),
(46, 58, 51, 33, 15, 9, 17, 0, 77, '2022-10-19 23:53:07', NULL, 1),
(47, 59, 52, 330, 15, 9, 25, 0, 77, '2022-10-20 20:14:05', '2023-01-18', 1),
(48, 60, 53, 6, 15, 9, 17, 0, 78, '2022-10-20 20:18:46', '2022-11-19', 1),
(49, 61, 36, 26, 15, 9, 27, 0, 78, '2022-10-20 20:27:54', '2022-11-19', 1),
(50, 62, 54, 81, 15, 10, 25, 0, 78, '2022-10-20 22:28:12', '2023-01-18', 1),
(51, 63, 55, 10, 15, 10, 27, 0, 78, '2022-10-20 22:28:42', '2022-11-19', 1),
(52, 64, 56, 76, 15, 10, 24, 0, 77, '2022-10-21 15:20:36', '2022-11-20', 1),
(53, 65, 57, 24, 15, 10, 25, 0, 77, '2022-10-21 15:21:11', '2023-01-19', 1),
(54, 66, 58, 91, 15, 10, 24, 0, 77, '2022-10-21 15:21:47', '2022-11-20', 1),
(55, 67, 59, 47, 15, 10, 35, 0, 77, '2022-10-21 15:22:17', '2022-11-20', 1),
(56, 68, 60, 138, 22, 26, 17, 0, 77, '2022-10-21 15:22:50', '2022-11-20', 1),
(57, 69, 61, 8, 20, 22, 24, 0, 77, '2022-10-23 10:54:05', '2022-11-22', 1),
(58, 70, 62, 470, 17, 13, 17, 0, 77, '2022-10-24 22:10:10', '2022-11-23', 1),
(59, 71, 63, 60, 18, 15, 35, 0, 78, '2022-10-24 22:11:42', '2022-11-23', 1),
(62, 31, 25, 3498, 22, 28, 25, 1000, 1, '2022-10-30 15:59:29', '2023-01-28', 1),
(63, 26, 20, 3052, 16, 11, 25, 5300, 1, '2022-10-30 16:12:59', '2023-01-28', 1),
(64, 29, 23, 6012, 16, 11, 35, 43000, 1, '2022-10-30 16:13:02', '2022-11-29', 1),
(65, 27, 21, 697, 22, 28, 27, 500, 1, '2022-10-30 16:14:16', '2022-11-29', 1),
(66, 28, 22, 376, 15, 32, 17, 900, 1, '2022-10-30 16:23:42', '2022-11-29', 1),
(67, 32, 26, 3496, 18, 15, 25, 2000, 1, '2022-10-31 00:23:56', '2023-01-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saving_collections`
--

CREATE TABLE `saving_collections` (
  `collection_id` int(20) NOT NULL,
  `client_id` int(11) NOT NULL,
  `savings_prof_id` int(11) NOT NULL,
  `feild_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `expression` varchar(255) DEFAULT NULL,
  `officers_id` int(11) NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 2 COMMENT '1=active, 0=deactive, 2= panding',
  `created_at_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saving_collections`
--

INSERT INTO `saving_collections` (`collection_id`, `client_id`, `savings_prof_id`, `feild_id`, `center_id`, `period_id`, `book`, `deposit`, `expression`, `officers_id`, `status`, `created_at_date`, `created_at_time`) VALUES
(31, 20, 26, 16, 11, 25, 3052, 1000, '', 78, 1, '2022-10-07 00:00:00', '2022-10-29 21:04:59'),
(32, 23, 29, 16, 11, 35, 6012, 15000, '', 77, 1, '2022-10-07 00:00:00', '2022-10-29 21:05:53'),
(33, 20, 26, 16, 11, 25, 3052, 1000, '', 1, 1, '2021-10-14 00:00:00', '2022-10-29 21:06:23'),
(34, 21, 27, 22, 28, 27, 697, 200, '', 1, 1, '2022-10-07 00:00:00', '2022-10-29 21:07:10'),
(35, 23, 29, 16, 11, 35, 6012, 15000, '', 1, 1, '2022-09-08 00:00:00', '2022-10-29 22:43:15'),
(36, 31, 37, 15, 9, 25, 3493, 1000, '', 77, 1, '2022-10-09 00:00:00', '2022-10-29 19:47:19'),
(37, 21, 27, 22, 28, 27, 697, 200, '', 77, 1, '2022-09-09 00:00:00', '2022-10-29 19:58:22'),
(38, 31, 37, 15, 9, 25, 3493, 1000, '', 1, 1, '2022-10-10 00:00:00', '2022-10-29 09:26:28'),
(39, 22, 28, 15, 32, 17, 376, 200, '', 1, 1, '2022-10-10 00:00:00', '2022-10-29 21:26:36'),
(40, 27, 33, 15, 32, 17, 375, 200, '', 1, 1, '2022-10-10 00:00:00', '2022-10-29 21:26:45'),
(41, 33, 39, 16, 12, 17, 41, 10, '', 1, 0, '2022-10-12 00:00:00', '2022-10-29 22:06:26'),
(42, 34, 40, 21, 25, 24, 93, 500, '', 1, 0, '2022-10-12 00:00:00', '2022-10-29 22:14:04'),
(43, 24, 30, 15, 10, 25, 3497, 1000, '', 1, 1, '2022-10-14 00:00:00', '2022-10-29 09:57:33'),
(44, 22, 28, 15, 32, 17, 376, 200, '', 78, 1, '2022-10-14 00:00:00', '2022-10-29 00:30:11'),
(45, 22, 28, 15, 32, 17, 376, 200, '', 1, 1, '2022-10-14 00:00:00', '2022-10-29 15:19:35'),
(46, 27, 33, 15, 32, 17, 375, 200, '', 1, 1, '2022-10-14 00:00:00', '2022-10-29 15:19:48'),
(47, 20, 26, 16, 11, 25, 3052, 1000, '', 1, 1, '2022-10-14 00:00:00', '2022-10-29 15:20:12'),
(48, 30, 36, 16, 11, 25, 3494, 500, '', 1, 1, '2022-10-14 00:00:00', '2022-10-29 15:20:24'),
(49, 27, 33, 15, 32, 17, 375, 200, '', 1, 1, '2022-10-15 00:00:00', '2022-10-29 10:57:47'),
(50, 22, 28, 15, 32, 17, 376, 200, '', 1, 1, '2022-10-15 00:00:00', '2022-10-29 11:26:47'),
(51, 38, 44, 15, 9, 17, 92, 50, '', 1, 1, '2022-10-16 00:00:00', '2022-10-29 17:59:19'),
(52, 26, 32, 18, 15, 25, 3496, 1000, '', 1, 1, '2022-10-16 00:00:00', '2022-10-29 23:49:15'),
(53, 25, 31, 22, 28, 25, 3498, 1000, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:03:40'),
(54, 32, 38, 22, 28, 25, 3492, 500, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:03:53'),
(55, 29, 35, 21, 25, 25, 3495, 1000, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:04:27'),
(56, 39, 45, 15, 9, 25, 88, 610, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:04:55'),
(57, 31, 37, 15, 9, 25, 3493, 1000, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:05:06'),
(58, 26, 32, 18, 15, 25, 3496, 1000, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:05:38'),
(59, 24, 30, 15, 10, 25, 3497, 1000, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:06:18'),
(60, 20, 26, 16, 11, 25, 3052, 1000, '', 78, 1, '2022-10-14 00:00:00', '2022-10-29 15:06:45'),
(61, 30, 36, 16, 11, 25, 3494, 500, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:06:55'),
(62, 22, 28, 15, 32, 17, 376, 200, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:09:36'),
(63, 27, 33, 15, 32, 17, 375, 200, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:09:45'),
(64, 38, 44, 15, 9, 17, 92, 50, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:09:57'),
(65, 37, 43, 15, 9, 24, 50, 330, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:10:32'),
(66, 41, 47, 15, 9, 24, 63, 720, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:10:40'),
(67, 36, 42, 15, 9, 27, 26, 710, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:11:07'),
(68, 40, 46, 15, 9, 27, 53, 800, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:11:18'),
(69, 42, 48, 15, 9, 27, 28, 480, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:11:28'),
(70, 28, 34, 18, 16, 27, 696, 300, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:11:44'),
(71, 21, 27, 22, 28, 27, 697, 200, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:11:57'),
(72, 35, 41, 15, 9, 35, 84, 4000, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:13:34'),
(73, 23, 29, 16, 11, 35, 6012, 15000, '', 78, 1, '2022-10-17 00:00:00', '2022-10-29 15:13:45'),
(74, 38, 44, 15, 9, 17, 92, 50, '', 78, 1, '2022-10-19 00:00:00', '2022-10-29 13:57:48'),
(75, 20, 26, 16, 11, 25, 3052, 1000, '', 78, 1, '2022-10-19 00:00:00', '2022-10-29 13:59:06'),
(76, 20, 26, 16, 11, 25, 3052, 800, '', 1, 1, '2022-10-21 00:00:00', '2022-10-29 21:26:50'),
(77, 56, 64, 15, 10, 24, 76, 100, '', 1, 1, '2022-10-23 00:00:00', '2022-10-29 01:04:12'),
(78, 59, 67, 15, 10, 35, 47, 44, '', 1, 1, '2022-10-23 00:00:00', '2022-10-29 10:48:19'),
(79, 58, 66, 15, 10, 24, 91, 89, '', 1, 1, '2022-10-23 00:00:00', '2022-10-29 10:48:44'),
(80, 53, 60, 15, 9, 17, 6, 65, '', 1, 1, '2022-10-23 00:00:00', '2022-10-29 10:49:14'),
(81, 26, 32, 18, 15, 25, 3496, 1000, '', 1, 2, '2022-10-28 00:00:00', '2022-10-29 20:37:51'),
(82, 22, 28, 15, 32, 17, 376, 200, '', 1, 2, '2022-10-29 15:29:22', '2022-10-29 15:29:22'),
(83, 44, 51, 15, 9, 17, 13, 150, '', 1, 2, '2022-10-29 20:53:01', '2022-10-29 20:53:01'),
(84, 20, 26, 16, 11, 25, 3052, 1000, '', 1, 2, '2022-10-30 10:08:03', '2022-10-30 10:08:03'),
(85, 20, 26, 16, 11, 25, 3052, 1000, '', 1, 2, '2022-10-30 10:08:13', '2022-10-30 10:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `saving_profiles`
--

CREATE TABLE `saving_profiles` (
  `saving_profiles_id` int(20) NOT NULL,
  `field_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `reg_officer_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `deposit_installment` int(11) NOT NULL,
  `duration` date NOT NULL,
  `total_installment` int(11) NOT NULL,
  `total_without_interest` int(20) NOT NULL,
  `interest` int(11) NOT NULL COMMENT 'in (%)',
  `total_with_interest` int(20) NOT NULL,
  `total_deposit` int(20) NOT NULL,
  `total_withdrawal` int(20) NOT NULL,
  `balance` int(20) NOT NULL,
  `collection_ids` longtext NOT NULL,
  `withdraw_ids` longtext NOT NULL,
  `nominee_name` varchar(255) NOT NULL,
  `nominee_husband` varchar(255) DEFAULT NULL,
  `nominee_father` varchar(255) DEFAULT NULL,
  `nominee_mother` varchar(255) NOT NULL,
  `nominee_dob` date NOT NULL,
  `nominee_nid` text NOT NULL,
  `nominee_occupation` varchar(50) NOT NULL,
  `nominee_relation` varchar(50) NOT NULL,
  `nominee_gendar` varchar(20) NOT NULL,
  `nominee_img` varchar(100) NOT NULL,
  `nominee_address` longtext NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 1 COMMENT '1=active, 2=hold, 0=deactive',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `closing_interest` int(11) DEFAULT NULL,
  `closing_balance_with_interest` int(11) DEFAULT NULL,
  `closing_expression` varchar(255) NOT NULL,
  `closing_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saving_profiles`
--

INSERT INTO `saving_profiles` (`saving_profiles_id`, `field_id`, `center_id`, `period_id`, `reg_officer_id`, `client_id`, `book`, `deposit_installment`, `duration`, `total_installment`, `total_without_interest`, `interest`, `total_with_interest`, `total_deposit`, `total_withdrawal`, `balance`, `collection_ids`, `withdraw_ids`, `nominee_name`, `nominee_husband`, `nominee_father`, `nominee_mother`, `nominee_dob`, `nominee_nid`, `nominee_occupation`, `nominee_relation`, `nominee_gendar`, `nominee_img`, `nominee_address`, `status`, `created_at`, `updated_at`, `closing_interest`, `closing_balance_with_interest`, `closing_expression`, `closing_at`) VALUES
(26, 16, 11, 25, 1, 20, 3052, 1000, '2025-01-30', 60, 60000, 30, 78000, 5800, 500, 5300, ', 14, 47, 60, 75, 76', '', 'উম্মে জয়নাব সানি', '', 'মোঃ সোলাইমান', 'রেজিয়া বেগম', '1999-03-31', '5105163074', 'অন্যান্য', 'মা / মেয়ে', 'মহিলা', 'nominee_633ee60a978ff.jpg', 'বাড়ির এবং রাস্তাঃ হাজী ইব্রাহিম কলোনি , সৈয়দ শাহ রোড, গ্রামঃ কালামিয়া বাজার , ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-06 00:00:00', '2022-10-06 00:00:00', NULL, NULL, '', NULL),
(27, 22, 28, 27, 78, 21, 697, 200, '2028-10-01', 72, 14400, 35, 19440, 600, 100, 500, ', 34, 37, 71', '18, ', 'মোঃ রমজান', '', 'আব্দুল জলিল', 'সখিনা খাতুন', '1987-04-04', '7780149519', 'ব্যবসা', 'স্বামী / স্ত্রী', 'পুরুষ', 'nominee_633eeb38d227c.jpg', 'বাড়ির এবং রাস্তাঃ সাবেক সওঃ বাড়ী , গ্রামঃ আবু জাফর রোড, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-06 00:00:00', '2022-10-06 00:00:00', NULL, NULL, '', NULL),
(28, 15, 32, 17, 78, 22, 376, 200, '2024-10-01', 108, 21600, 15, 24840, 1000, 100, 900, ', 39, 44, 45, 50, 62', ', 15', 'নিহা আক্তার', '', 'মোঃ শুক্কুর', 'দিলোয়ারা বেগম', '2016-01-01', '19901517488000195', 'ছাত্রী', 'মা / মেয়ে', 'মহিলা', 'nominee_633eee166e8a2.jpg', 'বাড়ির এবং রাস্তাঃ আক্তার সওঃ কলোনি , গ্রামঃ পশ্চিম পাড়া, ওয়ার্ড নম্বরঃ 19, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-06 00:00:00', '2022-10-06 00:00:00', NULL, NULL, '', NULL),
(29, 16, 11, 35, 78, 23, 6012, 15000, '2031-12-22', 12, 180000, 50, 270000, 45000, 2000, 43000, ', 32, 35, 73', '16, ', 'সাইদুজ্জামান রাফি', '', 'মোঃ সোলাইমান', 'রেজিয়া বেগম', '2002-11-22', '20021591019036082', 'চাকুরি', 'মা / ছেলে', 'পুরুষ', 'nominee_633ef1162f554.jpeg', 'বাড়ির এবং রাস্তাঃ হাজী ইব্রাহীম কলোনি,  সৈয়দ শাহ রোড, গ্রামঃ কালামিয়া বাজার , ওয়ার্ড নম্বরঃ 18, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-06 00:00:00', '2022-10-06 00:00:00', NULL, NULL, '', NULL),
(30, 15, 10, 25, 78, 24, 3497, 1000, '2027-09-26', 60, 60000, 30, 78000, 2000, 100, 1900, ', 43, 59', '19, ', 'মোঃ আলা উদ্দীন', '', 'কামাল উদ্দীন', 'নুরজাহান বেগম', '1994-11-10', '7337921089', 'চাকুরি', 'স্বামী / স্ত্রী', 'পুরুষ', 'nominee_634163a71026d.jpg', 'বাড়ির এবং রাস্তাঃ আলম কুটির বিল্ডিং, গ্রামঃ সৈয়দ শাহ রোড , ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, NULL, '', NULL),
(31, 22, 28, 25, 78, 25, 3498, 1000, '2028-09-28', 72, 72000, 35, 97200, 1000, 0, 1000, ', 53', '', 'সুমাইয়া আক্তার', '', 'মোঃ রাব্বান মিয়া', 'আমেনা বেগম', '2000-06-01', '20001591619113586', 'চাকুরি', 'মা / মেয়ে', 'মহিলা', 'nominee_634166c428734.jpg', 'বাড়ির এবং রাস্তাঃ আবু বাপের বিল্ডিং, গ্রামঃ বালুর মাঠ, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, NULL, '', NULL),
(32, 18, 15, 25, 78, 26, 3496, 1000, '2028-09-26', 72, 72000, 35, 97200, 2000, 0, 2000, ', 52, 58', '', 'তৌহিদুল ইসলাম', '', 'এনামুল হক', 'জান্নাতুল ফেরদৌস', '2018-01-01', '2018185598941', 'অন্যান্য', 'মা / ছেলে', 'পুরুষ', 'nominee_634169cce86bb.jpg', 'বাড়ির এবং রাস্তাঃ এক কিলোটার, গ্রামঃ ১ কিলোটার, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, NULL, '', NULL),
(33, 15, 32, 17, 78, 27, 375, 200, '2024-09-15', 730, 146000, 15, 167900, 800, 100, 700, ', 40, 46, 49, 63', '17, ', 'আবু বকর অনিক', '', 'তোফাফাজ্জল', 'বিবি ', '2001-01-01', '1458397720', 'চাকুরি', 'বাবা / মেয়ে', 'পুরুষ', 'nominee_63416cba972b5.jpg', 'বাড়ির এবং রাস্তাঃ এসহাকের পুল, গ্রামঃ মিয়াখান নগর, ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 2, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, NULL, '', NULL),
(34, 18, 16, 27, 78, 28, 696, 300, '2022-09-13', 72, 21600, 35, 29160, 300, 0, 300, ', 70', '', 'নুরুল ইসলাম', '', 'হানিফ মোল্লা', 'বেগম', '1988-01-01', '554465383546', 'শ্রমিক', 'স্বামী / স্ত্রী', 'পুরুষ', 'nominee_634171dc1ea25.jpg', 'বাড়ির এবং রাস্তাঃ মুরাদ কলোনি, গ্রামঃ ইয়াসিন হাজির বাড়ি, ওয়ার্ড নম্বরঃ ০৬, উপজেলাঃ চান্দগাও, পোষ্ট অফিসঃ চান্দগাও, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 2, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, NULL, '', NULL),
(35, 21, 25, 25, 78, 29, 3495, 1000, '2028-09-17', 74, 72000, 35, 97200, 1000, 0, 1000, ', 55', '', 'মোঃ সুমন', '', 'তাজুল ইসলাম', 'বিব', '1987-01-01', '1987159116541254', 'ড্রাইভার', 'স্বামী / স্ত্রী', 'পুরুষ', 'nominee_634173ede6f13.jpg', 'বাড়ির এবং রাস্তাঃ আসমা জমিদার - ৭১৬-ডি, গ্রামঃ য়াম বাগান, ওয়ার্ড নম্বরঃ ১৩, উপজেলাঃ খুলশী, পোষ্ট অফিসঃ পাহাড়তলি, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 2, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, NULL, '', NULL),
(36, 16, 11, 25, 78, 30, 3494, 500, '2028-09-14', 72, 36000, 35, 48600, 1000, 0, 1000, ', 48, 61', '', 'মোঃ আরিক', '', 'আবুল কাশেম', 'বেগম', '1986-01-01', '198615914142536', 'ব্যবসা', 'স্বামী / স্ত্রী', 'পুরুষ', 'nominee_634175a0d8b46.jpg', 'বাড়ির এবং রাস্তাঃ কাশেমের কলোনি, গ্রামঃ ময়দার মিল মোড়, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, NULL, '', NULL),
(37, 15, 9, 25, 78, 31, 3493, 1000, '2028-09-28', 72, 72000, 35, 97200, 3000, 0, 3000, ', 38, 36, 57', '', 'মোঃ সেলিম', '', 'সাইদুল হক', 'আনোয়ারা বেগম', '1972-01-01', '19727518794444809', 'শ্রমিক', 'স্বামী / স্ত্রী', 'পুরুষ', 'nominee_6341774dade75.jpg', 'বাড়ির এবং রাস্তাঃ জসিমের কলোনি, গ্রামঃ আলেক্কা চোয়ানি রোড, ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, NULL, '', NULL),
(38, 22, 28, 25, 78, 32, 3492, 500, '2028-09-15', 72, 36000, 35, 48600, 500, 0, 500, ', 54', '', 'আছেক মিয়া', '', 'আবুল মালেক', 'বেগম', '1999-01-01', '199915914563251', 'ব্যবসা', 'স্বামী / স্ত্রী', 'মহিলা', 'nominee_6341790ac5532.jpg', 'বাড়ির এবং রাস্তাঃ এ কে এন টাউয়ার, গ্রামঃ নয়া মসজিদ, ওয়ার্ড নম্বরঃ ১৮, উপজেলাঃ বাকলিয়া, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-08 00:00:00', '2022-10-08 00:00:00', NULL, NULL, '', NULL),
(39, 16, 12, 17, 78, 33, 41, 10, '2007-08-22', 1, 10, 50, 15, 10, 0, 10, ', 41', '', 'Brandon Ramos', 'Libby Becker', 'Zenaida Cannon', 'Tamekah Morin', '1988-10-11', '15', 'ছাত্রী', 'ভাই / বোন', 'অন্যান্য', 'nominee_6346e5d7e7883.jpg', 'বাড়ির এবং রাস্তাঃ Repellendus Ut ut e, গ্রামঃ Asperiores pariatur, ওয়ার্ড নম্বরঃ Delectus aut ipsum, উপজেলাঃ Dolorem occaecat occ, পোষ্ট অফিসঃ Doloribus qui illum, জেলাঃ Dolores nisi volupta, বিভাগঃ ময়মনসিংহ।', 0, '2022-10-12 00:00:00', '2022-10-12 00:00:00', 5, 15, 'dddddddddd', '2022-10-12'),
(40, 21, 25, 24, 77, 34, 93, 500, '2010-02-10', 1, 500, 50, 750, 500, 0, 500, ', 42', '', 'Frances Castro', 'Basil Woodard', 'Zorita Burt', 'Madeson Sosa', '2017-09-02', '62', 'অন্যান্য', 'মা / মেয়ে', 'অন্যান্য', 'nominee_6346e7ba84136.jpg', 'বাড়ির এবং রাস্তাঃ Minus earum veniam , গ্রামঃ Id in saepe ut labor, ওয়ার্ড নম্বরঃ Debitis incididunt i, উপজেলাঃ Aute sit anim repreh, পোষ্ট অফিসঃ Beatae ex minima ess, জেলাঃ Qui aut excepteur co, বিভাগঃ বরিশাল।', 0, '2022-10-12 00:00:00', '2022-10-12 00:00:00', 250, 750, 'fghrtyrtdf', '2022-10-12'),
(41, 15, 9, 35, 77, 35, 84, 4000, '2017-10-29', 48, 192000, 35, 259200, 4000, 0, 4000, ', 72', '', 'Rhona Hudson', 'Haviva Rocha', 'Alexandra Estes', 'Tamara Dalton', '2003-09-01', '25', 'ছাত্রী', 'মা / ছেলে', 'মহিলা', 'nominee_634b8c6bebb32.jpg', 'বাড়ির এবং রাস্তাঃ Molestiae architecto, গ্রামঃ Inventore obcaecati , ওয়ার্ড নম্বরঃ Quod et esse nobis , উপজেলাঃ Ea dolor sed saepe e, পোষ্ট অফিসঃ Dolorem eligendi fac, জেলাঃ Aperiam asperiores n, বিভাগঃ সিলেট।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL, NULL, '', NULL),
(42, 15, 9, 27, 78, 36, 26, 710, '1970-04-20', 55, 39050, 97, 76929, 710, 0, 710, ', 67', '', 'Tanya Kemp', 'Julie Saunders', 'Christine Edwards', 'Wesley Kramer', '2005-02-06', '87', 'চাকুরি', 'মা / মেয়ে', 'মহিলা', 'nominee_634b8cddf13f3.jpg', 'বাড়ির এবং রাস্তাঃ Ullam atque qui volu, গ্রামঃ Aut nisi odit qui au, ওয়ার্ড নম্বরঃ Eveniet ad debitis , উপজেলাঃ Minima aperiam aliqu, পোষ্ট অফিসঃ Magni maiores exerci, জেলাঃ Reiciendis similique, বিভাগঃ বরিশাল।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL, NULL, '', NULL),
(43, 15, 9, 24, 78, 37, 50, 330, '2001-09-14', 74, 24420, 11, 27106, 330, 0, 330, ', 65', '', 'Maggie Young', 'Kimberley Barrett', 'MacKensie Collier', 'Vera Castaneda', '2022-11-13', '1', 'ড্রাইভার', 'বোন / বোন', 'পুরুষ', 'nominee_634b8e15acb26.jpg', 'বাড়ির এবং রাস্তাঃ Voluptatem explicabo, গ্রামঃ Voluptates qui labor, ওয়ার্ড নম্বরঃ Ex tempore sed cupi, উপজেলাঃ Molestiae dolorem mo, পোষ্ট অফিসঃ Doloribus voluptate , জেলাঃ Ipsa do facere quo , বিভাগঃ বরিশাল।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL, NULL, '', NULL),
(44, 15, 9, 17, 77, 38, 92, 50, '2017-12-02', 730, 36500, 18, 43070, 150, 0, 150, ', 51, 64, 74', '', 'Zena Hopkins', 'Dorian Vasquez', 'Odessa Wynn', 'Hilda Richardson', '1999-04-28', '12', 'শ্রমিক', 'বোন / বোন', 'পুরুষ', 'nominee_634b8ef5af3c0.jpg', 'বাড়ির এবং রাস্তাঃ Dolorem id odit inve, গ্রামঃ Corrupti dolore nul, ওয়ার্ড নম্বরঃ Quis laboris dolor s, উপজেলাঃ Sed quia ut aut cill, পোষ্ট অফিসঃ Soluta ut ab odio mo, জেলাঃ Est elit quia paria, বিভাগঃ ময়মনসিংহ।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL, NULL, '', NULL),
(45, 15, 9, 25, 77, 39, 88, 610, '1984-02-29', 60, 36600, 35, 49410, 610, 0, 610, ', 56', '', 'Wendy Richards', 'Sierra Booker', 'Holly Reilly', 'Kenyon Ellis', '2005-01-08', '58', 'রিক্সা চালক', 'স্বামী / স্ত্রী', 'পুরুষ', 'nominee_634b8fb9bbfb5.jpg', 'বাড়ির এবং রাস্তাঃ Vitae aliquam ut cup, গ্রামঃ Vero labore accusamu, ওয়ার্ড নম্বরঃ Omnis voluptatibus q, উপজেলাঃ Incidunt incididunt, পোষ্ট অফিসঃ Culpa accusantium te, জেলাঃ Dolor ad est perfer, বিভাগঃ সিলেট।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL, NULL, '', NULL),
(46, 15, 9, 27, 78, 40, 53, 800, '2000-02-02', 49, 39200, 30, 50960, 800, 0, 800, ', 68', '', 'Mallory Carney', 'Shelby Coffey', 'Jeanette Lamb', 'Tallulah Decker', '1981-02-07', '9', 'শ্রমিক', 'বোন / বোন', 'অন্যান্য', 'nominee_634b8fffbf746.jpg', 'বাড়ির এবং রাস্তাঃ Laboriosam dolore i, গ্রামঃ Cupidatat maiores eo, ওয়ার্ড নম্বরঃ Qui consequat Vel c, উপজেলাঃ Est reiciendis prae, পোষ্ট অফিসঃ Exercitationem facer, জেলাঃ Voluptatum mollitia , বিভাগঃ রাজশাহী।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL, NULL, '', NULL),
(47, 15, 9, 24, 77, 41, 63, 720, '2002-03-05', 100, 72000, 30, 93600, 720, 0, 720, ', 66', '', 'Mona Lowery', 'Duncan Combs', 'Aphrodite Lee', 'Edward Mcgowan', '1975-10-02', '35', 'অন্যান্য', 'স্বামী / স্ত্রী', 'পুরুষ', 'nominee_634b909e4f0ff.jpg', 'বাড়ির এবং রাস্তাঃ Amet minim labore i, গ্রামঃ Tenetur cumque volup, ওয়ার্ড নম্বরঃ Molestias ratione eu, উপজেলাঃ Magni qui ab commodo, পোষ্ট অফিসঃ Veritatis non cumque, জেলাঃ Amet quos enim esse, বিভাগঃ ঢাকা।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL, NULL, '', NULL),
(48, 15, 9, 27, 77, 42, 28, 480, '2016-09-19', 81, 38880, 20, 46656, 480, 0, 480, ', 69', '', 'Honorato Jarvis', 'Clark Thornton', 'Skyler Lancaster', 'Nyssa Gould', '2003-12-01', '23', 'রিক্সা চালক', 'মা / মেয়ে', 'মহিলা', 'nominee_634b90f9aa35a.jpg', 'বাড়ির এবং রাস্তাঃ Non est obcaecati no, গ্রামঃ Officiis repellendus, ওয়ার্ড নম্বরঃ Est tenetur consequa, উপজেলাঃ Praesentium mollitia, পোষ্ট অফিসঃ Nihil sint iste quia, জেলাঃ Eum eu amet sed nos, বিভাগঃ সিলেট।', 1, '2022-10-16 00:00:00', '2022-10-16 00:00:00', NULL, NULL, '', NULL),
(49, 15, 32, 24, 78, 22, 376, 82, '2014-01-12', 130, 10660, 15, 12259, 0, 0, 0, '', '', 'Bruno Reese', 'Eric Mckinney', 'Madison Holder', 'Baxter Duffy', '1994-10-26', '73', 'চাকুরি', 'মা / ছেলে', 'পুরুষ', 'nominee_634e4d417e858.jpeg', 'বাড়ির এবং রাস্তাঃ Omnis cupiditate ea , গ্রামঃ Doloribus perspiciat, ওয়ার্ড নম্বরঃ Vero dolore expedita, উপজেলাঃ Suscipit amet molli, পোষ্ট অফিসঃ Quia ipsa architect, জেলাঃ Reprehenderit consec, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-18 00:00:00', '2022-10-18 00:00:00', NULL, NULL, '', NULL),
(50, 15, 9, 17, 77, 43, 58, 100, '2013-03-26', 26, 2600, 32, 3432, 0, 0, 0, '', '', 'Carissa Woods', 'Urielle Pierce', 'Colleen Hood', 'Aretha Oconnor', '1975-03-07', '93', 'চাকুরি', 'মা / মেয়ে', 'অন্যান্য', 'nominee_635033a301a14.jpg', 'বাড়ির এবং রাস্তাঃ Omnis voluptatem Ne, গ্রামঃ Vel dolores dolor re, ওয়ার্ড নম্বরঃ Et fuga Voluptates , উপজেলাঃ Dolor dolorum rerum , পোষ্ট অফিসঃ Possimus facere rer, জেলাঃ In dolor modi quibus, বিভাগঃ রংপুর।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL, NULL, '', NULL),
(51, 15, 9, 17, 78, 44, 13, 150, '1985-05-29', 49, 7350, 26, 9261, 0, 0, 0, '', '', 'Lance Dickson', 'Piper Hardin', 'Janna Gay', 'Piper Witt', '2008-12-21', '8', 'রিক্সা চালক', 'বোন / বোন', 'মহিলা', 'nominee_635033de45361.png', 'বাড়ির এবং রাস্তাঃ Sapiente recusandae, গ্রামঃ Sit sit magnam solut, ওয়ার্ড নম্বরঃ Modi incidunt imped, উপজেলাঃ Nisi numquam laudant, পোষ্ট অফিসঃ Nemo aliqua Aliqua, জেলাঃ Libero nemo rerum es, বিভাগঃ ঢাকা।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL, NULL, '', NULL),
(52, 15, 9, 17, 78, 45, 7, 200, '1971-03-09', 89, 17800, 29, 22962, 0, 0, 0, '', '', 'Driscoll Sloan', 'Azalia Powell', 'Kelly Roberson', 'Colby Walsh', '1973-01-07', '47', 'ছাত্রী', 'বোন / বোন', 'মহিলা', 'nominee_6350340a056a4.webp', 'বাড়ির এবং রাস্তাঃ Error est enim delen, গ্রামঃ Dolore ut cum doloru, ওয়ার্ড নম্বরঃ Neque voluptate dolo, উপজেলাঃ Sit aliquip ducimus, পোষ্ট অফিসঃ Pariatur Nesciunt , জেলাঃ Omnis dicta aliquam , বিভাগঃ রাজশাহী।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL, NULL, '', NULL),
(53, 15, 9, 24, 77, 46, 14, 100, '1972-05-02', 93, 9300, 17, 10881, 0, 0, 0, '', '', 'Medge Norton', 'Libby Dorsey', 'Mira Wiggins', 'Cedric Hammond', '2002-10-06', '36', 'ছাত্র', 'মা / ছেলে', 'অন্যান্য', 'nominee_63503422ab75b.webp', 'বাড়ির এবং রাস্তাঃ Laboris animi et vo, গ্রামঃ Consectetur enim se, ওয়ার্ড নম্বরঃ Dolorem nobis fuga , উপজেলাঃ Pariatur Iste et co, পোষ্ট অফিসঃ Quod aliquid distinc, জেলাঃ Enim sunt dolor aliq, বিভাগঃ রংপুর।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL, NULL, '', NULL),
(54, 15, 9, 17, 78, 47, 96, 250, '1983-04-08', 71, 17750, 14, 20235, 0, 0, 0, '', '', 'Raymond Kramer', 'Patrick Valdez', 'Jaquelyn Herring', 'Blythe Mendoza', '1999-05-08', '7', 'রিক্সা চালক', 'বোন / বোন', 'পুরুষ', 'nominee_6350350b88e24.jpg', 'বাড়ির এবং রাস্তাঃ Obcaecati vel deseru, গ্রামঃ Rerum laudantium re, ওয়ার্ড নম্বরঃ Corporis nobis enim , উপজেলাঃ Quia iure exercitati, পোষ্ট অফিসঃ Tempore sed qui qui, জেলাঃ Eveniet placeat is, বিভাগঃ সিলেট।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL, NULL, '', NULL),
(55, 15, 9, 25, 78, 48, 21, 50, '1986-12-24', 21, 1050, 78, 1869, 0, 0, 0, '', '', 'Candace Ramirez', 'Malik Hull', 'Quemby Clayton', 'Adria Gill', '2019-05-20', '36', 'চাকুরি', 'মা / ছেলে', 'অন্যান্য', 'nominee_63503539a7046.jpg', 'বাড়ির এবং রাস্তাঃ Velit placeat iure, গ্রামঃ Perferendis incidunt, ওয়ার্ড নম্বরঃ Qui eum rem mollit o, উপজেলাঃ Id ab impedit et q, পোষ্ট অফিসঃ Adipisicing praesent, জেলাঃ Possimus labore und, বিভাগঃ রংপুর।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL, NULL, '', NULL),
(56, 15, 9, 24, 77, 49, 282, 300, '1985-07-01', 15, 4500, 41, 6345, 0, 0, 0, '', '', 'Cameran Reese', 'Ivan Wood', 'Yvonne Lynch', 'Sydnee Boyle', '1989-06-08', '65', 'ছাত্রী', 'ভাই / বোন', 'অন্যান্য', 'nominee_63503571e1fe0.jpg', 'বাড়ির এবং রাস্তাঃ Eaque iusto ratione consequat Non, গ্রামঃ Ea non molestiae minima omnis cupiditate, ওয়ার্ড নম্বরঃ Laboriosam suscipit ut anim fugiat alias adipisicing distinctio Voluptatibus vel officiis facilis , উপজেলাঃ Enim cupidatat nobis anim elit reiciendis ex aliquip eiusmod asperiores illo expedita, পোষ্ট অফিসঃ Quis est aliquid ad necessitatibus illum nihil voluptates aut enim dolor suscipit quia ea voluptati, জেলাঃ Ut repudiandae odio nostrud dolor proident et rerum earum inventore ut sit dolore, বিভাগঃ খুলনা।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL, NULL, '', NULL),
(57, 15, 9, 17, 78, 50, 25, 100, '1970-04-29', 37, 3700, 21, 4477, 0, 0, 0, '', '', 'Maris Horton', 'Ignacia Kelley', 'Stone Mendoza', 'Natalie Joyce', '2019-05-09', '67', 'চাকুরি', 'স্বামী / স্ত্রী', 'মহিলা', 'nominee_6350395d78a2b.jpg', 'বাড়ির এবং রাস্তাঃ Minima veniam sit in in excepteur aut qui est aut, গ্রামঃ Velit aliquam optio eiusmod dolor excepturi esse in deleniti, ওয়ার্ড নম্বরঃ Voluptate et ex ut totam quis sint repellendus Minima est temporibus ipsum excepteur natus asperna, উপজেলাঃ Qui dolorem in natus ex id unde dolores totam, পোষ্ট অফিসঃ Nostrum vitae et iste necessitatibus ut ut aut similique laboriosam fugiat ut, জেলাঃ Exercitationem deserunt neque voluptatibus odit et anim, বিভাগঃ ময়মনসিংহ।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL, NULL, '', NULL),
(58, 15, 9, 17, 77, 51, 33, 100, '1980-06-22', 96, 9600, 67, 16032, 0, 0, 0, '', '', 'Willow Glover', 'Honorato Pruitt', 'Adam Robinson', 'Grady Donaldson', '1972-12-08', '86', 'ছাত্রী', 'মা / মেয়ে', 'পুরুষ', 'nominee_63503983a702b.jpeg', 'বাড়ির এবং রাস্তাঃ Non pariatur Nisi repudiandae unde illum aut deserunt ut laudantium quo, গ্রামঃ Exercitation beatae illo at enim non expedita mollit blanditiis enim et voluptatem Sed fuga, ওয়ার্ড নম্বরঃ Repellendus Earum error aspernatur voluptatem Itaque rem quod quis placeat totam saepe sed, উপজেলাঃ Aut officia placeat omnis voluptas anim do officiis cumque quisquam ducimus non soluta autem ea, পোষ্ট অফিসঃ Dolores nostrud est rerum ut, জেলাঃ Inventore anim ut ex molestiae aperiam laborum Ea esse quia eveniet voluptatibus numquam, বিভাগঃ রাজশাহী।', 1, '2022-10-19 00:00:00', '2022-10-19 00:00:00', NULL, NULL, '', NULL),
(59, 15, 9, 25, 77, 52, 330, 100, '1970-10-10', 14, 1400, 21, 1694, 0, 0, 0, '', '', 'Imogene Mcfarland', 'Ramona Rivera', 'Kenneth Newman', 'Wynne Mooney', '2009-06-25', '76', 'শ্রমিক', 'বাবা / মেয়ে', 'মহিলা', 'nominee_635157ada0296.jpeg', 'বাড়ির এবং রাস্তাঃ Qui sed veniam autem dicta adipisicing mollit est, গ্রামঃ Ipsum magnam ab nobis ut veritatis reprehenderit et velit mollitia dolore et asperiores temporibus a, ওয়ার্ড নম্বরঃ Velit sunt est est vel minim voluptas dolorem sit consequatur velit aut facilis, উপজেলাঃ Sit et eos dolores sint fuga Eveniet exercitationem labore error mollitia fugiat, পোষ্ট অফিসঃ Ea vel qui ut et distinctio Eum eligendi ut adipisicing unde corrupti fugiat unde inventore volupt, জেলাঃ Quas veniam hic repellendus Totam temporibus saepe magnam ea dolore ea molestias veniam quia occa, বিভাগঃ রাজশাহী।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL, NULL, '', NULL),
(60, 15, 9, 17, 78, 53, 6, 65, '1991-03-28', 25, 1625, 59, 2584, 65, 0, 65, ', 80', '', 'Kevyn Jordan', 'Stephen Hendrix', 'Ignacia Rosales', 'Oren Sweeney', '1976-03-16', '64', 'ব্যবসা', 'ভাই / বোন', 'পুরুষ', 'nominee_635158c6e170d.jpg', 'বাড়ির এবং রাস্তাঃ Omnis officiis reprehenderit amet aperiam, গ্রামঃ Voluptatem amet reprehenderit perferendis eos, ওয়ার্ড নম্বরঃ Dolorem in quaerat quo aliqua Cum ad pariatur Ex dignissimos sequi reiciendis, উপজেলাঃ Quasi commodi voluptas est proident et mollitia qui non sit laborum Deleniti non, পোষ্ট অফিসঃ Saepe repellendus Quo amet in perferendis sunt minus nemo autem mollit eaque voluptatem Sunt dese, জেলাঃ Aut est quisquam accusantium voluptatem iure illum minim in totam exercitationem quae, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL, NULL, '', NULL),
(61, 15, 9, 27, 78, 36, 26, 100, '2022-10-20', 50, 5000, 12, 5600, 0, 0, 0, '', '', 'নিহা আক্তার', 'Scarlet Witt', 'মোঃ সোলাইমান', 'সখিনা বানু', '2022-10-12', '123', 'ছাত্র', 'স্বামী / স্ত্রী', 'মহিলা', 'nominee_63515aea0e983.jpg', 'বাড়ির এবং রাস্তাঃ আক্তার সওঃ কলোনি , গ্রামঃ Chittagong, ওয়ার্ড নম্বরঃ ১৯, উপজেলাঃ Irure ducimus hic d, পোষ্ট অফিসঃ সদর - ৪০০০, জেলাঃ চট্রগ্রাম, বিভাগঃ ঢাকা।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL, NULL, '', NULL),
(62, 15, 10, 25, 78, 54, 81, 80, '2012-01-20', 94, 7520, 35, 10152, 0, 0, 0, '', '', 'Roanna Navarro', 'Brittany Lancaster', 'Kimberly Mcdonald', 'Lance Pittman', '1983-08-19', '4', 'ছাত্র', 'বোন / বোন', 'অন্যান্য', 'nominee_6351771ccd60f.jpg', 'বাড়ির এবং রাস্তাঃ Omnis laboriosam corrupti sunt rerum ad eos quidem eligendi minima adipisicing qui tempora perspic, গ্রামঃ In sed velit beatae illum debitis odio rerum voluptas quo velit esse blanditiis repellendus Natus, ওয়ার্ড নম্বরঃ Nostrud enim ratione consectetur illum sapiente perferendis aut, উপজেলাঃ Voluptates iste eos sunt laboriosam dolore qui quis esse, পোষ্ট অফিসঃ Excepteur sunt quis mollit delectus aliquam ea vero voluptatibus voluptate obcaecati aut non aliqua, জেলাঃ Impedit explicabo Vitae asperiores elit quam laborum alias eum consectetur Nam tempore, বিভাগঃ চট্টগ্রাম।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL, NULL, '', NULL),
(63, 15, 10, 27, 78, 55, 10, 90, '1982-08-30', 86, 7740, 26, 9752, 0, 0, 0, '', '', 'Damian Blake', 'Rylee Cameron', 'Patricia Graham', 'Xerxes Gillespie', '2015-01-18', '52', 'ছাত্র', 'স্বামী / স্ত্রী', 'মহিলা', 'nominee_6351773a6c6f4.jpg', 'বাড়ির এবং রাস্তাঃ Id dolores quod consectetur enim id ipsum iure adipisci labore expedita voluptatem corrupti enim, গ্রামঃ Impedit itaque accusantium deleniti in et eaque a, ওয়ার্ড নম্বরঃ Ipsum reiciendis neque quo amet est eu, উপজেলাঃ Eos consequatur aliquip dolorem illum voluptates consectetur ea quas est maxime ut molestiae volu, পোষ্ট অফিসঃ Explicabo Adipisicing Nam maiores id sapiente, জেলাঃ In illum similique ducimus harum eum ab excepteur placeat qui quod saepe laboris, বিভাগঃ রাজশাহী।', 1, '2022-10-20 00:00:00', '2022-10-20 00:00:00', NULL, NULL, '', NULL),
(64, 15, 10, 24, 77, 56, 76, 100, '1997-04-09', 76, 7600, 18, 8968, 100, 0, 100, ', 77', '', 'Catherine Pickett', 'Josiah Barton', 'Holmes Bennett', 'Olympia Grimes', '1998-11-15', '32', 'গৃহিনী', 'বোন / বোন', 'অন্যান্য', 'nominee_63526464eed5b.jpg', 'বাড়ির এবং রাস্তাঃ Impedit in minim quibusdam vel deleniti voluptates veniam rerum laboris aut repudiandae alias sint, গ্রামঃ Veniam a consequatur odio excepturi exercitation soluta amet inventore ut dolor odit beatae est p, ওয়ার্ড নম্বরঃ Non voluptas eveniet ea nisi et quo occaecat tempora eum id aut deserunt voluptate, উপজেলাঃ Corrupti voluptatem voluptas obcaecati labore in dolor quos enim corrupti eos possimus non culpa, পোষ্ট অফিসঃ Est dolor incididunt aliquam delectus laboriosam tempore rem quod, জেলাঃ Blanditiis at dolores consequuntur ullamco voluptate voluptatem Quia velit eaque tempora consequat, বিভাগঃ ঢাকা।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL, NULL, '', NULL),
(65, 15, 10, 25, 77, 57, 24, 67, '2002-04-24', 88, 5896, 18, 6957, 0, 0, 0, '', '', 'Gwendolyn Pittman', 'Lysandra Roberson', 'September Bush', 'Basil Heath', '1988-02-20', '82', 'ছাত্রী', 'মা / ছেলে', 'পুরুষ', 'nominee_63526487dfca9.jpg', 'বাড়ির এবং রাস্তাঃ Sit quo inventore dolorum sit architecto fugit expedita sed ipsum, গ্রামঃ Veniam nobis inventore rerum illum amet fugit id vel aliqua Ad dolor aut eum, ওয়ার্ড নম্বরঃ Quis totam voluptatibus soluta iusto eos expedita fugiat laboris nulla ullamco dolorum quod dolore, উপজেলাঃ Aute a odio quos quod cumque cumque eum corporis nesciunt et, পোষ্ট অফিসঃ Sed maiores eius aute quam cumque ducimus qui deserunt illum odio qui debitis voluptatem ut quidem, জেলাঃ Labore magna officiis est temporibus voluptatem sint sint est ut et sapiente tempor, বিভাগঃ বরিশাল।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL, NULL, '', NULL),
(66, 15, 10, 24, 77, 58, 91, 89, '2020-05-12', 65, 5785, 5, 6074, 89, 0, 89, ', 79', '', 'Kieran Warner', 'Tamekah Weaver', 'Derek Cunningham', 'Bradley Sutton', '2001-08-26', '44', 'অন্যান্য', 'মা / ছেলে', 'মহিলা', 'nominee_635264ab7eaaa.jpg', 'বাড়ির এবং রাস্তাঃ Dolore fuga Hic mollitia aperiam voluptatem laboriosam eu libero sapiente minus ut tempora ad qui , গ্রামঃ Iusto inventore atque tempora qui magna ab architecto, ওয়ার্ড নম্বরঃ Quo aliqua Numquam in corporis consequat Ea et, উপজেলাঃ Vel animi eligendi mollitia est nobis voluptates debitis adipisicing omnis in sit dicta ipsa cons, পোষ্ট অফিসঃ Proident tempor ut libero voluptas dolor minim, জেলাঃ Id sint unde rerum praesentium exercitationem quis voluptatibus fugit est praesentium ut veniam , বিভাগঃ সিলেট।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL, NULL, '', NULL),
(67, 15, 10, 35, 77, 59, 47, 44, '1975-05-16', 52, 2288, 2, 2334, 44, 0, 44, ', 78', '', 'Shay Galloway', 'Beatrice May', 'Hunter Hansen', 'Shelley Pacheco', '1974-03-17', '41', 'শ্রমিক', 'মা / মেয়ে', 'পুরুষ', 'nominee_635264c99467a.jpeg', 'বাড়ির এবং রাস্তাঃ Voluptate quis mollit sit anim, গ্রামঃ Laboriosam irure rerum officia adipisci animi eligendi quo molestias sint, ওয়ার্ড নম্বরঃ Nostrud laudantium quo est sit alias dolor et beatae cumque cillum, উপজেলাঃ Qui elit neque tempora commodo doloremque ut in nisi in, পোষ্ট অফিসঃ Voluptas quibusdam quis debitis provident corrupti odio sint modi quasi ipsam culpa eveniet in e, জেলাঃ Et autem laborum anim dolore proident rerum non nisi est fugit, বিভাগঃ খুলনা।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL, NULL, '', NULL),
(68, 22, 26, 17, 77, 60, 138, 15, '1973-01-01', 37, 555, 6, 588, 0, 0, 0, '', '', 'Ori Roberts', 'Ima Norman', 'Lana Reid', 'Carter Knapp', '2006-12-23', '91', 'অন্যান্য', 'বাবা / মেয়ে', 'পুরুষ', 'nominee_635264eae71fa.png', 'বাড়ির এবং রাস্তাঃ Quo culpa aliquam sint expedita minim alias corporis, গ্রামঃ Ad a ea odit pariatur Dolore, ওয়ার্ড নম্বরঃ Dolor porro officia deserunt quibusdam nemo sed et sapiente quos aut, উপজেলাঃ Sit sint voluptate a distinctio Voluptatem inventore numquam ut, পোষ্ট অফিসঃ Magna placeat sit ut tempore, জেলাঃ Explicabo Minus et molestias exercitation eligendi rerum dolore quo eu ullam voluptatem debitis ex, বিভাগঃ সিলেট।', 1, '2022-10-21 00:00:00', '2022-10-21 00:00:00', NULL, NULL, '', NULL),
(69, 20, 22, 24, 77, 61, 8, 400, '2006-11-29', 60, 24000, 35, 32400, 0, 0, 0, '', '', 'Timothy Berger', 'Oleg Pacheco', 'Leigh Delgado', 'Charissa Daugherty', '2022-02-08', '60', 'ড্রাইভার', 'মা / মেয়ে', 'পুরুষ', 'nominee_6354c8eda87b5.jpeg', 'বাড়ির এবং রাস্তাঃ Delectus voluptatem voluptate inventore in quo atque nihil id porro facilis veritatis eum laborum e, গ্রামঃ Doloribus similique et quia aliquam dolores ex labore et vel aspernatur proident eveniet fugit as, ওয়ার্ড নম্বরঃ Possimus qui culpa inventore dolor nostrud ullam aut aperiam quam placeat duis, উপজেলাঃ Minima quia iure a magna eveniet, পোষ্ট অফিসঃ Incidunt et exercitation blanditiis nulla voluptate eiusmod eius dolor molestiae, জেলাঃ Nam nisi culpa et magnam omnis sint dolorem quis in voluptatem ut, বিভাগঃ রাজশাহী।', 1, '2022-10-23 00:00:00', '2022-10-23 00:00:00', NULL, NULL, '', NULL),
(70, 17, 13, 17, 77, 62, 470, 420, '1987-11-02', 59, 24780, 18, 29240, 0, 0, 0, '', '', 'Cairo Gregory', 'Brenden Hooper', 'Forrest Morrow', 'Cailin Beach', '1977-03-04', '100', 'রিক্সা চালক', 'বাবা / মেয়ে', 'অন্যান্য', 'nominee_6356b8e2e4048.jpg', 'বাড়ির এবং রাস্তাঃ Aut quaerat est corporis et blanditiis incididunt voluptatem consequuntur dolor aut sint nostrum te, গ্রামঃ Omnis assumenda est reprehenderit voluptatem Expedita exercitation est ab in lorem ea ut eligendi , ওয়ার্ড নম্বরঃ Est corporis aut aspernatur corrupti cupidatat voluptatem quas delectus dolores fugit, উপজেলাঃ Iste dolorum exercitation praesentium aspernatur tenetur ab et fugiat consequatur, পোষ্ট অফিসঃ Temporibus a id voluptate ea incidunt in doloribus in mollit ipsum quis et veniam cupidatat lauda, জেলাঃ পিরোজপুর, বিভাগঃ সিলেট।', 1, '2022-10-24 00:00:00', '2022-10-24 00:00:00', NULL, NULL, '', NULL),
(71, 18, 15, 35, 78, 63, 60, 40, '1971-07-20', 300, 12000, 30, 15600, 0, 0, 0, '', '', 'Ivan Albert', 'Mary Rush', 'Serina Hebert', 'Chloe Bennett', '2014-03-01', '46', 'শ্রমিক', 'ভাই / বোন', 'অন্যান্য', 'nominee_6356b93e8fc4f.jpg', 'বাড়ির এবং রাস্তাঃ Ducimus vitae tenetur perferendis nulla et eiusmod corporis nobis et nisi perspiciatis accusantium, গ্রামঃ Aut expedita amet maxime sit laboriosam officia qui voluptates nihil ipsum omnis sed facere, ওয়ার্ড নম্বরঃ Sapiente officia pariatur Irure maxime totam cum perferendis nihil perspiciatis, উপজেলাঃ Iure quia sit labore doloribus facilis cumque minus quam dolores non commodo aperiam, পোষ্ট অফিসঃ Et ut corporis ea dignissimos voluptas, জেলাঃ সিরাজগঞ্জ, বিভাগঃ সিলেট।', 1, '2022-10-24 00:00:00', '2022-10-24 00:00:00', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `saving_withdrawals`
--

CREATE TABLE `saving_withdrawals` (
  `withdraw_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `savings_prof_id` int(11) NOT NULL,
  `feild_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `withdrawal` int(11) NOT NULL,
  `balance_remaining` int(11) NOT NULL,
  `expression` varchar(255) NOT NULL,
  `officers_id` int(11) NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 2 COMMENT '1=active, 0=deactive, 2= panding',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saving_withdrawals`
--

INSERT INTO `saving_withdrawals` (`withdraw_id`, `client_id`, `savings_prof_id`, `feild_id`, `center_id`, `period_id`, `book`, `withdrawal`, `balance_remaining`, `expression`, `officers_id`, `status`, `created_at`) VALUES
(14, 20, 26, 16, 11, 25, 3052, 500, 1500, 'null', 77, 1, '2022-10-14 00:00:00'),
(15, 22, 28, 15, 32, 17, 376, 100, 300, 'nil', 78, 1, '2022-10-14 00:00:00'),
(16, 23, 29, 16, 11, 35, 6012, 2000, 28000, 'nall', 78, 1, '2022-10-14 00:00:00'),
(17, 27, 33, 15, 32, 17, 375, 100, 300, 'test', 77, 1, '2022-10-14 00:00:00'),
(18, 21, 27, 22, 28, 27, 697, 100, 100, 'test', 77, 1, '2022-10-14 00:00:00'),
(19, 24, 30, 15, 10, 25, 3497, 100, 900, 'ddddddddddd', 77, 1, '2022-10-16 00:00:00'),
(20, 56, 64, 15, 10, 24, 76, 20, 80, 'sdfewrwe', 77, 2, '2022-10-29 21:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` tinyint(5) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `time_start` varchar(50) NOT NULL,
  `time_end` varchar(50) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `time_start`, `time_end`, `logo`) VALUES
(1, 'জনকল্যাণ কর্মজীবি কো-অপারেটিভ সোসাইটি লিমিটেড', '9:28 AM', '11:52 PM', 'logo_6350f52a78b66.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `officers_id` text NOT NULL,
  `bg_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `officers_id`, `bg_img`) VALUES
(1, 'all', 'background_6.jpg'),
(2, '78', 'background_1.jpg'),
(4, '1', 'background_6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nid` int(30) DEFAULT NULL,
  `mobile_1` varchar(20) NOT NULL,
  `mobile_2` varchar(20) DEFAULT NULL,
  `blood` tinytext DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `role` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 2 COMMENT '0= inactive, 1= active and 2= panding',
  `token` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `resign_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `nid`, `mobile_1`, `mobile_2`, `blood`, `dob`, `role`, `image`, `status`, `token`, `created_at`, `updated_at`, `resign_date`) VALUES
(1, 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'রুবেল সিং', 2138929634, '01927832872', '122738', NULL, '2022-09-01', '0', 'user_635ebd38a5c35.jpg', 1, '', '2022-09-15 00:00:00', '2022-10-31 00:00:00', NULL),
(77, 'rasheluddinhr@gmail.com', 'c4ed998ff0952b9b93bd9ea6cc84efb09df6d9ef', 'রাসেল উদ্দীন হৃদয়', NULL, '01407016634', '01318962145', 'A+', '2003-12-27', 'কম্পিউটার অফিসার', 'user_6342d9f746087.jpg', 1, '', '2022-10-06 00:00:00', '2022-10-09 00:00:00', NULL),
(78, 'malekmohammad337@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'মোহাম্মদ আব্দুল মালেক', NULL, '01820608271', '01870618430', 'B+', '0000-00-00', 'ম্যানাজার', 'user_6342de8d744d9.jpg', 1, '', '2022-10-06 00:00:00', '2022-10-09 00:00:00', NULL),
(79, 'shewly322@gmail.com', NULL, 'সীমা আক্তার', NULL, '01836228860', '01407016638', 'AB+', '0000-00-00', 'ম্যানাজার', NULL, 2, '', '2022-10-06 00:00:00', '2022-10-06 00:00:00', NULL),
(80, 'khanjony2000@gmai.com', NULL, 'জালাল উদ্দীন ', NULL, '01766560752', '01879361020', 'O+', '0000-00-00', 'ম্যানাজার', NULL, 0, '', '2022-10-06 00:00:00', '2022-10-06 00:00:00', NULL),
(84, 'tadupyb@mailinator.com', NULL, 'Addison Hill', 98, '01876637865', '405', 'B-', '1987-11-05', 'ফিল্ড অফিসার', NULL, 2, '6067a6df83fb0cc1a238e13e8cbcf571', '2022-10-24 00:00:00', '2022-10-24 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_privileges`
--

CREATE TABLE `user_privileges` (
  `previlege_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `regForm1` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'নতুন সদস্য নিবন্ধন ফরম',
  `regForm2` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'সঞ্চয় সদস্য নিবন্ধন ফরম',
  `regForm3` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'ঋণ সদস্য নিবন্ধন ফরম',
  `regForm4` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'অফিসার নিবন্ধন ফরম',
  `regForm5` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'ফিল্ড নিবন্ধন ফরম',
  `regForm6` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'কেন্দ্র নিবন্ধন ফরম',
  `regForm7` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'ক্ষেত্র নিবন্ধন ফরম',
  `collectionForm1` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'সঞ্চয় সংগ্রহ ফরম',
  `collectionForm2` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'ঋণ সংগ্রহ ফরম',
  `withdrawalForm1` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'সঞ্চয় উত্তোলন ফরম',
  `withdrawalForm2` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'ঋণ-সঞ্চয় উত্তোলন ফরম',
  `closingForm1` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'সঞ্চয় ক্লোজিং ফরম',
  `closingForm2` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'ঋণ ক্লোজিং ফরম',
  `collectionReport` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'কালেকশন রিপোর্ট',
  `waitingWithdrawal` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'অপেক্ষারত উত্তোলন',
  `field` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'ফিল্ড / কেন্দ্র / ক্ষেত্র',
  `bookCheck` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'বই চেকিং',
  `expiredCollection` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'তামাদি কালেকশন',
  `analytics` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'এনালেটিক্স',
  `clientAcc` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'সদস্য একাউন্ট'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_privileges`
--

INSERT INTO `user_privileges` (`previlege_id`, `user_id`, `regForm1`, `regForm2`, `regForm3`, `regForm4`, `regForm5`, `regForm6`, `regForm7`, `collectionForm1`, `collectionForm2`, `withdrawalForm1`, `withdrawalForm2`, `closingForm1`, `closingForm2`, `collectionReport`, `waitingWithdrawal`, `field`, `bookCheck`, `expiredCollection`, `analytics`, `clientAcc`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 78, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1),
(3, 77, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`center_id`),
  ADD UNIQUE KEY `center_name` (`center_name`);

--
-- Indexes for table `client_registers`
--
ALTER TABLE `client_registers`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `book` (`book`),
  ADD UNIQUE KEY `client_nid_2` (`client_nid`),
  ADD UNIQUE KEY `client_nid` (`client_nid`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fdr_lists`
--
ALTER TABLE `fdr_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feilds`
--
ALTER TABLE `feilds`
  ADD PRIMARY KEY (`feild_id`),
  ADD UNIQUE KEY `field_name` (`field_name`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_acc_checks`
--
ALTER TABLE `loan_acc_checks`
  ADD PRIMARY KEY (`acc_check_id`);

--
-- Indexes for table `loan_collections`
--
ALTER TABLE `loan_collections`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `loan_profiles`
--
ALTER TABLE `loan_profiles`
  ADD PRIMARY KEY (`loan_profile_id`);

--
-- Indexes for table `loan_savings_withdrawals`
--
ALTER TABLE `loan_savings_withdrawals`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`period_id`),
  ADD UNIQUE KEY `period_name` (`period_name`);

--
-- Indexes for table `savings_acc_checks`
--
ALTER TABLE `savings_acc_checks`
  ADD PRIMARY KEY (`acc_check_id`);

--
-- Indexes for table `saving_collections`
--
ALTER TABLE `saving_collections`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `saving_profiles`
--
ALTER TABLE `saving_profiles`
  ADD PRIMARY KEY (`saving_profiles_id`);

--
-- Indexes for table `saving_withdrawals`
--
ALTER TABLE `saving_withdrawals`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile_1` (`mobile_1`),
  ADD UNIQUE KEY `nid` (`nid`),
  ADD UNIQUE KEY `mobile_2` (`mobile_2`),
  ADD UNIQUE KEY `mobile_2_2` (`mobile_2`);

--
-- Indexes for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`previlege_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `centers`
--
ALTER TABLE `centers`
  MODIFY `center_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `client_registers`
--
ALTER TABLE `client_registers`
  MODIFY `client_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `fdr_lists`
--
ALTER TABLE `fdr_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feilds`
--
ALTER TABLE `feilds`
  MODIFY `feild_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `loan_acc_checks`
--
ALTER TABLE `loan_acc_checks`
  MODIFY `acc_check_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `loan_collections`
--
ALTER TABLE `loan_collections`
  MODIFY `collection_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `loan_profiles`
--
ALTER TABLE `loan_profiles`
  MODIFY `loan_profile_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `loan_savings_withdrawals`
--
ALTER TABLE `loan_savings_withdrawals`
  MODIFY `withdraw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `period_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `savings_acc_checks`
--
ALTER TABLE `savings_acc_checks`
  MODIFY `acc_check_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `saving_collections`
--
ALTER TABLE `saving_collections`
  MODIFY `collection_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `saving_profiles`
--
ALTER TABLE `saving_profiles`
  MODIFY `saving_profiles_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `saving_withdrawals`
--
ALTER TABLE `saving_withdrawals`
  MODIFY `withdraw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `user_privileges`
--
ALTER TABLE `user_privileges`
  MODIFY `previlege_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
