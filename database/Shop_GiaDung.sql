-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 29, 2024 lúc 09:30 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `store_giadung`
--
CREATE DATABASE IF NOT EXISTS `store_giadung` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `store_giadung`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authen`
--

CREATE TABLE `authen` (
  `user` varchar(255) NOT NULL,
  `pass` varchar(11) NOT NULL,
  `mail` text NOT NULL,
  `phone` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `perf` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imghome`
--

CREATE TABLE `imghome` (
  `id_imghome` int NOT NULL,
  `img_src` text NOT NULL,
  `idnha` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `imghome`
--

INSERT INTO `imghome` (`id_imghome`, `img_src`, `idnha`) VALUES
(3, '1', 1),
(4, '2', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_dat`
--

CREATE TABLE `nha_dat` (
  `id` int NOT NULL,
  `name_nha` varchar(225) NOT NULL,
  `name_chu` varchar(225) NOT NULL,
  `phone_phu` varchar(11) NOT NULL,
  `mota` text NOT NULL,
  `tinh_trang` varchar(11) NOT NULL,
  `Gia` varchar(20) NOT NULL,
  `notes` text NOT NULL,
  `mucdich` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_dat`
--

INSERT INTO `nha_dat` (`id`, `name_nha`, `name_chu`, `phone_phu`, `mota`, `tinh_trang`, `Gia`, `notes`, `mucdich`) VALUES
(1, 'Hoàng Huy Grand', 'Bích Ngọc', '', 'Chính chủ gửi bán căn hộ\r\n- Chung cư Hoàng Huy Grand\r\n- Căn 2N2VS, full đồ\r\n- Diện tích: 65m2\r\n- Giá 2ty4 (Có thương lượng)', 'Hãn Còn', '2 tỷ 4', 'Giá Cả có thể thương lượng\r\nFull đồ\r\nHoa hồng 1.5%', 'Bán'),
(2, 'Nhà 4 tầng trong ngõ', 'An Trần', '0912542123', 'Bán nhà 4 tầng độc lập trong ngõ bìa đỏ hướng đông nam \r\nĐịa chỉ: ngõ 239 Đà Nẵng,Ngô Quyền, Hải Phòng\r\nDtmb :24m2 \r\nDtsd:106 m2 \r\nCông năng:gồm pk , 3 pn, 3 vệ sinh , sân phơi, pt, không gian thoáng mát , phố trung\r\ntâm gần siêu thị coopmart , chợ trường học các cấp, khu dân cư yên tĩnh an ninh tốt', 'Còn', '1 tý 395', 'None', 'Bán Nhà'),
(3, 'Nhà 2 tầng mặt đường Đông Khê 2', 'Hoa Lê - Bán Hộ', '', 'Nó là mặt dg đông Khê 2\r\n50m xây 2 tầng . 2 ngủ 2 vs\r\ngiá 7.5tr\r\n', '', '7.5 tr', 'none\r\ncó thể kinh doanh', 'Cho Thuê'),
(4, 'Nhà mặt đường Máng Nước', 'Nguyễn Duyên', '0', 'Chính chủ cần CHO THUÊ nhà MẶT ĐƯỜNG MÁNG NƯỚC \r\n+ Vị trí: Đối diện Samnec khu vực rất đông dân cư và người qua lại\r\n+ Công năng: phòng khách cực rộng, 2 phòng ngủ, bếp, sân rửa, WC....\r\n+ Xây mới, đèn điện đầy đủ. Phòng khách thiết kế 2 quạt trần.', 'Còn', '14 tr', 'Giá cả có thể thương lượng', 'Cho Thuê');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int DEFAULT NULL,
  `name_pro` varchar(102) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` varchar(29) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `commis` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `img` text NOT NULL,
  `detail` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name_pro`, `price`, `commis`, `img`, `detail`, `notes`) VALUES
(1, 'Am sieu toc thuy tinh 1.7L Nagakawa NAG0317', '470000', '50000', './src/img_pro/1.jpg', '', ''),
(2, 'Bep dien tu cao cap DY-B236', '4990000', '950000', './src/img_pro/2.jpg', '', ''),
(3, 'Bep dien tu don Greeno GR-268', '1150000', '100000', './src/img_pro/3.jpg', '', ''),
(4, 'IK-HD 002', '760000', '105000', './src/img_pro/4.jpg', '', ''),
(5, 'BEP TU DON IK- HD003', '760000', '105000', './src/img_pro/5.jpg', '', ''),
(6, 'Bep Dien Tu Don Kem Noi Lau Inox PST PTSBT-01', '600000', '107500', './src/img_pro/6.jpg', '', ''),
(7, 'Bep nuong dien Greeno GR-9328', '620000', '110000', './src/img_pro/7.jpg', '', ''),
(8, 'BEP NUONG DIEN POVENA PVN-4830', '610000', '90000', './src/img_pro/8.jpg', '', ''),
(9, 'Bep tu BlueStone ICB-6619', '1150000', '100000', './src/img_pro/9.jpg', '', ''),
(10, 'Bep dien tu Canzy CZ-828IP', '4500000', '850000', './src/img_pro/10.jpg', '', ''),
(11, 'Bep Tu Canzy CZ-ML1011PRO', '7900000', '1800000', './src/img_pro/11.jpg', '', ''),
(12, 'Bep Tu Kuscheln Cong Suat Lon KIC23-2800', '1600000', '175000', './src/img_pro/12.jpg', '', ''),
(13, 'Bep tu doi IKAF IK-101', '7000000', '1575000', './src/img_pro/13.jpg', '', ''),
(14, 'Bep tu doi IKAF IK-128', '6100000', '1375000', './src/img_pro/14.jpg', '', ''),
(15, 'Bep tu doi lap am BlueStone ICB-6818', '3700000', '600000', './src/img_pro/15.jpg', '', ''),
(16, 'Bep tu don Germatek DE-ICF61S', '2090000', '150000', './src/img_pro/16.jpg', '', ''),
(17, 'BEP TU DON IKAF MODEL: IK-HD001', '1350000', '100000', './src/img_pro/17.jpg', '', ''),
(18, 'Bep tu don KUSCHELN KIC073', '1000000', '142500', './src/img_pro/18.jpg', '', ''),
(19, 'Binh dun sieu toc BlueStone 1.7 lit KTB-3417', '480000', '115000', './src/img_pro/19.jpg', '', ''),
(20, 'Binh dun sieu toc BlueStone 1.8 lit KTB-3369', '650000', '75000', './src/img_pro/20.jpg', '', ''),
(21, 'Bo dao keo 05 mon Elmich diamond EL-8404MG', '1110000', '150000', './src/img_pro/21.jpg', '', ''),
(22, 'Bo noi 3 chiec Sagasu', '600000', '100000', './src/img_pro/22.jpg', '', ''),
(23, 'Bo noi Canzy CZ 899', '1600000', '300000', './src/img_pro/23.jpg', '', ''),
(24, 'Bo noi cao cap Canzy model CZ 8LD NOBEL', '2800000', '400000', './src/img_pro/24.jpg', '', ''),
(25, 'Bo noi inox 05 day KSP053-5D', '930000', '105000', './src/img_pro/25.jpg', '', ''),
(26, 'Bo noi inox cao cap 3 lop nguyen khoi Harmonie GE-0303', '1890000', '200000', './src/img_pro/26.jpg', '', ''),
(27, 'Chao chong dinh sieu ben Elmich Hera II EL-5941GY24 size 24cm', '595000', '119375', './src/img_pro/27.jpg', '', ''),
(28, 'Chao inox 3 lop cao cap nguyen khoi Harmonie seri 24cm', '570000', '75000', './src/img_pro/28.jpg', '', ''),
(29, 'Chao Inox 5 day Sunhouse IN26m2', '450000', '47500', './src/img_pro/29.jpg', '', ''),
(30, 'Chao inox cao cap 3 lop nguyen khoi Harmonie size 26c', '590000', '70000', './src/img_pro/30.jpg', '', ''),
(31, 'Chao inox cao cap 3 lop nguyen khoi Harmonie size 28cm', '648000', '71500', './src/img_pro/31.jpg', '', ''),
(32, 'Chao Inox duc lien nguyen khoi - KFP063-26S', '530000', '80500', './src/img_pro/32.jpg', '', ''),
(33, 'Chao Inox duc lien nguyen khoi -KFP063-28S', '590000', '82500', './src/img_pro/33.jpg', '', ''),
(34, 'Chao Inox duc lien nguyen khoi - KFP063-20S', '440000', '75500', './src/img_pro/34.jpg', '', ''),
(35, 'Chao Nhom Chong Dinh KFP063-22A', '350000', '67500', './src/img_pro/35.jpg', '', ''),
(36, 'Chao Nhom Chong Dinh KFP063-28A', '450000', '75500', './src/img_pro/36.jpg', '', ''),
(37, 'Chao Nhom Chong Dinh KFP063-26A', '470000', '100000', './src/img_pro/37.jpg', '', ''),
(38, 'chan may giat, tu lanh - hop mau xanh duong', '200000', '67000', './src/img_pro/38.jpg', '', ''),
(39, 'Dieu hoa 1 chieu 1HP-9.000BTU Casper SC-09FS33', '5400000', '500000', './src/img_pro/39.jpg', '', ''),
(40, 'May lanh Casper Inverter 1.5 HP TC-12IS36 - 12000', '7600000', '600000', './src/img_pro/40.jpg', '', ''),
(41, 'May lanh Casper Inverter 1.5 HP GC-12IS35', '7800000', '500000', './src/img_pro/41.jpg', '', ''),
(42, 'Dieu hoa Casper 2 chieu Inverter 1.5HP-12.000BTU GH-12IS33', '9100000', '500000', './src/img_pro/42.jpg', '', ''),
(43, 'Dieu hoa Casper 2 chieu Inverter 1HP-9.000BTU GH-09IS33', '8100000', '500000', './src/img_pro/43.jpg', '', ''),
(44, 'Dieu hoa Panasonic 9000 BTU 1 chieu inverter XPU9XKH-8', '10450000', '500000', './src/img_pro/44.jpg', '', ''),
(45, 'Dieu hoa Panasonic CU/CS-XPU9XKH 1 chieu inverter 9.000BTU', '12550000', '500000', './src/img_pro/45.jpg', '', ''),
(46, 'Dieu hoa Panasonic 1 chieu inverter 9000BTU CU/CS-XPU9XKH-8', '10450000', '500000', './src/img_pro/46.jpg', '', ''),
(47, 'gia tivi loai xoay', '240000', '50000', './src/img_pro/47.jpg', '', ''),
(48, 'gia treo dieu hoa', '150000', '50000', './src/img_pro/48.jpg', '', ''),
(49, 'gia treo tivi 32 - 100 inch', '220000', '50000', './src/img_pro/49.jpg', '', ''),
(50, 'Gia treo tivi 32 - 43 inch - day', '160000', '50000', './src/img_pro/50.jpg', '', ''),
(51, 'gia treo tivi 32 - 55 inch', '160000', '50000', './src/img_pro/51.jpg', '', ''),
(52, 'Gia treo tivi 32 - 65 inch', '180000', '50000', './src/img_pro/52.jpg', '', ''),
(53, 'Google Tivi Sony 4K 55 inch KD-55X81DK', '13300000', '500000', './src/img_pro/53.jpg', '', ''),
(54, 'Google Tivi TCL 4K 55 inch 55T66', '7800000', '500000', './src/img_pro/54.jpg', '', ''),
(55, 'Lo vi song BlueStone MOB-7708B 20 lit', '1590000', '170000', './src/img_pro/55.jpg', '', ''),
(56, 'May giat Casper Inverter 8 kg WF-8VG1', '5100000', '500000', './src/img_pro/56.jpg', '', ''),
(57, 'May giat Casper Inverter 9 kg WF-9VG1', '5900000', '500000', './src/img_pro/57.jpg', '', ''),
(58, 'May giat Electrolux Inverter 10 kg EWF1024P5WB', '9400000', '500000', './src/img_pro/58.jpg', '', ''),
(59, 'May giat Electrolux Inverter 9 kg EWF9024D3WB', '8500000', '1000000', './src/img_pro/59.jpg', '', ''),
(60, 'May giat LG AI DD Inverter 9 kg FV1409S4M', '9300000', '550000', './src/img_pro/60.jpg', '', ''),
(61, 'May giat LG Inverter 9 kg FM1209S6W/N6W', '7500000', '550000', './src/img_pro/61.jpg', '', ''),
(62, 'May giat long ngang Aqua AQD-AH1050H.PS', '11100000', '500000', './src/img_pro/62.jpg', '', ''),
(63, 'May giat say Aqua Inverter giat 10 kg - say 6 kg AQD-AH1000G.PS', '11000000', '500000', './src/img_pro/63.jpg', '', ''),
(64, 'May giat say Electrolux UltimateCare 10/7kg EWW1042Q7WB', '14400000', '600000', './src/img_pro/64.jpg', '', ''),
(65, 'May giat thong minh LG AI DD 9kg+ say 5kg FV1409G4V', '12100000', '900000', './src/img_pro/65.jpg', '', ''),
(68, 'May hut mui IKAF IK-210', '2925000', '237500', './src/img_pro/68.jpg', '', ''),
(69, 'May hut mui IKAF IK-206', '3990000', '670000', './src/img_pro/69.jpg', '', ''),
(70, 'May Hut Mui Canzy CZ-C517I', '2900000', '500000', './src/img_pro/70.jpg', '', ''),
(71, 'May hut mui IKAF IK-208', '1990000', '295000', './src/img_pro/71.jpg', '', ''),
(72, 'MAY HUT MUI IKAF MODEL: IK-205', '3200000', '750000', './src/img_pro/72.jpg', '', ''),
(73, 'May lam sua hat Hawonkoo SMH-120-GE', '1450000', '100000', './src/img_pro/73.jpg', '', ''),
(74, 'May lam sua hat Bluestone BLB-6031', '1871000', '300000', './src/img_pro/74.jpg', '', ''),
(75, 'May lam sua hat Bluestone BLB-6035', '1925000', '300000', './src/img_pro/75.jpg', '', ''),
(76, 'May lam sua hat da nang Nagakawa NAG0824', '2690000', '242500', './src/img_pro/76.jpg', '', ''),
(77, 'May lanh LG Inverter 1 HP V10WIN1', '8800000', '725000', './src/img_pro/77.jpg', '', ''),
(78, 'May lanh LG Inverter 1 HP V10WIN1', '8800000', '500000', './src/img_pro/78.jpg', '', ''),
(79, 'May lanh LG Inverter 1.5 HP V13WIN1', '9800000', '825000', './src/img_pro/79.jpg', '', ''),
(80, 'May lanh LG Inverter 1.5 HP V13WIN1', '9800000', '500000', './src/img_pro/80.jpg', '', ''),
(81, 'May lanh 2 chieu Inverter 1 HP LG B10END1 - 9000BTU', '10200000', '500000', './src/img_pro/81.jpg', '', ''),
(82, 'May lanh 2 chieu Inverter 1.5 HP LG B13END1 - 12000BTU', '11200000', '500000', './src/img_pro/82.jpg', '', ''),
(83, 'May Lanh Casper Inverter 1.5 HP GC-12IS35 - 1 chieu - 12000', '7800000', '600000', './src/img_pro/83.jpg', '', ''),
(84, 'May lanh Samsung Inverter 1 HP AR10CYHAAWKNSV - 9000', '8250000', '500000', './src/img_pro/84.jpg', '', ''),
(85, 'May lanh Samsung Inverter 1 HP AR10TYHYCWKNSV', '7000000', '500000', './src/img_pro/85.jpg', '', ''),
(86, 'May loc nuoc RO Karofi K9IQ 2.0 9 loi', '5980000', '1055000', './src/img_pro/86.jpg', '', ''),
(87, 'MAY LOC NUOC IKAF MODEL: DE GAM', '4000000', '1025000', './src/img_pro/87.jpg', '', ''),
(88, 'May loc nuoc Karofi KAQ-U03 - 10 loi - khong tu', '4650000', '675000', './src/img_pro/88.jpg', '', ''),
(89, 'May loc nuoc Karofi Livotec 212 - 10 loi', '4000000', '650000', './src/img_pro/89.jpg', '', ''),
(90, 'May loc nuoc nong lanh Karofi Livotec 628', '8000000', '1150000', './src/img_pro/90.jpg', '', ''),
(91, 'May loc nuoc RO nong lanh Korihome WPK-915 9 loi', '9350000', '1400000', './src/img_pro/91.jpg', '', ''),
(92, 'May say bom nhiet Aqua 10 kg AQH-H1000H PS', '', '-5600000', './src/img_pro/92.jpg', '', ''),
(94, 'May say thong hoi Aqua 7 kg AQH-V700FW', '7000000', '550000', './src/img_pro/94.jpg', '', ''),
(95, 'May say thong hoi Aqua 8 kg AQH-V800H SS', '7850000', '500000', './src/img_pro/95.jpg', '', ''),
(96, 'May say thong hoi Electrolux UltimateCare 8.5 kg EDV854J3WB', '9850000', '750000', './src/img_pro/96.jpg', '', ''),
(97, 'May say toc 1750-2100W Bluestone HDB-1846', '480000', '100000', './src/img_pro/97.jpg', '', ''),
(98, 'May say toc Elmich - HDE-1822', '950000', '150000', './src/img_pro/98.jpg', '', ''),
(99, 'May xay sinh to cam tay BlueStone BLB-5216', '520000', '60000', './src/img_pro/99.jpg', '', ''),
(100, 'May xay sinh to cam tay Nagakawa NAG0826 - 300ml', '480000', '50000', './src/img_pro/100.jpg', '', ''),
(101, 'May Xay Thit Nagakawa NAG0812 (400W - 1.5 Lit)', '910000', '75000', './src/img_pro/101.jpg', '', ''),
(102, 'May Xay Thit, Thuc Pham Da Nang SEKA SK2286 Coi Thuy Tinh 2L - 500W', '460000', '75000', './src/img_pro/102.jpg', '', ''),
(103, 'Noi Ap Suat BlueStone PCB-5648 4.5 Lit 900W', '1500000', '175000', './src/img_pro/103.jpg', '', ''),
(104, 'Noi ap suat dien Greeno GR-658', '1140000', '100000', './src/img_pro/104.jpg', '', ''),
(105, 'Noi ap suat dien 6L Nagakawa NAG0205', '1610000', '145000', './src/img_pro/105.jpg', '', ''),
(106, 'Noi ap suat dien BlueStone PCB-5748 5 lit', '1530000', '190000', './src/img_pro/106.jpg', '', ''),
(107, 'Noi chien khong dau BlueStone AFB-5870 5 lit', '1420000', '193500', './src/img_pro/107.jpg', '', ''),
(108, 'Noi Chien Khong Dau Dien Tu Cam Ung Dung Tich Sieu Lon BAKA BK-338 (14 lit)', '1990000', '320000', './src/img_pro/108.jpg', '', ''),
(109, 'Noi chien khong dau Lorente LT-1200 (dung tich 10Lit )', '1830000', '290000', './src/img_pro/109.jpg', '', ''),
(110, 'Noi chien khong dau Lorente LT-1619 - 8L', '1830000', '290000', './src/img_pro/110.jpg', '', ''),
(111, 'Noi com dien Sonoto VT-1203A', '600000', '100000', './src/img_pro/111.jpg', '', ''),
(112, 'Noi com dien Greeno GR NC-1903', '990000', '70000', './src/img_pro/112.jpg', '', ''),
(113, 'Noi com dien Sonoto VT-1801B', '820000', '135000', './src/img_pro/113.jpg', '', ''),
(114, 'Noi com dien 1,2L GR-168', '680000', '85000', './src/img_pro/114.jpg', '', ''),
(115, 'Noi com dien 1,8L Povena PVN-1838', '750000', '85000', './src/img_pro/115.jpg', '', ''),
(116, 'Noi com dien 1L VT-1103B', '520000', '85000', './src/img_pro/116.jpg', '', ''),
(117, 'Noi com dien 1L Nagakawa NAG0134 - 1L', '1010000', '100000', './src/img_pro/117.jpg', '', ''),
(118, 'Noi com dien GRNC 188 - 2,2L', '780000', '65000', './src/img_pro/118.jpg', '', ''),
(119, 'Noi com dien cao tan Sato 15CT011 1.5L', '3190000', '535000', './src/img_pro/119.jpg', '', ''),
(120, 'Noi com dien cao tan Sato 18CT015 1.8L', '2990000', '500000', './src/img_pro/120.jpg', '', ''),
(121, 'Noi Com Dien Nap Gai - 1,2L - AG-266 - Geidea', '445000', '75000', './src/img_pro/121.jpg', '', ''),
(122, 'Noi com dien tu long nieu Nagakawa NAG0135 (1.8L - 900W)', '1810000', '182500', './src/img_pro/122.jpg', '', ''),
(123, 'Noi da nang Sonoto VT-002B', '980000', '115000', './src/img_pro/123.jpg', '', ''),
(124, 'Noi lau bep tu', '180000', '52500', './src/img_pro/124.jpg', '', ''),
(125, 'Noi lau dien Greeno GR-918', '720000', '110000', './src/img_pro/125.jpg', '', ''),
(126, 'Noi lau dien 2 ngan da nang 6 lit Nagakawa NAG1906', '1350000', '212500', './src/img_pro/126.jpg', '', ''),
(127, 'Noi lau dien da nang 1,2L BlueStone MPB-7233', '447000', '75000', './src/img_pro/127.jpg', '', ''),
(128, 'Noi luoc ga 30cm Kuscheln KCP023-30', '870000', '137500', './src/img_pro/128.jpg', '', ''),
(129, 'Quanh Familie inox 3 lop nguyen khoi GE-0325 (size 16)', '495000', '70000', './src/img_pro/129.jpg', '', ''),
(130, 'Robot hut bui Yeedi K8', '4490000', '595000', './src/img_pro/130.jpg', '', ''),
(131, 'Robot hut bui Ecovacs T10 Turbo', '7990000', '895000', './src/img_pro/131.jpg', '', ''),
(132, 'Robot hut bui Ecovacs X1 Omni', '9990000', '995000', './src/img_pro/132.jpg', '', ''),
(133, 'Smart Tivi 4K 43 inch Samsung UA43AU7700KXXV', '7900000', '500000', './src/img_pro/133.jpg', '', ''),
(134, 'Smart Tivi 4K Crystal UHD Samsung 43 inch UA43BU8000', '8900000', '600000', './src/img_pro/134.jpg', '', ''),
(135, 'Smart Tivi LG 4K 55 inch 55UQ7550PSF', '9500000', '500000', './src/img_pro/135.jpg', '', ''),
(136, 'Smart Tivi LG 4K 55 inch 55UQ7550PSF', '9500000', '500000', './src/img_pro/136.jpg', '', ''),
(137, 'Smart Tivi Samsung 4K 43 inch UA43AU7700KXXV', '7900000', '500000', './src/img_pro/137.jpg', '', ''),
(138, 'Smart Tivi Samsung 4K 75 inch 75AU7700 UHD', '17200000', '500000', './src/img_pro/138.jpg', '', ''),
(139, 'Smart Tivi Samsung 4K 75 inch UA75CU8000', '19500000', '500000', './src/img_pro/139.jpg', '', ''),
(140, 'Smart Tivi Samsung 4K Crystal UHD 55 inch UA55BU8000', '10200000', '500000', './src/img_pro/140.jpg', '', ''),
(141, 'TCL google tivi 43T66 43 inch 4K HDR model 2022 moi nhat', '6600000', '500000', './src/img_pro/141.jpg', '', ''),
(142, 'Tu lanh Aqua 90 lit AQR-D99FA(BS)', '3200000', '250000', './src/img_pro/142.jpg', '', ''),
(143, 'Tu lanh Aqua Inverter 357 lit AQR-T376FA(FB)', '9000000', '650000', './src/img_pro/143.jpg', '', ''),
(144, 'Tu lanh Casper Inverter 404 lit RT-421VGW', '7800000', '750000', './src/img_pro/144.jpg', '', ''),
(145, 'Tu lanh Funiki FR-91CD 90 lit', '', '-1250000', './src/img_pro/145.jpg', '', ''),
(146, 'Tu Lanh Samsung Inverter 305 Lit RT31CG5424S9SV', '8000000', '500000', './src/img_pro/146.jpg', '', ''),
(147, 'Tu mat Sanaky Inverter 290 lit TM.VH358K3L', '10900000', '700000', './src/img_pro/147.jpg', '', ''),
(148, 'Tu mat Sanaky VH-308KL - 240L', '9800000', '700000', './src/img_pro/148.jpg', '', ''),
(149, 'Tu say quan ao Kuscheln KCD23-01', '880000', '115000', './src/img_pro/149.jpg', '', ''),
(150, 'Xung hap inox cao cap Gematek GE-0236', '310000', '50000', './src/img_pro/150.jpg', '', ''),
(151, 'Bo Noi CAREZ 3 Mon CPC871SI-03', '2600000', '300000', './src/img_pro/151.jpg', '', ''),
(152, 'May lam sua hat da nang Nagakawa NAG0815', '2500000', '300000', './src/img_pro/152.jpg', '', ''),
(153, 'Dieu hoa Daikin 1 chieu Inverter 9.000Btu FTKB25YVMV', '9500000', '450000', './src/img_pro/153.jpg', '', ''),
(154, 'Dieu hoa Daikin 12000 BTU inverter 1 chieu FTKB35YVMV', '11700000', '650000', './src/img_pro/154.jpg', '', ''),
(155, 'May lanh 2 chieu Daikin Inverter 2 HP FTHF50VVMV', '22200000', '1250000', './src/img_pro/155.jpg', '', ''),
(156, 'Dieu hoa Daikin 2 chieu Inverter 1HP-9.000BTU FTXV25QVMV NHAP THAI', '12300000', '500000', './src/img_pro/156.jpg', '', ''),
(157, 'May lanh Daikin Inverter 1 HP FTKZ25VVMV', '15000000', '750000', './src/img_pro/157.jpg', '', ''),
(158, 'May lanh 2 chieu Daikin Inverter 1.5 HP FTHF35RVMV', '14650000', '750000', './src/img_pro/158.jpg', '', ''),
(159, 'Bep dien tu doi Canzy CZI 208 plus', '4500000', '850000', './src/img_pro/159.jpg', '', ''),
(160, 'BEP TU DOI SPM-T89K', '9500000', '2400000', './src/img_pro/160.jpg', '', ''),
(161, 'Chao xao inox cao cap 3 lop day lien Elmich Trimax EL-2826 size 26cm', '801000', '155000', './src/img_pro/161.jpg', '', ''),
(163, 'Noi lau dien 5L Nagakawa NAG1905', '845000', '75000', './src/img_pro/163.jpg', '', ''),
(164, 'Thot inox SU304 va nhua lua mach 2 mat  khang khuan GE0235', '420000', '75000', './src/img_pro/164.jpg', '', ''),
(165, 'Noi com dien cam ung Nagakawa NAG0136 (1.2L - 500W) - Tich hop 11 chuong trinh nau - Bao hanh 12 thang', '1580000', '125000', './src/img_pro/165.jpg', '', ''),
(166, 'May giat say Samsung WD95T4046CE/SV 9.5/6kg', '11900000', '750000', './src/img_pro/166.jpg', '', ''),
(168, 'Bep tu doi Germatek DE-ICF52A', '8500000', '1650000', './src/img_pro/168.jpg', '', ''),
(169, 'Dieu hoa Casper MC-18IS33', '13200000', '750000', './src/img_pro/169.jpg', '', ''),
(170, 'Tu lanh Casper Inverter 300 lit RB-320VT', '6300000', '575000', './src/img_pro/170.jpg', '', ''),
(171, 'Tu Mat Sanaky 600 Lit VH-6009HP', '19500000', '1150000', './src/img_pro/171.jpg', '', ''),
(172, 'Smart Tivi LG 4K 50 Inch 50UQ7050PSA', '8500000', '550000', './src/img_pro/172.jpg', '', ''),
(173, 'May Suoi Gom Ceramic FujiPova', '850000', '125000', './src/img_pro/173.jpg', '', ''),
(174, 'May loc nuoc RO de gam Hoa Phat HPU456', '4000000', '800000', './src/img_pro/174.jpg', '', ''),
(175, 'Den Suoi Nha Tam Fuji Pova 2 bong', '300000', '70000', './src/img_pro/175.jpg', '', ''),
(176, 'Den Suoi Nha Tam Fuji Pova 3 bong', '400000', '90000', './src/img_pro/176.jpg', '', ''),
(177, 'Android Tivi QLED 4K 55 inch Casper 55QG8000', '8000000', '250000', './src/img_pro/177.jpg', '', ''),
(178, 'May giat cua tren 8kg EcoWash WT-8NG2', '4750000', '500000', './src/img_pro/178.jpg', '', ''),
(179, 'Dieu hoa Casper inverter 1 chieu 9000BTU TC-09IS36', '5800000', '350000', './src/img_pro/179.jpg', '', ''),
(180, 'May giat Casper 7.5 kg WT-75NG1', '3300000', '300000', './src/img_pro/180.jpg', '', ''),
(181, 'Android Tivi Casper 4K 50 inch 50UGA610', '6800000', '600000', './src/img_pro/181.jpg', '', ''),
(182, 'Smart Tivi Casper S Series HD 32 inch 32HGS610', '3300000', '400000', './src/img_pro/182.jpg', '', ''),
(183, 'Smart Tivi Casper S Series Full HD 43 inch 43FGS610', '5000000', '600000', './src/img_pro/183.jpg', '', ''),
(184, 'Tu Lanh Aqua Inverter 291 Lit AQR-T329MA(GB)', '9850000', '500000', './src/img_pro/184.jpg', '', ''),
(185, 'May lanh Casper Inverter 1 HP GC-09IS35 - 1 chieu', '6400000', '500000', './src/img_pro/185.jpg', '', ''),
(186, 'Android Tivi QLED 4K 55 inch Casper 55QG8000', '8000000', '500000', './src/img_pro/186.jpg', '', ''),
(187, 'Tu dong Pinimax PNM-15AF 100 lit', '4650000', '', './src/img_pro/187.jpg', '', ''),
(188, 'Dieu hoa Casper 2 chieu Inverter 1HP-9.000BTU GH-09IS33', '8100000', '500000', './src/img_pro/188.jpg', '', ''),
(189, 'Chau rua 2 ho can DY-8245', '3000000', '600000', './src/img_pro/189.jpg', '', ''),
(190, 'Voi hai duong nuoc DY-R2004B', '2100000', '200000', './src/img_pro/190.jpg', '', ''),
(191, 'Chau rua Thac nuoc Inox phu Nano DY-COMBO 7846N', '4740000', '600000', './src/img_pro/191.jpg', '', ''),
(192, 'Gian phoi thong minh', '1500000', '350000', './src/img_pro/192.jpg', '', ''),
(193, 'Noi ap suat dien BlueStone PCB-5629 5 lit', '1530000', '240000', './src/img_pro/193.jpg', '', ''),
(194, 'Smart Tivi LG UHD 4K 55 inch 55UQ7050', '9800000', '500000', './src/img_pro/194.jpg', '', ''),
(195, 'Smart Tivi NanoCell LG 4K 65 inch 65NANO76SQA', '13900000', '455000', './src/img_pro/195.jpg', '', ''),
(196, 'May say bom nhiet LG 9 kg DVHP09W', '17500000', '400000', './src/img_pro/196.jpg', '', ''),
(197, 'Tivi Samsung 65AU8000K', '12300000', '400000', './src/img_pro/197.jpg', '', ''),
(198, 'May giat Casper 8.5 kg WT-85NG1', '3500000', '500000', './src/img_pro/198.jpg', '', ''),
(199, 'Android Tivi Casper 43 inch 43FG5200', '', '', './src/img_pro/199.jpg', '', ''),
(200, 'May giat Electrolux UltimateCare 500 Inverter 9 kg EWF9024P5WB', '8800000', '600000', './src/img_pro/200.jpg', '', ''),
(201, 'May say thong hoi Electrolux UltimateCare 7.5 kg EDV754H3WB', '8500000', '500000', './src/img_pro/201.jpg', '', ''),
(202, 'Google Tivi TCL LED 4K 55 inch 55P638', '8160000', '600000', './src/img_pro/202.jpg', '', ''),
(203, 'Google Tivi QLED TCL 4K 55 inch 55Q636', '9200000', '600000', './src/img_pro/203.jpg', '', ''),
(204, 'Android Tivi TCL 4K 43 inch 43P615', '6550000', '600000', './src/img_pro/204.jpg', '', ''),
(205, 'Google Tivi TCL 4K 43 inch 43P635', '6950000', '600000', './src/img_pro/205.jpg', '', ''),
(206, 'Tu lanh LG Inverter 217 Lit GV-B212WB', '5900000', '600000', './src/img_pro/206.jpg', '', ''),
(207, 'Dieu hoa Casper 2 chieu Inverter 1HP-9.000BTU GH-09IS33', '8100000', '500000', './src/img_pro/207.jpg', '', ''),
(208, 'Dieu hoa Casper 2 chieu Inverter 1.5HP-12.000BTU GH-12IS33', '9100000', '500000', './src/img_pro/208.jpg', '', ''),
(209, 'May giat Electrolux Inverter 9 kg EWF9024D3WB', '8350000', '600000', './src/img_pro/209.jpg', '', ''),
(210, 'May giat Electrolux Inverter 10 kg EWF1025DQWB', '8900000', '500000', './src/img_pro/210.jpg', '', ''),
(211, 'Lo vi song co nuong BlueStone MOB-7816 20 Lit', '1800000', '250000', './src/img_pro/211.jpg', '', ''),
(212, 'Lo chien khong dau hoi nuoc BlueStone AFB-5895 24 lit', '4000000', '350000', './src/img_pro/212.jpg', '', ''),
(213, 'Lo vi song co nuong BlueStone MOB-7741 25 lit', '2200000', '252500', './src/img_pro/213.jpg', '', ''),
(214, 'Smart Tivi LG 4K 65 inch 65UQ8000PSC', '13200000', '900000', './src/img_pro/214.jpg', '', ''),
(215, 'May Hut Am Kidosu 14 Lit KD-D14L', '4050000', '400000', './src/img_pro/215.jpg', '', ''),
(216, 'May Hut Am Kidosu 25 Lit KD-D25L', '5150000', '400000', './src/img_pro/216.jpg', '', ''),
(217, 'May hut am Kokomi cong suat 25L/ngay', '5000000', '400000', './src/img_pro/217.jpg', '', ''),
(218, 'May hut am Espark ESP-W20A889', '6350000', '400000', './src/img_pro/218.jpg', '', ''),
(219, 'May lanh 2 chieu Daikin Inverter 1.0 HP FTHF25RVMV', '11650000', '500000', './src/img_pro/219.jpg', '', ''),
(220, 'Bo noi, chao ran cao cap DY-SS404', '1700000', '250000', './src/img_pro/220.jpg', '', ''),
(221, 'May giat Aqua Inverter 9 kg AQD-D903G.BK', '8200000', '700000', './src/img_pro/221.jpg', '', ''),
(222, 'Noi com dien 1,8L Nagakawa NAG0133', '1100000', '132500', './src/img_pro/222.jpg', '', ''),
(223, 'Noi ap suat dien 6L Nagakawa NAG0206', '1660000', '100000', './src/img_pro/223.jpg', '', ''),
(224, 'May xay sinh to 1.5L Nagakawa NAG0820', '1300000', '15000', './src/img_pro/224.jpg', '', ''),
(225, 'Bep tu doi Rudiger RIC-2366', '7900000', '1000000', './src/img_pro/225.jpg', '', ''),
(226, 'Noi chien khong dau BLUESTAR BL-100', '1450000', '200000', './src/img_pro/226.jpg', '', ''),
(227, 'Chao nhom duc cao cap Europa GE-0330 size 20cm', '450000', '75000', './src/img_pro/227.jpg', '', ''),
(228, 'Smart Tivi LG 4K 55 Inch 55UQ7050PSA', '9800000', '500000', './src/img_pro/228.jpg', '', ''),
(229, 'Bo noi 5 mon inox nap kinh Rudiger', '1550000', '100000', './src/img_pro/229.jpg', '', ''),
(230, 'Bo noi inox cao cap 5 day Alpha GE-0230', '1230000', '200000', './src/img_pro/230.jpg', '', ''),
(231, 'Bo noi inox cao cap 5 day Alpha+ GE-0231', '1740000', '200000', './src/img_pro/231.jpg', '', ''),
(232, 'Dieu hoa Daikin Inverter 2 chieu 12.000BTU FTXV35QVMV/RXV35QVMV', '15700000', '750000', './src/img_pro/232.jpg', '', ''),
(233, 'May xay sinh to Nagakawa NAG0816', '1075000', '150000', './src/img_pro/233.jpg', '', ''),
(234, 'Tu lanh Samsung Inverter 305 lit RT31CG5424B1SV', '8500000', '600000', './src/img_pro/234.jpg', '', ''),
(235, 'Smart Tivi Samsung 4K 43 inch UA43AU7700', '8400000', '600000', './src/img_pro/235.jpg', '', ''),
(236, 'Smart Tivi Samsung 4K Crystal UHD 43 inch UA43BU8000', '9300000', '600000', './src/img_pro/236.jpg', '', ''),
(237, 'May lanh Samsung Inverter 1 HP AR10TYHYCWKNSV', '7500000', '600000', './src/img_pro/237.jpg', '', ''),
(238, 'Google Tivi Sony 4K 50 inch KD-50X75K', '11200000', '600000', './src/img_pro/238.jpg', '', ''),
(239, 'Google Tivi Sony 4K 50 inch KD-50X80L', '14700000', '1400000', './src/img_pro/239.jpg', '', ''),
(240, 'May giat Toshiba Inverter 10.5 kg TW-T21BU115UWV(MG)', '8800000', '500000', './src/img_pro/240.jpg', '', ''),
(241, 'Smart Tivi Samsung 4K 65 inch UA65AU7700', '12100000', '500000', './src/img_pro/241.jpg', '', ''),
(242, 'Smart Tivi Samsung 65 inch Crystal UHD 4K 65CU8500', '13900000', '900000', './src/img_pro/242.jpg', '', ''),
(243, 'Noi chien khong dau Sanaky VH-60WM1 6.5 Lit', '1000000', '200000', './src/img_pro/243.jpg', '', ''),
(244, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q60BAKXXV', '15400000', '900000', './src/img_pro/244.jpg', '', ''),
(245, 'May giat Samsung AI Inverter 10kg WW10T634DLX/SV', '10310000', '500000', './src/img_pro/245.jpg', '', ''),
(246, 'May giat Samsung Inverter 9 kg WW90T634DLN/SV', '9500000', '600000', './src/img_pro/246.jpg', '', ''),
(247, 'May giat Samsung Inverter 9 kg WW90T3040WW/SV', '6600000', '500000', './src/img_pro/247.jpg', '', ''),
(248, 'May giat Samsung Inverter 9.5 kg WW95TA046AX/SV', '8500000', '600000', './src/img_pro/248.jpg', '', ''),
(249, 'May giat say Samsung Addwash Inverter 9.5 kg WD95T754DBX/SV', '12600000', '1000000', './src/img_pro/249.jpg', '', ''),
(250, 'May giat say Samsung Inverter 9.5 kg WD95T4046CE/SV long ngang', '11600000', '1000000', './src/img_pro/250.jpg', '', ''),
(251, 'Tu lanh Samsung Inverter 280 lit RB27N4010S8/SV', '8200000', '500000', './src/img_pro/251.jpg', '', ''),
(252, 'Tu lanh Samsung Inverter 348 lit RT35CG5424B1SV', '10000000', '600000', './src/img_pro/252.jpg', '', ''),
(253, 'Tu lanh Samsung Inverter 236 lit RT22M4040DX/SV', '6300000', '500000', './src/img_pro/253.jpg', '', ''),
(254, 'Tu lanh Samsung Inverter 385 lit Bespoke RT38CB668412SV', '13300000', '900000', './src/img_pro/254.jpg', '', ''),
(255, 'tivi Samsung QLED 4K 55 inch QA55Q60BA', '12200000', '600000', './src/img_pro/255.jpg', '', ''),
(256, 'Smart Tivi QLED Samsung 4K 43 inch QA43Q60BAKXXV', '9800000', '600000', './src/img_pro/256.jpg', '', ''),
(257, 'May giat say Electrolux Inverter giat 10 kg - say 7 kg EWW1042AEWA', '17000000', '800000', './src/img_pro/257.jpg', '', ''),
(258, 'Smart Tivi Samsung 32 inch UA32T4202', '5800000', '600000', './src/img_pro/258.jpg', '', ''),
(259, 'Smart Tivi Samsung 32 inch UA32T4500', '6500000', '600000', './src/img_pro/259.jpg', '', ''),
(260, 'Smart Tivi QLED 4K 43 inch Samsung QA43Q60B', '9900000', '600000', './src/img_pro/260.jpg', '', ''),
(261, 'Smart Tivi QLED 4K 50 inch Samsung QA50Q60B', '11350000', '600000', './src/img_pro/261.jpg', '', ''),
(262, 'Smart Tivi Qled Samsung 4K 50 inch QA50Q60BA', '11400000', '600000', './src/img_pro/262.jpg', '', ''),
(263, 'Smart Tivi Samsung 4K 50 inch 50AU7000 UHD', '9400000', '600000', './src/img_pro/263.jpg', '', ''),
(264, 'Smart Tivi Samsung 4K 55 inch UA55AU7700', '9900000', '600000', './src/img_pro/264.jpg', '', ''),
(265, 'Smart Tivi Samsung 4K Crystal UHD 55 inch UA55BU8000', '12200000', '600000', './src/img_pro/265.jpg', '', ''),
(266, 'Smart Tivi Samsung 4K 65 inch 65AU7000 UHD', '11000000', '600000', './src/img_pro/266.jpg', '', ''),
(267, 'Smart Tivi Samsung 4K 65 inch UA65AU7002', '11150000', '600000', './src/img_pro/267.jpg', '', ''),
(268, 'Smart Tivi Samsung 4K 65 inch UA65AU7700', '12100000', '600000', './src/img_pro/268.jpg', '', ''),
(269, 'Smart Tivi Samsung 4K 75 inch UA75AU7700', '17600000', '900000', './src/img_pro/269.jpg', '', ''),
(270, 'Bo noi 5 mon inox nap kinh Rudiger', '1550000', '100000', './src/img_pro/270.jpg', '', ''),
(271, 'Noi com dien tu 1,2L Nagakawa NAG0131', '995000', '100000', './src/img_pro/271.jpg', '', ''),
(272, 'chau rua Nasaki', '2800000', '350000', './src/img_pro/272.jpg', '', ''),
(273, 'May lanh 2 chieu Panasonic Inverter 1.5 HP CU/CS-YZ12AKH-8', '15450000', '750000', './src/img_pro/273.jpg', '', ''),
(274, 'Tu lanh Samsung Inverter 307 lit RB30N4190BY/SV', '11100000', '600000', './src/img_pro/274.jpg', '', ''),
(275, 'Tu lanh Samsung Inverter 307 lit RB30N4190BU/SV', '11500000', '600000', './src/img_pro/275.jpg', '', ''),
(276, 'Tu lanh Casper 95 lit RO-95PG', '3200000', '100000', './src/img_pro/276.jpg', '', ''),
(277, 'Tu lanh Aqua 50 lit AQR-D59FA(BS)', '2700000', '100000', './src/img_pro/277.jpg', '', ''),
(278, 'May lanh Casper 2.5 HP SC-24FS32', '13350000', '500000', './src/img_pro/278.jpg', '', ''),
(279, 'May lanh Casper Inverter 2.5 HP GC-24IS32', '15650000', '500000', './src/img_pro/279.jpg', '', ''),
(280, 'Smart tivi LG 4K 43 inch 43LM5750', '6900000', '500000', './src/img_pro/280.jpg', '', ''),
(281, 'Smart Tivi LG 43UQ801C0SB 4K 43 inch', '7800000', '500000', './src/img_pro/281.jpg', '', ''),
(282, 'Smart Tivi LG UHD 4K 43 inch 43UQ7050', '7700000', '500000', './src/img_pro/282.jpg', '', ''),
(283, 'Tivi LG UHD UR811 55 inch 2023 4K Smart TV | 55UR811', '10400000', '500000', './src/img_pro/283.jpg', '', ''),
(284, 'May lanh Casper Inverter 2.5 HP GC-24IS32', '15650000', '500000', './src/img_pro/284.jpg', '', ''),
(285, 'Dieu hoa Casper 2 chieu Inverter 24000BTU GH-24IS33', '17400000', '500000', './src/img_pro/285.jpg', '', ''),
(286, 'Tu Lanh Samsung Inverter 305 Lit RT31CG5424S9SV', '9120000', '500000', './src/img_pro/286.jpg', '', ''),
(287, 'Tu lanh Samsung Inverter 305 lit Bespoke RT31CB56248ASV', '10820000', '500000', './src/img_pro/287.jpg', '', ''),
(288, 'May loc nuoc Karofi 8 cap KT - ERO80', '4000000', '500000', './src/img_pro/288.jpg', '', ''),
(289, 'May giat LG AI DD Inverter 10 kg FV1410S4P', '10800000', '500000', './src/img_pro/289.jpg', '', ''),
(290, 'May giat LG AI DD Inverter 10 kg FV1410S4B', '10900000', '500000', './src/img_pro/290.jpg', '', ''),
(291, 'May giat say LG AI DD Inverter giat 10 kg - say 6 kg FV1410D4P', '14300000', '750000', './src/img_pro/291.jpg', '', ''),
(292, 'Google Tivi Sony 4K 55 inch KD-55X80L', '15250000', '500000', './src/img_pro/292.jpg', '', ''),
(293, 'May lanh Daikin Inverter 1 HP FTKZ25VVMV', '15000000', '500000', './src/img_pro/293.jpg', '', ''),
(294, 'May lanh 2 chieu Daikin Inverter 1.5 HP FTHF35RVMV', '14650000', '500000', './src/img_pro/294.jpg', '', ''),
(295, 'Tu lanh LG Inverter 335 lit GN-M332BL', '9000000', '500000', './src/img_pro/295.jpg', '', ''),
(296, 'May lanh Panasonic Inverter 1 HP CU/CS-XU9ZKH-8', '12400000', '500000', './src/img_pro/296.jpg', '', ''),
(297, 'May lanh 2 chieu Panasonic Inverter 1.5 HP CU/CS-YZ12AKH-8', '15550000', '500000', './src/img_pro/297.jpg', '', ''),
(298, 'May lanh 2 chieu Panasonic Inverter 1 HP CU/CS-YZ9AKH-8', '12650000', '500000', './src/img_pro/298.jpg', '', ''),
(299, 'May giat Samsung Inverter 10 kg WW10TP44DSB/SV', '10150000', '500000', './src/img_pro/299.jpg', '', ''),
(300, 'Tu lanh Samsung Inverter 345 lit RT35CG5544B1SV', '10650000', '500000', './src/img_pro/300.jpg', '', ''),
(301, 'Tu lanh Panasonic Inverter 300 lit NR-BV331WGKV', '15450000', '500000', './src/img_pro/301.jpg', '', ''),
(302, 'Dieu hoa LG 2 chieu Inverter 2HP-18.000BTU B18END1', '20500000', '600000', './src/img_pro/302.jpg', '', ''),
(303, 'Binh nong lanh ROSSI 15L RA15SQ', '1480000', '150000', './src/img_pro/303.jpg', '', ''),
(304, 'Binh tam nong lanh Rossi Amore 20 lit RA 20 SQ', '1580000', '150000', './src/img_pro/304.jpg', '', ''),
(305, 'Binh nong lanh Rossi 30l vuong RA30SQ', '1730000', '100000', './src/img_pro/305.jpg', '', ''),
(306, 'Dieu hoa Panasonic 1 chieu 12.000BTU inverter RU12AKH-8', '13050000', '500000', './src/img_pro/306.jpg', '', ''),
(307, 'May lanh Casper Inverter 1 HP QC-09IS36', '6700000', '500000', './src/img_pro/307.jpg', '', ''),
(308, 'TU DONG SANAKY VH-3699W3', '8000000', '500000', './src/img_pro/308.jpg', '', ''),
(309, 'May Lanh Casper Inverter 1.5 Hp QC-12IS36', '7900000', '500000', './src/img_pro/309.jpg', '', ''),
(310, 'Noi com dien cook& cook 1lit2', '680000', '100000', './src/img_pro/310.jpg', '', ''),
(311, 'May lanh Casper Inverter 2.5 HP GC-24IS32', '16550000', '500000', './src/img_pro/311.jpg', '', ''),
(312, 'May lanh Casper Inverter 2 HP IC-18TL32', '12800000', '500000', './src/img_pro/312.jpg', '', ''),
(313, 'May lanh Gree Inverter 1.5 HP GWC12PB-K3D0P4', '9350000', '500000', './src/img_pro/313.jpg', '', ''),
(314, 'May lanh LG Inverter 2 HP V18WIN1', '14300000', '650000', './src/img_pro/314.jpg', '', ''),
(315, 'Tu dong Sanaky Inverter 410 lit VH-5699HY3', '11700000', '500000', './src/img_pro/315.jpg', '', ''),
(316, 'Tu lanh Aqua Inverter 456 lit Multi Door AQR-M525XA(FB)', '14650000', '600000', './src/img_pro/316.jpg', '', ''),
(317, 'Tu lanh LG Inverter 470 lit Multi Door GR-B50BL', '14400000', '600000', './src/img_pro/317.jpg', '', ''),
(318, 'Chau rua 1 ho DY-Combo 7546N', '4500000', '500000', './src/img_pro/318.jpg', '', ''),
(319, 'Noi chien khong dau AQUA Gold MA 588 12L', '1400000', '', './src/img_pro/319.jpg', '', ''),
(320, 'May lanh Daikin Inverter 2 HP FTKB50WAVMV', '18400000', '900000', './src/img_pro/320.jpg', '', ''),
(321, 'May lanh Gree Inverter 1 HP CHARM9CI', '8150000', '500000', './src/img_pro/321.jpg', '', ''),
(322, 'Gree Inverter 1 chieu 12000BTU GWC12PB', '9350000', '500000', './src/img_pro/322.jpg', '', ''),
(323, 'Dieu hoa 2 chieu Gree Inverter 9554 BTU CHARM9HI', '10050000', '500000', './src/img_pro/323.jpg', '', ''),
(324, 'Dieu hoa Gree 1 chieu 1HP-9.000BTU AMORE9CN', '7150000', '500000', './src/img_pro/324.jpg', '', ''),
(325, 'Tu lanh LG Inverter 635 lit Side By Side InstaView GR-G257SV', '27300000', '1750000', './src/img_pro/325.jpg', '', ''),
(326, 'Tu lanh LG Inverter 635 Lit Side By Side InstaView Door-in-Door GR-X257BG', '39200000', '2750000', './src/img_pro/326.jpg', '', ''),
(327, 'May giat say Electrolux UltimateCare 500 Inverter giat 10 kg - say 7 kg EWW1024P5WB', '14600000', '750000', './src/img_pro/327.jpg', '', ''),
(329, 'MAY HUT MUI EH-70AF76', '7200000', '750000', './src/img_pro/329.jpg', '', ''),
(330, 'Tu dong Sanaky VH-4099A3', '7750000', '250000', './src/img_pro/330.jpg', '', ''),
(331, 'Dieu hoa Daikin Inverter 2 chieu 18.000BTU FTXV50QVMV/RXV50QVMV', '25500000', '1400000', './src/img_pro/331.jpg', '', ''),
(332, 'Tu lanh Samsung Inverter 385 lit RT38CB668412SV', '12800000', '600000', './src/img_pro/332.jpg', '', ''),
(335, 'Google Tivi Sony 4K 43 inch KD-43X75K', '9700000', '500000', './src/img_pro/335.jpg', '', ''),
(336, 'Google Tivi Sony 4K 55 inch KD-55X75K', '12400000', '500000', './src/img_pro/336.jpg', '', ''),
(337, 'May lanh Panasonic Inverter 1 HP CU/CS-RU9AKH-8 (Model 2024)', '10550000', '500000', './src/img_pro/337.jpg', '', ''),
(338, 'Dieu hoa TCL T-Pro TAC-10CSD', '6065000', '500000', './src/img_pro/338.jpg', '', ''),
(339, 'May loc nuoc Kangaroo Hydrogen nong lanh KG10A68', '6840000', '500000', './src/img_pro/339.jpg', '', ''),
(340, 'May loc nuoc Kangaroo Hydrogen KG100HC3', '5375000', '500000', './src/img_pro/340.jpg', '', ''),
(341, 'MAY LOC NUOC KANGAROO KG111 - 11 LOI, MAU MOI 2024', '5200000', '500000', './src/img_pro/341.jpg', '', ''),
(342, 'May giat say LG Inverter giat 12 kg - say 7 kg FV1412H3BA', '15900000', '850000', './src/img_pro/342.jpg', '', ''),
(343, 'Tu lanh Hitachi Inverter 464 lit Multi Door HR4N7520DSWDXVN', '18400000\r\n hung bao cho khach', '500000', './src/img_pro/343.jpg', '', ''),
(344, 'LO VI SONG TOSHIBA MWP-MM20P(WH)', '1490000', '200000', './src/img_pro/344.jpg', '', ''),
(345, 'May giat LG Inverter 9 kg FM1209S6W', '7500000', '500000', './src/img_pro/345.jpg', '', ''),
(346, 'Binh tam nong lanh Rossi Amore 15 lit RA 15 SQ', '1480000', '150000', './src/img_pro/346.jpg', '', ''),
(347, 'Binh nong lanh Rossi 20l ngang RAM20SL', '1780000', '150000', './src/img_pro/347.jpg', '', ''),
(348, 'Binh nong lanh Rossi 30l ngang RAM30SL', '1930000', '150000', './src/img_pro/348.jpg', '', ''),
(349, 'Bep tu doi Rudiger RIC-2380', '7660000', '1000000', './src/img_pro/349.jpg', '', ''),
(351, 'BO 5 NOI CHAO TU INOX 5 DAY LP55-IP02', '1700000', '100000', './src/img_pro/351.jpg', '', ''),
(352, 'AM SIEU TOC SANAKY SNK-18NS', '150000', '30000', './src/img_pro/352.jpg', '', ''),
(353, 'Tu lanh Samsung Inverter 382 lit RT38CG6584B1SV', '12320000', '960000', './src/img_pro/353.jpg', '', ''),
(354, 'Tu lanh LG Inverter 266 lit GV-B262BL', '6900000', '350000', './src/img_pro/354.jpg', '', ''),
(355, 'Quat dieu hoa Hoa Phat HPCF1-045', '3350000', '200000', './src/img_pro/355.jpg', '', ''),
(358, 'Tu lanh LG Inverter 374 Lit GN-D372BL', '9400000', '400000', './src/img_pro/358.jpg', '', ''),
(359, 'Dieu hoa 1 chieu Nagakawa NS-C09R2T30 9000 Btu', '5550000', '500000', './src/img_pro/359.jpg', '', ''),
(360, 'Dieu hoa treo tuong Inverter 1 chieu NIS-C09R2T29', '6100000', '500000', './src/img_pro/360.jpg', '', ''),
(361, 'Tu lanh Hitachi Inverter 464 lit Multi Door HR4N7520DSWDXVN', '20600000', '1850000', './src/img_pro/361.jpg', '', ''),
(362, 'DIEU HOA CASPER 1 CHIEU INVERTER 24000BTU GC-24IS35', '15450000', '600000', './src/img_pro/362.jpg', '', ''),
(363, 'Dieu hoa tieu chuan 1 chieu 1HP (SC-09FS36)', '5700000', '350000', './src/img_pro/363.jpg', '', ''),
(365, 'Tu lanh Casper Inverter 458 lit Side By Side RS-460PG', '10650000', '1300000', './src/img_pro/365.jpg', '', ''),
(366, 'Tu lanh Casper Inverter 458 lit RS-460PBW', '11600000', '1300000', './src/img_pro/366.jpg', '', ''),
(367, 'May Giat Panasonic 10 Kg NA-F10S10BRV', '7650000', '600000', './src/img_pro/367.jpg', '', ''),
(368, 'May Giat Panasonic 9 Kg NA-F90S10BRV', '7050000', '600000', './src/img_pro/368.jpg', '', ''),
(369, 'May Giat LG 9 Kg T2109NT1G', '5300000', '400000', './src/img_pro/369.jpg', '', ''),
(370, 'Lo nuong 28L DECAKILA KEEV015B', '2700000', '300000', './src/img_pro/370.jpg', '', ''),
(66, 'May hut khói khủ mùi cao cap DY-KN702\r\n', '6500000', '900000', './src/img_pro/66.jpg', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `web_settings`
--

CREATE TABLE `web_settings` (
  `id` int DEFAULT NULL,
  `logo` varchar(225) NOT NULL,
  `map` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `fb` text NOT NULL,
  `hl` varchar(11) NOT NULL,
  `timework` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `web_settings`
--

INSERT INTO `web_settings` (`id`, `logo`, `map`, `email`, `fb`, `hl`, `timework`) VALUES
(NULL, '', '', '', '', '0965516363', '8h - 18h&nbsp;&nbsp;');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `imghome`
--
ALTER TABLE `imghome`
  ADD PRIMARY KEY (`id_imghome`),
  ADD KEY `idnha` (`idnha`);

--
-- Chỉ mục cho bảng `nha_dat`
--
ALTER TABLE `nha_dat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `imghome`
--
ALTER TABLE `imghome`
  MODIFY `id_imghome` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nha_dat`
--
ALTER TABLE `nha_dat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `imghome`
--
ALTER TABLE `imghome`
  ADD CONSTRAINT `imghome_ibfk_1` FOREIGN KEY (`idnha`) REFERENCES `nha_dat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
