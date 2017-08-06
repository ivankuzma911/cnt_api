-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2017 at 10:51 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kogut`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dp_id` int(11) UNSIGNED NOT NULL,
  `dp_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dp_id`, `dp_name`) VALUES
(0, 'Tech'),
(2, 'HR'),
(1, 'Finance');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `emp_dep_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `emp_active`, `emp_dep_id`) VALUES
(1060, 'Ivanb', 'no', 2),
(1062, 'Ivan', 'no', 2),
(1065, 'Ivan', 'yes', 2),
(1066, 'Ivan', 'no', 0),
(1067, 'Ivanb', 'yes', 1),
(1068, 'Ivan', 'no', 2),
(1070, 'Ivan', 'yes', 2),
(1071, 'Ivan', 'yes', 2),
(1072, 'Ivan', 'yes', 2),
(1073, 'Ivan', 'no', 1),
(1074, 'Ivan', 'yes', 2),
(1075, 'Ivan', 'yes', 2),
(1076, 'Ivan', 'yes', 2),
(1077, 'Ivan', 'yes', 2),
(1078, 'Ivan', 'yes', 2),
(1079, 'Ivan', 'yes', 2),
(1080, 'Ivan', 'yes', 2),
(1081, 'Ivan', 'yes', 2),
(1082, 'ivan', 'yes', 2),
(1083, 'ivan', 'yes', 2),
(1084, 'ivan', 'yes', 2),
(1085, 'ivan', 'yes', 2),
(1086, 'ivan', 'yes', 2),
(1087, 'ivan', 'yes', 2),
(1088, 'ivan', 'yes', 2),
(1089, 'ivan', 'yes', 2),
(1090, 'ivan', 'yes', 2),
(1091, 'ivan', 'yes', 2),
(1092, 'ivan', 'yes', 2),
(1093, 'ivan', 'yes', 2),
(1094, 'ivan', 'yes', 2),
(1095, 'ivan', 'yes', 2),
(1096, 'ivan', 'yes', 2),
(1097, 'ivan', 'yes', 2),
(1098, 'ivan', 'yes', 2),
(1099, 'ivan', 'yes', 2),
(1100, 'ivan', 'yes', 2),
(1101, 'ivan', 'yes', 2),
(1102, 'ivan', 'yes', 2),
(1103, 'ivan', 'yes', 2),
(1104, 'ivan', 'yes', 2),
(1105, 'ivan', 'yes', 2),
(1106, 'ivan', 'yes', 2),
(1107, 'ivan', 'yes', 2),
(1108, 'ivan', 'yes', 2),
(1110, 'Ivannnn', 'yes', 2),
(1111, 'ivan', 'yes', 2),
(1112, 'ivan', 'yes', 2),
(1113, 'ivan', 'yes', 2),
(1114, 'ivan', 'yes', 2),
(1115, 'ivan', 'yes', 2),
(1116, 'ivan', 'yes', 2),
(1117, 'ivan', 'yes', 2),
(1118, 'ivan', 'yes', 2),
(1119, 'ivan', 'yes', 2),
(1120, 'ivan', 'yes', 2),
(1121, 'ivan', 'yes', 2),
(1122, 'ivan', 'yes', 2),
(1123, 'ivan', 'yes', 2),
(1124, 'ivan', 'yes', 2),
(1125, 'ivan', 'yes', 2),
(1126, 'ivan', 'yes', 2),
(1127, 'ivan', 'yes', 2),
(1128, 'ivan', 'yes', 2),
(1129, 'ivan', 'yes', 2),
(1130, 'ivan', 'yes', 2),
(1131, 'ivan', 'yes', 2),
(1132, 'ivan', 'yes', 2),
(1133, 'ivan', 'yes', 2),
(1134, 'ivan', 'yes', 2),
(1135, 'ivan', 'yes', 2),
(1136, 'ivan', 'yes', 2),
(1137, 'ivan', 'yes', 2),
(1138, 'ivan', 'yes', 2),
(1139, 'ivan', 'yes', 2),
(1140, 'ivan', 'yes', 2),
(1141, 'ivan', 'yes', 2),
(1142, 'ivan', 'yes', 2),
(1143, 'ivan', 'yes', 2),
(1144, 'ivan', 'yes', 2),
(1145, 'ivan', 'yes', 2),
(1146, 'ivan', 'yes', 2),
(1147, 'ivan', 'yes', 2),
(1148, 'ivan', 'yes', 2),
(1149, 'ivan', 'yes', 2),
(1150, 'ivan', 'yes', 2),
(1151, 'ivan', 'yes', 2),
(1152, 'ivan', 'yes', 2),
(1153, 'ivan', 'yes', 2),
(1154, 'ivan', 'yes', 2),
(1155, 'ivan', 'yes', 2),
(1156, 'ivan', 'yes', 2),
(1157, 'ivan', 'yes', 2),
(1158, 'ivan', 'yes', 2),
(1159, 'ivan', 'yes', 2),
(1160, 'ivan', 'yes', 2),
(1161, 'ivan', 'yes', 2),
(1162, 'ivan', 'yes', 2),
(1163, 'ivan', 'yes', 2),
(1164, 'ivan', 'yes', 2),
(1165, 'ivan', 'yes', 2),
(1166, 'ivan', 'yes', 2),
(1167, 'ivan', 'yes', 2),
(1168, 'ivan', 'yes', 2),
(1169, 'ivan', 'yes', 2),
(1170, 'ivan', 'yes', 2),
(1171, 'ivan', 'yes', 2),
(1172, 'ivan', 'yes', 2),
(1173, 'ivan', 'yes', 2),
(1174, 'ivan', 'yes', 2),
(1175, 'ivan', 'yes', 2),
(1176, 'ivan', 'yes', 2),
(1177, 'ivan', 'yes', 2),
(1178, 'ivan', 'yes', 2),
(1179, 'ivan', 'yes', 2),
(1180, 'ivan', 'yes', 2),
(1181, 'ivan', 'yes', 2),
(1182, 'ivan', 'yes', 2),
(1183, 'ivan', 'yes', 2),
(1184, 'ivan', 'yes', 2),
(1185, 'ivan', 'yes', 2),
(1186, 'ivan', 'yes', 2),
(1187, 'ivan', 'yes', 2),
(1188, 'ivan', 'yes', 2),
(1189, 'ivan', 'yes', 2),
(1190, 'ivan', 'yes', 2),
(1191, 'ivan', 'yes', 2),
(1192, 'ivan', 'yes', 2),
(1193, 'ivan', 'yes', 2),
(1194, 'ivan', 'yes', 2),
(1195, 'ivan', 'yes', 2),
(1196, 'ivan', 'yes', 2),
(1197, 'ivan', 'yes', 2),
(1198, 'ivan', 'yes', 2),
(1199, 'ivan', 'yes', 2),
(1200, 'ivan', 'yes', 2),
(1201, 'ivan', 'yes', 2),
(1202, 'ivan', 'yes', 2),
(1203, 'ivan', 'yes', 2),
(1204, 'ivan', 'yes', 2),
(1205, 'ivan', 'yes', 2),
(1206, 'ivan', 'yes', 2),
(1207, 'ivan', 'yes', 2),
(1208, 'ivan', 'yes', 2),
(1209, 'ivan', 'yes', 2),
(1210, 'ivan', 'yes', 2),
(1211, 'ivan', 'yes', 2),
(1212, 'ivan', 'yes', 2),
(1213, 'ivan', 'yes', 2),
(1214, 'ivan', 'yes', 2),
(1215, 'ivan', 'yes', 2),
(1216, 'ivan', 'yes', 2),
(1217, 'ivan', 'yes', 2),
(1218, 'ivan', 'yes', 2),
(1219, 'ivan', 'yes', 2),
(1220, 'ivan', 'yes', 2),
(1221, 'ivan', 'yes', 2),
(1222, 'ivan', 'yes', 2),
(1223, 'ivan', 'yes', 2),
(1224, 'ivan', 'yes', 2),
(1225, 'ivan', 'yes', 2),
(1226, 'ivan', 'yes', 2),
(1227, 'ivan', 'yes', 2),
(1228, 'ivan', 'yes', 2),
(1229, 'ivan', 'yes', 2),
(1230, 'ivan', 'yes', 2),
(1231, 'ivan', 'yes', 2),
(1232, 'ivan', 'yes', 2),
(1233, 'ivan', 'yes', 2),
(1234, 'ivan', 'yes', 2),
(1235, 'ivan', 'yes', 2),
(1236, 'ivan', 'yes', 2),
(1237, 'ivan', 'yes', 2),
(1238, 'ivan', 'yes', 2),
(1239, 'ivan', 'yes', 2),
(1240, 'ivan', 'yes', 2),
(1241, 'ivan', 'yes', 2),
(1242, 'ivan', 'yes', 2),
(1243, 'ivan', 'yes', 2),
(1244, 'ivan', 'yes', 2),
(1245, 'ivan', 'yes', 2),
(1246, 'ivan', 'yes', 2),
(1247, 'ivan', 'yes', 2),
(1248, 'ivan', 'yes', 2),
(1249, 'ivan', 'yes', 2),
(1250, 'ivan', 'yes', 2),
(1251, 'ivan', 'yes', 2),
(1252, 'ivan', 'yes', 2),
(1253, 'ivan', 'yes', 2),
(1254, 'ivan', 'yes', 2),
(1255, 'ivan', 'yes', 2),
(1256, 'ivan', 'yes', 2),
(1257, 'ivan', 'yes', 2),
(1258, 'ivan', 'yes', 2),
(1259, 'ivan', 'yes', 2),
(1260, 'ivan', 'yes', 2),
(1261, 'ivan', 'yes', 2),
(1262, 'ivan', 'yes', 2),
(1263, 'ivan', 'yes', 2),
(1264, 'ivan', 'yes', 2),
(1265, 'ivan', 'yes', 2),
(1266, 'ivan', 'yes', 2),
(1267, 'ivan', 'yes', 2),
(1268, 'ivan', 'yes', 2),
(1269, 'ivan', 'yes', 2),
(1270, 'ivan', 'yes', 2),
(1271, 'ivan', 'yes', 2),
(1272, 'ivan', 'yes', 2),
(1273, 'ivan', 'yes', 2),
(1274, 'ivan', 'yes', 2),
(1275, 'ivan', 'yes', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD KEY `dp_id` (`dp_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `dp_id` (`emp_dep_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1276;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `emp_demp_id` FOREIGN KEY (`emp_dep_id`) REFERENCES `departments` (`dp_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
