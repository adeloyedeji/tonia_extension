-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 06, 2018 at 05:17 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tonia_extension`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`) VALUES
(1, 'AYA Branch', 'Aya under bridge'),
(2, 'Asokoro Branch', 'Asokoro phase 2'),
(3, 'Nyanyan Branch', 'Nyanyan before bridge'),
(4, 'Garki Branch', 'Opposite rita lori');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `availability` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating_cache` float(2,1) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title`, `price`, `overview`, `description`, `availability`, `slug`, `image1`, `thumb1`, `small1`, `image2`, `thumb2`, `small2`, `image3`, `thumb3`, `small3`, `image4`, `thumb4`, `small4`, `rating_cache`, `rating_count`, `created_at`, `updated_at`, `unit`) VALUES
(1, 1, 1, 'Miniplus 0.5mg Prazosin, 12.5mg Hydrochlerothiazid', 1400, NULL, '<p>Miniplus 0.5mg Prazosin, 12.5mg Hydrochlerothiazid</p>', 1, 'miniplus-05mg-prazosin-125mg-hydrochlerothiazid1520254830', 'products/miniplus-05mg-prazosin-125mg-hydrochlerothiazid1520254830.jpg', 'products/thumbs/product-thumb1520254830.jpg', 'products/smallest/product-small1520254830.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 12:00:31', '2018-03-05 12:00:31', NULL),
(2, 1, 1, 'Benadryl Allergy Relief Acrivastine', 3100, NULL, NULL, 1, 'benadryl-allergy-relief-acrivastine1520257117', 'products/benadryl-allergy-relief-acrivastine1520257117.jpg', 'products/thumbs/product-thumb1520257117.jpg', 'products/smallest/product-small1520257117.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 12:38:37', '2018-03-05 12:38:37', NULL),
(3, 1, 1, 'Actified Cold Tablets 2.5mg', 800, NULL, NULL, 1, 'actified-cold-tablets-25mg1520257239', 'products/actified-cold-tablets-25mg1520257239.jpg', 'products/thumbs/product-thumb1520257239.jpg', 'products/smallest/product-small1520257239.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 1, '2018-03-05 12:40:39', '2018-07-05 03:27:56', NULL),
(4, 1, 1, 'Sinufed Triprolidine 2.5mg / Tablet', 250, NULL, NULL, 1, 'sinufed-triprolidine-25mgtablet1520258635', 'products/sinufed-triprolidine-25mgtablet1520258635.jpg', 'products/thumbs/product-thumb1520258635.jpg', 'products/smallest/product-small1520258635.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 13:03:55', '2018-03-05 13:03:55', 'Card'),
(5, 1, 1, 'Piriton Allergy Tablets', 1500, NULL, NULL, 1, 'piriton-allergy-tablets1520259506', 'products/piriton-allergy-tablets1520259506.jpg', 'products/thumbs/product-thumb1520259506.jpg', 'products/smallest/product-small1520259506.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 13:18:26', '2018-03-05 13:18:26', NULL),
(6, 1, 1, 'Loratyn 10mg', 350, NULL, NULL, 1, 'loratyn-10mg1520259649', 'products/loratyn-10mg1520259649.jpg', 'products/thumbs/product-thumb1520259649.jpg', 'products/smallest/product-small1520259649.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 13:20:49', '2018-03-05 13:20:49', 'Card'),
(7, 1, 2, 'Cataflam 50mg', 800, NULL, NULL, 1, 'cataflam-50mg1520259883', 'products/cataflam-50mg1520259883.jpg', 'products/thumbs/product-thumb1520259883.jpg', 'products/smallest/product-small1520259883.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 13:24:43', '2018-03-05 13:24:43', 'Card'),
(8, 1, 2, 'Diamicron MR 30mg', 1100, NULL, NULL, 1, 'diamicron-mr-30mg1520260213', 'products/diamicron-mr-30mg1520260213.jpg', 'products/thumbs/product-thumb1520260213.jpg', 'products/smallest/product-small1520260213.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 13:30:14', '2018-03-05 13:30:14', 'Card'),
(9, 1, 2, 'Finasteride 5mg', 950, NULL, NULL, 1, 'finasteride-5mg1520262888', 'products/finasteride-5mg1520262888.jpg', 'products/thumbs/product-thumb1520262888.jpg', 'products/smallest/product-small1520262888.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 14:14:48', '2018-03-05 14:14:48', NULL),
(10, 1, 2, 'Mepiryl 2mg', 650, NULL, NULL, 1, 'mepiryl-2mg1520262962', 'products/mepiryl-2mg1520262962.jpg', 'products/thumbs/product-thumb1520262962.jpg', 'products/smallest/product-small1520262962.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 14:16:02', '2018-03-05 14:16:02', 'Card'),
(11, 1, 2, 'Voltfast 50mg', 200, NULL, NULL, 1, 'voltfast-50mg1520263276', 'products/voltfast-50mg1520323980.jpg', 'products/thumbs/product-thumb1520323980.jpg', 'products/smallest/product-small1520323980.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 14:21:17', '2018-03-06 07:44:58', 'Card'),
(12, 1, 2, 'NorVASC 10mg', 2200, NULL, NULL, 1, 'norvasc-10mg1520325290', 'products/norvasc-10mg1520325290.jpg', 'products/thumbs/product-thumb1520325290.jpg', 'products/smallest/product-small1520325290.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 1, '2018-03-06 07:34:51', '2018-07-05 03:29:34', 'Card'),
(13, 1, 2, 'Arthrotec 75mg', 800, NULL, NULL, 1, 'arthrotec-75mg1520325367', 'products/arthrotec-75mg1520325367.jpg', 'products/thumbs/product-thumb1520325367.jpg', 'products/smallest/product-small1520325367.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-06 07:36:08', '2018-03-06 07:36:08', 'Card'),
(14, 1, 2, 'Celebrex 200mg', 2300, NULL, NULL, 1, 'celebrex-200mg1520325424', 'products/celebrex-200mg1520325424.jpg', 'products/thumbs/product-thumb1520325424.jpg', 'products/smallest/product-small1520325424.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 1, '2018-03-06 07:37:04', '2018-07-05 03:32:26', NULL),
(15, 1, 2, 'Galvus Met 50mg/1000mg', 2300, NULL, NULL, 1, 'galvus-met-50mg1000mg1520325503', 'products/galvus-met-50mg1000mg1520325503.jpg', 'products/thumbs/product-thumb1520325503.jpg', 'products/smallest/product-small1520325503.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-06 07:38:24', '2018-03-06 07:38:24', 'Card'),
(16, 1, 2, 'Clofenac 100mg', 350, NULL, NULL, 1, 'clofenac-100mg1520325560', 'products/clofenac-100mg1520325560.jpg', 'products/thumbs/product-thumb1520325560.jpg', 'products/smallest/product-small1520325560.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-06 07:39:20', '2018-03-06 07:39:20', 'Card'),
(17, 1, 2, 'Voltaren Retard 100mg', 1150, NULL, NULL, 1, 'voltaren-retard-100mg1520326282', 'products/voltaren-retard-100mg1520326282.jpg', 'products/thumbs/product-thumb1520326282.jpg', 'products/smallest/product-small1520326282.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-06 07:51:22', '2018-03-06 07:51:22', 'Card'),
(18, 9, NULL, 'Best London Dry Gin', 400, NULL, NULL, 1, 'best-london-dry-gin1524313397', 'products/best-london-dry-gin1524328672.jpg', 'products/thumbs/product-thumb1524328672.jpg', 'products/smallest/product-small1524328672.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:23:17', '2018-04-21 16:37:53', NULL),
(19, 11, NULL, 'Philips Avent Natural Breast Pump Manual', 24850, NULL, NULL, 1, 'philips-avent-natural-breast-pump-manual1524314463', 'products/philips-avent-natural-breast-pump-manual1524314463.jpg', 'products/thumbs/product-thumb1524314463.jpg', 'products/smallest/product-small1524314463.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:41:04', '2018-04-21 12:41:04', NULL),
(20, 11, NULL, 'Philips Avent Natural Breast Pump Single Electric', 74000, NULL, NULL, 1, 'philips-avent-natural-breast-pump-single-electric1524314830', 'products/philips-avent-natural-breast-pump-single-electric1524314830.jpg', 'products/thumbs/product-thumb1524314830.jpg', 'products/smallest/product-small1524314830.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:47:10', '2018-04-21 12:47:10', NULL),
(21, 11, NULL, 'Pretty Cotton Bud', 300, NULL, NULL, 1, 'pretty-cotton-bud1524314908', 'products/pretty-cotton-bud1524314908.jpg', 'products/thumbs/product-thumb1524314908.jpg', 'products/smallest/product-small1524314908.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:48:28', '2018-04-21 12:48:28', NULL),
(22, 11, NULL, 'Pretty Cotton Bud', 200, NULL, NULL, 1, 'pretty-cotton-bud1524314937', 'products/pretty-cotton-bud1524314937.jpg', 'products/thumbs/product-thumb1524314937.jpg', 'products/smallest/product-small1524314937.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:48:57', '2018-04-21 12:48:57', NULL),
(23, 11, NULL, 'Clearasil Deep Cleanse Wipes', 650, NULL, NULL, 1, 'clearasil-deep-cleanse-wipes1524315004', 'products/clearasil-deep-cleanse-wipes1524315004.jpg', 'products/thumbs/product-thumb1524315004.jpg', 'products/smallest/product-small1524315004.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:50:04', '2018-04-21 12:50:04', NULL),
(24, 11, NULL, 'Pure Sensitive Wipes', 650, NULL, NULL, 1, 'pure-sensitive-wipes1524315032', 'products/pure-sensitive-wipes1524315032.jpg', 'products/thumbs/product-thumb1524315032.jpg', 'products/smallest/product-small1524315032.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:50:32', '2018-04-21 12:50:32', NULL),
(25, 11, NULL, 'Pure Feminine Wipes', 450, NULL, NULL, 1, 'pure-feminine-wipes1524315084', 'products/pure-feminine-wipes1524315084.jpg', 'products/thumbs/product-thumb1524315084.jpg', 'products/smallest/product-small1524315084.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:51:24', '2018-04-21 12:51:24', NULL),
(26, 11, NULL, 'Leocrema Wipes', 1900, NULL, NULL, 1, 'leocrema-wipes1524315445', 'products/leocrema-wipes1524315445.jpg', 'products/thumbs/product-thumb1524315445.jpg', 'products/smallest/product-small1524315445.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:57:25', '2018-04-21 12:57:25', NULL),
(27, 11, NULL, 'Tea Tree Facial Wipes', 700, NULL, NULL, 1, 'tea-tree-facial-wipes1524315490', 'products/tea-tree-facial-wipes1524315490.jpg', 'products/thumbs/product-thumb1524315490.jpg', 'products/smallest/product-small1524315490.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:58:10', '2018-04-21 12:58:10', NULL),
(28, 11, NULL, 'Pamper Fresh Clean Baby Wipes', 650, NULL, NULL, 1, 'pamper-fresh-clean-baby-wipes1524315549', 'products/pamper-fresh-clean-baby-wipes1524315549.jpg', 'products/thumbs/product-thumb1524315549.jpg', 'products/smallest/product-small1524315549.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:59:09', '2018-04-21 12:59:09', NULL),
(29, 11, NULL, 'Prince & Princess Baby Wipes', 700, NULL, NULL, 1, 'prince-princess-baby-wipes1524315966', 'products/prince-princess-baby-wipes1524315966.jpg', 'products/thumbs/product-thumb1524315966.jpg', 'products/smallest/product-small1524315966.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 13:06:06', '2018-04-21 13:06:06', NULL),
(31, 11, NULL, 'Angel Baby wipes', 650, NULL, NULL, 1, 'angel-baby-wipes1524316096', 'products/angel-baby-wipes1524316096.jpg', 'products/thumbs/product-thumb1524316096.jpg', 'products/smallest/product-small1524316096.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 13:08:16', '2018-04-21 13:08:16', NULL),
(32, 11, NULL, 'Astonish Descaler Remover', 650, NULL, NULL, 1, 'astonish-descaler-remover1524319049', 'products/astonish-descaler-remover1524319049.jpg', 'products/thumbs/product-thumb1524319049.jpg', 'products/smallest/product-small1524319049.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 13:57:29', '2018-04-21 13:57:29', NULL),
(33, 11, NULL, 'UB Relaxer s/s', 700, NULL, NULL, 1, 'ub-relaxer-ss1524320337', 'products/ub-relaxer-ss1524320337.jpg', 'products/thumbs/product-thumb1524320337.jpg', 'products/smallest/product-small1524320337.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:18:57', '2018-04-21 14:18:57', NULL),
(34, 11, NULL, 'Eden Extra Whitening Face & Body Scrub', 4500, NULL, NULL, 1, 'eden-extra-whitening-face-body-scrub1524320410', 'products/eden-extra-whitening-face-body-scrub1524320410.jpg', 'products/thumbs/product-thumb1524320410.jpg', 'products/smallest/product-small1524320410.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:20:10', '2018-04-21 14:20:10', NULL),
(35, 11, NULL, 'Allows Extra nail Desolver', 250, NULL, NULL, 1, 'allows-extra-nail-desolver1524320475', 'products/allows-extra-nail-desolver1524320475.jpg', 'products/thumbs/product-thumb1524320475.jpg', 'products/smallest/product-small1524320475.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:21:15', '2018-04-21 14:21:15', NULL),
(36, 11, NULL, 'CT+ Cleanser', 800, NULL, NULL, 1, 'ct-cleanser1524320542', 'products/ct-cleanser1524320542.jpg', 'products/thumbs/product-thumb1524320542.jpg', 'products/smallest/product-small1524320542.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:22:22', '2018-04-21 14:22:22', NULL),
(37, 11, NULL, 'Amos White Cream', 400, NULL, NULL, 1, 'amos-white-cream1524320584', 'products/amos-white-cream1524320584.jpg', 'products/thumbs/product-thumb1524320584.jpg', 'products/smallest/product-small1524320584.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:23:04', '2018-04-21 14:23:04', NULL),
(38, 5, NULL, 'Beef Rolls', 200, NULL, NULL, 1, 'beef-rolls1524321482', 'products/beef-rolls1524329073.jpg', 'products/thumbs/product-thumb1524329073.jpg', 'products/smallest/product-small1524329073.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 2, '2018-04-21 14:38:02', '2018-07-05 03:52:22', NULL),
(39, 2, NULL, 'Colgate Maxwhite Toothpaste', 800, NULL, NULL, 1, 'colgate-maxwhite-toothpaste1524323070', 'products/colgate-maxwhite-toothpaste1524323070.jpg', 'products/thumbs/product-thumb1524323070.jpg', 'products/smallest/product-small1524323070.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:04:31', '2018-04-21 15:04:31', NULL),
(40, 2, NULL, 'Oral B pro-Health Toothpaste', 350, NULL, NULL, 1, 'oral-b-pro-health-toothpaste1524323338', 'products/oral-b-pro-health-toothpaste1524323338.jpg', 'products/thumbs/product-thumb1524323338.jpg', 'products/smallest/product-small1524323338.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 1, '2018-04-21 15:08:59', '2018-07-05 03:45:37', NULL),
(41, 2, NULL, 'Listerine Total care 250ml', 1350, NULL, NULL, 1, 'listerine-total-care-250ml1524323608', 'products/listerine-total-care-250ml1524323608.jpg', 'products/thumbs/product-thumb1524323608.jpg', 'products/smallest/product-small1524323608.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.0, 1, '2018-04-21 15:13:28', '2018-07-09 11:14:04', NULL),
(42, 7, NULL, 'Children G-SHOCK (RED)', 4500, NULL, NULL, 1, 'children-g-shock-red1524323784', 'products/children-g-shock-red1524323784.jpg', 'products/thumbs/product-thumb1524323784.jpg', 'products/smallest/product-small1524323784.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:16:24', '2018-04-21 15:16:24', NULL),
(43, 7, NULL, 'Kingston 8GB SD Card', 4500, NULL, NULL, 1, 'kingston-8gb-sd-card1524324127', 'products/kingston-8gb-sd-card1524324127.jpg', 'products/thumbs/product-thumb1524324127.jpg', 'products/smallest/product-small1524324127.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:22:07', '2018-04-21 15:22:07', NULL),
(44, 7, NULL, 'Sandisk Flash Drive (32GB)', 8000, NULL, NULL, 1, 'sandisk-flash-drive-32gb1524324417', 'products/sandisk-flash-drive-32gb1524324417.jpg', 'products/thumbs/product-thumb1524324417.jpg', 'products/smallest/product-small1524324417.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:26:57', '2018-04-21 15:26:57', NULL),
(45, 6, NULL, 'Big Hero Bag', 7500, NULL, NULL, 1, 'big-hero-bag1524325030', 'products/big-hero-bag1524325030.jpg', 'products/thumbs/product-thumb1524325030.jpg', 'products/smallest/product-small1524325030.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:37:10', '2018-04-21 15:37:10', NULL),
(46, 6, NULL, 'Landups Bag Blue', 10000, NULL, NULL, 1, 'landups-bag-blue1524325539', 'products/landups-bag-blue1524325539.jpg', 'products/thumbs/product-thumb1524325539.jpg', 'products/smallest/product-small1524325539.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:45:39', '2018-04-21 15:45:39', NULL),
(47, 6, NULL, 'Avangers Bag', 5000, NULL, NULL, 1, 'avangers-bag1524326467', 'products/avangers-bag1524326467.jpg', 'products/thumbs/product-thumb1524326467.jpg', 'products/smallest/product-small1524326467.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:01:07', '2018-04-21 16:01:07', NULL),
(48, 9, NULL, 'McDowells', 2600, NULL, NULL, 1, 'mcdowells1524328260', 'products/mcdowells1524328260.png', 'products/thumbs/product-thumb1524328260.png', 'products/smallest/product-small1524328260.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:31:01', '2018-04-21 16:31:01', NULL),
(49, 9, NULL, 'Absolut Raspberry', 5400, NULL, NULL, 1, 'absolut-vodka1524328318', 'products/absolut-raspberry1524328551.jpg', 'products/thumbs/product-thumb1524328551.jpg', 'products/smallest/product-small1524328551.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:31:58', '2018-04-21 16:35:51', NULL),
(50, 5, NULL, 'Olympic Milk', 150, NULL, NULL, 1, 'olympic-milk1524328865', 'products/olympic-milk1524328865.jpg', 'products/thumbs/product-thumb1524328865.jpg', 'products/smallest/product-small1524328865.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:41:05', '2018-04-21 16:41:05', NULL),
(51, 5, NULL, 'Pringles (original)', 600, NULL, NULL, 1, 'pringles-original1524329243', 'products/pringles-original1524329243.jpg', 'products/thumbs/product-thumb1524329243.jpg', 'products/smallest/product-small1524329243.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:47:24', '2018-04-21 16:47:24', NULL),
(52, 8, NULL, 'Uniable Note Book', 1500, NULL, NULL, 1, 'uniable-note-book1524329981', 'products/uniable-note-book1524329981.jpg', 'products/thumbs/product-thumb1524329981.jpg', 'products/smallest/product-small1524329981.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:59:41', '2018-04-21 16:59:41', NULL),
(56, 9, NULL, 'Pink Lady', 1400, NULL, NULL, 1, 'pink-lady1524492355', 'products/pink-lady1524492355.jpg', 'products/thumbs/product-thumb1524492355.jpg', 'products/smallest/product-small1524492355.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-08-28 14:45:24', '2018-08-28 14:45:24', NULL),
(57, 1, 1, 'Poki Poki', 2000, 'Enhancement', '<p>Alabi poki poki</p>\r\n\r\n<p>Gives you Poki.</p>', 1, 'poki-poki1535467843', 'products/poki-poki1535467843.jpg', 'products/thumbs/product-thumb1535467843.jpg', 'products/smallest/product-small1535467843.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-28 13:50:44', '2018-08-28 13:50:44', 'Card'),
(58, 11, NULL, 'llkdlksdlk lksdlkml', 200, NULL, NULL, 1, 'llkdlksdlk-lksdlkml1535535477', 'products/llkdlksdlk-lksdlkml1535535477.jpg', 'products/thumbs/product-thumb1535535477.jpg', 'products/smallest/product-small1535535477.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-29 08:37:59', '2018-08-29 08:37:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quantities`
--

DROP TABLE IF EXISTS `quantities`;
CREATE TABLE IF NOT EXISTS `quantities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quantities`
--

INSERT INTO `quantities` (`id`, `product_id`, `branch_id`, `quantity`) VALUES
(1, 3, 2, 200),
(2, 3, 3, 100),
(3, 20, 1, 30),
(4, 21, 4, 20),
(5, 4, 1, 20),
(6, 4, 3, 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
