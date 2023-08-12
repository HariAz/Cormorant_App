-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 03:56 PM
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
-- Database: `restaurant_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`) VALUES
(2, 'Breakfast', 1),
(3, 'Appetizers', 1),
(4, 'Lunch', 1),
(5, 'Dessert', 1),
(6, 'Drinks', 1),
(7, 'Wraps', 1),
(8, 'Sandwiches', 1),
(9, 'Flatbreads', 1),
(10, 'Combos', 1),
(11, 'Sides', 1),
(12, 'Burgers', 1),
(13, 'Pizza', 1),
(14, 'Pasta', 1),
(15, 'Starters', 1),
(16, 'BBQ Platters', 1),
(17, 'Tacos', 1),
(20, 'Makanan Berat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Cormorant Resto', '3', '13', 'Cimahi, Blok I2 No. 15', '0811111111111', 'Indonesia', '<p>\r\n</p><div><div><div><p>Selamat datang di Cormorant, tempat nikmati kuliner istimewa dan suasana nyaman di Cimahi.</p></div></div></div>\r\n\r\n<p></p>', 'IDR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:32:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:13:\"createProduct\";i:21;s:13:\"updateProduct\";i:22;s:11:\"viewProduct\";i:23;s:13:\"deleteProduct\";i:24;s:11:\"createOrder\";i:25;s:11:\"updateOrder\";i:26;s:9:\"viewOrder\";i:27;s:11:\"deleteOrder\";i:28;s:10:\"viewReport\";i:29;s:13:\"updateCompany\";i:30;s:11:\"viewProfile\";i:31;s:13:\"updateSetting\";}'),
(4, 'Members', 'a:6:{i:0;s:9:\"viewTable\";i:1;s:12:\"viewCategory\";i:2;s:11:\"viewProduct\";i:3;s:11:\"createOrder\";i:4;s:11:\"updateOrder\";i:5;s:9:\"viewOrder\";}'),
(5, 'Staff', 'a:12:{i:0;s:11:\"createTable\";i:1;s:11:\"updateTable\";i:2;s:9:\"viewTable\";i:3;s:11:\"deleteTable\";i:4;s:13:\"createProduct\";i:5;s:13:\"updateProduct\";i:6;s:11:\"viewProduct\";i:7;s:13:\"deleteProduct\";i:8;s:11:\"createOrder\";i:9;s:11:\"updateOrder\";i:10;s:9:\"viewOrder\";i:11;s:11:\"viewProfile\";}'),
(6, 'Manager', 'a:19:{i:0;s:8:\"viewUser\";i:1;s:11:\"createGroup\";i:2;s:11:\"updateGroup\";i:3;s:9:\"viewGroup\";i:4;s:11:\"deleteGroup\";i:5;s:9:\"viewStore\";i:6;s:11:\"createTable\";i:7;s:11:\"updateTable\";i:8;s:9:\"viewTable\";i:9;s:11:\"deleteTable\";i:10;s:14:\"updateCategory\";i:11;s:13:\"createProduct\";i:12;s:13:\"updateProduct\";i:13;s:11:\"viewProduct\";i:14;s:13:\"deleteProduct\";i:15;s:9:\"viewOrder\";i:16;s:11:\"deleteOrder\";i:17;s:10:\"viewReport\";i:18;s:11:\"viewProfile\";}'),
(7, 'Cashier', 'a:8:{i:0;s:8:\"viewUser\";i:1;s:11:\"createOrder\";i:2;s:11:\"updateOrder\";i:3;s:9:\"viewOrder\";i:4;s:11:\"deleteOrder\";i:5;s:10:\"viewReport\";i:6;s:11:\"viewProfile\";i:7;s:13:\"updateSetting\";}'),
(8, 'Koki', 'a:9:{i:0;s:14:\"createCategory\";i:1;s:14:\"updateCategory\";i:2;s:12:\"viewCategory\";i:3;s:14:\"deleteCategory\";i:4;s:13:\"createProduct\";i:5;s:13:\"updateProduct\";i:6;s:11:\"viewProduct\";i:7;s:13:\"deleteProduct\";i:8;s:9:\"viewOrder\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge_amount`, `vat_charge_rate`, `vat_charge_amount`, `discount`, `net_amount`, `user_id`, `table_id`, `paid_status`) VALUES
(9, 'CDSTRO-6B80', '1691667416', '250000.00', '3', '7500.00', '13', '32500.00', '50000', '240000.00', 1, 1, 1),
(10, 'CDSTRO-A71C', '1691671836', '35000.00', '3', '1050.00', '13', '4550.00', '', '40600.00', 1, 1, 2),
(11, 'CDSTRO-431A', '1691674524', '60000.00', '3', '1800.00', '13', '7800.00', '', '69600.00', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(46, 9, 22, '2', '50000', '100000.00'),
(47, 9, 21, '3', '50000', '150000.00'),
(48, 10, 23, '1', '35000', '35000.00'),
(51, 11, 27, '2', '15000', '30000.00'),
(52, 11, 13, '3', '10000', '30000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `description`, `image`, `active`) VALUES
(1, '[\"6\"]', 'Virgin Mojito', '15000', '<p>This is a demo test</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(2, '[\"3\"]', 'Spaghetti Carbonara', '30000', '<p>\r\n\r\n<b></b>Carbonara&nbsp;<b></b>is an Italian pasta dish from Rome made with egg, hard cheese, cured pork, and black pepper. The cheese is usually Pecorino Romano, Parmigiano-Reggiano, or a combination of the two. Spaghetti is the most common pasta, but fettuccine, rigatoni, linguine, or bucatini are also used.<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(3, '[\"8\"]', 'Grilled Cheese Sandwich', '30000', '<p>A toasted sandwich, grilled cheese sandwich,&nbsp; or grilled cheese is a hot sandwich made with one or more varieties of cheese (a cheese sandwich) on bread. It is typically prepared by heating one or more slices of cheese between slices of bread, with a cooking fat such as butter, on a frying pan, griddle, or sandwich toaster, until the bread browns and the cheese melts. A grilled cheese may contain separate ingredients, though the main ingredients remain the bread and cheese.<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(4, '[\"11\"]', 'French Fries', '15000', '<p>\r\n\r\nFrench fries are served hot, either soft or crispy, and are generally eaten as part of lunch or dinner or by themselves as a snack\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(5, '[\"11\"]', 'Chicken Rings', '40000', '<p>Chicken <b></b>Rings are&nbsp;basically <b></b>chicken&nbsp;<b></b>nuggets that <b></b>are flattened and shaped into discs for, as the company put it, 360 degrees of yes please! More specifically, they\'re made with white meat <b></b>chicken&nbsp;<b></b>and breaded for a crispy exterior.</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(6, '[\"12\"]', 'Signature BBQ Burger', '40000', '<p>\r\n\r\nThe <b></b>BBQ Signature Burger<b></b>&nbsp;- 100% British and Irish beef, a smoky <b></b>BBQ sauce, bacon, coleslaw, cheddar cheese, red onion, lettuce, all in a soft brioche-style bun.</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(7, '[\"12\"]', 'Veggie Burger', '30000', '<p>\r\n\r\nA veggie burger is a burger patty that does not contain meat. These burgers may be made from ingredients like beans, especially soybeans and tofu, nuts, grains, seeds or fungi such as mushrooms or mycoprotein.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(8, '[\"12\"]', 'Bacon Cheese Burger', '40000', '<p>\r\n\r\nBacon, American, lettuce, tomato, red onion, pickles\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(9, '[\"13\"]', 'Pepperoni Pizza', '40000', '<p>An American variety of salami, made from cured pork and beef seasoned with paprika or other chili pepper.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(10, '[\"13\"]', 'Chicken-Bacon Parmesan Pizza', '40000', '<p>\r\n\r\nHand-Tossed Pizza, Original Pan Pizza, Thin N Crispy Pizza\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(11, '[\"13\"]', 'Backyard BBQ Chicken Pizza', '40000', '<p>\r\n\r\n<b></b>BBQ&nbsp;<b></b>Chicken is topped with white meat chicken, hardwood smoked bacon, and sweet red onions. All <b></b>pizzas&nbsp;<b></b>are topped with a Honey <b></b>BBQ&nbsp;<b></b>sauce and a hand tossed crust with a toasty cheddar edge.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(12, '[\"14\"]', 'Tuscani Chicken Alfredo Pasta', '25000', '<p>\r\n\r\nCreamy Chicken Alfredo and Meaty Marinara.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(13, '[\"6\"]', 'Diet Pepsi', '10000', '<p>\r\n\r\nBottle 20 oz\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(14, '[\"6\"]', 'Crush Orange', '15000', '<p>2 Liter</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(15, '[\"10\"]', 'Chicken Sandwich XL Combo', '50000', '<p>Hand-battered chicken, topped with a signature honey-butter brushed brioche bun with mayo and pickles. Order it Spicy with spicy mayo and a jalapeño on the side for an extra kick. Served with regular side and large drink.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(16, '[\"6\"]', 'Dr. Pepper', '30000', '<p>\r\n\r\nCalories: R 280 | L 380\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(17, '[\"6\"]', 'Organic Lemonade', '15000', '<p>\r\n\r\n32 Fl Oz\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(18, '[\"3\"]', 'Nachos Grande', '45000', '<p>\r\n\r\nLightly spread chips with half of the beans, leaving some uncovered. Sprinkle half of the cheese evenly over all the chips\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(19, '[\"3\"]', 'Popcorn Chicken', '25000', '<p>Consisting of small, bite-sized pieces of chicken that have been breaded and fried.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(20, '[\"15\"]', 'Blackened Alligator Sausage on a Plate', '60000', '<p>\r\n\r\nBlend of alligator and pork sausage served with BBQ sauce\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(21, '[\"15\"]', 'BBQ Shrimp and Hot Beef Sausage', '50000', '<p>\r\n\r\nServed in house made sweet and spicy BBQ sauce drape the sweet shrimp and savoie\'s sausage with baguette\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(22, '[\"3\"]', 'Shrimp Scampi', '50000', '<p>\r\n\r\nShrimp <b></b>scampi is a seafood dish with a <b></b>sauce of garlic, lemon, and butter.</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(23, '[\"7\"]', 'Chicken Caesar Wrap', '35000', '<p>\r\n\r\nThe new <b></b>wraps&nbsp;<b></b>feature your choice of either crispy or grilled seasoned <b></b>chicken<b></b>, bacon, a blend of Monterey Jack and Mozzarella cheeses, and <b></b>Caesar&nbsp;<b></b>sauce, all wrapped in a soft tortilla and grilled.\r\n\r\n<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(24, '[\"16\"]', 'Sliced Smoked Turkey Breast', '50000', '<p>Slow smoked, hand sliced turkey breast served with your choice of two sides</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(25, '[\"17\"]', 'Crispy Chicken Tacos', '30000', '<p>Three crispy fried chicken in a soft flour tortilla tossed with spicy mayo and served street style with onion, salsa, cilantro and pickled red onions.</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(27, '[\"2\",\"4\",\"20\"]', 'Nasi Goreng', '15000', '<p>nasi goreng sedap<br></p>', '<p>The upload path does not appear to be valid.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`) VALUES
(1, 'T01', '4', 2, 1),
(2, 'T02', '4', 1, 1),
(3, 'T03', '4', 1, 1),
(4, 'T04', '4', 1, 1),
(5, 'T05', '4', 1, 1),
(6, 'T06', '4', 1, 1),
(7, 'T07', '4', 1, 1),
(8, 'T08', '4', 1, 1),
(9, 'T09', '4', 1, 1),
(10, 'T10', '4', 1, 1),
(11, 'T11', '4', 1, 1),
(12, 'T12', '4', 1, 1),
(13, 'T13', '4', 1, 1),
(14, 'T14', '4', 1, 1),
(15, 'T15', '4', 1, 1),
(16, 'T15', '4', 1, 1),
(17, 'T17', '4', 1, 1),
(18, 'T18', '4', 1, 1),
(19, 'T19', '4', 1, 1),
(20, 'T20', '4', 1, 1),
(21, 'T21', '4', 1, 1),
(22, 'T22', '4', 1, 1),
(23, 'T23', '4', 2, 1),
(24, 'T24', '4', 1, 1),
(25, 'T25', '4', 1, 1),
(26, 'T26', '4', 1, 1),
(27, 'T27', '4', 1, 1),
(28, 'T28', '4', 1, 1),
(29, 'T29', '4', 1, 1),
(30, 'T30', '4', 2, 1),
(31, 'T31', '8', 1, 1),
(32, 'T32', '4', 1, 1),
(33, 'T33', '4', 1, 1),
(34, 'T34', '4', 1, 1),
(35, 'T35', '4', 1, 1),
(36, 'T36', '4', 1, 1),
(37, 'T37', '4', 1, 1),
(38, 'T38', '4', 1, 1),
(39, 'T39', '4', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'admin', '$2y$10$7HpMJOYDc7QyaRfJX5exJuQSi2U/fB7qgRLACu.1TMg7snJNf7Mim', 'admin@gmail.com', 'Baxia', 'manasco', '0878999891121', 1),
(6, 'poorboy', '$2y$10$.MvC6aLEecbdAteo7WD8/eEvT46YQEnAA5WMYwXiCTZDJZq//Wx7e', 'hari@mail.com', 'Reynaldi', 'Azhari', '081221677055', 1),
(7, 'Ryanhamidun', '$2y$10$aaXLZuR8E1VA8oQTe8eIgu4jouU9FMnLND.M9ijqR5THNlqkQKBcy', 'ryanjangjang@gmail.com', 'Ryan', 'Jangjang', '087635353', 1),
(8, 'ravialdos', '$2y$10$9o.SwUcyZTwjdbpBhklHdup3INuz2cAJDNDCt/i7HKEi7LF5IPi4m', 'ravi202@gmail.com', 'ravi', 'aldos', '086514242', 1),
(9, 'ericvalir', '$2y$10$9dlYWXFe410RgRf90oGLbevuurTujy./3s4r/orPbkeUYlL87DmvO', 'eric15@gmail.com', 'eric', 'valir', '0867453453735', 1),
(10, 'refaldiestes', '$2y$10$q.TY9hbhluRAJqIy8HfDaeaV6AUsMnRBC7fZuU3wueEDuu3FdRhKe', 'refaldi@gmail.com', 'refaldi', 'estes', '0863545473', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 4),
(4, 4, 6),
(5, 5, 7),
(6, 6, 6),
(7, 7, 7),
(8, 8, 7),
(9, 9, 5),
(10, 10, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
