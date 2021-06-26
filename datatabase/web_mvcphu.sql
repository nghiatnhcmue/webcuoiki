-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 26, 2021 lúc 04:36 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mvcphu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Apple'),
(2, 'SamSung'),
(15, 'DELL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(37, 35, 'b1tiv444cn4ntaednrnai73old', 'Điện thoại Samsung Galaxy A20s', '4490000', 5, '4830c9bbf2.jpg'),
(38, 44, 'b1tiv444cn4ntaednrnai73old', 'Laptop Dell Inspiron 3501 i5 1135G7/4GB/512GB/Win10 (P90F005N3501B) ', '17990000', 1, '3000d67d56.jpg'),
(39, 44, 'b1tiv444cn4ntaednrnai73old', 'Laptop Dell Inspiron 3501 i5 1135G7/4GB/512GB/Win10 (P90F005N3501B) ', '17990000', 1, '3000d67d56.jpg'),
(40, 44, 'b1tiv444cn4ntaednrnai73old', 'Laptop Dell Inspiron 3501 i5 1135G7/4GB/512GB/Win10 (P90F005N3501B) ', '17990000', 1, '3000d67d56.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Điện Thoại'),
(2, 'Máy Tính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(1, 'nghia', '351 Lạc Long Quân', 'HCM', 'Việt Nam', '7000', '0941414503', 'nghiatnhcmue@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'eqe', 'eqwe', 'wqwe', 'eqwe', 'qwewe', 'qwe', 'a', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(60, 1, 'Điện thoại Samsung Galaxy A22', 2, 1, '5890000', 'eed3ed6744.jpg', 0, '2021-06-26 20:56:30'),
(61, 32, 'Điện thoại Samsung Galaxy Note 20 Ultra 5G', 2, 1, '23990000', 'f76e2f282c.jpg', 0, '2021-06-26 21:12:12'),
(62, 34, 'Điện thoại Samsung Galaxy M51', 2, 1, '8490000', '2068d46986.jpg', 0, '2021-06-26 21:18:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(1, 'Điện thoại Samsung Galaxy A22', '3123', '12321', '0', '12321', 1, 2, '<p>Samsung ch&agrave;o đ&oacute;n m&ugrave;a h&egrave; 2021 bằng sự ra mắt của bộ đ&ocirc;i Galaxy A22 v&agrave; Galaxy A22 5G với nhiều th&ocirc;ng số ấn tượng. Trong đ&oacute;, Galaxy A22 sở hữu vi&ecirc;n pin đầy năng suất, hiệu năng gaming mạnh mẽ v&agrave; m&agrave;n h&igrave;nh lớn c&oacute; khả năng hiển thị tốt.</p>\r\n<p>N&acirc;ng cao trải nghiệm người d&ugrave;ng</p>\r\n<p>Sở hữu m&agrave;n h&igrave;nh Super AMOLED rộng 6.4 inch, Samsung Galaxy A22 lu&ocirc;n thu h&uacute;t sự quan t&acirc;m của bất kỳ người ti&ecirc;u d&ugrave;ng n&agrave;o đang t&igrave;m kiếm ti&ecirc;u ch&iacute; n&agrave;y. K&iacute;ch thước m&agrave;n h&igrave;nh lớn l&agrave; một ưu điểm để bạn trải nghiệm nh&igrave;n ngắm mọi thứ thoải m&aacute;i hơn trong giải tr&iacute; cũng như c&aacute;c thao t&aacute;c hằng ng&agrave;y.</p>', 0, '5890000', 'eed3ed6744.jpg'),
(30, 'Điện thoại Samsung Galaxy S21 5G', '', '1231', '0', '1231', 1, 2, '<p>Galaxy S21 5G nằm trong series S21 đến từ Samsung nổi bật với thiết kế tr&agrave;n viền, cụm camera ấn tượng cho đến hiệu năng mạnh mẽ h&agrave;ng đầu.</p>\r\n<p>&ldquo;Bộ c&aacute;nh&rdquo; mới nổi bật v&agrave; sang trọng</p>\r\n<p>Nổi bật với cụm camera sau được thiết kế đầy mới lạ, phần khu&ocirc;n h&igrave;nh chữ nhật chứa bộ 3 camera &ocirc;m trọn cạnh tr&aacute;i của chiếc smartphone, viền khu&ocirc;n cong uyển chuyển, hạn chế tối đa độ nh&ocirc; ra so với mặt lưng, mang lại c&aacute;i nh&igrave;n tổng thể h&agrave;i h&ograve;a, độc đ&aacute;o.</p>\r\n<p>&nbsp;</p>', 1, '17990000', '6c4c5ae0a6.jpg'),
(31, 'Điện thoại Samsung Galaxy Z Fold2 5G', '', '421', '0', '421', 1, 2, '<p>Galaxy Z Fold 2 l&agrave; t&ecirc;n gọi ch&iacute;nh thức của điện thoại m&agrave;n h&igrave;nh gập cao cấp của Samsung. Với nhiều n&acirc;ng cấp ti&ecirc;n phong về thiết kế, hiệu năng v&agrave; camera, hứa hẹn đ&acirc;y sẽ l&agrave; một si&ecirc;u phẩm th&agrave;nh c&ocirc;ng tiếp theo đến từ &ldquo;&ocirc;ng tr&ugrave;m&rdquo; sản xuất điện thoại lớn nhất thế giới.</p>\r\n<p>Thiết kế cải tiến hướng đến sự ho&agrave;n thiện</p>\r\n<p>Samsung Galaxy Z Fold 2 vẫn giữ nguy&ecirc;n cơ chế m&agrave;n h&igrave;nh gập ở thế hệ tiền nhiệm. Như một quyển s&aacute;ch, chiếc điện thoại mở ra để hiển thị m&agrave;n h&igrave;nh lớn b&ecirc;n trong. B&ecirc;n ngo&agrave;i l&agrave; một m&agrave;n h&igrave;nh phụ tr&agrave;n viền với thiết kế đục lỗ.</p>', 1, '50000000', '12bf935ea9.jpg'),
(32, 'Điện thoại Samsung Galaxy Note 20 Ultra 5G', '', '645', '0', '645', 1, 2, '<p>Galaxy Note 20 Ultra 5G Trắng mẫu flagship h&agrave;ng đầu của Samsung ho&agrave;n hảo về mọi mặt, từ thiết kế sang trọng đẳng cấp cho đến hiệu năng cực khủng ẩn chứa b&ecirc;n trong. Đặc biệt chiếc b&uacute;t S Pen đầy &ldquo;quyền năng&rdquo; của d&ograve;ng Note giờ đ&acirc;y cũng đ&atilde; được n&acirc;ng l&ecirc;n một tầm cao mới.</p>\r\n<p>Thiết kế đẳng cấp xứng tầm si&ecirc;u phẩm</p>\r\n<p>Samsung Galaxy Note 20 Ultra 5G sở hữu một thiết kế đẹp như một tuyệt t&aacute;c. Samsung đ&atilde; tối ưu mọi trải nghiệm với kiểu thiết kế tối giản với phần khung nh&ocirc;m v&agrave; 2 mặt k&iacute;nh cao cấp, 4 g&oacute;c sắc cạnh l&agrave;m tăng sự mạnh mẽ nam t&iacute;nh, nhưng vẫn cho cảm gi&aacute;c cầm nắm dễ chịu v&agrave; đẳng cấp nhờ 2 cạnh viền được bo cong tinh tế kh&eacute;o l&eacute;o.</p>', 0, '23990000', 'f76e2f282c.jpg'),
(33, 'Điện thoại Samsung Galaxy A72', '', '531', '0', '531', 1, 2, '<p>Sau sự th&agrave;nh c&ocirc;ng của Galaxy S21 series, Samsung tiếp tục tấn c&ocirc;ng ph&acirc;n kh&uacute;c tầm trung với Galaxy A72 thuộc Galaxy A series, sở hữu nhiều m&agrave;u sắc trẻ trung, hệ thống camera nhiều t&iacute;nh năng cũng như n&acirc;ng cấp hiệu năng v&ocirc; c&ugrave;ng lớn mang đến những trải nghiệm ho&agrave;n to&agrave;n mới.</p>\r\n<p>Thiết kế trẻ trung, thời thượng</p>\r\n<p>Galaxy A72 cuốn h&uacute;t người d&ugrave;ng ngay &aacute;nh nh&igrave;n đầu ti&ecirc;n với đường cong mềm mại, b&oacute;ng bẩy. Cụm 4 camera sau nằm gọn trong m&ocirc;-đun h&igrave;nh chữ nhật quen thuộc c&ugrave;ng với đ&egrave;n LED flash, m&agrave;u sắc của phần m&ocirc;-đun v&agrave; mặt lưng được thiết kế c&ugrave;ng m&agrave;u gi&uacute;p cho tổng thể trở n&ecirc;n đồng bộ, h&agrave;i h&ograve;a hơn.</p>', 0, '10910000', '9b001de755.jpg'),
(34, 'Điện thoại Samsung Galaxy M51', '', '312', '0', '312', 1, 2, '<p>Galaxy M51 thuộc thế hệ Galaxy M đến từ Samsung v&agrave; được nằm trong ph&acirc;n kh&uacute;c gi&aacute; tầm trung. M&aacute;y được n&acirc;ng cấp v&agrave; cải tiến với camera g&oacute;c si&ecirc;u rộng, dung lượng pin si&ecirc;u khủng c&ugrave;ng vẻ ngo&agrave;i sang trọng v&agrave; thời thượng.</p>\r\n<p>Thiết kế hiện đại v&agrave; đẳng cấp.</p>\r\n<p>Ấn tượng ban đầu với m&agrave;n h&igrave;nh của Galaxy M51 l&agrave; kiểu m&agrave;n h&igrave;nh Infinity-O rộng 6.7 inch. Kiểu thiết kế n&agrave;y đưa camera selfie thu gọn hơn chỉ bằng một h&igrave;nh tr&ograve;n nhỏ c&ugrave;ng thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền l&agrave;m tăng khả năng hiển thị h&igrave;nh ảnh hơn.</p>\r\n<p>&nbsp;</p>\r\n<p>Ngo&agrave;i ra, m&aacute;y c&ograve;n sở hữu c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super AMOLED Plus mang đến chất lượng hiển thị sắc n&eacute;t, h&igrave;nh ảnh tươi tắn cho bạn tận hưởng c&aacute;c chương tr&igrave;nh giải tr&iacute; hấp dẫn, thưởng thức c&aacute;c bộ phim bom tấn, chơi những tựa game y&ecirc;u th&iacute;ch v&ocirc; c&ugrave;ng bắt mắt.</p>', 0, '8490000', '2068d46986.jpg'),
(35, 'Điện thoại Samsung Galaxy A20s', '', '123', '0', '123', 1, 2, '<p>Samsung Galaxy A20s 64GB l&agrave; phi&ecirc;n bản cải tiến của chiếc Samsung Galaxy A20 64GB đ&atilde; ra mắt trước đ&oacute; với những n&acirc;ng cấp về mặt camera v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh.</p>\r\n<p>Cụm 3 camera chất lượng</p>\r\n<p>Trong ph&acirc;n kh&uacute;c điện thoại tầm trung, Samsung Galaxy A20s l&agrave; một trong những smartphone hiếm hoi được trang bị cụm 3 camera sau.</p>', 0, '4490000', '4830c9bbf2.jpg'),
(36, 'Điện thoại iPhone 12 64GB', '', '323', '0', '323', 1, 1, '<p>Trong những th&aacute;ng cuối năm 2020, Apple đ&atilde; ch&iacute;nh thức giới thiệu đến người d&ugrave;ng cũng như iFan thế hệ iPhone 12 series mới với h&agrave;ng loạt t&iacute;nh năng bứt ph&aacute;, thiết kế được lột x&aacute;c ho&agrave;n to&agrave;n, hiệu năng đầy mạnh mẽ v&agrave; một trong số đ&oacute; ch&iacute;nh l&agrave; iPhone 12 64GB.</p>\r\n<p>Hiệu năng vượt xa mọi giới hạn</p>\r\n<p>Apple đ&atilde; trang bị con chip mới nhất của h&atilde;ng (t&iacute;nh đến 11/2020) cho iPhone 12 đ&oacute; l&agrave; A14 Bionic, được sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị tr&ecirc;n phi&ecirc;n bản tiền nhiệm iPhone 11.</p>', 0, '20990000', 'c7c9215017.jpg'),
(37, 'Điện thoại iPhone 11 64GB', '', '423', '0', '423', 1, 1, '<p>Th&aacute;ng 09/2019, Apple đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng bộ 3 si&ecirc;u phẩm iPhone 11, trong đ&oacute; phi&ecirc;n bản iPhone 11 64GB c&oacute; mức gi&aacute; rẻ nhất nhưng vẫn được n&acirc;ng cấp mạnh mẽ như iPhone Xr ra mắt trước đ&oacute;.</p>\r\n<p>N&acirc;ng cấp mạnh mẽ về camera</p>\r\n<p>N&oacute;i về n&acirc;ng cấp th&igrave; camera ch&iacute;nh l&agrave; điểm c&oacute; nhiều cải tiến nhất tr&ecirc;n thế hệ iPhone mới.</p>', 0, '16990000', 'c320e18233.jpg'),
(38, 'Điện thoại iPhone 12 Pro 128GB', '', '231', '0', '231', 1, 1, '<p>iPhone 12 Pro - \"Si&ecirc;u ph&acirc;̉m c&ocirc;ng nghệ\" với nhiều n&acirc;ng c&acirc;́p mạnh mẽ về thiết kế, cấu h&igrave;nh và hi&ecirc;̣u năng, khẳng định đẳng c&acirc;́p thời thượng tr&ecirc;n thị trường smartphone cao cấp.</p>\r\n<p>M&agrave;n h&igrave;nh giải tr&iacute; OLED ấn tượng</p>\r\n<p>Vẫn giống như thế hệ iPhone 11 Pro v&agrave; iPhone 11 Pro Max, iPhone 12 Pro c&oacute; thi&ecirc;́t k&ecirc;́ notch \"tai thỏ\" quen thu&ocirc;̣c c&ugrave;ng m&agrave;n h&igrave;nh Super Retina XDR OLED cho chất lượng h&igrave;nh ảnh giải tr&iacute; si&ecirc;u sắc n&eacute;t.</p>', 1, '28900000', 'f9ac099edb.jpg'),
(39, 'Điện thoại iPhone 12 mini 128GB', '', '431', '0', '431', 1, 1, '<p>Apple tiếp tục khẳng định vị thế của m&igrave;nh khi cho ra mắt mẫu iPhone 12 series với nhiều điểm được tối ưu hơn, n&acirc;ng cấp mạnh hơn. Trong đ&oacute;, iPhone 12 mini 128 GB được v&iacute; như l&agrave; phi&ecirc;n bản thu nhỏ hơn l&agrave; bản r&uacute;t gọn với cấu h&igrave;nh kh&ocirc;ng kh&aacute;c g&igrave; mấy anh lớn c&oacute; mức gi&aacute; hấp dẫn hơn.</p>\r\n<p>A14 Bionic cho sức mạnh h&agrave;ng đầu</p>\r\n<p>M&ocirc;̃i th&ecirc;́ h&ecirc;̣ iPhone mới đ&ecirc;̀u tương ứng với dòng CPU mới hơn nhằm mang lại hi&ecirc;̣u năng mạnh mẽ nh&acirc;́t. C&oacute; lẽ đ&oacute;, m&agrave; iPhone 12 mini c&oacute; nguồn sức mạnh đến từ A14 Bionic với quy tr&igrave;nh sản xuất 5 nm.</p>\r\n<p>&nbsp;</p>\r\n<p>Đ&acirc;y được coi l&agrave; con chip thuộc top những con chip mạnh nhất đến từ Apple t&iacute;nh đến thời điểm hiện tại (10/2020) mang đến sức mạnh vượt trội.</p>', 1, '18990000', '8a400b9ae9.jpg'),
(40, 'Điện thoại iPhone XR 64GB', '', '531', '0', '531', 1, 1, '<p>L&agrave; chiếc điện thoại iPhone c&oacute; mức gi&aacute; dễ chịu, ph&ugrave; hợp với nhiều kh&aacute;ch h&agrave;ng hơn, iPhone Xr vẫn được ưu &aacute;i trang bị chip Apple A12 mạnh mẽ, m&agrave;n h&igrave;nh tai thỏ c&ugrave;ng khả năng kh&aacute;ng nước kh&aacute;ng bụi.</p>\r\n<p>M&agrave;n h&igrave;nh tai thỏ tr&agrave;n viền c&ocirc;ng nghệ LCD</p>\r\n<p>Kh&aacute;c với iPhone Xs hay Xs Max, chiếc smartphone n&agrave;y sở hữu m&agrave;n h&igrave;nh LCD.</p>', 1, '12900000', '41c35d2b2c.jpg'),
(41, 'Điện thoại iPhone SE 256GB (2020)', '', '541', '0', '541', 1, 1, '<p>iPhone SE 256GB 2020 sản phẩm đến từ thương hiệu Apple với ngoại h&igrave;nh nhỏ gọn được sao ch&eacute;p từ iPhone 8 nhưng mang trong m&igrave;nh một hiệu năng mạnh mẽ với vi xử l&yacute; A13 Bionic, mức gi&aacute; hấp dẫn hứa hẹn sẽ l&agrave; yếu tố &ldquo;h&uacute;t kh&aacute;ch&rdquo; của smartphone đ&igrave;nh đ&aacute;m đến từ nh&agrave; T&aacute;o khuyết.</p>\r\n<p>Gọn nhẹ chắc chắn thoải m&aacute;i sử dụng</p>\r\n<p>iPhone SE 2020 c&oacute; thiết kế kh&aacute; nhỏ b&eacute; khi đặt cạnh c&aacute;c smartphone m&agrave;n h&igrave;nh khủng hiện nay, nhưng với những ai kh&ocirc;ng th&iacute;ch kiểu thiết kế tr&agrave;n viền v&agrave; m&agrave;n h&igrave;nh lớn, th&igrave; đ&acirc;y sẽ l&agrave; lựa chọn tốt nhất cho họ.</p>\r\n<p>&nbsp;</p>\r\n<p>Với m&agrave;n h&igrave;nh 4.7 inch, viền m&agrave;n h&igrave;nh kh&aacute; d&agrave;y, c&ugrave;ng cảm biến v&acirc;n tay Touch ID, c&aacute;c cạnh bo cong ho&agrave;n hảo, iPhone SE 2020 mang lại cảm gi&aacute;c cầm nắm quen thuộc, k&iacute;ch thước nhỏ gọn để bạn sử dụng 1 tay một c&aacute;ch dễ d&agrave;ng.</p>\r\n<p>&nbsp;</p>\r\n<p>Chiếc điện thoại mới nh&agrave; T&aacute;o trang bị m&agrave;n h&igrave;nh Retina 4.7 inch, tuy chỉ c&oacute; độ ph&acirc;n giải HD nhưng vẫn cho chất lượng hiển thị tốt với c&ocirc;ng nghệ True Tone tự c&acirc;n chỉnh m&agrave;u theo m&ocirc;i trường xung quanh.</p>\r\n<p>&nbsp;</p>\r\n<p>Điện thoại iPhone SE 256GB (2020) | M&agrave;n h&igrave;nh Rentina sắc n&eacute;t m&agrave;u sắc chuẩn x&aacute;c d&ugrave; độ ph&acirc;n giải HD</p>\r\n<p>&nbsp;</p>\r\n<p>Cũng giống như thế hệ iPhone 7 v&agrave; iPhone 8, iPhone SE 2020 vẫn trang bị n&uacute;t home cảm ứng lực phản hồi rung quen thuộc, t&iacute;ch hợp cảm biến v&acirc;n tay Touch ID thế hệ thứ 2 cho tốc độ nhận diện nhanh v&agrave; cực kỳ ch&iacute;nh x&aacute;c d&ugrave; chỉ chạm nhẹ.</p>\r\n<p>&nbsp;</p>\r\n<p>Điện thoại iPhone SE 256GB (2020) | Cảm biến v&acirc;n tay Touch ID thế hệ 2, nhanh v&agrave; ch&iacute;nh x&aacute;c</p>\r\n<p>&nbsp;</p>\r\n<p>B&ecirc;n cạnh đ&oacute;, mẫu điện thoại iPhone rẻ c&ograve;n c&oacute; khả năng chống nước IP67 hạn chế rủi ro khi rơi v&agrave;o nước hay đi mưa, chiếc điện thoại c&ograve;n c&oacute; thể sạc kh&ocirc;ng d&acirc;y qua mặt lưng k&iacute;nh ph&iacute;a sau kh&aacute; tiện lợi.</p>\r\n<p>&nbsp;</p>\r\n<p>Điện thoại iPhone SE 256GB (2020) | Chuẩn chống nước IP67</p>\r\n<p>&nbsp;</p>\r\n<p>Cấu h&igrave;nh v&ocirc; địch trong tầm gi&aacute;</p>\r\n<p>C&oacute; thể n&oacute;i, trong tầm gi&aacute; hiện tại hầu như kh&ocirc;ng một chiếc điện thoại Android n&agrave;o c&oacute; hiệu năng vượt mặt iPhone SE.</p>\r\n<p>&nbsp;</p>\r\n<p>D&ugrave; ngoại h&igrave;nh kh&aacute; nhỏ gọn, nhưng b&ecirc;n trong iPhone SE 2020 l&agrave; một cấu h&igrave;nh &ldquo;khủng long&rdquo; với vi xử l&yacute; Bionic A13, cho ph&eacute;p m&aacute;y hoạt động cực kỳ nhanh ch&oacute;ng v&agrave; mượt m&agrave;, thậm ch&iacute; trong một số trường hợp c&ograve;n nhanh hơn cả iPhone 11 hay iPhone 11 Pro.</p>\r\n<p>&nbsp;</p>\r\n<p>Điện thoại iPhone SE 256GB (2020) | Giải tr&iacute; chơi game cực mượt m&agrave;</p>\r\n<p>&nbsp;</p>\r\n<p>Đo hiệu năng AnTuTu, iPhone SE 2020 đạt số điểm 364.049 điểm, với th&ocirc;ng số n&agrave;y gi&uacute;p điện thoại chơi game tốt hơn cũng như tự tin chiến h&agrave;ng loạt tựa game đồ họa khủng hiện nay, m&agrave; kh&ocirc;ng gặp bất cứ t&igrave;nh trạng giật rớt khung h&igrave;nh.</p>\r\n<p>&nbsp;</p>\r\n<p>Điện thoại iPhone SE 2020 sau khi đo hiệu năng</p>\r\n<p>&nbsp;</p>\r\n<p>Ngo&agrave;i hiệu năng si&ecirc;u khủng, th&igrave; ri&ecirc;ng với phi&ecirc;n bản 256 GB sẽ mang đến cho bạn một kh&ocirc;ng gian lưu trữ kh&aacute; thoải m&aacute;i, ở những mẫu điện thoại kh&ocirc;ng hỗ trợ thẻ nhớ như iPhone th&igrave; dung lượng bộ nhớ lớn l&agrave; điều thật sự cần thiết.</p>\r\n<p>&nbsp;</p>\r\n<p>Một camera vẫn x&oacute;a ph&ocirc;ng mượt m&agrave;</p>\r\n<p>Tuy chỉ trang bị vỏn vẹn 1 camera ở ph&iacute;a sau v&agrave; 1 ph&iacute;a trước, nhưng iPhone SE 2020 l&agrave; điện thoại một camera sau tốt nhất hiện nay ở thời điểm hiện tại.</p>\r\n<p>&nbsp;</p>\r\n<p>Điện thoại iPhone SE 256GB (2020) | Chụp ảnh bằng camera thường</p>\r\n<p>&nbsp;</p>\r\n<p>Chất ảnh từ camera sau 12 MP rất tốt, thu v&agrave; t&aacute;i tạo được nhiều chi tiết, dải nhạy s&aacute;ng rộng. B&ecirc;n cạnh đ&oacute;, chip A13 Bionic cho ph&eacute;p thiết bị k&iacute;ch hoạt chế độ Smart HDR hỗ trợ chụp một loạt bức ảnh, d&ugrave;ng c&ocirc;ng nghệ Semantic rendering để ph&acirc;n t&iacute;ch m&agrave;u sắc, &aacute;nh s&aacute;ng từ đ&oacute; cho ra bức ảnh tốt nhất.</p>\r\n<p>&nbsp;</p>\r\n<p>Điện thoại iPhone SE 256GB (2020) | Ảnh chụp camera sau 12 MP</p>\r\n<p>&nbsp;</p>\r\n<p>Kh&ocirc;ng chỉ camera sau, m&agrave; camera trước của iPhone SE 2020 cũng cho ra những tấm ảnh selfie đẹp ấn tượng, nước da được xử l&yacute; mịn m&agrave;ng hơn trước rất nhiều.</p>\r\n<p>&nbsp;</p>\r\n<p>Điện thoại iPhone SE 256GB (2020) | Ảnh chụp camera selfie 7 MP</p>\r\n<p>&nbsp;</p>\r\n<p>Với c&ocirc;ng nghệ đặc biệt của m&igrave;nh, Apple cho biết cả camera trước v&agrave; sau tr&ecirc;n iPhone SE 2020 c&oacute; thể x&oacute;a ph&ocirc;ng ch&iacute;nh x&aacute;c một c&aacute;ch tự nhi&ecirc;n kh&ocirc;ng thua k&eacute;m chiếc điện thoại n&agrave;o c&oacute; 2 ống k&iacute;nh trở l&ecirc;n.</p>\r\n<p>&nbsp;</p>\r\n<p>Pin đủ d&ugrave;ng, hỗ trợ sạc nhanh</p>\r\n<p>Trang bị mức dung lượng pin kh&aacute; &iacute;t ỏi chỉ 1821 mAh n&ecirc;n thời lượng pin tr&ecirc;n iPhone SE 2020 kh&ocirc;ng qu&aacute; ấn tượng, với những t&aacute;c vụ nhẹ nh&agrave;ng cơ bản, chiếc iPhone vẫn c&oacute; thể hoạt động vừa vặn một ng&agrave;y.</p>\r\n<p>&nbsp;</p>\r\n<p>Điện thoại iPhone SE 256GB (2020) | Sạc pin nhanh 18W qua cổng Lightning</p>\r\n<p>&nbsp;</p>\r\n<p>B&ugrave; lại, thiết bị sẽ c&oacute; hỗ trợ sạc pin nhanh 18 W, gi&uacute;p r&uacute;t ngắn tối đa thời gian sạc pin. Tuy nhi&ecirc;n, để sử dụng t&iacute;nh năng n&agrave;y, người d&ugrave;ng cần mua th&ecirc;m bộ sạc 18 W hoặc sử dụng chung bộ sạc của iPhone 11 hoặc 11 Pro.</p>\r\n<p>&nbsp;</p>\r\n<p>Để c&oacute; thể sử dụng chiếc iPhone SE 2020 thoải m&aacute;i hơn, bạn n&ecirc;n sắm th&ecirc;m pin sạc dự ph&ograve;ng để cấp năng lượng cho dế y&ecirc;u của m&igrave;nh khi cần thiết.</p>\r\n<p>&nbsp;</p>\r\n<p>Sở hữu h&agrave;ng loạt c&ocirc;ng nghệ khủng, vi xử l&yacute; mới nhất đến từ h&atilde;ng điện thoại danh tiếng bậc nhất Apple, nhưng iPhone SE 2020 lại g&acirc;y cho&aacute;ng ngợp bởi mức gi&aacute; hấp dẫn, tiếp tục sẽ l&agrave; model b&aacute;n chạy tiếp theo của Apple trong thời gian sắp tới.</p>\r\n<p>&nbsp;</p>', 1, '13990000', '2c2c0f9de1.jpg'),
(42, 'Laptop Apple MacBook Pro M1 2020 16GB/512GB/Space Grey (Z11C)', '', '321', '0', '321', 2, 1, '<p>Apple Macbook Pro M1 2020 (Z11C) được n&acirc;ng cấp với bộ vi xử l&yacute; mới cực kỳ mạnh mẽ, con laptop n&agrave;y sẽ phục vụ tốt cho c&ocirc;ng việc của bạn, đặc biệt b&ecirc;n lĩnh vực đồ họa, kỹ thuật.</p>\r\n<p>Tăng cường kh&ocirc;ng gian lưu trữ, tốc độ xử l&yacute;</p>\r\n<p>Chip Apple M1 l&agrave; một bộ vi xử l&yacute; mạnh mẽ, được ra mắt lần đầu ti&ecirc;n tr&ecirc;n MAC. Đ&acirc;y l&agrave; con chip với bộ xử l&yacute; 5 nm, t&iacute;ch hợp CPU 8 l&otilde;i với 4 l&otilde;i CPU tốc độ v&agrave; v&agrave; 4 l&otilde;i tiết kiệm năng lượng. Nhờ vậy, thời lượng pin của laptop được k&eacute;o d&agrave;i đến tận 10 tiếng đồng hồ, gi&uacute;p cho bạn thoải m&aacute;i l&agrave;m việc với một hiệu suất cực kỳ cao.</p>', 0, '44490000', '4a80f47648.jpg'),
(43, 'Laptop Apple MacBook Air M1 2020 16GB/256GB/Space Gray (Z124000DE)', '', '231', '0', '231', 2, 1, '<p>Laptop Apple MacBook Air M1 2020 (Z124000DE) c&oacute; thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, m&agrave;n h&igrave;nh Retina hiển thị si&ecirc;u n&eacute;t c&ugrave;ng với hệ thống bảo mật tối ưu.</p>\r\n<p>Hiệu năng ấn tượng đến từ chip M1</p>\r\n<p>Chip M1 được Apple thiết kế d&agrave;nh ri&ecirc;ng cho MacBook mang đến hiệu năng vượt trội. Card đồ họa GPU 7 nh&acirc;n mang lại hiệu suất cao hơn những thế hệ trước đ&oacute;, đồ họa cao hơn gấp 5 lần, cho ph&eacute;p bạn xử l&yacute; h&igrave;nh ảnh, chỉnh sửa video đều tốt, hỗ trợ xuất video đến 4K.</p>\r\n<p>Bộ nhớ RAM 16 GB cho ph&eacute;p bạn sử dụng đa nhiệm thoải m&aacute;i với những t&aacute;c vụ như lướt web, soạn thảo, xem video hay thiết kế h&igrave;nh ảnh bằng Photoshop, Adobe IIIustrator,...</p>\r\n<p>&nbsp;</p>', 1, '33990000', '40cefdad04.jpg'),
(44, 'Laptop Dell Inspiron 3501 i5 1135G7/4GB/512GB/Win10 (P90F005N3501B) ', '', '32', '0', '32', 2, 15, '<p>Được trang bị chip Intel Core i5 thế hệ 11 ti&ecirc;n tiến, Dell Inspiron 3501 i5 (P90F005N3501B) l&agrave; mẫu laptop c&oacute; cấu h&igrave;nh ổn định, mạnh mẽ c&ugrave;ng với thiết kế đặc trưng, đẹp mắt, hướng đến đối tượng l&agrave; d&acirc;n văn ph&ograve;ng, c&aacute;c bạn học sinh, sinh vi&ecirc;n.</p>\r\n<p>Cấu h&igrave;nh mạnh mẽ, xử l&iacute; tốt đa t&aacute;c vụ văn ph&ograve;ng</p>\r\n<p>Dell Inspiron 3501 trang bị chip Intel Core i5 1135G7 đến từ thế hệ 11 Tiger Lake ti&ecirc;n tiến, khả năng phản hồi ổn định, tiết kiệm điện năng, gi&uacute;p bạn sử dụng mượt m&agrave; c&aacute;c t&aacute;c vụ văn ph&ograve;ng với xung nhịp trung b&igrave;nh 2.40 GHz v&agrave; chạy mượt c&aacute;c ứng dụng đồ họa 2D với xung nhịp l&ecirc;n đến 4.2 GHz khi được &eacute;p xung nhờ Turbo Boost.</p>\r\n<p>&nbsp;</p>\r\n<p>RAM 4 GB cho m&aacute;y c&oacute; khả năng đa nhiệm tốt, chuyển đổi qua lại c&aacute;c ứng dụng đang mở dễ d&agrave;ng, liền mạch với tốc độ Bus RAM 2666 MHz. Th&ecirc;m v&agrave;o đ&oacute;, m&aacute;y hỗ trợ tối đa RAM 16 GB v&agrave; c&oacute; sẵn 1 khe RAM trống để n&acirc;ng cấp nhu cầu khi cần thiết.</p>', 0, '17990000', '3000d67d56.jpg'),
(45, 'Laptop Dell XPS 13 9310 i5 1135G7/8GB/256GB/Touch/Win10 (70231343) ', '', '231', '0', '231', 2, 15, '<p>Laptop Dell XPS 13 9310 i5 (70231343) sở hữu một cấu h&igrave;nh mạnh mẽ đ&aacute;ng gờm trong th&acirc;n m&aacute;y si&ecirc;u mỏng nhẹ, m&agrave;n h&igrave;nh tr&agrave;n viền c&ugrave;ng với độ s&aacute;ng 500 nits rực rỡ đ&aacute;p ứng trọn vẹn mọi nhu cầu của d&acirc;n văn ph&ograve;ng.</p>\r\n<p>Thiết kế mỏng nhẹ, bền bỉ từ kim loại nguy&ecirc;n khối</p>\r\n<p>Laptop Dell XPS c&oacute; thiết kế mỏng nhẹ của d&ograve;ng ultrabook, th&acirc;n m&aacute;y được gia c&ocirc;ng từ nh&ocirc;m&nbsp; k&egrave;m theo cấu tạo với sợi carbon v&agrave; bảo vệ bằng k&iacute;nh Corning Gorilla Glass vừa tăng độ bền vừa khiến m&aacute;y trở n&ecirc;n sang trọng hơn. Với độ d&agrave;y chỉ 14.35 mm, trọng lượng 1.32 kg, Dell XPS ho&agrave;n to&agrave;n kh&ocirc;ng g&acirc;y trở ngại khi di chuyển.</p>', 1, '39990000', '05b00046ad.jpg'),
(46, 'Laptop Dell Inspiron 7501 i5 10300H/8GB/512GB/4GB GTX1650Ti/Win10 (N5I5012W)', '', '311', '0', '311', 2, 15, '<p>Laptop được trang bị bộ vi xử l&yacute; Intel Core i5 Comet Lake thế hệ 10 với xung nhịp cơ bản 2.50 GHz v&agrave; khả năng &eacute;p xung Turbo Boost l&ecirc;n đến 4.5 GHz, xử l&yacute; ổn định c&aacute;c t&aacute;c vụ Office, cho khả năng đồ họa ở hiệu suất cao, đ&aacute;p ứng nhu cầu chỉnh sửa ảnh bằng Photoshop, dựng video bằng Premiere hay After Effects,...</p>\r\n<p>&nbsp;</p>\r\n<p>Dung lượng RAM 8 GB c&ugrave;ng tốc độ Bus RAM l&ecirc;n đến 2933 MHz gi&uacute;p m&aacute;y c&oacute; thể hoạt động mượt m&agrave; c&ugrave;ng l&uacute;c nhiều ứng dụng, chuyển đổi giữa c&aacute;c sổ l&agrave;m việc một c&aacute;ch nhanh ch&oacute;ng, trơn tru. Ngo&agrave;i ra chiếc laptop n&agrave;y c&ograve;n hỗ trợ n&acirc;ng cấp RAM l&ecirc;n đến 24 GB phục vụ nhu cầu cao hơn của người d&ugrave;ng.</p>', 1, '34900000', 'e4c826fc55.jpg'),
(47, 'Laptop Dell Inspiron 7306 i5 1135G7/8GB/512GB/Touch/Pen/Win10 (N3I5202W) ', '', '231', '0', '231', 2, 15, '<p>Laptop Dell Inspiron 7306 i5 (N3I5202W) l&agrave; mẫu laptop 2 trong 1 thuộc ph&acirc;n kh&uacute;c cao cấp của nh&agrave; Dell. Với thiết kế mỏng nhẹ, khả năng gập xoay linh hoạt v&agrave; cấu h&igrave;nh mạnh mẽ, đ&acirc;y quả l&agrave; bạn đồng h&agrave;nh đ&aacute;ng tin cậy đối với d&acirc;n văn ph&ograve;ng hoặc doanh nh&acirc;n.</p>\r\n<p>Thiết kế 2 trong 1 tiện lợi, sang trọng</p>\r\n<p>Laptop được ho&agrave;n thiện từ kim loại nguy&ecirc;n khối tạo sự liền mạch, kiểu d&aacute;ng thanh tho&aacute;t, sang trọng. Chiếc m&aacute;y n&agrave;y mỏng 16.74 mm v&agrave; trọng lượng chỉ 1.37 kg, gọn nhẹ như một quyển s&aacute;ch, dễ d&agrave;ng để bạn cho v&agrave;o t&uacute;i x&aacute;ch v&agrave; mang theo b&ecirc;n m&igrave;nh mỗi ng&agrave;y.</p>', 1, '24990000', 'e9f80b2caf.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
