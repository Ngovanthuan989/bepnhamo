-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 13, 2022 lúc 03:44 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `restaurant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `title` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `cate_getfly` int(8) DEFAULT NULL,
  `template` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_type` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_hide` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `title`, `slug`, `parent`, `cate_getfly`, `template`, `icon`, `description`, `image`, `post_type`, `is_hide`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 'BLOG GRID', 'tin-tuc', 0, NULL, 'default', NULL, '<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>', '/library/images/sanpham/cake_pastries_bg.jpg', 'post', NULL, NULL, '2022-04-09 15:06:23', NULL),
(33, 'SHOP PRODUCTS', 'san-pham', 0, NULL, 'default', NULL, '<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart</p>', '/library/images/banner/product-1.jpg', 'product', NULL, NULL, '2022-04-08 19:54:47', NULL),
(34, 'Tin mới', 'tin-moi', 0, NULL, 'default', NULL, '<p>Tin tức mới nhất</p>', NULL, 'post', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_post`
--

CREATE TABLE `category_post` (
  `category_post_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `show_breadcrum` tinyint(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_post`
--

INSERT INTO `category_post` (`category_post_id`, `category_id`, `post_id`, `show_breadcrum`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 33, 1, 1, '2022-04-09 10:01:33', '2022-04-09 10:01:37', NULL),
(708, 33, 25, NULL, '2022-04-09 10:14:33', NULL, '2022-04-09 10:14:33'),
(709, 33, 26, NULL, NULL, NULL, NULL),
(710, 33, 27, 1, '2022-04-09 10:01:33', '2022-04-09 10:01:37', NULL),
(711, 33, 28, NULL, NULL, NULL, NULL),
(712, 33, 29, NULL, NULL, NULL, NULL),
(713, 33, 24, NULL, '2022-04-09 10:14:45', NULL, '2022-04-09 10:14:45'),
(714, 33, 23, NULL, '2022-04-09 10:14:57', NULL, '2022-04-09 10:14:57'),
(715, 33, 22, NULL, '2022-04-09 10:15:07', NULL, '2022-04-09 10:15:07'),
(716, 33, 16, NULL, '2022-04-09 10:15:20', NULL, '2022-04-09 10:15:20'),
(717, 33, 12, NULL, NULL, NULL, NULL),
(718, 33, 7, NULL, NULL, NULL, NULL),
(719, 33, 15, NULL, '2022-04-09 10:15:45', NULL, '2022-04-09 10:15:45'),
(720, 33, 9, NULL, '2022-04-09 10:43:26', NULL, '2022-04-09 10:43:26'),
(721, 33, 25, NULL, NULL, NULL, NULL),
(722, 33, 24, NULL, NULL, NULL, NULL),
(723, 33, 23, NULL, NULL, NULL, NULL),
(724, 33, 22, NULL, NULL, NULL, NULL),
(725, 33, 16, NULL, NULL, NULL, NULL),
(726, 33, 15, NULL, NULL, NULL, NULL),
(727, 33, 9, NULL, NULL, NULL, NULL),
(728, 24, 49, NULL, '2022-04-09 15:16:58', NULL, '2022-04-09 15:16:58'),
(729, 24, 49, NULL, '2022-04-09 15:32:39', NULL, '2022-04-09 15:32:39'),
(730, 24, 48, NULL, NULL, NULL, NULL),
(731, 24, 47, NULL, NULL, NULL, NULL),
(732, 24, 46, NULL, NULL, NULL, NULL),
(733, 24, 49, NULL, NULL, NULL, NULL),
(734, 33, 77, NULL, '2022-04-12 14:49:00', NULL, '2022-04-12 14:49:00'),
(735, 33, 77, NULL, NULL, NULL, NULL),
(736, 34, 78, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `content`, `user_id`, `post_id`, `customer_name`, `customer_email`, `customer_phone`, `rating`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(72, 'Tuyệt vời', 2, 6, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2022-02-15', '2022-02-15', NULL),
(73, 'Tuyệt vời', 2, 7, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2021-06-02', '2021-06-02', NULL),
(74, 'Tuyệt vời', 2, 8, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2021-05-27', '2021-05-27', NULL),
(75, 'Tuyệt vời', 2, 9, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2020-09-20', '2020-09-20', NULL),
(76, 'Tuyệt vời', 2, 10, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2022-02-12', '2022-02-12', NULL),
(77, 'Tuyệt vời', 2, 11, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2021-05-30', '2021-05-30', NULL),
(78, 'Tuyệt vời', 2, 12, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2021-05-26', '2021-05-26', NULL),
(79, 'Tuyệt vời', 2, 13, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2022-01-06', '2022-01-06', NULL),
(80, 'Tuyệt vời', 2, 14, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2021-11-04', '2021-11-04', NULL),
(81, 'Tuyệt vời', 2, 15, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2021-09-03', '2021-09-03', NULL),
(82, 'Tuyệt vời', 2, 16, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2021-10-01', '2021-10-01', NULL),
(83, 'Tuyệt vời', 2, 22, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2022-02-27', '2022-02-27', NULL),
(84, 'Tuyệt vời', 2, 23, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2020-12-31', '2020-12-31', NULL),
(85, 'Tuyệt vời', 2, 24, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2021-06-17', '2021-06-17', NULL),
(86, 'Tuyệt vời', 2, 25, 'Bui Tuan Viet', NULL, NULL, NULL, 0, '2021-01-14', '2021-01-14', NULL),
(87, 'Hay quá', 1, 12, 'Test', 'vietbt@vatgia.com', NULL, NULL, NULL, '2022-04-12', '2022-04-12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `phone`, `email`, `address`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Bui Tuan Viet', NULL, 'vietbt@vatgia.com', NULL, '1234', '2022-04-09 16:49:16', '2022-04-09 16:49:16', NULL),
(3, 'Bui Tuan Viet', NULL, 'vietbt@vatgia.com', NULL, '1234', '2022-04-09 16:49:44', '2022-04-09 16:49:44', NULL),
(4, 'Bui Tuan Viet', NULL, 'vietbt@vatgia.com', NULL, '1234', '2022-04-09 16:50:33', '2022-04-09 16:50:33', NULL),
(5, 'VNPTEpay', NULL, 'vietbt@vatgia.com', NULL, '1234', '2022-04-09 16:52:33', '2022-04-09 16:52:33', NULL),
(6, 'Bui Tuan Viet', NULL, 'congty123@vatgia.com', NULL, '123', '2022-04-09 16:53:38', '2022-04-09 16:53:38', NULL),
(7, 'Bui Tuan Viet', NULL, 'vietbt@vatgia.com', NULL, '1234', '2022-04-09 16:56:14', '2022-04-09 16:56:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_save_uid`
--

CREATE TABLE `facebook_save_uid` (
  `facebook_save_uid_id` int(11) NOT NULL,
  `uid_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_setting`
--

CREATE TABLE `facebook_setting` (
  `facebook_id` int(11) NOT NULL,
  `accesstoken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like_minimum` int(11) DEFAULT NULL,
  `comment_minimum` int(11) DEFAULT NULL,
  `groups` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `face_ids` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter`
--

CREATE TABLE `filter` (
  `filter_id` int(11) NOT NULL,
  `name_filter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_filter_id` int(11) NOT NULL,
  `theme_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `filter`
--

INSERT INTO `filter` (`filter_id`, `name_filter`, `group_filter_id`, `theme_code`, `user_email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dưới 500.000 đ', 1, NULL, NULL, NULL, NULL, NULL),
(2, '500.000 - 1.000.000đ', 1, NULL, NULL, NULL, NULL, NULL),
(3, '1.000.000 - 2.000.000đ', 1, NULL, NULL, NULL, NULL, NULL),
(4, '2.000.000 - 5.000.000đ', 1, NULL, NULL, NULL, NULL, NULL),
(5, '≥ 5.000.000đ', 1, NULL, NULL, NULL, NULL, NULL),
(6, 'Bayshore Pharmaceuticals LLC', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(7, 'Biosense - Hàn Quốc', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(8, 'Botania', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(9, 'Care Line Australia Pty Ltd', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(10, 'Cơ sở SX Đông dược Đông Hải', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(11, 'Công ty Cổ phần Capital', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(12, 'Default Sorting', 2, NULL, NULL, NULL, NULL, NULL),
(13, 'Popular', 2, NULL, NULL, NULL, NULL, NULL),
(14, 'Latest', 2, NULL, NULL, NULL, NULL, NULL),
(15, 'Average Price', 2, NULL, NULL, NULL, NULL, NULL),
(16, 'High Price', 2, NULL, NULL, NULL, NULL, NULL),
(17, 'Low Price', 2, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_filter`
--

CREATE TABLE `group_filter` (
  `group_filter_id` int(11) NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '0: chưa xóa. 1: đã xóa.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `group_filter`
--

INSERT INTO `group_filter` (`group_filter_id`, `group_name`, `theme_code`, `user_email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Giá sản phẩm', NULL, NULL, NULL, NULL, NULL),
(2, 'Loại sản phẩm', NULL, NULL, NULL, '2022-04-09 09:41:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_mail`
--

CREATE TABLE `group_mail` (
  `group_mail_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `group_mail`
--

INSERT INTO `group_mail` (`group_mail_id`, `name`, `description`, `updated_at`, `deleted_at`) VALUES
(1, 'Test', 'ABC', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information`
--

CREATE TABLE `information` (
  `infor_id` int(11) NOT NULL,
  `slug_type_input` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `information`
--

INSERT INTO `information` (`infor_id`, `slug_type_input`, `content`, `updated_at`, `deleted_at`) VALUES
(1, 'domain', 'http://restaurant.local/', '2022-04-10 20:35:25', NULL),
(2, 'logo', 'HELLO', '2022-04-12 17:58:38', NULL),
(3, 'icon', '/library/images/android-icon-36x36.png', '2022-04-10 20:35:25', NULL),
(4, 'title_1', 'For your comfort', '2018-10-04 02:55:55', NULL),
(5, 'sub_title_1', 'OUR SERVICES', '2022-04-08 21:57:53', NULL),
(6, 'title_2', 'OUR SPECIALITIES', NULL, NULL),
(7, 'sub_title_2', 'OUR SPECIALITIES', '2018-10-04 03:24:11', NULL),
(8, 'title_trong_video', 'THE BEST RESTAURANT IN TOWN. ENJOY YOUR MEAL', '2018-10-04 03:24:11', NULL),
(9, 'link_video', 'https://www.youtube.com/watch?v=HSEaOJ4GVlw', '2018-10-04 03:24:11', NULL),
(28, 'so-dien-thoai', '0346533312', '2022-04-10 20:35:25', NULL),
(29, 'thoi-gian-lam-viec', NULL, NULL, NULL),
(30, 'dia-chi', '102 Thái Thịnh - Đống Đa - Hà Nội', '2022-04-10 20:35:25', NULL),
(31, 'email', 'buituanviet1234@gmail.com', '2022-04-10 20:35:25', NULL),
(32, 'nhung-facebook', NULL, NULL, NULL),
(33, 'copy-right', '© 2022 TUANVIET , ALL RIGHTS RESERVED', '2022-04-10 20:35:26', NULL),
(34, 'dien-thoai', NULL, NULL, NULL),
(35, 'thuong-hieu', '/library/images/apple-icon-precomposed.png', '2022-04-10 20:35:26', NULL),
(36, 'nhung-ban-do', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.977854491255!2d105.8019440915678!3d21.022736016285606!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aba15ec15d17%3A0x620e85c2cfe14d4c!2zTMSDbmcgQ2jhu6cgdOG7i2NoIEjhu5MgQ2jDrSBNaW5o!5e0!3m2!1svi!2s!4v1649430632071!5m2!1svi!2s\" width=\"100%\" height=\"100%\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2022-04-10 20:35:26', NULL),
(10, 'title_3', 'Most popular menu', NULL, NULL),
(11, 'sub_title_3', 'POPULAR DISHES', '2018-10-04 02:55:55', NULL),
(12, 'button_title_3', 'Check our full menu', NULL, NULL),
(13, 'button_link', 'cua-hang/san-pham', '2022-04-12 17:27:11', NULL),
(18, 'title_form', 'RESERVE A TABLE', '2018-10-04 03:24:11', NULL),
(19, 'sub_title_form', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,', NULL, NULL),
(20, 'image_form', 'assets/images/restaurant/reservation.jpg', '2018-10-04 02:55:55', NULL),
(14, 'meta_title', 'Restaurant', '2022-04-10 20:35:26', NULL),
(15, 'meta_description', 'Restaurant', '2022-04-10 20:35:26', NULL),
(16, 'meta_keyword', 'Restaurant', '2022-04-10 20:35:26', NULL),
(27, 'hotline', '190012121', '2022-04-10 20:35:25', NULL),
(37, 'text-footer', '<p>The languages only differ in their grammar, their pronunciation and their most common words.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information_general`
--

CREATE TABLE `information_general` (
  `infor_id` int(11) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `input`
--

CREATE TABLE `input` (
  `input_id` int(11) NOT NULL,
  `type_input_slug` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `input`
--

INSERT INTO `input` (`input_id`, `type_input_slug`, `content`, `post_id`, `updated_at`, `deleted_at`, `cate_id`) VALUES
(1, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, '2018-09-27 04:05:24', '2018-09-27 04:05:24', NULL),
(2, 'thuong-hieu', 'Olympian Labs - Mỹ', 24, '2018-09-27 04:05:37', '2018-09-27 04:05:37', NULL),
(3, 'thuong-hieu', 'Olympian Labs - Mỹ', 23, '2018-09-28 07:56:20', '2018-09-28 07:56:20', NULL),
(4, 'thuong-hieu', 'Olympian Labs - Mỹ', 22, '2018-09-27 04:04:47', '2018-09-27 04:04:47', NULL),
(5, 'thuong-hieu', 'Olympian Labs - Mỹ', 16, '2018-10-03 04:19:19', '2018-10-03 04:19:19', NULL),
(6, 'thuong-hieu', 'Olympian Labs - Mỹ', 15, '2018-10-03 04:19:25', '2018-10-03 04:19:25', NULL),
(7, 'thuong-hieu', 'Olympian Labs - Mỹ', 13, '2018-10-03 04:19:32', '2018-10-03 04:19:32', NULL),
(8, 'thuong-hieu', 'Olympian Labs - Mỹ', 12, '2018-10-03 04:19:39', '2018-10-03 04:19:39', NULL),
(9, 'thuong-hieu', 'Olympian Labs - Mỹ', 9, '2018-09-27 04:05:01', '2018-09-27 04:05:01', NULL),
(10, 'thuong-hieu', 'Olympian Labs - Mỹ', 7, '2018-09-27 04:05:08', '2018-09-27 04:05:08', NULL),
(11, 'kiem-tra-truong-du-lieu', '123124', NULL, '2018-09-27 02:56:57', '2018-09-27 02:56:57', 27),
(12, 'kiem-tra-truong-du-lieu', '12', NULL, NULL, NULL, 27),
(13, 'kiem-tra-truong-du-lieu', '12', NULL, '2018-09-27 02:57:48', '2018-09-27 02:57:48', 28),
(14, 'kiem-tra-truong-du-lieu', '12232', NULL, NULL, NULL, 28),
(15, 'thuong-hieu', NULL, 35, '2018-09-27 03:27:54', '2018-09-27 03:27:54', NULL),
(16, 'thuong-hieu', NULL, 35, '2018-09-27 03:40:01', '2018-09-27 03:40:01', NULL),
(17, 'thuong-hieu', NULL, 35, NULL, NULL, NULL),
(18, 'thuong-hieu', NULL, 36, '2018-09-27 03:41:08', '2018-09-27 03:41:08', NULL),
(19, 'thuong-hieu', NULL, 36, NULL, NULL, NULL),
(20, 'thuong-hieu', 'Olympian Labs - Mỹ', 22, '2018-10-03 04:19:11', '2018-10-03 04:19:11', NULL),
(21, 'thuong-hieu', 'Olympian Labs - Mỹ', 9, '2018-10-03 04:19:45', '2018-10-03 04:19:45', NULL),
(22, 'thuong-hieu', 'Olympian Labs - Mỹ', 7, '2018-10-03 04:19:51', '2018-10-03 04:19:51', NULL),
(23, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, '2018-09-27 04:48:12', '2018-09-27 04:48:12', NULL),
(24, 'thuong-hieu', 'Olympian Labs - Mỹ', 24, '2018-09-27 04:05:55', '2018-09-27 04:05:55', NULL),
(25, 'thuong-hieu', 'Olympian Labs - Mỹ', 24, '2018-09-28 07:56:14', '2018-09-28 07:56:14', NULL),
(26, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, '2018-09-27 05:53:11', '2018-09-27 05:53:11', NULL),
(27, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, '2018-09-27 05:53:23', '2018-09-27 05:53:23', NULL),
(28, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, '2018-09-28 07:56:10', '2018-09-28 07:56:10', NULL),
(29, 'thuong-hieu', NULL, 37, NULL, NULL, NULL),
(30, 'kiem-tra-truong-du-lieu', NULL, NULL, NULL, NULL, 6),
(31, 'icon-danh-muc', '/library/images/danhmucsp/thuc-pham-giam-can-an-kieng-1517387699.png', NULL, NULL, NULL, 6),
(32, 'backgruod-icon', '#52ad1f', NULL, NULL, NULL, 6),
(33, 'backgruod-title', '#71bf44', NULL, NULL, NULL, 6),
(34, 'kiem-tra-truong-du-lieu', NULL, NULL, NULL, NULL, 7),
(35, 'icon-danh-muc', '/library/images/danhmucsp/ho-tro-dieu-tri-ung-thu-ung-buou-1517387719.png', NULL, NULL, NULL, 7),
(36, 'backgruod-icon', '#f06922', NULL, NULL, NULL, 7),
(37, 'backgruod-title', '#fe9144', NULL, NULL, NULL, 7),
(38, 'kiem-tra-truong-du-lieu', NULL, NULL, NULL, NULL, 8),
(39, 'icon-danh-muc', '/library/images/danhmucsp/tinh-dau-1517387636.png', NULL, NULL, NULL, 8),
(40, 'backgruod-icon', '#f06922', NULL, NULL, NULL, 8),
(41, 'backgruod-title', '#fe9144', NULL, NULL, NULL, 8),
(42, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799(1).png', NULL, NULL, NULL, 1),
(43, 'backgruod-icon', NULL, NULL, NULL, NULL, 1),
(44, 'backgruod-title', NULL, NULL, NULL, NULL, 1),
(45, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799.png', NULL, NULL, NULL, 2),
(46, 'backgruod-icon', NULL, NULL, NULL, NULL, 2),
(47, 'backgruod-title', NULL, NULL, NULL, NULL, 2),
(48, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799.png', NULL, NULL, NULL, 3),
(49, 'backgruod-icon', NULL, NULL, NULL, NULL, 3),
(50, 'backgruod-title', NULL, NULL, NULL, NULL, 3),
(51, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799.png', NULL, NULL, NULL, 4),
(52, 'backgruod-icon', NULL, NULL, NULL, NULL, 4),
(53, 'backgruod-title', NULL, NULL, NULL, NULL, 4),
(54, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799.png', NULL, NULL, NULL, 5),
(55, 'backgruod-icon', NULL, NULL, NULL, NULL, 5),
(56, 'backgruod-title', NULL, NULL, NULL, NULL, 5),
(57, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799.png', NULL, NULL, NULL, 9),
(58, 'backgruod-icon', NULL, NULL, NULL, NULL, 9),
(59, 'backgruod-title', NULL, NULL, NULL, NULL, 9),
(60, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799.png', NULL, NULL, NULL, 10),
(61, 'backgruod-icon', NULL, NULL, NULL, NULL, 10),
(62, 'backgruod-title', NULL, NULL, NULL, NULL, 10),
(63, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799(1).png', NULL, NULL, NULL, 12),
(64, 'backgruod-icon', NULL, NULL, NULL, NULL, 12),
(65, 'backgruod-title', NULL, NULL, NULL, NULL, 12),
(66, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799.png', NULL, NULL, NULL, 13),
(67, 'backgruod-icon', NULL, NULL, NULL, NULL, 13),
(68, 'backgruod-title', NULL, NULL, NULL, NULL, 13),
(69, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799.png', NULL, NULL, NULL, 11),
(70, 'backgruod-icon', NULL, NULL, NULL, NULL, 11),
(71, 'backgruod-title', NULL, NULL, NULL, NULL, 11),
(72, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799.png', NULL, NULL, NULL, 14),
(73, 'backgruod-icon', NULL, NULL, NULL, NULL, 14),
(74, 'backgruod-title', NULL, NULL, NULL, NULL, 14),
(75, 'icon-danh-muc', '/library/images/danhmucsp/san-pham-khuyen-mai-1517387799(1).png', NULL, NULL, NULL, 15),
(76, 'backgruod-icon', NULL, NULL, NULL, NULL, 15),
(77, 'backgruod-title', NULL, NULL, NULL, NULL, 15),
(78, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, '2018-10-03 04:18:45', '2018-10-03 04:18:45', NULL),
(79, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 25, '2018-10-03 04:18:45', '2018-10-03 04:18:45', NULL),
(80, 'thuong-hieu', 'Olympian Labs - Mỹ', 24, '2018-10-03 04:18:51', '2018-10-03 04:18:51', NULL),
(81, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 24, '2018-10-03 04:18:51', '2018-10-03 04:18:51', NULL),
(82, 'thuong-hieu', 'Olympian Labs - Mỹ', 23, '2018-10-03 04:18:57', '2018-10-03 04:18:57', NULL),
(83, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 23, '2018-10-03 04:18:57', '2018-10-03 04:18:57', NULL),
(84, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, '2018-10-03 04:29:50', '2018-10-03 04:29:50', NULL),
(85, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 25, '2018-10-03 04:29:50', '2018-10-03 04:29:50', NULL),
(86, 'banner-san-pham', '/library/images/sanpham/banner.png', 25, '2018-10-03 04:29:50', '2018-10-03 04:29:50', NULL),
(87, 'thuong-hieu', 'Olympian Labs - Mỹ', 24, '2018-10-03 04:29:54', '2018-10-03 04:29:54', NULL),
(88, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 24, '2018-10-03 04:29:54', '2018-10-03 04:29:54', NULL),
(89, 'banner-san-pham', '/library/images/sanpham/banner.png', 24, '2018-10-03 04:29:54', '2018-10-03 04:29:54', NULL),
(90, 'thuong-hieu', 'Olympian Labs - Mỹ', 23, '2018-10-03 04:19:04', '2018-10-03 04:19:04', NULL),
(91, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 23, '2018-10-03 04:19:04', '2018-10-03 04:19:04', NULL),
(92, 'banner-san-pham', NULL, 23, '2018-10-03 04:19:04', '2018-10-03 04:19:04', NULL),
(93, 'thuong-hieu', 'Olympian Labs - Mỹ', 23, '2018-10-03 04:29:57', '2018-10-03 04:29:57', NULL),
(94, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 23, '2018-10-03 04:29:57', '2018-10-03 04:29:57', NULL),
(95, 'banner-san-pham', '/library/images/sanpham/banner.png', 23, '2018-10-03 04:29:57', '2018-10-03 04:29:57', NULL),
(96, 'thuong-hieu', 'Olympian Labs - Mỹ', 22, '2018-10-03 04:30:00', '2018-10-03 04:30:00', NULL),
(97, 'link-chung-tu', NULL, 22, '2018-10-03 04:30:00', '2018-10-03 04:30:00', NULL),
(98, 'banner-san-pham', '/library/images/sanpham/banner.png', 22, '2018-10-03 04:30:00', '2018-10-03 04:30:00', NULL),
(99, 'thuong-hieu', 'Olympian Labs - Mỹ', 16, '2018-10-03 04:30:04', '2018-10-03 04:30:04', NULL),
(100, 'link-chung-tu', NULL, 16, '2018-10-03 04:30:04', '2018-10-03 04:30:04', NULL),
(101, 'banner-san-pham', '/library/images/sanpham/banner.png', 16, '2018-10-03 04:30:04', '2018-10-03 04:30:04', NULL),
(102, 'thuong-hieu', 'Olympian Labs - Mỹ', 15, '2018-10-03 04:30:08', '2018-10-03 04:30:08', NULL),
(103, 'link-chung-tu', NULL, 15, '2018-10-03 04:30:08', '2018-10-03 04:30:08', NULL),
(104, 'banner-san-pham', '/library/images/sanpham/banner.png', 15, '2018-10-03 04:30:08', '2018-10-03 04:30:08', NULL),
(105, 'thuong-hieu', 'Olympian Labs - Mỹ', 13, '2018-10-03 04:30:11', '2018-10-03 04:30:11', NULL),
(106, 'link-chung-tu', NULL, 13, '2018-10-03 04:30:11', '2018-10-03 04:30:11', NULL),
(107, 'banner-san-pham', '/library/images/sanpham/banner.png', 13, '2018-10-03 04:30:11', '2018-10-03 04:30:11', NULL),
(108, 'thuong-hieu', 'Olympian Labs - Mỹ', 12, '2018-10-03 04:30:15', '2018-10-03 04:30:15', NULL),
(109, 'link-chung-tu', NULL, 12, '2018-10-03 04:30:15', '2018-10-03 04:30:15', NULL),
(110, 'banner-san-pham', '/library/images/sanpham/banner.png', 12, '2018-10-03 04:30:15', '2018-10-03 04:30:15', NULL),
(111, 'thuong-hieu', 'Olympian Labs - Mỹ', 9, '2018-10-03 04:30:19', '2018-10-03 04:30:19', NULL),
(112, 'link-chung-tu', NULL, 9, '2018-10-03 04:30:19', '2018-10-03 04:30:19', NULL),
(113, 'banner-san-pham', '/library/images/sanpham/banner.png', 9, '2018-10-03 04:30:19', '2018-10-03 04:30:19', NULL),
(114, 'thuong-hieu', 'Olympian Labs - Mỹ', 7, '2018-10-03 04:30:37', '2018-10-03 04:30:37', NULL),
(115, 'link-chung-tu', NULL, 7, '2018-10-03 04:30:37', '2018-10-03 04:30:37', NULL),
(116, 'banner-san-pham', '/library/images/sanpham/banner.png', 7, '2018-10-03 04:30:37', '2018-10-03 04:30:37', NULL),
(117, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, '2022-04-09 10:02:52', '2022-04-09 10:02:52', NULL),
(118, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 25, '2022-04-09 10:02:52', '2022-04-09 10:02:52', NULL),
(119, 'banner-san-pham', '/library/images/sanpham/banner.png', 25, '2022-04-09 10:02:52', '2022-04-09 10:02:52', NULL),
(120, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 25, '2022-04-09 10:02:52', '2022-04-09 10:02:52', NULL),
(121, 'thuong-hieu', 'Olympian Labs - Mỹ', 24, '2022-04-09 10:04:49', '2022-04-09 10:04:49', NULL),
(122, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 24, '2022-04-09 10:04:49', '2022-04-09 10:04:49', NULL),
(123, 'banner-san-pham', '/library/images/sanpham/banner.png', 24, '2022-04-09 10:04:49', '2022-04-09 10:04:49', NULL),
(124, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 24, '2022-04-09 10:04:49', '2022-04-09 10:04:49', NULL),
(125, 'thuong-hieu', 'Olympian Labs - Mỹ', 23, '2022-04-09 10:04:58', '2022-04-09 10:04:58', NULL),
(126, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 23, '2022-04-09 10:04:58', '2022-04-09 10:04:58', NULL),
(127, 'banner-san-pham', '/library/images/sanpham/banner.png', 23, '2022-04-09 10:04:58', '2022-04-09 10:04:58', NULL),
(128, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 23, '2022-04-09 10:04:58', '2022-04-09 10:04:58', NULL),
(129, 'thuong-hieu', 'Olympian Labs - Mỹ', 22, '2022-04-09 10:05:21', '2022-04-09 10:05:21', NULL),
(130, 'link-chung-tu', NULL, 22, '2022-04-09 10:05:21', '2022-04-09 10:05:21', NULL),
(131, 'banner-san-pham', '/library/images/sanpham/banner.png', 22, '2022-04-09 10:05:21', '2022-04-09 10:05:21', NULL),
(132, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 22, '2022-04-09 10:05:21', '2022-04-09 10:05:21', NULL),
(133, 'thuong-hieu', 'Olympian Labs - Mỹ', 16, '2022-04-09 10:05:28', '2022-04-09 10:05:28', NULL),
(134, 'link-chung-tu', NULL, 16, '2022-04-09 10:05:28', '2022-04-09 10:05:28', NULL),
(135, 'banner-san-pham', '/library/images/sanpham/banner.png', 16, '2022-04-09 10:05:28', '2022-04-09 10:05:28', NULL),
(136, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 16, '2022-04-09 10:05:28', '2022-04-09 10:05:28', NULL),
(137, 'thuong-hieu', 'Olympian Labs - Mỹ', 15, '2022-04-09 10:06:35', '2022-04-09 10:06:35', NULL),
(138, 'link-chung-tu', NULL, 15, '2022-04-09 10:06:35', '2022-04-09 10:06:35', NULL),
(139, 'banner-san-pham', '/library/images/sanpham/banner.png', 15, '2022-04-09 10:06:35', '2022-04-09 10:06:35', NULL),
(140, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 15, '2022-04-09 10:06:35', '2022-04-09 10:06:35', NULL),
(141, 'thuong-hieu', 'Olympian Labs - Mỹ', 13, '2022-04-09 10:15:33', '2022-04-09 10:15:33', NULL),
(142, 'link-chung-tu', NULL, 13, '2022-04-09 10:15:33', '2022-04-09 10:15:33', NULL),
(143, 'banner-san-pham', '/library/images/sanpham/banner.png', 13, '2022-04-09 10:15:33', '2022-04-09 10:15:33', NULL),
(144, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 13, '2022-04-09 10:15:33', '2022-04-09 10:15:33', NULL),
(145, 'thuong-hieu', 'Olympian Labs - Mỹ', 12, '2022-04-09 10:05:41', '2022-04-09 10:05:41', NULL),
(146, 'link-chung-tu', NULL, 12, '2022-04-09 10:05:41', '2022-04-09 10:05:41', NULL),
(147, 'banner-san-pham', '/library/images/sanpham/banner.png', 12, '2022-04-09 10:05:41', '2022-04-09 10:05:41', NULL),
(148, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 12, '2022-04-09 10:05:41', '2022-04-09 10:05:41', NULL),
(149, 'thuong-hieu', 'Olympian Labs - Mỹ', 9, '2022-04-09 10:06:40', '2022-04-09 10:06:40', NULL),
(150, 'link-chung-tu', NULL, 9, '2022-04-09 10:06:40', '2022-04-09 10:06:40', NULL),
(151, 'banner-san-pham', '/library/images/sanpham/banner.png', 9, '2022-04-09 10:06:40', '2022-04-09 10:06:40', NULL),
(152, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 9, '2022-04-09 10:06:40', '2022-04-09 10:06:40', NULL),
(153, 'thuong-hieu', 'Olympian Labs - Mỹ', 7, '2022-04-09 10:06:02', '2022-04-09 10:06:02', NULL),
(154, 'link-chung-tu', NULL, 7, '2022-04-09 10:06:02', '2022-04-09 10:06:02', NULL),
(155, 'banner-san-pham', '/library/images/sanpham/banner.png', 7, '2022-04-09 10:06:02', '2022-04-09 10:06:02', NULL),
(156, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 7, '2022-04-09 10:06:02', '2022-04-09 10:06:02', NULL),
(157, 'vi-tri', '1', 52, NULL, NULL, NULL),
(158, 'link-san-pham', 'agaricus-mycelia-tablet-vien-the-nam-agaricus', 52, NULL, NULL, NULL),
(159, 'vi-tri', '2', 53, NULL, NULL, NULL),
(160, 'link-san-pham', 'tinh-chat-nghe-aki-ukon-nano-nano-aki-ukon-turmeric-extract-granule', 53, NULL, NULL, NULL),
(161, 'vi-tri', '2', 54, NULL, NULL, NULL),
(162, 'link-san-pham', 'combo-2-lo-sp-baby-one-tri-so-mui-nghet-mui-cho-be-13', 54, NULL, NULL, NULL),
(163, 'vi-tri', '2', 55, NULL, NULL, NULL),
(164, 'link-san-pham', 'tinh-dau-huong-quyen-ru-dung-cho-tu-quan-ao', 55, NULL, NULL, NULL),
(165, 'vi-tri', '2', 56, NULL, NULL, NULL),
(166, 'link-san-pham', 'tinh-dau-huong-quyen-ru-dung-cho-tu-quan-ao', 56, NULL, NULL, NULL),
(167, 'tieu-de-button', 'Tiêu đề button', 2, '2022-04-08 19:07:20', '2022-04-08 19:07:20', NULL),
(168, 'tieu-de-button', 'Check Our Menu', 2, NULL, NULL, NULL),
(169, 'tieu-de-button', 'Learn More', 1, '2022-04-08 19:07:46', '2022-04-08 19:07:46', NULL),
(170, 'tieu-de-button', 'Learn More', 1, NULL, NULL, NULL),
(171, 'icon-danh-muc', NULL, NULL, NULL, NULL, 32),
(172, 'backgruod-icon', NULL, NULL, NULL, NULL, 32),
(173, 'backgruod-title', NULL, NULL, NULL, NULL, 32),
(174, 'icon-danh-muc', NULL, NULL, '2022-04-08 19:54:47', '2022-04-08 19:54:47', 33),
(175, 'backgruod-icon', NULL, NULL, '2022-04-08 19:54:47', '2022-04-08 19:54:47', 33),
(176, 'backgruod-title', NULL, NULL, '2022-04-08 19:54:47', '2022-04-08 19:54:47', 33),
(177, 'icon-danh-muc', '/library/images/sologan/oto.png', NULL, NULL, NULL, 33),
(178, 'backgruod-icon', NULL, NULL, NULL, NULL, 33),
(179, 'backgruod-title', NULL, NULL, NULL, NULL, 33),
(180, 'icon', 'icon-clock', 57, NULL, NULL, NULL),
(181, 'icon', 'icon-streetsign', 58, NULL, NULL, NULL),
(182, 'icon', 'icon-map', 59, NULL, NULL, NULL),
(183, 'icon', 'icon-map', 60, '2022-04-08 20:02:52', '2022-04-08 20:02:52', NULL),
(184, 'icon', 'icon-heart', 60, NULL, NULL, NULL),
(185, 'gia', '$10.5', 65, NULL, NULL, NULL),
(186, 'gia', '$14.5', 66, NULL, NULL, NULL),
(187, 'gia', '$18.5', 67, NULL, NULL, NULL),
(188, 'gia', '$15.9', 68, NULL, NULL, NULL),
(189, 'gia', '$16.4', 69, NULL, NULL, NULL),
(190, 'gia', '$14.5', 75, NULL, NULL, NULL),
(191, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, '2022-04-09 10:14:33', '2022-04-09 10:14:33', NULL),
(192, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 25, '2022-04-09 10:14:33', '2022-04-09 10:14:33', NULL),
(193, 'banner-san-pham', '/library/images/sanpham/banner.png', 25, '2022-04-09 10:14:33', '2022-04-09 10:14:33', NULL),
(194, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 25, '2022-04-09 10:14:33', '2022-04-09 10:14:33', NULL),
(195, 'thuong-hieu', 'Olympian Labs - Mỹ', 24, '2022-04-09 10:14:45', '2022-04-09 10:14:45', NULL),
(196, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 24, '2022-04-09 10:14:45', '2022-04-09 10:14:45', NULL),
(197, 'banner-san-pham', '/library/images/sanpham/banner.png', 24, '2022-04-09 10:14:45', '2022-04-09 10:14:45', NULL),
(198, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 24, '2022-04-09 10:14:45', '2022-04-09 10:14:45', NULL),
(199, 'thuong-hieu', 'Olympian Labs - Mỹ', 23, '2022-04-09 10:14:57', '2022-04-09 10:14:57', NULL),
(200, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 23, '2022-04-09 10:14:57', '2022-04-09 10:14:57', NULL),
(201, 'banner-san-pham', '/library/images/sanpham/banner.png', 23, '2022-04-09 10:14:57', '2022-04-09 10:14:57', NULL),
(202, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 23, '2022-04-09 10:14:57', '2022-04-09 10:14:57', NULL),
(203, 'thuong-hieu', 'Olympian Labs - Mỹ', 22, '2022-04-09 10:15:07', '2022-04-09 10:15:07', NULL),
(204, 'link-chung-tu', NULL, 22, '2022-04-09 10:15:07', '2022-04-09 10:15:07', NULL),
(205, 'banner-san-pham', '/library/images/sanpham/banner.png', 22, '2022-04-09 10:15:07', '2022-04-09 10:15:07', NULL),
(206, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 22, '2022-04-09 10:15:07', '2022-04-09 10:15:07', NULL),
(207, 'thuong-hieu', 'Olympian Labs - Mỹ', 16, '2022-04-09 10:15:20', '2022-04-09 10:15:20', NULL),
(208, 'link-chung-tu', NULL, 16, '2022-04-09 10:15:20', '2022-04-09 10:15:20', NULL),
(209, 'banner-san-pham', '/library/images/sanpham/banner.png', 16, '2022-04-09 10:15:20', '2022-04-09 10:15:20', NULL),
(210, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 16, '2022-04-09 10:15:20', '2022-04-09 10:15:20', NULL),
(211, 'thuong-hieu', 'Olympian Labs - Mỹ', 12, NULL, NULL, NULL),
(212, 'link-chung-tu', NULL, 12, NULL, NULL, NULL),
(213, 'banner-san-pham', '/library/images/sanpham/banner.png', 12, NULL, NULL, NULL),
(214, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 12, NULL, NULL, NULL),
(215, 'thuong-hieu', 'Olympian Labs - Mỹ', 7, NULL, NULL, NULL),
(216, 'link-chung-tu', NULL, 7, NULL, NULL, NULL),
(217, 'banner-san-pham', '/library/images/sanpham/banner.png', 7, NULL, NULL, NULL),
(218, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 7, NULL, NULL, NULL),
(219, 'thuong-hieu', 'Olympian Labs - Mỹ', 15, '2022-04-09 10:15:45', '2022-04-09 10:15:45', NULL),
(220, 'link-chung-tu', NULL, 15, '2022-04-09 10:15:45', '2022-04-09 10:15:45', NULL),
(221, 'banner-san-pham', '/library/images/sanpham/banner.png', 15, '2022-04-09 10:15:45', '2022-04-09 10:15:45', NULL),
(222, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 15, '2022-04-09 10:15:45', '2022-04-09 10:15:45', NULL),
(223, 'thuong-hieu', 'Olympian Labs - Mỹ', 9, '2022-04-09 10:43:26', '2022-04-09 10:43:26', NULL),
(224, 'link-chung-tu', NULL, 9, '2022-04-09 10:43:26', '2022-04-09 10:43:26', NULL),
(225, 'banner-san-pham', '/library/images/sanpham/banner.png', 9, '2022-04-09 10:43:26', '2022-04-09 10:43:26', NULL),
(226, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 9, '2022-04-09 10:43:26', '2022-04-09 10:43:26', NULL),
(227, 'thuong-hieu', 'Olympian Labs - Mỹ', 25, NULL, NULL, NULL),
(228, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 25, NULL, NULL, NULL),
(229, 'banner-san-pham', '/library/images/sanpham/banner.png', 25, NULL, NULL, NULL),
(230, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 25, NULL, NULL, NULL),
(231, 'thuong-hieu', 'Olympian Labs - Mỹ', 24, NULL, NULL, NULL),
(232, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 24, NULL, NULL, NULL),
(233, 'banner-san-pham', '/library/images/sanpham/banner.png', 24, NULL, NULL, NULL),
(234, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 24, NULL, NULL, NULL),
(235, 'thuong-hieu', 'Olympian Labs - Mỹ', 23, NULL, NULL, NULL),
(236, 'link-chung-tu', 'tin-tuc/chung-tu-san-pham-agaricus-mycelia-tablet-vien-the-nam-agaricus', 23, NULL, NULL, NULL),
(237, 'banner-san-pham', '/library/images/sanpham/banner.png', 23, NULL, NULL, NULL),
(238, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 23, NULL, NULL, NULL),
(239, 'thuong-hieu', 'Olympian Labs - Mỹ', 22, NULL, NULL, NULL),
(240, 'link-chung-tu', NULL, 22, NULL, NULL, NULL),
(241, 'banner-san-pham', '/library/images/sanpham/banner.png', 22, NULL, NULL, NULL),
(242, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 22, NULL, NULL, NULL),
(243, 'thuong-hieu', 'Olympian Labs - Mỹ', 16, NULL, NULL, NULL),
(244, 'link-chung-tu', NULL, 16, NULL, NULL, NULL),
(245, 'banner-san-pham', '/library/images/sanpham/banner.png', 16, NULL, NULL, NULL),
(246, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 16, NULL, NULL, NULL),
(247, 'thuong-hieu', 'Olympian Labs - Mỹ', 13, NULL, NULL, NULL),
(248, 'link-chung-tu', NULL, 13, NULL, NULL, NULL),
(249, 'banner-san-pham', '/library/images/sanpham/banner.png', 13, NULL, NULL, NULL),
(250, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 13, NULL, NULL, NULL),
(251, 'thuong-hieu', 'Olympian Labs - Mỹ', 15, NULL, NULL, NULL),
(252, 'link-chung-tu', NULL, 15, NULL, NULL, NULL),
(253, 'banner-san-pham', '/library/images/sanpham/banner.png', 15, NULL, NULL, NULL),
(254, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 15, NULL, NULL, NULL),
(255, 'thuong-hieu', 'Olympian Labs - Mỹ', 9, NULL, NULL, NULL),
(256, 'link-chung-tu', NULL, 9, NULL, NULL, NULL),
(257, 'banner-san-pham', '/library/images/sanpham/banner.png', 9, NULL, NULL, NULL),
(258, 'mo-ta-banner', 'Kẽm Gluconate là sản phẩm bổ sung kẽm và vitamin C, hỗ trợ tăng cường tối ưu hệ miễn dịch, tăng sức đề kháng, giảm rối loạn tiêu hóa, phòng ngừa nhiễm trùng và cảm cúm ở trẻ nhỏ và người lớn.', 9, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mail_config`
--

CREATE TABLE `mail_config` (
  `mail_config_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Tên hiển thị khi gửi',
  `email_send` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Email hiển thị khi gửi',
  `name_send` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tài khoản dùng để gửi mail',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mật khẩu khi gửi mail',
  `address_server` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Địa chỉ máy chủ khi gửi',
  `port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_receive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Chữ ký gửi mail',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `method` tinyint(4) DEFAULT NULL COMMENT 'Phương thức thanh toán:\n0: SMTP\n1: API',
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nhà cung cấp',
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '0: chưa xóa.\n1: đã xóa.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mail_config`
--

INSERT INTO `mail_config` (`mail_config_id`, `user_id`, `email_send`, `name_send`, `email`, `password`, `address_server`, `port`, `email_receive`, `sign`, `created_at`, `updated_at`, `method`, `supplier`, `api_key`, `driver`, `encryption`, `host`, `deleted_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-08 18:56:33', '2022-04-08 18:56:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members_facebook`
--

CREATE TABLE `members_facebook` (
  `member_id` int(11) NOT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`menu_id`, `title`, `slug`, `location`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'menu chính', 'menu-chinh', 'menu-chinh', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_element`
--

CREATE TABLE `menu_element` (
  `menu_element_id` int(11) NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_show` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_level` int(11) DEFAULT NULL,
  `menu_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_element`
--

INSERT INTO `menu_element` (`menu_element_id`, `menu_slug`, `url`, `title_show`, `menu_level`, `menu_image`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(2, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(3, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(4, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(5, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(6, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(7, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(8, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(9, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(10, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(11, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(21, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(22, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(23, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(24, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(25, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(26, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(27, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(28, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(29, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(30, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(31, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(32, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(33, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(34, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(35, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(36, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(37, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(38, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(39, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(40, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(41, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(42, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(93, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(94, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(95, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(96, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(97, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(98, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(99, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(100, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(101, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(102, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(103, 'menu-chinh', '/trang/nha-thuoc-benh-vien', 'Nhà thuốc bệnh viên', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(104, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(105, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(106, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(107, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(108, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(109, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(110, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(111, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(112, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(113, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(114, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(115, 'menu-chinh', '/trang/nha-thuoc-benh-vien', 'Nhà thuốc bệnh viên', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(116, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(117, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(118, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(119, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(120, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(121, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(122, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(123, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(124, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(125, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(126, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(127, 'menu-chinh', '/trang/nha-thuoc-benh-vien', 'Nhà thuốc bệnh viên', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(128, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(129, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(130, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(131, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(132, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(133, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(134, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(135, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(136, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(137, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(138, 'menu-chinh', '/danh-muc/video', 'Video', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(139, 'menu-chinh', '/trang/nha-thuoc-benh-vien', 'Nhà thuốc bệnh viên', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(140, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(141, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(142, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(143, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(144, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(145, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(146, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(147, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(148, 'menu-chinh', '/tinh-dau-huong-quyen-ru-dung-cho-tu-quan-ao', 'TINH DẦU HƯƠNG QUYẾN RŨ – DÙNG CHO TỦ QUẦN ÁO', 2, '/library/images/sanpham/q1.png', '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(149, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(150, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(151, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(152, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(153, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(154, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(155, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(156, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(157, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(158, 'menu-chinh', '/hot-deal', 'Sản phẩm', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(159, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(160, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(161, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(162, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(163, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(164, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(165, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(166, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(167, 'menu-chinh', '/', 'Trang chủ', 1, NULL, NULL, NULL, NULL),
(168, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, NULL, NULL, NULL),
(169, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, NULL, NULL, NULL),
(170, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `notify_id` int(11) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `URL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `notification`
--

INSERT INTO `notification` (`notify_id`, `content`, `URL`, `title`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bạn vừa có đơn hàng mới', 'http://nhathuoc365.local/admin/don-hang', 'Đơn hàng', 1, '2018-10-02 07:30:41', '2022-04-08 19:14:45', NULL),
(2, 'Bạn vừa có đơn hàng mới', 'http://restaurant.local/admin/don-hang', 'Đơn hàng', 1, '2022-04-10 09:31:03', '2022-04-10 20:18:31', NULL),
(3, 'Bạn vừa có đơn hàng mới', 'http://restaurant.local/admin/don-hang', 'Đơn hàng', 1, '2022-04-10 09:32:44', '2022-04-10 20:18:31', NULL),
(4, 'Bạn vừa có đơn hàng mới', 'http://restaurant.local/admin/don-hang', 'Đơn hàng', 1, '2022-04-10 09:49:59', '2022-04-10 20:18:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `code_sale_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `cost_ship` int(11) DEFAULT NULL,
  `cost_point` int(11) DEFAULT NULL,
  `cost_sale` int(11) DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0. khởi tao đơn hàng\n1. đặt hàng thành công\n2. đã nhận đơn hàng\n3. đang vận chuyển\n4. đã giao hàng ',
  `ip_customer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_admin` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_mail_customer` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `method_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `code_sale_id`, `user_id`, `total_price`, `cost_ship`, `cost_point`, `cost_sale`, `shipping_address`, `shipping_city`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_note`, `status`, `ip_customer`, `note_admin`, `is_mail_customer`, `created_at`, `updated_at`, `method_payment`, `deleted_at`) VALUES
(5, NULL, 2, 3555000, 5000, NULL, NULL, '1234', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-10 10:07:19', '2022-04-10 10:07:19', NULL, NULL),
(6, NULL, 2, 3555000, 5000, NULL, NULL, '1234', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-10 10:08:11', '2022-04-10 10:08:11', NULL, NULL),
(7, NULL, 2, 3555000, 5000, NULL, NULL, '1234', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-10 10:13:56', '2022-04-10 10:13:56', NULL, NULL),
(8, NULL, 2, 3555000, 5000, NULL, NULL, '1234', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-10 10:15:42', '2022-04-10 10:15:42', NULL, NULL),
(9, NULL, 2, 2305000, 5000, NULL, NULL, '111', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-10 10:19:28', '2022-04-10 10:19:28', NULL, NULL),
(10, NULL, 2, 3555000, 5000, NULL, NULL, '1234', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-10 10:19:33', '2022-04-10 10:19:33', NULL, NULL),
(11, NULL, 2, 1605000, 5000, NULL, NULL, '1232434', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-10 10:25:10', '2022-04-10 10:25:10', NULL, NULL),
(12, NULL, 1, 7855000, 5000, NULL, NULL, '123', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 4, '127.0.0.1', 'hihih', 1, '2022-04-10 10:41:57', '2022-04-10 20:18:23', NULL, NULL),
(13, NULL, 1, 855000, 5000, NULL, NULL, '1234', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-12 10:53:58', '2022-04-12 10:53:58', NULL, NULL),
(14, NULL, 1, 855000, 5000, NULL, NULL, '1234', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-12 10:55:04', '2022-04-12 10:55:04', NULL, NULL),
(15, NULL, 1, 855000, 5000, NULL, NULL, '1234', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-12 10:55:36', '2022-04-12 10:55:36', NULL, NULL),
(16, NULL, 1, 855000, 5000, NULL, NULL, '1234', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-12 10:55:52', '2022-04-12 10:55:52', NULL, NULL),
(17, NULL, 1, 7355000, 5000, NULL, NULL, '222', NULL, 'Bui Tuan Viet', 'vietbt@vatgia.com', '0357176405', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-12 11:01:27', '2022-04-12 11:01:27', NULL, NULL),
(18, NULL, 1, 855000, 5000, NULL, NULL, '124', NULL, 'THUAN NGO', 'ABC@GMAIL.COM', '123456789', NULL, 1, '127.0.0.1', NULL, NULL, '2022-04-12 18:01:53', '2022-04-12 18:01:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_bank`
--

CREATE TABLE `order_bank` (
  `order_bank_id` int(11) NOT NULL,
  `name_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_bank`
--

INSERT INTO `order_bank` (`order_bank_id`, `name_bank`, `number_bank`, `manager_account`, `branch`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BIDV', '21210002232016', 'BUI TUAN VIET', 'Tay Ho', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_code_sale`
--

CREATE TABLE `order_code_sale` (
  `order_code_sale_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method_sale` tinyint(4) DEFAULT NULL COMMENT '0: theo tiền, 1 theo %',
  `sale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `many_use` int(11) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` int(254) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`item_id`, `product_id`, `order_id`, `description`, `size`, `currency`, `properties`, `quantity`, `cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 5, NULL, NULL, 'vnd', NULL, 3, 3, NULL, NULL, NULL),
(3, 3, 5, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(4, 10, 5, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(5, 1, 6, NULL, NULL, 'vnd', NULL, 3, 3, NULL, NULL, NULL),
(6, 3, 6, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(7, 10, 6, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(8, 1, 7, NULL, NULL, 'vnd', NULL, 3, 3, NULL, NULL, NULL),
(9, 3, 7, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(10, 10, 7, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(11, 1, 8, NULL, NULL, 'vnd', NULL, 3, 3, NULL, NULL, NULL),
(12, 3, 8, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(13, 10, 8, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(14, 1, 10, NULL, NULL, 'vnd', NULL, 3, 3, NULL, NULL, NULL),
(15, 3, 10, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(16, 10, 10, NULL, NULL, 'vnd', NULL, 2, 2, NULL, NULL, NULL),
(17, 1, 11, NULL, NULL, 'vnd', NULL, 1, 1, NULL, NULL, NULL),
(18, 3, 11, NULL, NULL, 'vnd', NULL, 1, 1, NULL, NULL, NULL),
(19, 10, 11, NULL, NULL, 'vnd', NULL, 1, 1, NULL, NULL, NULL),
(20, 1, 12, NULL, NULL, 'vnd', NULL, 1, 350000, NULL, NULL, NULL),
(21, 9, 12, NULL, NULL, 'vnd', NULL, 2, 7000000, NULL, NULL, NULL),
(22, 10, 12, NULL, NULL, 'vnd', NULL, 1, 500000, NULL, NULL, NULL),
(23, 1, 13, NULL, NULL, 'vnd', NULL, 1, 350000, NULL, NULL, NULL),
(24, 10, 13, NULL, NULL, 'vnd', NULL, 1, 500000, NULL, NULL, NULL),
(25, 1, 14, NULL, NULL, 'vnd', NULL, 1, 350000, NULL, NULL, NULL),
(26, 10, 14, NULL, NULL, 'vnd', NULL, 1, 500000, NULL, NULL, NULL),
(27, 1, 15, NULL, NULL, 'vnd', NULL, 1, 350000, NULL, NULL, NULL),
(28, 10, 15, NULL, NULL, 'vnd', NULL, 1, 500000, NULL, NULL, NULL),
(29, 1, 16, NULL, NULL, 'vnd', NULL, 1, 350000, NULL, NULL, NULL),
(30, 10, 16, NULL, NULL, 'vnd', NULL, 1, 500000, NULL, NULL, NULL),
(31, 1, 17, NULL, NULL, 'vnd', NULL, 1, 350000, NULL, NULL, NULL),
(32, 9, 17, NULL, NULL, 'vnd', NULL, 1, 7000000, NULL, NULL, NULL),
(33, 1, 18, NULL, NULL, 'vnd', NULL, 1, 350000, NULL, NULL, NULL),
(34, 10, 18, NULL, NULL, 'vnd', NULL, 1, 500000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_ship`
--

CREATE TABLE `order_ship` (
  `order_ship_id` int(11) NOT NULL,
  `method_ship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_ship`
--

INSERT INTO `order_ship` (`order_ship_id`, `method_ship`, `cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hỏa Tốc', '50000', NULL, NULL, NULL),
(2, 'Nhanh', '10000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_hide` tinyint(4) DEFAULT NULL,
  `image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_list` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_type` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visiable` tinyint(4) DEFAULT 0 COMMENT '0: ẩn, 1 hiện',
  `category_string` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `product_list`, `post_type`, `visiable`, `category_string`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Take a look at', 'our specialities', NULL, 'default', NULL, '1', NULL, NULL, '/library/images/slider/slider2.jpg', NULL, 'slider', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 19:07:46', NULL),
(2, 'Hello & welcome', 'We are Titan', NULL, 'default', NULL, '2', NULL, NULL, '/library/images/slider/slider1.jpg', NULL, 'slider', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 19:07:20', NULL),
(3, 'Miễn phí vận chuyển', 'Cho đơn hàng trên 300.000 VNĐ', NULL, 'default', NULL, 'mien-phi-van-chuyen', NULL, NULL, '/library/images/sologan/oto.png', NULL, 'sologan', 0, NULL, NULL, NULL, NULL, NULL, '2018-09-25 03:05:15', NULL),
(4, 'Hỗ trợ đổi hàng', 'Trong vòng 30 ngày', NULL, 'default', NULL, 'ho-tro-doi-hang', NULL, NULL, '/library/images/sologan/dola.png', NULL, 'sologan', 0, NULL, NULL, NULL, NULL, NULL, '2018-09-25 03:05:39', NULL),
(5, 'Đặt hàng trực tuyến', 'SĐT: 1800 8155(Miễn phí)', NULL, 'default', NULL, 'dat-hang-truc-tuyen', NULL, NULL, '/library/images/sologan/tainghe.png', NULL, 'sologan', 0, NULL, NULL, NULL, NULL, NULL, '2018-09-25 03:06:23', NULL),
(6, 'F1 CARE COMPLEX- VITAMIN TỔNG HỢP SỐ 1 CHO BÀ BẦU', NULL, '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Vitamin - kho&aacute;ng chất</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Vi&ecirc;n nang cứng</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Lọ x 30v</li>\r\n	<li>H&agrave;m lượng:&nbsp;Nhiều th&agrave;nh phần</li>\r\n</ul>', 'default', NULL, 'f1-care-complex-vitamin-tong-hop-so-1-cho-ba-bau', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'Sản phẩm,Sản phẩm mới,Sản phẩm khuyến mãi,Sản phẩm tiêu biểu,Khuyến mãi đặc biệt,Thực phẩm chức năng,Hỗ trợ ung thư,Tinh dầu,Vitamin - khoáng chất,Thuốc bổ thần kinh,Điều trị tiểu đường,Nấm,Sản phẩm hỗ trợ,Tinh Dầu Organics,Dầu Nền', NULL, NULL, NULL, NULL, '2018-09-25 07:05:19', NULL),
(7, 'F1 CARE COMPLEX- VITAMIN TỔNG HỢP SỐ 1 CHO BÀ BẦU', NULL, '<p><strong>TẦM QUAN TRỌNG CỦA VIỆC BỔ SUNG VITAMIN TỔNG HỢP CHO B&Agrave; BẦU</strong></p>\r\n\r\n<p>Sự thiếu hụt những chất dinh dưỡng quan trọng c&oacute; thể l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến c&aacute;c biến chứng kh&aacute;c nhau trong thời kỳ mang thai v&agrave; sinh nở, bao gồm tiền sản giật, hạn chế sự ph&aacute;t triển của thai nhi, dị tật ống thần kinh sinh non v&agrave; sinh con nhẹ c&acirc;n. V&igrave; vậy, việc&nbsp;<a href=\"https://f1care.com/blogs/nhu-cau-ve-cac-loai-vi-chat/f1-care-complex-bo-sung-23-vitamin-va-khoang-chat-can-thiet-cho-mot-thai-ky-khoe-manh\">bổ sung vitamin tổng hợp cho b&agrave; bầu</a>&nbsp;được khuy&ecirc;n l&agrave; cần thiết nhằm bảo vệ sức khỏe của b&agrave; mẹ v&agrave; thai nhi.&nbsp;</p>\r\n\r\n<p><strong>VI&Ecirc;N UỐNG VITAMIN TỔNG HỢP F1 CARE COMPLEX - BỔ SUNG ĐẦY ĐỦ C&Aacute;C VITAMIN V&Agrave; KHO&Aacute;NG CHẤT CẦN THIẾT CHO SỨC KHỎE CỦA MẸ V&Agrave; SỰ PH&Aacute;T TRIỂN CỦA THAI NHI</strong></p>\r\n\r\n<p><strong>C&Ocirc;NG DỤNG:</strong></p>\r\n\r\n<p>- Cung cấp đầy đủ 23 loại vitamin v&agrave; kho&aacute;ng chất cho mẹ v&agrave; thai nhi, đảm bảo cho một thai kỳ khỏe mạnh</p>\r\n\r\n<p>- Ngăn ngừa dị tật ở thai nhi</p>\r\n\r\n<p>- Gi&uacute;p thai nhi ph&aacute;t triển to&agrave;n diện, khỏe mạnh, tăng cường tr&iacute; n&atilde;o</p>\r\n\r\n<p>- Giảm c&aacute;c triệu chứng ngh&eacute;n của thai kỳ như n&ocirc;n mửa, k&eacute;m ăn, cao huyết &aacute;p</p>\r\n\r\n<p>- Cố định đạm v&agrave; đường trong cơ thể người mẹ, hỗ trợ ngăn ngừa gout v&agrave; tiểu đường thai kỳ.</p>\r\n\r\n<p><img alt=\"f1 care complex bệnh viện phụ sản trung ương\" src=\"https://nhathuoc365.vn/upload_images/images/f1%20care.JPG\" /></p>\r\n\r\n<p><em>F1 Care Complex - Vitamin tổng hợp cho b&agrave; bầu được ưa chuộng tại Mỹ cũng đang được nhiều nh&agrave; thuốc lớn, uy t&iacute;n v&agrave; c&aacute;c b&aacute;c sĩ tin tưởng khuy&ecirc;n d&ugrave;ng.</em></p>\r\n\r\n<p><strong>I. F1 CARE COMPLEX bổ sung 23 vitamin v&agrave; c&aacute;c nguy&ecirc;n tố vi l</strong><strong>ượng&nbsp;</strong><strong>quan trọng nhất</strong><strong>&nbsp;gi&uacute;p&nbsp;</strong><strong>mẹ bầu</strong><strong>&nbsp;lu&ocirc;n khỏe mạnh,&nbsp;</strong><strong>ngăn ngừa dị tật ở thai nhi, gi&uacute;p thai nhi khỏe mạnh</strong><strong>&nbsp;ph&aacute;t triển to&agrave;n diện</strong><strong>, th&ocirc;ng minh.</strong></p>\r\n\r\n<p>Bữa ăn h&agrave;ng ng&agrave;y thường kh&ocirc;ng cung cấp đủ c&aacute;c vi chất cần thiết nhất cho cơ thể, đặc biệt l&agrave; đối với phụ nữ mang thai nhu cầu về năng lượng v&agrave; c&aacute;c chất dinh dưỡng đ&ograve;i hỏi cao hơn mức b&igrave;nh thường rất nhiều. Do đ&oacute;, c&aacute;c b&aacute;c sĩ, chuy&ecirc;n gia khuyến c&aacute;o thai phụ cần bổ sung nhiều loại vi chất dinh dưỡng khi mang thai để thai nhi ph&aacute;t triển to&agrave;n diện, khỏe mạnh v&agrave; th&ocirc;ng minh.</p>\r\n\r\n<p><strong>1. DHA v&agrave; Axit folic ngăn ngừa dị tật thai nhi gi&uacute;p b&eacute; th&ocirc;ng minh, ph&aacute;t triển tr&iacute; n&atilde;o to&agrave;n diện</strong></p>\r\n\r\n<p><strong>Axit folic - Ngăn ngừa dị tật ống thần kinh</strong></p>\r\n\r\n<p>Để giảm thiểu nguy cơ khuyết tật ống thần kinh ở trẻ sơ sinh, c&aacute;c nghi&ecirc;n cứu v&agrave; chuy&ecirc;n gia khuyến c&aacute;o b&agrave; bầu cần bổ sung liều 400 mcg &ndash; 500 mcg acid folic mỗi ng&agrave;y, bắt đầu từ &iacute;t nhất 1 th&aacute;ng trước khi c&oacute; bầu. Những trường hợp bị thiếu acid folic (th&ocirc;ng qua x&eacute;t nghiệm), c&oacute; thể được khuyến c&aacute;o sử dụng 600 mcg acid folic mỗi ng&agrave;y.</p>\r\n\r\n<p><strong>F1 Care Complex</strong>&nbsp;c&oacute; chứa 600 mcg acid folic đ&aacute;p ứng đ&uacute;ng đủ liều lượng acid folic h&agrave;ng ng&agrave;y d&agrave;nh cho đa số b&agrave; bầu mang thai để ph&ograve;ng tr&aacute;nh khuyết tật ống thần kinh v&agrave; một số vấn đề kh&aacute;c do thiếu&nbsp;<a href=\"https://f1care.com/blogs/bo-sung-truoc-khi-mang-bau/bo-sung-axit-folic-ba-bau-can-dac-biet-luu-y-dieu-nay\">acid folic</a>&nbsp;g&acirc;y n&ecirc;n.</p>\r\n\r\n<p><strong>DHA - Ph&aacute;t triển n&atilde;o bộ to&agrave;n diện cho b&eacute;</strong></p>\r\n\r\n<p>DHA l&agrave; dưỡng chất quan trọng đối với sự ph&aacute;t triển v&agrave; chức năng của n&atilde;o, thần kinh v&agrave; mắt của thai nhi. Thậm ch&iacute;, những dưỡng chất n&agrave;y c&ograve;n c&oacute; thể ngăn ngừa sinh non, gi&uacute;p người mẹ giảm trầm cảm khi mang thai v&agrave; sau khi sinh, giảm nguy cơ mắc chứng tiền sản giật trong thai kỳ. DHA c&oacute; vai tr&ograve; quan trọng như vậy nhưng cơ thể ch&uacute;ng ta kh&ocirc;ng tự tạo ra DHA m&agrave; cần lấy từ thức ăn, thuốc uống b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p>Để b&ugrave; đắp lượng thiếu hụt DHA trong chế độ ăn uống th&igrave; cung cấp trực tiếp DHA từ c&aacute;c sản phẩm bổ sung như&nbsp;<strong>F1 Care Complex</strong>&nbsp;l&agrave; lựa chọn tối ưu cho mẹ l&uacute;c n&agrave;y.</p>\r\n\r\n<p><strong>Sự kết hợp của folic acid v&agrave; DHA v&agrave; c&aacute;c vitamin kho&aacute;ng chất quan trọng trong F1 Care Complex l&agrave; sự lựa chọn ho&agrave;n hảo gi&uacute;p bổ sung một c&aacute;ch đầy đủ nhất c&aacute;c vitamin, kho&aacute;ng chất quan trọng để đảm bảo cho sự ph&aacute;t triển của thai nhi v&agrave; sức khỏe của mẹ bầu.</strong></p>\r\n\r\n<p><strong>2. F1 Care Complex cung cấp đầy đủ c&aacute;c loại vitamin quan trọng, cần thiết nhất cho mẹ bầu</strong></p>\r\n\r\n<p><strong>- Vitamin A</strong></p>\r\n\r\n<p>Tổ chức Y tế Thế giới khuyến c&aacute;o đối với phụ nữ mang thai n&ecirc;n bổ sung lượng vitamin A từ 1.232 (IU) - 2.664 (IU)/ng&agrave;y. Th&ocirc;ng thường chỉ cần ăn uống đủ chất th&igrave; cũng đ&atilde; c&oacute; thể bổ sung đủ vitamin A. Tuy nhi&ecirc;n, trong qu&aacute; tr&igrave;nh chế biến v&agrave; hấp thu, lượng vitamin A c&oacute; thể bị mất đi do đ&oacute; b&agrave; bầu c&oacute; thể bổ sung th&ecirc;m vitamin A trong c&aacute;c loại vi&ecirc;n uống vitamin tổng hợp.&nbsp;F1 Care Complex cung cấp 3000IU với lượng hấp thụ v&agrave;o cơ thể mẹ l&agrave; 32% khoảng&nbsp;960 IU c&ugrave;ng với lượng vitamin A từ thực phẩm h&agrave;ng ng&agrave;y sẽ gi&uacute;p mẹ bầu đ&aacute;p ứng được nhu cầu&nbsp;&nbsp;vitamin A&nbsp;cần thiết.</p>\r\n\r\n<p><strong>- Nh&oacute;m vitamin B</strong></p>\r\n\r\n<p><strong>Vitamin B1 (thiamin)</strong>:&nbsp;c&oacute; t&aacute;c dụng gi&uacute;p mẹ v&agrave; thai nhi chuyển h&oacute;a carbohydrates th&agrave;nh năng lượng. B1 c&ograve;n rất tốt cho sự ph&aacute;t triển tr&iacute; n&atilde;o của thai nhi.&nbsp;<strong>F1 Care Complex&nbsp;</strong>c&oacute; chứa 3mg vitamin B1 với lượng hấp thu l&ecirc;n tới hơn 200%<strong>.</strong></p>\r\n\r\n<p><strong>Vitamin B2 (riboflavin)</strong>: Lượng vitamin B2 tối thiểu được khuy&ecirc;n d&ugrave;ng trong thời gian mang thai l&agrave; 1,4 mg. Vitamin B2 gi&uacute;p giải ph&oacute;ng năng lượng từ chất b&eacute;o, protein (chất đạm), v&agrave; tinh bột. Th&agrave;nh phần&nbsp;Vitamin B2 trong&nbsp;<strong>F1 Care Complex&nbsp;</strong>l&agrave; 3,4mg.</p>\r\n\r\n<p><img alt=\" F1 Care Complex\" src=\"https://nhathuoc365.vn/upload_images/images/F1-care---so-1-danh-cho-ba-bau3.jpg\" /></p>', 'default', NULL, 'f1-care-complex-vitamin-tong-hop-so-1-cho-ba-bau-7', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', NULL, NULL, NULL, NULL, '2022-04-09 10:06:02', NULL),
(8, 'GREEN CALCIUM - BỔ SUNG CANXI HỮU CƠ CHO BÀ BẦU', NULL, '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Vitamin - kho&aacute;ng chất</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Vi&ecirc;n n&eacute;n</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 1 lọ x 100 vi&ecirc;n</li>\r\n	<li>H&agrave;m lượng:&nbsp;Nhiều th&agrave;nh phần</li>\r\n</ul>', 'default', NULL, 'green-calcium-bo-sung-canxi-huu-co-cho-ba-bau', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'Sản phẩm,Sản phẩm mới,Sản phẩm khuyến mãi,Sản phẩm tiêu biểu,Khuyến mãi đặc biệt,Thực phẩm chức năng,Hỗ trợ ung thư,Tinh dầu,Vitamin - khoáng chất,Thuốc bổ thần kinh,Điều trị tiểu đường,Nấm,Sản phẩm hỗ trợ,Tinh Dầu Organics,Dầu Nền', NULL, NULL, NULL, NULL, '2018-09-25 07:09:38', NULL),
(9, 'COMBO TINH DẦU CÚC LA MÃ VÀ TINH DẦU BABY ONE', NULL, '<ul>\r\n	<li>\r\n	<p>R&ecirc; chuột l&ecirc;n h&igrave;nh để ph&oacute;ng to</p>\r\n\r\n	<h1>EF 2001 BERM KAIN PREMIUM - HỖ TRỢ ĐIỀU TRỊ UNG THƯ</h1>\r\n\r\n	<p>Thương hiệu:&nbsp;<a href=\"https://nhathuoc365.vn/thuong-hieu-cong-ty-co-phan-berm-nhat-ban-th19\">C&ocirc;ng ty cổ phần BERM Nhật Bản</a></p>\r\n\r\n	<p>M&atilde; sản phẩm:&nbsp;BRMPRE</p>\r\n	</li>\r\n	<li>Loại sản phẩm:&nbsp;Khuẩn</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dạng bột</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 70g</li>\r\n	<li>H&agrave;m lượng:&nbsp;35 g&oacute;i x 2g</li>\r\n	<li>\r\n	<p>7.950.000 đ</p>\r\n\r\n	<form action=\"https://nhathuoc365.vn/index.php?module=product&amp;view=cart&amp;task=addCartMB&amp;id=535\" id=\"formQuantity\" method=\"post\">Số lượng:\r\n	<p><input name=\"quantity\" type=\"text\" value=\"1\" /></p>\r\n	</form>\r\n\r\n	<p><a href=\"javascript:void(0)\">ĐẶT H&Agrave;NG</a><a href=\"javascript:void(0)\" id=\"add-cart-detail\" title=\"Cho vào giỏ hàng\">TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG</a>&nbsp;&nbsp;</p>\r\n\r\n	<p>Ngại đặt h&agrave;ng?</p>\r\n\r\n	<p>Gọi ngay Hotline: 1800 8155<br />\r\n	(Tư vấn miễn ph&iacute; - Thời gian: 8h00 - 20h30)</p>\r\n\r\n	<p>Ngại gọi điện? Vui l&ograve;ng nhập số điện thoại</p>\r\n\r\n	<form action=\"https://nhathuoc365.vn/ef-2001-berm-kain-premium-ho-tro-dieu-tri-ung-thu-pd535#\" id=\"frm_call_me535\" method=\"post\">\r\n	<p><input name=\"txt_phone\" type=\"text\" /><a href=\"javascript:void(0)\">Gọi lại cho t&ocirc;i ngay</a></p>\r\n	</form>\r\n\r\n	<p>Gợi &yacute; t&igrave;m kiếm:</p>\r\n\r\n	<p><a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=ung-th%C6%B0\" title=\"\">ung thư,</a>&nbsp;<a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=-%C4%91i%E1%BB%81u-tr%E1%BB%8B-ung-th%C6%B0\" title=\"\">điều trị ung thư,</a>&nbsp;<a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=-t%C4%83ng-s%E1%BB%A9c-%C4%91%E1%BB%81-kh%C3%A1ng\" title=\"\">tăng sức đề kh&aacute;ng,</a>&nbsp;<a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=-b%E1%BB%87nh-%C4%91%C6%B0%E1%BB%9Dng-ru%E1%BB%99t\" title=\"\">bệnh đường ruột,</a></p>\r\n\r\n	<p><strong>C&Ocirc;NG DỤNG:</strong></p>\r\n\r\n	<p>Chứa một lượng rất lớn vi khuẩn EF 2001 (7,5 ngh&igrave;n tỷ /1 g&oacute;i), BeRM KAIN Premium cung cấp lượng lớn c&aacute;c &ldquo;chất tăng cường đ&aacute;p ứng sinh học&rdquo;, c&oacute; t&aacute;c dụng tăng k&iacute;ch th&iacute;ch đ&aacute;p ứng miễn dịch tự nhi&ecirc;n cũng như đ&aacute;p ứng miễn dịch đặc hiệu của cơ thể, gi&uacute;p:</p>\r\n\r\n	<p>- Gi&uacute;p hệ miễn dịch to&agrave;n diện, tăng sức đề kh&aacute;ng cho cơ thể một c&aacute;ch mạnh mẽ hơn. Gi&uacute;p ph&ograve;ng chống, loại bỏ c&ugrave;ng l&agrave;m sạch cơ thể bằng c&aacute;ch loại bỏ vi tr&ugrave;ng v&agrave; vật lạ x&acirc;m nhập v&agrave;o cơ thể từ b&ecirc;n ngo&agrave;i v&agrave; do cơ thể sản sinh ra từ b&ecirc;n trong như: (tế b&agrave;o ung thư, tế b&agrave;o chết, cholesterol xấu, vv..).</p>\r\n\r\n	<p>- Chống lại sự ph&aacute;t triển của c&aacute;c khối u.</p>\r\n\r\n	<p>- Ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị ung thư, đặc biệt n&acirc;ng cao thể trạng cho c&aacute;c đối tượng đang điều trị h&oacute;a hay xạ trị.</p>\r\n\r\n	<p>- Tăng cường, hỗ trợ chức năng ti&ecirc;u h&oacute;a, gi&uacute;p hệ ti&ecirc;u h&oacute;a lu&ocirc;n khỏe mạnh, hỗ trợ điều trị c&aacute;c bệnh đường ruột.</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><img alt=\"\" src=\"https://nhathuoc365.vn/upload_images/images/dong-hanh-cung-benh-nhan-ung-thu.jpg\" /></p>\r\n\r\n	<p><em>Đừng để ung thư l&agrave; &quot;&aacute;n tử&quot;</em></p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>CƠ CHẾ T&Aacute;C ĐỘNG</strong></p>\r\n\r\n	<p>Vi khuẩn Enterococcus faecalis EF2001 l&agrave; một thế hệ mới của vi khuẩn axit lactic, được tạo ra sau qu&aacute; tr&igrave;nh xử l&iacute; nhiệt vi khuẩn sinh acid lactic</p>\r\n\r\n	<p>EF 2001 chứa một lượng lớn c&aacute;c &ldquo;chất tăng cường đ&aacute;p ứng sinh học&rdquo; (biological response modifiers-BRMs), c&oacute; t&aacute;c dụng tăng k&iacute;ch th&iacute;ch đ&aacute;p ứng miễn dịch tự nhi&ecirc;n của cơ thể, tăng cường hoạt động của c&aacute;c đại thực b&agrave;o, hệ thống bạch cầu trong cơ thể, tăng số lượng kh&aacute;ng thể gi&uacute;p loại trừ c&aacute;c t&aacute;c nh&acirc;n lạ x&acirc;m nhập cơ thể, gi&uacute;p cơ thể khỏe mạnh. Qu&aacute; tr&igrave;nh xử l&iacute; nhiệt vi khuẩn sinh acid lactic tạo ra EF 2001 mang lại hiệu quả t&aacute;c dụng của acid lactic cao hơn nhiều so với th&ocirc;ng thường nhờ những &nbsp;lợi &iacute;ch sau:</p>\r\n\r\n	<p>- C&oacute; khả năng tạo ra một lựợng lớn hơn vi khuẩn sinh acid lactics với liều d&ugrave;ng nhỏ hơn (hơn 7,5 ngh&igrave;n tỉ vi khuẩn được tạo ra tr&ecirc;n 1g)</p>\r\n\r\n	<p>- Vi khuẩn được tạo ra kh&ocirc;ng phải vi khuẩn sống n&ecirc;n c&oacute; khả năng ổn định ở nhiệt độ cao.</p>\r\n\r\n	<p>- Kh&ocirc;ng &nbsp;tạo ra acid lactic mới, do đ&oacute; chất lượng, hoạt t&iacute;nh của vi khuẩn được ổn định.</p>\r\n\r\n	<p>- Kh&ocirc;ng c&oacute; t&iacute;nh acid, do đ&oacute; kh&ocirc;ng ảnh hưởng tới m&ugrave;i vị khi uống.</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><img alt=\"\" src=\"https://nhathuoc365.vn/upload_images/images/tieu-diet-ung-thu-a(2).jpg\" /></p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>MỘT SỐ TH&Ocirc;NG TIN VỀ SẢN PHẨM</strong></p>\r\n\r\n	<p>Quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;Hộp 70g (35 g&oacute;i x 2 g).</p>\r\n\r\n	<p>Dạng b&agrave;o chế:&nbsp;Bột</p>\r\n\r\n	<p>Th&agrave;nh phần:&nbsp;Vi khuẩn Enterococcus faecalis EF2001: 7,5 ngh&igrave;n tỷ vi khuẩn/g&oacute;i.</p>\r\n\r\n	<p><strong>LIỀU LƯỢNG:</strong></p>\r\n\r\n	<p>- Người muốn ph&ograve;ng bệnh, tăng cường miễn dịch:&nbsp; D&ugrave;ng 01 g&oacute;i/ ng&agrave;y.</p>\r\n\r\n	<p>- Người đang điều trị ung thư: 02-03 g&oacute;i/ng&agrave;y, 1 g&oacute;i/lần.<br />\r\n	- Pha uống c&ugrave;ng với nước ấm. Uống trước ăn hoặc sau ăn hoặc trước khi đi ngủ (với liều d&ugrave;ng 03 g&oacute;i/ng&agrave;y).</p>\r\n\r\n	<p><strong>ĐỐI TƯỢNG SỬ DỤNG:</strong></p>\r\n\r\n	<p>D&agrave;nh cho mọi đối tượng. Đặc biệt l&agrave; c&aacute;c đối tượng mắc c&aacute;c bệnh nan y v&agrave; suy giảm miễn dịch, c&aacute;c bệnh nh&acirc;n đang trong qu&aacute; tr&igrave;nh điều trị bệnh ung thư, người muốn ph&ograve;ng bệnh ung thư.</p>\r\n\r\n	<p><em><strong>Lưu &yacute;:</strong></em>&nbsp;Trẻ em dưới 3 tuổi n&ecirc;n hỏi &yacute; kiến b&aacute;c sỹ dinh dưỡng trước khi d&ugrave;ng.</p>\r\n\r\n	<p><strong>BẢO QUẢN:</strong></p>\r\n	</li>\r\n</ul>', 'default', NULL, 'combo-tinh-dau-cuc-la-ma-va-tinh-dau-baby-one', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', NULL, NULL, NULL, NULL, '2022-04-09 10:43:26', NULL),
(10, 'COMBO 2 LỌ SP BABY ONE TRỊ SỔ MŨI, NGHẸT MŨI CHO BÉ', NULL, '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Tinh Dầu Organics</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dung dịch</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;2 lọ 10 ml</li>\r\n	<li>H&agrave;m lượng:&nbsp;10ml/hộp</li>\r\n</ul>', 'default', NULL, 'combo-2-lo-sp-baby-one-tri-so-mui-nghet-mui-cho-be', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'Hỗ trợ ung thư,Tinh dầu,Vitamin - khoáng chất,Thuốc bổ thần kinh,Điều trị tiểu đường,Nấm,Sản phẩm hỗ trợ,Tinh Dầu Organics,Dầu Nền', NULL, NULL, NULL, NULL, '2018-09-25 07:14:25', NULL),
(11, 'COMBO 2 LỌ SP BABY ONE TRỊ SỔ MŨI, NGHẸT MŨI CHO BÉ', NULL, '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Tinh Dầu Organics</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dung dịch</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;2 lọ 10 ml</li>\r\n	<li>H&agrave;m lượng:&nbsp;10ml/hộp</li>\r\n</ul>', 'default', NULL, 'combo-2-lo-sp-baby-one-tri-so-mui-nghet-mui-cho-be-11', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'Sản phẩm khuyến mãi,Hỗ trợ ung thư,Tinh dầu,Vitamin - khoáng chất,Thuốc bổ thần kinh,Điều trị tiểu đường,Nấm,Sản phẩm hỗ trợ,Tinh Dầu Organics,Dầu Nền', NULL, NULL, NULL, NULL, '2018-09-25 07:15:49', NULL),
(12, 'EF 2001 BERM KAIN PREMIUM - HỖ TRỢ ĐIỀU TRỊ UNG THƯ', NULL, '<p><strong>C&Ocirc;NG DỤNG</strong></p>\r\n\r\n<p><strong>&nbsp;Tinh dầu Tr&agrave;m v&agrave; tinh dầu Khuynh Diệp</strong>&nbsp;mang lại nhiều lợi &iacute;ch kh&ocirc;ng ngờ cho trẻ trong việc ph&ograve;ng chống v&agrave; điều trị nhiều chứng bệnh thường gặp:</p>\r\n\r\n<p><strong>- Tinh dầu Tr&agrave;m</strong>&nbsp;gi&uacute;p b&eacute; ph&ograve;ng chống v&agrave; điều trị c&aacute;c vấn đề li&ecirc;n quan đến đường h&ocirc; hấp dưới như: vi&ecirc;m phế quản, vi&ecirc;m thanh quản, vi&ecirc;m phổi, hen phế quản, ho, hen suyễn.</p>\r\n\r\n<p><strong>- Tinh dầu Khuynh Diệp</strong>&nbsp;gi&uacute;p b&eacute; ph&ograve;ng v&agrave; điều trị c&aacute;c vấn đề li&ecirc;n quan đến đường h&ocirc; hấp tr&ecirc;n như: sổ mũi, ngạt mũi, hắt hơi, cảm c&uacute;m, vi&ecirc;m xoang mũi, vi&ecirc;m họng, sốt&hellip;</p>\r\n\r\n<p><strong>LIỀU LƯỢNG</strong></p>\r\n\r\n<p><strong>&nbsp;- Khi b&eacute; bị cảm c&uacute;m, vi&ecirc;m phế quản, vi&ecirc;m thanh quản, vi&ecirc;m phổi, ho:</strong>&nbsp;V&agrave;o mỗi buổi tối trước khi đi ngủ, mẹ b&ocirc;i tinh dầu Tr&agrave;m v&agrave;o gan b&agrave;n tay v&agrave; ch&acirc;n của b&eacute; sẽ gi&uacute;p b&eacute; ph&ograve;ng tr&aacute;nh cũng như điều trị cảm c&uacute;m, giảm ho v&agrave; giảm sốt cực kỳ hiệu quả. Ngo&agrave;i ra, mẹ cũng c&oacute; thể nhỏ v&agrave;i giọt tinh dầu Tr&agrave;m v&agrave;o chậu nước tắm; b&ocirc;i l&ecirc;n yếm, cổ &aacute;o hoặc thoa l&ecirc;n lưng, ngực v&agrave; cổ của b&eacute;. Khi cho b&eacute; đi ra ngo&agrave;i, để ph&ograve;ng chống gi&oacute; m&aacute;y, cảm mạo cho b&eacute; mẹ c&oacute; thể thoa &iacute;t tinh dầu Tr&agrave;m l&ecirc;n cổ, lưng, gan b&agrave;n ch&acirc;n, b&agrave;n tay của b&eacute;; hoặc qu&agrave;ng cho b&eacute; một chiếc khăn c&oacute; xức dầu tr&agrave;m.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>- Khi b&eacute; bị cảm c&uacute;m, vi&ecirc;m xoang mũi, ngạt mũi:</strong>&nbsp;mẹ thoa tinh dầu Khuynh Diệp l&ecirc;n gan b&agrave;n ch&acirc;n hoặc gan b&agrave;n tay của b&eacute; để gi&uacute;p b&eacute; th&ocirc;ng mũi, hết hắt hơi, điều trị nhanh v&agrave; triệt để sổ mũi, ngạt mũi, ngăn ngừa, hạn chế v&agrave; điều trị cảm c&uacute;m.... Ngo&agrave;i ra, mẹ c&oacute; thể thoa tinh dầu Khuynh Diệp l&ecirc;n cổ, ngực, lưng của b&eacute; hoặc nhỏ từ 1-2 giọt l&ecirc;n gối, cổ &aacute;o hoặc chiếc khăn quấn ở cổ b&eacute;, hương thơm của tinh dầu b&eacute; sẽ ngửi được. B&eacute; sẽ ngay lập tức hết sổ mũi, ngạt mũi một c&aacute;ch k&igrave; diệu.</p>\r\n\r\n<p><strong>- Khi b&eacute; bị c&ocirc;n tr&ugrave;ng cắn:</strong>&nbsp;Với nốt muỗi đốt, mẹ thoa tinh dầu Tr&agrave;m l&ecirc;n vết cắn, sau 2-3 ph&uacute;t l&agrave; vết cắn sẽ hết đỏ, hết ngứa v&agrave; hết sưng. Với vết kiến cắn, kể cả kiến ba khoang, mẹ chỉ cần thoa tinh dầu Khuynh Diệp l&ecirc;n v&ugrave;ng bị đau của b&eacute; rồi nhẹ nh&agrave;ng massage, chỉ sau 1-2 ph&uacute;t l&agrave; b&eacute; hết ngứa ng&aacute;y, vết cắn hết sưng.&nbsp;</p>\r\n\r\n<p><strong>- Khi b&eacute; c&oacute; dấu hiệu bị hen ph&ecirc;́ quản:&nbsp;</strong>Khi b&eacute; c&oacute; c&aacute;c tri&ecirc;̣u chứng hen ph&ecirc;́ quản như xu&acirc;́t hi&ecirc;̣n cơn ho v&ecirc;̀ đ&ecirc;m khi đang ngủ, đờm trắng d&iacute;nh, nghe ph&ocirc;̉i c&oacute; ti&ecirc;́ng r&iacute;t, kh&ograve; kh&egrave;&hellip; mẹ c&oacute; th&ecirc;̉ sử dụng v&agrave;i giọt tinh d&acirc;̀u Tr&agrave;m th&acirc;́m v&agrave;o b&ocirc;ng (hoặc gi&acirc;́y ăn) cho b&eacute; h&iacute;t ngửi từ 10-15 ph&uacute;t. Đồng thời, mẹ xoa tinh dầu Tr&agrave;m v&agrave;o gan b&agrave;n ch&acirc;n v&agrave; gan b&agrave;n tay b&eacute;. Mẹ sẽ cảm nhận được hiệu quả tức th&igrave; chỉ sau 15 ph&uacute;t sử dụng.</p>\r\n\r\n<p><strong>KHUYẾN C&Aacute;O</strong></p>\r\n\r\n<p>Để an to&agrave;n cho c&aacute;c loại da, tr&aacute;nh dị ứng bạn n&ecirc;n b&ocirc;i thử l&ecirc;n mu b&agrave;n tay trước khi sử dụng.&nbsp;</p>\r\n\r\n<p><em>* Lưu &yacute;: SP kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh. Hiệu quả của SP c&oacute; thể phụ thuộc v&agrave;o cơ địa của người d&ugrave;ng v&agrave; c&oacute; th&ecirc;̉ thay đ&ocirc;̉i tùy theo tình trạng th&ecirc;̉ ch&acirc;́t m&ocirc;̃i nguời.</em></p>\r\n\r\n<p><em>C&aacute;c loại tinh dầu của An Organics l&agrave; loại tinh dầu cao cấp, được chiết xuất từ 100% nguy&ecirc;n liệu sạch m&agrave; kh&ocirc;ng c&oacute; sự can thiệp của bất kỳ một chất h&oacute;a học n&agrave;o trong nu&ocirc;i trồng cũng như sản xuất chế biến n&ecirc;n rất an to&agrave;n v&agrave; kh&ocirc;ng hề g&acirc;y t&aacute;c dụng phụ. Sản phẩm đ&atilde; được trải qua c&aacute;c bước kiểm tra nghi&ecirc;m ngặt, đạt ti&ecirc;u chuẩn ISO, c&oacute; chứng chỉ Organic của Hiệp hội Organic thế giới.</em></p>\r\n\r\n<p><strong>TẠI SAO BẠN N&Ecirc;N MUA H&Agrave;NG TR&Ecirc;N&nbsp; NHATHUOC365.VN&nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p>Nhathuoc365.vn tự h&agrave;o l&agrave; 1 địa chỉ chuy&ecirc;n cung cấp c&aacute;c sản phẩm chăm s&oacute;c sức khoẻ uy t&iacute;n từ năm 2012 v&agrave; li&ecirc;n tục được b&igrave;nh chọn v&agrave;o tốp c&aacute;c Website b&aacute;n h&agrave;ng chất lượng v&agrave; uy t&iacute;n. Khi mua h&agrave;ng tại&nbsp; nhathuoc365.vn&nbsp; Bạn sẽ c&oacute; những lợi &iacute;ch sau đ&acirc;y:&nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>1. Mua h&agrave;ng tại 1 địa chỉ uy t&iacute;n, đ&aacute;ng tin cậy, bạn kh&ocirc;ng bao giờ phải lo lắng về chất lượng sản phẩm (Nh&agrave; thuốc 365 đạt chứng nhận danh hiệu &ldquo;Sản phẩm, dịch vụ uy t&iacute;n chất lượng 2015.</p>\r\n\r\n<p>2. Nhathuoc365.vn l&agrave; nh&agrave; ph&acirc;n phối ch&iacute;nh h&atilde;ng của những thương hiệu h&agrave;ng đầu tr&ecirc;n thế giới về c&aacute;c sản phẩm chăm s&oacute;c sức khoẻ như Careline, Olympian Labs, Nature&rsquo;s Plus, Vitamins For Life...&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>3. Được tư vấn miễn ph&iacute; c&aacute;c th&ocirc;ng tin về sức khoẻ v&agrave; sản phẩm trước, trong v&agrave; sau khi mua h&agrave;ng bởi đội ngũ B&aacute;c sĩ v&agrave; chuy&ecirc;n gia nhiều năm kinh nghiệm&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>4. Mua h&agrave;ng nhanh gọn, thuận tiện, tiết kiệm thời gian v&agrave; chi ph&iacute;.&nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>5. Chỉ thanh to&aacute;n khi nhận h&agrave;ng.&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2><strong>NH&Agrave; THUỐC 365 &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU VIỆT NAM!</strong></h2>\r\n\r\n<p>C&aacute;c loại Tinh dầu của An Organics l&agrave; loại tinh dầu cao cấp nhất, được chiết xuất từ 100% nguy&ecirc;n liệu sạch m&agrave; kh&ocirc;ng c&oacute; sự can thiệp của bất kỳ một chất h&oacute;a học n&agrave;o trong nu&ocirc;i trồng cũng như sản xuất chế biến n&ecirc;n rất an to&agrave;n v&agrave; kh&ocirc;ng hề g&acirc;y t&aacute;c dụng phụ. Sản phẩm đ&atilde; được trải qua c&aacute;c kh&acirc;u kiểm tra nghi&ecirc;m ngặt, đạt ti&ecirc;u chuẩn ISO, c&oacute; chứng chỉ Organics của c&aacute;c hiệp hội Organics thế giới.</p>', 'default', NULL, 'combo-2-lo-sp-baby-one-tri-so-mui-nghet-mui-cho-be-12', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', NULL, NULL, NULL, NULL, '2022-04-09 10:05:41', NULL),
(13, 'COMBO 2 LỌ SP BABY ONE TRỊ SỔ MŨI, NGHẸT MŨI CHO BÉ', NULL, '<p><strong>C&Ocirc;NG DỤNG</strong></p>\r\n\r\n<p>Tinh dầu tr&agrave;m nguy&ecirc;n chất An Organics:</p>\r\n\r\n<p>- Đặc biệt hữu hiệu trong việc ph&ograve;ng v&agrave; hỗ trợ điều trị c&aacute;c bệnh h&ocirc; hấp dưới như vi&ecirc;m phế quản, vi&ecirc;m thanh quản, vi&ecirc;m phổi, hen phế quản, ho, thở kh&ograve; kh&egrave;...</p>\r\n\r\n<p>- Ph&ograve;ng gi&oacute; m&aacute;y, ph&ograve;ng cảm lạnh</p>\r\n\r\n<p>- Điều trị vết muỗi đốt, kiến cắn</p>\r\n\r\n<p>&nbsp;Tinh dầu Tr&agrave;m An Organics đ&atilde; được kiểm nghiệm v&agrave; chứng nhận bởi Viện Khoa học v&agrave; C&ocirc;ng nghệ Việt Nam.</p>\r\n\r\n<p>&nbsp; &nbsp;<img alt=\"\" src=\"https://nhathuoc365.vn/upload_images/images/TRAM(3).jpg\" /></p>\r\n\r\n<p><strong>QUY TR&Igrave;NH SẢN XUẤT TINH DẦU TR&Agrave;M NGUY&Ecirc;N CHẤT AN ORGANICS</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://nhathuoc365.vn/upload_images/images/kiem-nghiem-tinh-dau(1)(4).png\" /></strong></p>\r\n\r\n<p><strong>LIỀU LƯỢNG V&Agrave; C&Aacute;CH D&Ugrave;NG</strong></p>\r\n\r\n<p>&nbsp;- Ph&ograve;ng v&agrave; hỗ trợ điều trị cảm c&uacute;m, vi&ecirc;m phế quản, vi&ecirc;m thanh quản, vi&ecirc;m phổi, ho: V&agrave;o mỗi buổi tối trước khi đi ngủ, mẹ thoa tinh dầu Tr&agrave;m v&agrave;o gan b&agrave;n ch&acirc;n, gan b&agrave;n tay của của con. Nếu trời qu&aacute; lạnh c&oacute; thể đi một đ&ocirc;i tất mỏng v&agrave;o ch&acirc;n cho b&eacute;.</p>\r\n\r\n<p>- Ph&ograve;ng v&agrave; hỗ trợ đi&ecirc;̀u trị b&ecirc;̣nh hen ph&ecirc;́ quản: Khi b&eacute; c&oacute; c&aacute;c tri&ecirc;̣u chứng hen ph&ecirc;́ quản như xu&acirc;́t hi&ecirc;̣n cơn ho v&ecirc;̀ đ&ecirc;m khi đang ngủ, đờm trắng d&iacute;nh, nghe ph&ocirc;̉i c&oacute; ti&ecirc;́ng r&iacute;t, kh&ograve; kh&egrave;&hellip; mẹ thoa tinh dầu Tr&agrave;m v&agrave;o gan b&agrave;n ch&acirc;n của b&eacute;; Sử dụng v&agrave;i giọt tinh d&acirc;̀u Tr&agrave;m th&acirc;́m v&agrave;o b&ocirc;ng (hoặc gi&acirc;́y ăn), để c&aacute;ch mũi b&eacute; 2-3 cm rồi cho b&eacute; h&iacute;t ngửi từ 10-15 ph&uacute;t.</p>\r\n\r\n<p>- Tr&aacute;nh gi&oacute;, ph&ograve;ng cảm lạnh: Khi tắm cho con, mẹ c&oacute; thể nhỏ từ 1-2 giọt tinh dầu Tr&agrave;m v&agrave;o nước tắm của b&eacute;. Sau khi tắm xong, mẹ lau kh&ocirc; người b&eacute; rồi thoa một ch&uacute;t tinh dầu tr&agrave;m v&agrave;o ch&acirc;n, tay b&eacute; kết hợp massage nhẹ nh&agrave;ng. Khi cho b&eacute; ra ngo&agrave;i trời, để ph&ograve;ng chống gi&oacute; m&aacute;y, cảm mạo cho b&eacute; mẹ c&oacute; thể thoa &iacute;t tinh dầu Tr&agrave;m v&agrave;o gan b&agrave;n ch&acirc;n, gan b&agrave;n tay, hoặc qu&agrave;ng cho b&eacute; một chiếc khăn c&oacute; xức tinh dầu Tr&agrave;m.</p>\r\n\r\n<p>- Khi b&eacute; bị muỗi đốt: Mẹ thoa trực tiếp tinh dầu Tr&agrave;m l&ecirc;n vết cắn sẽ nhanh l&agrave;m dịu vết đỏ, giảm sưng, hết ngứa.&nbsp;</p>\r\n\r\n<p><strong>KHUYẾN C&Aacute;O</strong></p>\r\n\r\n<p>- Kh&ocirc;ng được uống.</p>\r\n\r\n<p>- Kh&ocirc;ng để tinh dầu rơi v&agrave;o mắt, kh&ocirc;ng thoa tinh dầu v&agrave;o c&aacute;c vết thương hở.</p>\r\n\r\n<p>- Kh&ocirc;ng ti&ecirc;́p tục sử dụng tinh d&acirc;̀u n&ecirc;́u phát hi&ecirc;̣n có mùi, màu sắc lạ hoặc khi bị dị ứng xảy ra.&nbsp;</p>\r\n\r\n<p>- Trước khi b&ocirc;i diện rộng, bạn n&ecirc;n b&ocirc;i thử l&ecirc;n mu b&agrave;n tay để thử khả năng k&iacute;ch ứng của da.&nbsp;</p>\r\n\r\n<p><strong>BẢO QUẢN</strong></p>\r\n\r\n<p>- Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n\r\n<p>- Đ&acirc;̣y k&iacute;n lọ sau khi sử dụng. Để xa t&acirc;̀m tay trẻ em.&nbsp;</p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong>Sản phẩm kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh</p>\r\n\r\n<p>&nbsp;*T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng*&nbsp;</p>\r\n\r\n<p><strong>CAM KẾT VỀ CHẤT LƯỢNG</strong></p>\r\n\r\n<p>Theo Hiệp hội Organic, loại tinh dầu tr&agrave;m được xem l&agrave; nguy&ecirc;n chất, hảo hạng, c&oacute; t&aacute;c dụng trị liệu tốt nhất khi c&oacute; h&agrave;m lượng Cineole đạt 40-60%. Kh&ocirc;ng nhiều loại tinh dầu đảm bảo con số l&yacute; tưởng n&agrave;y, nếu kh&ocirc;ng muốn n&oacute;i l&agrave; chỉ đếm được tr&ecirc;n đầu ng&oacute;n tay. V&agrave; tinh dầu tr&agrave;m nguy&ecirc;n chất An Organics l&agrave; một trong số &iacute;t loại c&oacute; h&agrave;m lượng đạt đến mức ho&agrave;n hảo đ&oacute; (56,62%).</p>\r\n\r\n<p>Sản phẩm tinh dầu tr&agrave;m An Organics được Viện khoa học v&agrave; c&ocirc;ng nghệ Việt Nam kiểm định v&agrave; chứng nhận về chất lượng th&agrave;nh phần.&nbsp;</p>', 'default', NULL, 'combo-2-lo-sp-baby-one-tri-so-mui-nghet-mui-cho-be-13', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, '', NULL, NULL, NULL, NULL, '2022-04-09 10:15:33', NULL),
(14, 'OKINAWA FUCOIDAN - HỖ TRỢ ĐIỀU TRỊ UNG THƯ', NULL, '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Fucoidan</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Vi&ecirc;n nang cứng</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 1 lọ x 180 vi&ecirc;n</li>\r\n	<li>H&agrave;m lượng:&nbsp;295mg/vi&ecirc;n</li>\r\n</ul>', 'default', NULL, 'okinawa-fucoidan-ho-tro-dieu-tri-ung-thu', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'Sản phẩm,Khuyến mãi đặc biệt,Thực phẩm chức năng,Hỗ trợ ung thư,Tinh dầu,Vitamin - khoáng chất,Điều trị tiểu đường,Nấm,Sản phẩm hỗ trợ,Tinh Dầu Organics,Dầu Nền', NULL, NULL, NULL, NULL, '2018-09-25 07:24:02', NULL);
INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `product_list`, `post_type`, `visiable`, `category_string`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 'OKINAWA FUCOIDAN - HỖ TRỢ ĐIỀU TRỊ UNG THƯ', NULL, '<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#ff0000\"><span style=\"font-size:16px\"><strong>C&Ocirc;NG DỤNG:</strong></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Hỗ trợ ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị ung thư. &Aacute;p dụng cho mọi loại ung thư v&agrave; bất k&igrave; giai đoạn n&agrave;o của bệnh.</span></span></span></span></span></span></span></p>\r\n\r\n<div style=\"-webkit-text-stroke-width:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px; text-align:start\">\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- N&acirc;ng cao sức đề kh&aacute;ng, miễn dịch cho cơ thể.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Hỗ trợ ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị bệnh l&iacute; tim mạch như chứng xơ vữa động mạch, tăng mỡ m&aacute;u, gi&uacute;p điều h&ograve;a huyết &aacute;p.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Bảo vệ ni&ecirc;m mạc dạ d&agrave;y, gi&uacute;p&nbsp;l&agrave;m l&agrave;nh chỗ vi&ecirc;m, loại trừ vi khuẩn HP (Một trong những t&aacute;c nh&acirc;n g&acirc;y vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng v&agrave;&nbsp;ung thư dạ d&agrave;y).</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Ức chế cơ chế g&acirc;y b&eacute;o ph&igrave;.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Điều h&ograve;a cơ thể, ph&ograve;ng ngừa bệnh tật, k&eacute;o d&agrave;i tuổi thọ.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Fucoidan Okinawa l&agrave; sản phẩm với th&agrave;nh phần ch&iacute;nh Fucoidan được chiết xuất từ loại tảo n&acirc;u Mozuku ở Nhật Bản, c&oacute; t&aacute;c dụng vượt trội trong việc ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị ung thư. Sử dụng quy tr&igrave;nh sản xuất Kanehide Bio đ&atilde; được cấp bằng s&aacute;ng chế của Viện Quốc Gia Khoa Học C&ocirc;ng Nghiệp v&agrave; C&ocirc;ng Nghệ (AIST) của Tokyo, Nhật Bản, sau qu&aacute; tr&igrave;nh chiết xuất Fucoidan tiếp tục được chiết t&aacute;ch theo trọng lượng ph&acirc;n tử th&ocirc;ng qua qu&aacute; tr&igrave;nh si&ecirc;u lọc để đạt độ tinh khiết cao, gi&uacute;p ph&aacute;t huy t&aacute;c dụng của Fucoidan, đạt hiệu quả cao nhất.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Fucoidan l&agrave; một nguồn gốc chất nhờn được t&igrave;m thấy trong c&aacute;c loại tảo n&acirc;u như Kombu, Wakame (Mekabu), Mozuku v&agrave; loại chất xơ h&ograve;a tan trong nước. Về nghi&ecirc;n cứu khoa học, Fucoidan l&agrave; một chuỗi ph&acirc;n tử cao polysaccharide c&oacute; th&agrave;nh phần ch&iacute;nh l&agrave; sulfate fucose. Theo y học hiện đại th&igrave; lo&agrave;i thực vật n&agrave;o c&oacute; h&agrave;m lượng sunfat cao th&igrave; đều c&oacute; t&aacute;c dụng chữa bệnh cao. V&agrave; cũng ch&iacute;nh v&igrave; l&yacute; do n&agrave;y con người đ&atilde; bắt đầu t&igrave;m c&aacute;ch để khai th&aacute;c lợi &iacute;ch từ c&aacute;c loại rong biển chứa Fucoidan.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">C&aacute;c dẫn chứng khoa học cho thấy Fucoidan đem lại nhiều hiệu quả trong hỗ trợ điều trị ung thư như: k&iacute;ch th&iacute;ch c&aacute;c tế b&agrave;o ung thư &ldquo;tự chết&rdquo;, ức chế qu&aacute; tr&igrave;nh x&acirc;m lấn, di căn v&agrave; tăng cường hệ miễn dịch cơ thể.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:#ff0000\"><span style=\"font-size:16px\"><strong>CƠ CHẾ T&Aacute;C ĐỘNG CỦA FUCOIDAN L&Ecirc;N TẾ B&Agrave;O UNG THƯ</strong></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"okinawa fucoidan\" src=\"https://nhathuoc365.vn/upload_images/images/okinawa-fuocidan.jpg\" style=\"border:0px; box-sizing:border-box; color:transparent; font-size:0px; height:434px; margin:0px; padding:0px; vertical-align:middle; width:600px\" /></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><em><span style=\"font-size:14px\">Với 3 cơ chế chống lại tế b&agrave;o ung thư, Fucoidan c&oacute; t&aacute;c dụng trong ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị ung thư ở mọi giai đoạn.</span></em></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Với cơ chế chống lại tế b&agrave;o ung thư, Fucoidan c&oacute; t&aacute;c dụng trong ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị ung thư ở mọi giai đoạn. Cụ thể:</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">-<strong>&nbsp;Giai đoạn ph&ograve;ng ngừa</strong>: Fucoidan gi&uacute;p cơ thể tăng cường hệ miễn dịch l&ecirc;n nhanh ch&oacute;ng, tương đương với việc uống Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo hay Nh&acirc;n s&acirc;m. Khi hệ miễn dịch khỏe mạnh, khả năng ph&aacute;t hiện v&agrave; ti&ecirc;u diệt c&aacute;c tế b&agrave;o lạ sẽ được n&acirc;ng l&ecirc;n đ&aacute;ng kể</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">-&nbsp;<strong>Giai đoạn ung thư can thiệp bằng phẫu thuật</strong>: Đ&acirc;y l&agrave; giai đoạn ung thư ph&aacute;t hiện sớm, chỉ cần chữa trị bằng phẫu thuật kết hợp ki&ecirc;n tr&igrave; sử dụng Okinawa Fucoidan th&igrave; phần lớn người bệnh đều phục hồi ho&agrave;n to&agrave;n.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">-&nbsp;<strong>Đối với những người ung thư ở giai đoạn nặng cần Xạ trị hoặc h&oacute;a trị</strong>: Việc sử dụng Fucoidan gần như l&agrave; bắt buộc. Bởi:</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Fucoidan c&oacute; t&aacute;c dụng k&iacute;ch hoạt qu&aacute; tr&igrave;nh tự chết của tế b&agrave;o ung thư, đồng thời bao v&acirc;y lại tế b&agrave;o ung thư khiến ch&uacute;ng kh&ocirc;ng thể di căn qua khu vực kh&aacute;c. Điều n&agrave;y tạo điều kiện thuận lợi cho việc can thiệp&nbsp;của c&aacute;c phương ph&aacute;p kh&aacute;c.&nbsp;</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Khi can thiệp&nbsp;bằng phương ph&aacute;p h&oacute;a, xạ trị cơ thể người bệnh bị suy kiệt nhanh ch&oacute;ng. Sử dụng Okinawa Fucoidan sẽ gi&uacute;p người bệnh nhanh ch&oacute;ng phục hồi sau mỗi lần điều trị.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Điều n&agrave;y c&oacute; &yacute; nghĩa đặc biệt quan trọng bởi v&igrave; c&oacute; tới 70% người ung thư tử vong do cơ thể bị suy kiệt khi d&ugrave;ng h&oacute;a trị, xạ trị. Nhiều nghi&ecirc;n cứu đ&atilde; chỉ ra rằng Fucoidan c&oacute; thể ngăn chặn sự ph&aacute;t triển của c&aacute;c tế b&agrave;o ung thư v&agrave; bảo vệ tế b&agrave;o thần kinh.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>OKINAWA FUCOIDAN T&Aacute;C ĐỘNG L&Ecirc;N C&Aacute;C TẾ B&Agrave;O UNG THƯ NHƯ THẾ N&Agrave;O?</strong></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>1. T&aacute;c dụng ti&ecirc;u diệt tế b&agrave;o ung thư:</strong></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Fucoidan k&iacute;ch th&iacute;ch tế b&agrave;o ung thư tự ti&ecirc;u diệt theo chu tr&igrave;nh chết tự nhi&ecirc;n của tế b&agrave;o (Apoptosis). Fucoidan c&oacute; t&aacute;c dụng &nbsp;hoạt h&oacute;a gen ức chế khối u P53, l&agrave;m cho c&aacute;c tế b&agrave;o ung thư sẽ tự ti&ecirc;u diệt theo chu tr&igrave;nh Apoptosis. C&aacute;c tế b&agrave;o ung thư sẽ bị c&ocirc; lập, co lại v&agrave; ph&acirc;n hủy m&agrave; kh&ocirc;ng l&agrave;m ảnh hưởng đến c&aacute;c tế b&agrave;o b&igrave;nh thường xung quanh. Điều n&agrave;y gi&uacute;p hạn chế t&aacute;c dụng phụ so với biện ph&aacute;p h&oacute;a trị liệu hiện nay.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong><span style=\"font-size:14px\">2. T&aacute;c dụng chống ung thư di căn t&aacute;i ph&aacute;t:</span></strong></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Fucoidan c&oacute; t&aacute;c dụng ngăn chặn sự h&igrave;nh th&agrave;nh mạch m&aacute;u mới của c&aacute;c tế b&agrave;o ung thư. C&aacute;c tế b&agrave;o ung thư c&oacute; khả năng x&acirc;m lấn c&aacute;c tế b&agrave;o l&acirc;n cận, bằng c&aacute;ch tiết ra một loại enzym metalloproteinase, ch&uacute;ng l&agrave;m hủy hoại c&aacute;c tế b&agrave;o l&acirc;n cận v&agrave; h&igrave;nh th&agrave;nh n&ecirc;n mạch m&aacute;ch mới ri&ecirc;ng lẻ để nu&ocirc;i khối u. Fucoidan ngăn chặn qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh mạch m&aacute;u mới n&agrave;y, đồng nghĩa với việc l&agrave;m mất nguồn dinh dưỡng nu&ocirc;i khối u, c&aacute;c tế b&agrave;o ung thư sẽ bị ti&ecirc;u diệt do kh&ocirc;ng được cung cấp năng lượng, do đ&oacute; cũng kh&ocirc;ng thể di căn tới c&aacute;c vị tr&iacute; kh&aacute;c. Một giả thiết nữa được t&igrave;m ra l&agrave; Fucoidan ức chế qu&aacute; tr&igrave;nh gắn kết c&aacute;c tế b&agrave;o khối u với tiểu cầu, qu&aacute; tr&igrave;nh n&agrave;y khởi đầu cho hiện tượng di căn của khối u. Những cơ chế n&agrave;y cho thấy Fucoidan c&oacute; t&aacute;c dụng chống hiện tượng di căn của ung thư.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>3. T&aacute;c dụng tăng cường hoạt động của hệ miễn dịch:</strong></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Ch&uacute;ng ta muốn khỏe mạnh trước ti&ecirc;n phải c&oacute; hệ miễn dịch khỏe mạnh. Người bệnh c&agrave;ng cần c&oacute; sức khỏe để chống chọi với bệnh tật. C&aacute;c tế b&agrave;o ung thư x&acirc;m lấn v&agrave; hủy hoại c&aacute;c tế b&agrave;o bạch cầu khiến hệ miễn dịch ch&uacute;ng ta suy yếu, cơ thể mất đề kh&aacute;ng, dễ nhiễm virus, kh&ocirc;ng c&oacute; khả năng kh&aacute;ng lại ung thư. Do được chiết xuất từ tảo trong đại dương, Fucoidan c&oacute; chứa rất nhiều kho&aacute;ng chất, protein, cacbonhydrate&hellip;gi&uacute;p cho cơ thể ch&uacute;ng ta được tăng cường hệ miễn dịch, n&acirc;ng cao sức đề kh&aacute;ng, phục hồi chức năng bạch cầu, hỗ trợ qu&aacute; tr&igrave;nh đại thực b&agrave;o, gi&uacute;p ngăn ngừa v&agrave; đẩy l&ugrave;i bệnh ung thư hiệu quả.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>4. T&aacute;c dụng của fucoidan trong việc giảm cholesterol:</strong></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Với bản chất l&agrave; một chất xơ, Fucoidan hấp thu lượng cholesterol c&oacute; trong thức ăn v&agrave; giải ph&oacute;ng ch&uacute;ng ra ngo&agrave;i cơ thể, từ đ&oacute; ngăn chặn sự gia tăng h&agrave;m lượng cholesterol trong cơ thể. C&aacute;c nghi&ecirc;n cứu v&agrave; thử nghiệm l&acirc;m s&agrave;ng cho thấy Fucoidan c&oacute; t&aacute;c dụng l&agrave;m giảm mỡ m&aacute;u, giảm mức LDL-Cholesterol, tăng mức HDL-Cholesterol.&nbsp;</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:#ff0000\"><span style=\"font-size:16px\"><strong>TẠI SAO NGƯỜI BỆNH LẠI COI OKINAWA FUCOIDAN L&Agrave; GIẢI PH&Aacute;P TỐI ƯU NHẤT?</strong></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">-&nbsp;<strong>H&agrave;m lượng Fucoidan cao</strong>: Fucoidan Okinawa c&oacute; h&agrave;m lượng tinh chất Fucoidan l&agrave; 295 mg/vi&ecirc;n- cao hơn rất nhiều so với c&aacute;c sản phẩm Fucoidan tr&ecirc;n thị trường. N&oacute; cũng được coi l&agrave; tỉ lệ v&agrave;ng 100% nguy&ecirc;n chất, kh&ocirc;ng pha trộn với bất kỳ nguy&ecirc;n liệu n&agrave;o kh&aacute;c. Đ&acirc;y l&agrave; h&agrave;m lượng tối ưu d&ugrave;ng để ph&ograve;ng v&agrave; hỗ trợ điều trị ung thư.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;-&nbsp;<strong>Sử dụng c&ocirc;ng nghệ sản xuất th&ocirc;ng minh v&agrave; hiện đại bậc nhất thế giới:</strong>&nbsp;Fucoidan Okinawa được sử dụng quy tr&igrave;nh sản xuất Kanehide Bio, đ&atilde; được cấp bằng s&aacute;ng chế của Viện Quốc Gia Khoa Học C&ocirc;ng Nghiệp v&agrave; C&ocirc;ng Nghệ (AIST) của Tokyo, Nhật Bản, sau qu&aacute; tr&igrave;nh chiết xuất Fucoidan tiếp tục được chiết t&aacute;ch theo trọng lượng ph&acirc;n tử th&ocirc;ng qua qu&aacute; tr&igrave;nh si&ecirc;u lọc để đạt độ tinh khiết cao, gi&uacute;p ph&aacute;t huy t&aacute;c dụng của Fucoidan, đạt hiệu quả cao nhất.&nbsp;</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>- Nguồn nguy&ecirc;n liệu sạch tuyệt đối:</strong>&nbsp;V&ugrave;ng biển Okinawa c&aacute;ch xa lục địa v&agrave; được biết đến l&agrave; v&ugrave;ng biển sạch chưa từng bị &ocirc; nhiễm hay bị t&aacute;c động bởi m&ocirc;i trường sinh sống của con người. Tảo n&acirc;u Mozuku được nu&ocirc;i dưỡng v&agrave; ph&aacute;t triển mạnh mẽ dưới l&agrave;n s&oacute;ng m&aacute;t sạch v&agrave; gi&agrave;u &aacute;nh nắng mặt trời. Quy tr&igrave;nh thu hoạch tảo n&acirc;u tại v&ugrave;ng biển n&agrave;y cũng được thực hiện v&agrave; bảo vệ khắt khe cho sự lưu giữ của chất v&agrave;ng Fucoidan trong tảo n&acirc;u - thứ &ldquo;r&aacute;c của l&ograve;ng đại dương&rdquo;.Ch&iacute;nh v&igrave; thế Fucoidan được chiết xuất từ tảo n&acirc;u Mozuku đạt đến độ sạch, tinh khiết&nbsp;</span></span></span></span></span></span></span></span></p>\r\n</div>', 'default', NULL, 'okinawa-fucoidan-ho-tro-dieu-tri-ung-thu-15', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', NULL, NULL, NULL, NULL, '2022-04-09 10:15:45', NULL),
(16, 'AGARICUS MYCELIA TABLET - VIÊN THỂ NẤM AGARICUS', NULL, '<p>R&ecirc; chuột l&ecirc;n h&igrave;nh để ph&oacute;ng to</p>\r\n\r\n<h1>AGARICUS MYCELIA TABLET - VI&Ecirc;N THỂ NẤM AGARICUS</h1>\r\n\r\n<p>Thương hiệu:&nbsp;<a href=\"https://nhathuoc365.vn/thuong-hieu-kanehide-bio-coltd-th18\">Kanehide Bio Co.LTD</a></p>\r\n\r\n<p>M&atilde; sản phẩm:&nbsp;AGMO</p>\r\n\r\n<ul>\r\n	<li>Loại sản phẩm:&nbsp;Nấm</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Vi&ecirc;n n&eacute;n</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 1 lọ x 300 vi&ecirc;n</li>\r\n	<li>H&agrave;m lượng:&nbsp;Nhiều th&agrave;nh phần</li>\r\n</ul>\r\n\r\n<p>2.490.000 đ</p>\r\n\r\n<form action=\"https://nhathuoc365.vn/index.php?module=product&amp;view=cart&amp;task=addCartMB&amp;id=45\" id=\"formQuantity\" method=\"post\">Số lượng:\r\n<p><input name=\"quantity\" type=\"text\" value=\"1\" /></p>\r\n</form>\r\n\r\n<p><a href=\"javascript:void(0)\">ĐẶT H&Agrave;NG</a><a href=\"javascript:void(0)\" id=\"add-cart-detail\" title=\"Cho vào giỏ hàng\">TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG</a>&nbsp;&nbsp;</p>\r\n\r\n<p>Ngại đặt h&agrave;ng?</p>\r\n\r\n<p>Gọi ngay Hotline: 1800 8155<br />\r\n(Tư vấn miễn ph&iacute; - Thời gian: 8h00 - 20h30)</p>\r\n\r\n<p>Ngại gọi điện? Vui l&ograve;ng nhập số điện thoại</p>\r\n\r\n<form action=\"https://nhathuoc365.vn/agaricus-mycelia-tablet-vien-the-nam-agaricus-pd45#\" id=\"frm_call_me45\" method=\"post\">\r\n<p><input name=\"txt_phone\" type=\"text\" /><a href=\"javascript:void(0)\">Gọi lại cho t&ocirc;i ngay</a></p>\r\n</form>\r\n\r\n<p>Gợi &yacute; t&igrave;m kiếm:</p>\r\n\r\n<p><a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=UNG-TH%C6%AF\" title=\"\">UNG THƯ,</a>&nbsp;<a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=-TH%E1%BA%BA-N%E1%BA%A4M\" title=\"\">THẺ NẤM,</a>&nbsp;<a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=-PH%C3%92NG-NG%E1%BB%AAA-UNG-TH%C6%AF\" title=\"\">PH&Ograve;NG NGỪA UNG THƯ,</a></p>\r\n\r\n<p><strong>C&Ocirc;NG DỤNG:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Tăng cường hệ miễn dịch cho cơ thể , loại bỏ độc tố v&agrave; c&aacute;c gốc tự do , gi&uacute;p thanh lọc cơ thể.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị ung thư.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Hỗ trợ dinh dưỡng ho&agrave;n hảo cho người bệnh ung thư , người ăn ki&ecirc;ng .</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Hỗ trợ điều trị bệnh tiểu đường , vi&ecirc;m da, vi&ecirc;m lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Vi&ecirc;n thể nấm Agaricus</strong>&nbsp;gi&uacute;p tăng cường hệ miễn dịch, thanh lọc cơ thể, gi&uacute;p kh&aacute;ng vi&ecirc;m, kh&aacute;ng khuẩn, c&oacute; t&aacute;c dụng chống oxy h&oacute;a v&agrave; chống virus hiệu quả, ngăn ngừa v&agrave; hỗ trợ điều trị ung thư.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VI&Ecirc;N THỂ NẤM AGRICUS ĐƯỢC NU&Ocirc;I TRỒNG, B&Agrave;O CHẾ NHƯ THẾ N&Agrave;O?</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tại viện sinh học Kanehide,&nbsp;<strong>vi&ecirc;n thể nấm Agaricus</strong>&nbsp;được trồng trong nh&agrave; k&iacute;nh th&acirc;n thiện với m&ocirc;i trường tự nhi&ecirc;n, mỗi c&acirc;y nấm được chăm s&oacute;c rất cẩn thận từ kh&acirc;u lựa chọn giống, &aacute;p dụng m&ocirc; h&igrave;nh trồng tr&ecirc;n b&atilde; của c&acirc;y m&iacute;a đường, đạt tỉ lệ tối ưu về ph&acirc;n v&agrave; nước n&ecirc;n đạt hiệu quả cao về độ dinh dưỡng cũng như c&aacute;c hoạt chất b&ecirc;n trong. Bằng việc ứng dụng c&ocirc;ng nghệ b&agrave;o chế hiện đại, c&aacute;c chuy&ecirc;n gia Kanehide Bio đ&atilde; tr&iacute;ch xuất to&agrave;n bộ tinh chất nấm Agaricus để b&agrave;o chế dưới dạng vi&ecirc;n nang, tạo n&ecirc;n một sản phẩm rất tốt cho sức khoẻ cho những người c&oacute; chế độ ăn uống ki&ecirc;ng khem, suy giảm miễn dịch , c&aacute;c bệnh về ung thư v&agrave; lối sống</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TẠI SAO BỆNH NH&Acirc;N UNG THƯ N&Ecirc;N D&Ugrave;NG VI&Ecirc;N THỂ NẤM AGARICUS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>T&igrave;nh trạng ung thư trở n&ecirc;n nghi&ecirc;m trọng khi thể lực bệnh nh&acirc;n suy kiệt. T&igrave;nh trạng suy kiệt c&oacute; thể l&agrave; phản ứng phụ của qu&aacute; tr&igrave;nh điều trị: h&oacute;a trị, xạ trị, phẫu thuật hoặc do t&acirc;m l&yacute; ch&aacute;n nản, lo lắng của người bệnh nhưng phần nhiều l&agrave; do ch&iacute;nh khối u g&acirc;y ra. C&aacute;c khối u ph&aacute;t triển, di căn, lấy c&aacute;c chất dinh dưỡng của cơ thể, bỏ đ&oacute;i c&aacute;c tế b&agrave;o bạch cầu, l&agrave;m suy yếu cần sức đề kh&aacute;ng dẫn đến t&igrave;nh trạng tử vong của bệnh nh&acirc;n ung thư ng&agrave;y c&agrave;ng nhanh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://nhathuoc365.vn/upload_images/images/1-vien-the-nam.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bằng cơ chế c&ocirc; lập tế b&agrave;o ung thư, bỏ đ&oacute;i v&agrave; cắt đứt c&aacute;c tua lan rộng của tế b&agrave;o ung thư, vi&ecirc;n thể nấm Agaricus c&oacute; t&aacute;c dụng đặc hiệu trong việc kiểm so&aacute;t sự ph&aacute;t triển của c&aacute;c khối ung thư mới h&igrave;nh th&agrave;nh v&agrave; di căn. Vi&ecirc;n thể nấm Agaricus chứa nhiều loại vitamin, amino acids v&agrave; sợi quan trọng, đặc biệt l&agrave; h&agrave;m lượng lớn Beta 1,3- Glucan v&agrave; Beta 1,6 &ndash; glucan c&oacute; t&aacute;c dụng k&iacute;ch hoạt đại thực b&agrave;o macrophage - một loại bạch cầu gi&uacute;p bảo vệ v&agrave; tăng cường hệ miễn dịch v&agrave; tạo ra c&aacute;c đ&aacute;p ứng tối ưu chống lại c&aacute;c tế b&agrave;o ung thư đang di căn. Nh&oacute;m polysaccharid bao gồm &szlig; (1-3) D-glucan v&agrave; &szlig; (1-6) D - glucan c&oacute; sức mạnh chống tế b&agrave;o khối u sarcoma 180 để hỗ trợ điều trị ung thư tối ưu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, vi&ecirc;n thể nấm Agaricus&nbsp; c&ograve;n gi&uacute;p bồi bổ v&agrave; tăng cường sức khỏe, chống oxy h&oacute;a để ngăn ngừa v&agrave; chống l&atilde;o ho&aacute; tự nhi&ecirc;n, điều h&ograve;a nội tiết tố, gi&uacute;p da s&aacute;ng hồng v&agrave; mịn m&agrave;ng. Đồng thời, vi&ecirc;n thể nấm Agaricus ph&ograve;ng v&agrave; hỗ trợ điều trị đ&aacute;i th&aacute;o đường, cao huyết &aacute;p, mỡ m&aacute;u&hellip; chữa bệnh ở đường ti&ecirc;u h&oacute;a, điều trị vi&ecirc;m lo&eacute;t dạ d&agrave;y, hỗ trợ phục hồi nhanh cho người đang điều trị bệnh, người vừa phẫu thuật, kh&aacute;ng virus&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ĐỐI TƯỢNG N&Agrave;O N&Ecirc;N SỬ DỤNG VI&Ecirc;N THỂ NẤM AGARICUS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp; D&ugrave;ng cho c&aacute;c bệnh nh&acirc;n ung thư , tiểu đường,&nbsp; đối tượng c&oacute; c&aacute;c bệnh về da , dạ d&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&minus; Bệnh nh&acirc;n sau qu&aacute; tr&igrave;nh xạ trị, h&oacute;a trị, sức khỏe suy giảm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&minus; D&ugrave;ng kết hợp với Fucoidan cho việc hỗ trợ điều trị ung thư hiệu quả cao hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN KH&Aacute;C VỀ VI&Ecirc;N THỂ NẤM AGARICUS&nbsp;&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&atilde; sản phẩm: AGMO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại sản phẩm: Thực phẩm chức năng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>H&atilde;ng sản xuất: Kanehide Bio Co.LTD</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n phối: nhathuoc365.vn</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dạng b&agrave;o chế: Vi&ecirc;n n&eacute;n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Quy c&aacute;ch đ&oacute;ng g&oacute;i: Hộp 300 vi&ecirc;n n&eacute;n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>LIỀU D&Ugrave;NG, C&Aacute;CH D&Ugrave;NG</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Uống 10 vi&ecirc;n /ng&agrave;y, chia 2 lần, 5 vi&ecirc;n/lần.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Uống với nước ấm trước hay sau ăn đều được.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong>Sản phẩm kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p>&nbsp;</p>', 'default', NULL, 'agaricus-mycelia-tablet-vien-the-nam-agaricus', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', NULL, NULL, NULL, NULL, '2022-04-09 10:15:20', NULL),
(50, 'Đăng nhập', NULL, NULL, 'dang-nhap', NULL, 'dang-nhap', NULL, NULL, NULL, '', 'page', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-11 21:41:41', NULL),
(22, 'GREEN CALCIUM 30 VIÊN - BỔ SUNG CANXI HỮU CƠ CHO BÀ BẦU VÀ TRẺ NH', NULL, '<p><strong>C&Ocirc;NG DỤNG:</strong></p>\r\n\r\n<p>- Bổ sung canxi hữu cơ dễ hấp thu, gi&uacute;p ph&ograve;ng chống lo&atilde;ng xương, thiếu canxi mạn, tụt canxi trong m&aacute;u</p>\r\n\r\n<p>- Tăng mật độ xương gi&uacute;p xương chắc khỏe, gi&uacute;p chắc răng, ngăn ngừa g&atilde;y xương</p>\r\n\r\n<p>- Đảm bảo sự ph&aacute;t triển tốt của mẹ v&agrave; thai nhi, giảm tỷ lệ nguy cơ tiền sản giật v&agrave; sinh non</p>\r\n\r\n<p>- Duy tr&igrave; huyết &aacute;p ổn định, điều h&ograve;a nhịp tim, tăng sức đề kh&aacute;ng&nbsp;v&agrave; tăng cường miễn dịch.</p>\r\n\r\n<p>- Gi&uacute;p trẻ tăng cường ph&aacute;t triển chiều cao, chống c&ograve;i xương, suy dinh dưỡng</p>\r\n\r\n<p><strong>ƯU ĐIỂM VƯỢT TRỘI CỦA GREEN CALCIUM</strong></p>\r\n\r\n<p><strong>CUNG CẤP 1000MG CANXI HỮU CƠ C&Ugrave;NG C&Ocirc;NG THỨC ƯU VIỆT GI&Uacute;P CƠ THỂ HẤP THU CANXI HIỆU QUẢ NHẤT</strong></p>\r\n\r\n<p><strong>1. Chiết xuất ho&agrave;n to&agrave;n l&agrave; canxi hữu cơ</strong></p>\r\n\r\n<p><strong>Canxi hữu c</strong><strong>ơ</strong>&nbsp;l&agrave; chất được cấu th&agrave;nh từ ion Canxi với c&aacute;c loại hợp chất hữu cơ, v&iacute; dụ như Canxi Gluconat (T&ecirc;n đầy đủ Canxi Lactac Gluconat).</p>\r\n\r\n<p>C&ograve;n&nbsp;<strong>Canxi v&ocirc; c</strong><strong>ơ&nbsp;</strong>l&agrave; chất được cấu th&agrave;nh từ ion Canxi với c&aacute;c hợp chất v&ocirc; cơ, v&iacute; dụ như: Canxi Cacbonat, Canxi sulfate (CaSO4), Canxi chloride (CaCl&not;2) &hellip; Về m&ugrave;i vị th&igrave; Canxi v&ocirc; cơ thường c&oacute; vị tanh, ng&aacute;i v&agrave; kh&oacute; uống, c&ograve;n Canxi hữu cơ th&igrave; c&oacute; m&ugrave;i vị tự nhi&ecirc;n v&agrave; thơm ngon hơn.</p>\r\n\r\n<p>&diams;&nbsp;<strong>Tại sao canxi hữu cơ lại tốt hơn c&aacute;c loại canxi v&ocirc; cơ?</strong></p>\r\n\r\n<p>Canxi tại ruột được hấp thu theo cơ chế vận chuyển thụ động, do đ&oacute; muốn hấp thu được Canxi th&igrave; n&oacute; phải ở dạng h&ograve;a tan hoặc li&ecirc;n kết với hợp chất hữu cơ (dạng Canxi hữu cơ) th&igrave; mới hấp thu được. V&igrave; vậy, cơ thể người dễ d&agrave;ng hấp thu Canxi hữu cơ v&agrave; kh&ocirc;ng g&acirc;y lắng đọng tại thận.&nbsp;C&ograve;n Canxi v&ocirc; cơ th&igrave; cơ thể người rất kh&oacute; hấp thu, c&oacute; thể g&acirc;y sỏi thận v&agrave; sỏi b&agrave;ng quang hoặc g&acirc;y rối loạn ti&ecirc;u h&oacute;a (ti&ecirc;u chảy, t&aacute;o b&oacute;n).</p>\r\n\r\n<p><img alt=\"Green canxi\" src=\"https://nhathuoc365.vn/upload_images/images/cover-green-canxi-02.jpg\" /></p>\r\n\r\n<p><strong>2. C&ocirc;ng thức D3 + K2 gi&uacute;p hấp thụ canxi một c&aacute;ch hiệu quả nhất</strong></p>\r\n\r\n<p>&diams;&nbsp;<strong>Vitamin D3</strong></p>\r\n\r\n<p>Vitamin D3 đ&oacute;ng vai tr&ograve; l&agrave; chất gi&uacute;p tăng hấp thụ canxi (tạo ra c&aacute;c nguy&ecirc;n b&agrave;o osteocalcin ở ruột, tăng t&aacute;i hấp thu canxi ở thận v&agrave; tăng canxi h&oacute;a sụn gi&uacute;p xương ph&aacute;t triển d&agrave;i ra.</p>\r\n\r\n<p>Vitamin D3 gi&uacute;p tăng cường hấp thu Canxi qua ruột. Nếu kh&ocirc;ng c&oacute; vitamin D3 th&igrave; cơ thể chỉ hấp thu được khoảng 10% lượng canxi bổ sung v&agrave;o.</p>\r\n\r\n<p>Bạn c&oacute; thể t&igrave;m thấy mối li&ecirc;n kết giữa Canxi, vitamin D3 v&agrave; K2 c&ugrave;ng đa dạng c&aacute;c kho&aacute;ng chất cần thiết cho xương như Magie, Vitamin C... trong 1 số sản phẩm thực phẩm bổ sung canxi như Green Canxi. V&agrave; sử dụng c&aacute;c loại sản phẩm n&agrave;y ch&iacute;nh l&agrave; một trong những biện ph&aacute;p điều trị lo&atilde;ng xương kh&ocirc;ng phải d&ugrave;ng thuốc.</p>\r\n\r\n<p>&diams;&nbsp;<strong>Vitamin K2</strong></p>\r\n\r\n<p>Được xem l&agrave; một nh&acirc;n tố kh&ocirc;ng thể thiếu gi&uacute;p k&iacute;ch hoạt c&aacute;c nguy&ecirc;n b&agrave;o cấu tạo xương (osteocalcin).</p>\r\n\r\n<p>Khi cơ thể thiếu Vitamin K2, osteocalcin d&ugrave; đ&atilde; được tạo ra nhưng vẫn kh&ocirc;ng c&oacute; khả năng gắn v&agrave; mang canxi v&agrave;o khung xương. Hơn nữa, sự kết hợp giữa Vitamin K2 v&agrave; Vitamin D3 gi&uacute;p hấp thu v&agrave; vận chuyển Canxi v&agrave;o tận xương v&agrave; ngăn canxi đến chỗ nguy hiểm l&agrave; th&agrave;nh mạch m&aacute;u v&agrave; m&ocirc; mềm để g&acirc;y t&aacute;c dụng phụ (Xơ vữa động mạch, v&ocirc;i h&oacute;a m&ocirc; mềm, lắng đọng canxi g&acirc;y sỏi thận&hellip;).</p>\r\n\r\n<p>Cần nhớ rằng, vitamin K2 sẽ kh&ocirc;ng thể hoạt động hiệu quả một m&igrave;nh. Cần phải cung cấp cho cơ thể đủ vitamin D3 trong chế độ ăn hoặc từ thực phẩm bổ sung do vitamin D3 c&oacute; t&aacute;c dụng hiệp đồng với vitamin K2.</p>\r\n\r\n<p><img alt=\"Vitamin K2\" src=\"https://nhathuoc365.vn/upload_images/images/Untitled(1).png\" /></p>\r\n\r\n<p><em>C&aacute;c osteocalcin sau khi được k&iacute;ch hoạt mới c&oacute; khả năng gắn kết để đưa canxi từ m&aacute;u gắn v&agrave;o xương v&agrave; ức chế sự t&iacute;ch tụ canxi ở th&agrave;nh mạch m&aacute;u.</em></p>\r\n\r\n<p><strong>&nbsp;</strong>&diams;&nbsp;<strong>Magie</strong></p>\r\n\r\n<p>Magie c&oacute; v&agrave;i tr&ograve; cực kỳ quan trọng đối với cơ thể. N&oacute; l&agrave; th&agrave;nh phần thiết yếu gi&uacute;p&nbsp;x&acirc;y dựng c&aacute;c tổ chức m&ocirc; trong đ&oacute; c&oacute; xương, tham gia v&agrave;o th&agrave;nh phần của nhiều loại men điều h&ograve;a c&aacute;c chức năng kh&aacute;c nhau của cơ thể.&nbsp;</p>\r\n\r\n<p>&diams;&nbsp;<strong>Vitamin C</strong></p>', 'default', NULL, 'green-calcium-30-vien-bo-sung-canxi-huu-co-cho-ba-bau-va-tre-nh', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', NULL, NULL, NULL, NULL, '2022-04-09 10:15:07', NULL),
(23, 'BONI-SMOK- NƯỚC SÚC MIỆNG CAI THUỐC LÁ', NULL, '<p><strong>C&Ocirc;NG DỤNG</strong></p>\r\n\r\n<p>- L&agrave;m sạch miệng, chống h&ocirc;i miệng, ph&ograve;ng vi&ecirc;m lợi, ngừa s&acirc;u răng.</p>\r\n\r\n<p>- L&agrave;m thay đổi m&ugrave;i vị thuốc l&aacute; khi h&uacute;t.</p>\r\n\r\n<p>- Gi&uacute;p bạn sớm bỏ thuốc l&aacute;.</p>\r\n\r\n<p><strong>CƠ CHẾ CAI THUỐC L&Aacute; CỦA BONI-SMOK</strong></p>\r\n\r\n<p>Với th&agrave;nh phần thảo dược như bồ c&ocirc;ng anh, kim ng&acirc;n hoa, c&uacute;c hoa...Boni smok sẽ phản ứng với nicotine trong kh&oacute;i thuốc l&agrave;m mất vị ngon v&agrave; m&ugrave;i thơm của thuốc l&aacute;, gi&uacute;p bạn hết cơn th&egrave;m thuốc. Nước&nbsp;s&uacute;c miệng boni smok kh&ocirc;ng g&acirc;y t&aacute;c dụng phụ, an to&agrave;n cho cơ thể gi&uacute;p l&agrave;m sạch miệng, chống h&ocirc;i miệng, ph&ograve;ng ngừa vi&ecirc;m lợi v&agrave; s&acirc;u răng.&nbsp;Tỷ lệ cai thuốc l&aacute; th&agrave;nh c&ocirc;ng kh&aacute; cao, hiệu quả với cả những người nghiện thuốc l&aacute; l&acirc;u năm. T&ugrave;y theo mức độ nặng nhẹ của bệnh nh&acirc;n c&oacute; thể cai thuốc l&aacute; trong v&ograve;ng 3-7 ng&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://nhathuoc365.vn/upload_images/images/nuoc-suc-mieng-cai-thuoc-la-boni-smok-1-jpg-1471515436-18082016171716(1).jpg\" /></p>\r\n\r\n<p><strong>TH&Agrave;NH PHẦN</strong></p>\r\n\r\n<p>&nbsp;- Tinh chất kim ng&acirc;n hoa: 5g</p>\r\n\r\n<p>&nbsp;- Tinh chất bồ c&ocirc;ng anh:&nbsp; 5g</p>\r\n\r\n<p>&nbsp;- Tinh chất c&uacute;c hoa: 5g</p>\r\n\r\n<p>&nbsp;- Tinh dầu quế: 0.5g</p>\r\n\r\n<p>&nbsp;- Acid citric: 1g</p>\r\n\r\n<p>- Natri sunfat: 0,15g</p>\r\n\r\n<p>&nbsp;- Nước cất vừa đủ: 250m</p>\r\n\r\n<p><strong>C&Aacute;CH SỬ DỤNG</strong></p>\r\n\r\n<p>Ng&agrave;y s&uacute;c miệng 2-3 lần, mỗi lần 10-20 ml trước khi h&uacute;t thuốc. S&uacute;c miệng trong khoảng 30 gi&acirc;y. Kh&ocirc;ng được uống</p>\r\n\r\n<p><strong>BẢO QUẢN:</strong>&nbsp;Để nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời</p>\r\n\r\n<p>Ch&uacute; &yacute;: Kh&ocirc;ng được uống</p>\r\n\r\n<p>Chưa c&oacute; b&aacute;o c&aacute;o</p>\r\n\r\n<p>Sản phẩm kh&ocirc;ng&nbsp; phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>', 'default', NULL, 'boni-smok-nuoc-suc-mieng-cai-thuoc-la', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', NULL, NULL, NULL, NULL, '2022-04-09 10:14:57', NULL);
INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `product_list`, `post_type`, `visiable`, `category_string`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 'TINH CHẤT NGHỆ AKI UKON NANO - NANO AKI UKON TURMERIC EXTRACT GRANULE', NULL, '<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\"><span style=\"font-size:12.8px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"color:#ff0000\"><strong>C&Ocirc;NG DỤNG:</strong></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\"><span style=\"font-size:12.8px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"font-size:14px\">- Được&nbsp;sản xuất theo c&ocirc;ng nghệ tạo hạt nano, c&oacute; t&aacute;c dụng gi&uacute;p tăng cường khả năng hấp thu cơ thể, cho t&aacute;c dụng nhanh ch&oacute;ng v&agrave; hiệu quả cao.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\"><span style=\"font-size:12.8px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"font-size:14px\"><span style=\"color:#333333\">- Chống oxy h&oacute;a, chống vi&ecirc;m mạnh, trung h&ograve;a c&aacute;c gốc tự do, ngăn ngừa đột biến tế b&agrave;o, tăng cường miễn dịch, gi&uacute;p ph&ograve;ng ngừa ung thư hiệu quả.</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Hoạt h&oacute;a qu&aacute; tr&igrave;nh tự chết của tế b&agrave;o ung thư, ngăn chặn tế b&agrave;o ung thư nhận được nguồn dinh dưỡng, l&agrave;m khối ung thư bị c&ocirc; lập, tự hủy, hiệu quả cao trong việc điều trị ung thư.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Tăng cường tiết chất nh&agrave;y bảo vệ dạ d&agrave;y, ức chế hoạt động của vi khuẩn Hp, đồng thời th&uacute;c đẩy qu&aacute; tr&igrave;nh t&aacute;i tạo ni&ecirc;m mạc dạ d&agrave;y, gi&uacute;p nhanh liền vết lo&eacute;t,&nbsp; Tinh chất Nghệ Aki Ukon Nano&nbsp;gi&uacute;p ph&ograve;ng ngừa, hỗ trợ điều trị&nbsp; v&agrave; ngăn ngừa t&aacute;i ph&aacute;t tr&igrave;nh trạng vi&ecirc;m lo&eacute;t dạ d&agrave;y&nbsp; t&aacute; tr&agrave;ng hiệu quả.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Theo Đ&ocirc;ng y, tinh chất nghệ c&ograve;n gi&uacute;p bổ huyết, gi&uacute;p hoạt huyết, c&oacute; t&aacute;c dụng gi&uacute;p tăng cường lưu th&ocirc;ng kh&iacute; huyết; mặt kh&aacute;c tinh chất nghệ gi&uacute;p nu&ocirc;i dưỡng da, chống oxy h&oacute;a, cho trẻ h&oacute;a da cũng như nhanh liền vết sẹo tr&ecirc;n da, c&oacute; khả năng tăng cường h&igrave;nh th&agrave;nh da non, nhanh liền vết thương.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>CƠ CHẾ T&Aacute;C DỤNG:</strong></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Chiết xuất tinh chất nghệ m&ugrave;a thu cho h&agrave;m lượng Curcumin cao.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Curcumin l&agrave; hợp chất chống oxy h&oacute;a mạnh, gi&uacute;p trung h&ograve;a c&aacute;c gốc tự do, ngăn chặn việc biến đổi cấu tr&uacute;c&nbsp; tế b&agrave;o. B&ecirc;n cạnh đ&oacute;, curcumin c&ograve;n c&oacute; t&aacute;c dụng chống vi&ecirc;m hiệu quả do c&oacute; khả năng ức chế h&igrave;nh th&agrave;nh c&aacute;c chất g&acirc;y vi&ecirc;m. Qu&aacute; tr&igrave;nh vi&ecirc;m l&acirc;u ng&agrave;y sẽ c&oacute; nguy cơ cao dẫn tới bệnh ung thư. Trong qu&aacute; tr&igrave;nh bị ung thư cũng xảy ra vi&ecirc;m g&acirc;y n&ecirc;n t&igrave;nh trạng suy kiệt, giảm c&acirc;n ở bệnh nh&acirc;n. Bởi vậy, curcumin c&oacute; t&aacute;c dụng ph&ograve;ng bệnh, gi&uacute;p ph&ograve;ng ngừa ung thư cũng như nhiều bệnh l&yacute; kh&aacute;c.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Curcumin l&agrave; chất huỷ diệt ung thư&nbsp; theo cơ chế huỷ diệt từng bước c&aacute;c tế b&agrave;o &aacute;c t&iacute;nh m&agrave; kh&ocirc;ng ảnh hưởng tới tế b&agrave;o l&agrave;nh t&iacute;nh. Curcumin đ&atilde; đuợc c&aacute;c nh&agrave; khoa học thế giới cho l&agrave; chất ti&ecirc;u biểu nhất cho thế hệ mới c&aacute;c chất chống ung thư. T&aacute;c dụng ph&ograve;ng ngừa ung thư mạnh, ngăn chặn 3 giai đoạn của bệnh ung thư:</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;+ Giai đoạn h&igrave;nh th&agrave;nh: Curcumin g&acirc;y ức chế qu&aacute; tr&igrave;nh sao ch&eacute;p tế b&agrave;o ung thư, giảm đột biến tế b&agrave;o,&nbsp; trung h&ograve;a gốc tự do &ndash; t&aacute;c nh&acirc;n h&igrave;nh th&agrave;nh tế b&agrave;o ung thư.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;+ Giai đoạn ph&aacute;t triển: Curcumin đẩy nhanh qu&aacute; tr&igrave;nh tự chết của tế b&agrave;o ung thư, l&agrave;m gia tăng về số lượng c&aacute;c tế b&agrave;o miễn dịch gi&uacute;p tấn c&ocirc;ng c&oacute; chọn lọc tế b&agrave;o ung thư.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;+ Giai đoạn di căn ung thư: Curcumin l&agrave;m suy giảm sự h&igrave;nh th&agrave;nh mạch m&aacute;u,&nbsp; l&agrave;m tế b&agrave;o ung thư chết do kh&ocirc;ng c&oacute; dưỡng chất để nu&ocirc;i dưỡng, ngăn chặn qu&aacute; tr&igrave;nh di căn ung thư.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Đặc biệt, Curcumin kh&ocirc;ng g&acirc;y t&aacute;c dụng phụ, l&agrave;m giảm độc t&iacute;nh của xạ trị, h&oacute;a trị.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Curcumin gi&uacute;p tăng cường tiết chất nh&agrave;y bảo vệ dạ d&agrave;y, ức chế hoạt động của vi khuẩn Hp, đồng thời th&uacute;c đẩy qu&aacute; tr&igrave;nh t&aacute;i tạo ni&ecirc;m mạc dạ d&agrave;y, gi&uacute;p nhanh liền vết lo&eacute;t, n&ecirc;n gi&uacute;p ph&ograve;ng ngừa, hỗ trợ điều trị&nbsp; v&agrave; ngăn ngừa t&aacute;i ph&aacute;t tr&igrave;nh trạng vi&ecirc;m lo&eacute;t dạ d&agrave;y&nbsp; t&aacute; tr&agrave;ng hiệu quả.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">- Curcumin gi&uacute;p phục hồi v&agrave; tăng cường chức năng giải độc của gan. Curcumin gi&uacute;p h&igrave;nh th&agrave;nh c&aacute;c enzym giải độc cho gan. Đặc biệt l&agrave; Glutathion S- transferase, l&agrave;m hạ men gan, tăng cường chức năng gan; chống oxy h&oacute;a, trung h&ograve;a c&aacute;c gốc tự do, gi&uacute;p bảo vệ tế b&agrave;o gan; giảm xơ gan, giảm nồng độ Cholesterol trong m&aacute;u v&igrave; thế c&oacute; khả năng giảm sự h&igrave;nh th&agrave;nh gan nhiễm mỡ v&agrave; gi&uacute;p lợi mật.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;[<em>Tr&iacute;ch từ t&agrave;i liệu nghi&ecirc;n cứu l&acirc;m s&agrave;ng của Mỹ v&agrave; Viện sinh học Kanehide của Nhật bản c&ugrave;ng với c&aacute;c nghi&ecirc;n cứu của GS. TS Đ&agrave;o Văn Phan ( Đại học Y H&agrave; Nội ) về t&aacute;c dụng của Curcumin với sức khỏe con người</em>.].</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\"><img alt=\"tinh chất nghệ mùa xuân\" src=\"https://nhathuoc365.vn/upload_images/images/tinh-chat-nghe-aki-ukon-nano-nano-aki-ukon-turmeric-extract-granule3.png\" style=\"border:0px; box-sizing:border-box; color:transparent; font-size:0px; height:376px; margin:0px; padding:0px; vertical-align:middle; width:600px\" /></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\"><em>Cơ chế t&aacute;c dụng của th&agrave;nh phần curcumin c&oacute; trong tinh chất nghệ nano dạng g&oacute;i</em></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:arial\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"color:#ff0000\"><strong>TH&Agrave;NH PHẦN V&Agrave; C&Ocirc;NG DỤNG CỦA MỘT SỐ TH&Agrave;NH PHẦN CH&Iacute;NH C&Oacute; TRONG TINH CHẤT NGHỆ AKI UKON NANO</strong></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\"><span style=\"font-size:12.8px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Chiết xuất tinh chất nghệ m&ugrave;a thu (Okinawa)</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\"><span style=\"font-size:12.8px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Dextrin</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\"><span style=\"font-size:12.8px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Lecithine đậu n&agrave;nh</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\"><span style=\"font-size:12.8px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Trehalose</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\"><span style=\"font-size:12.8px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Calcium phosphate</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:12.8px\"><span style=\"background-color:#ffffff\"><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\">&nbsp;</span></span></span></span></p>', 'default', NULL, 'tinh-chat-nghe-aki-ukon-nano-nano-aki-ukon-turmeric-extract-granule', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', NULL, NULL, NULL, NULL, '2022-04-09 10:14:45', NULL),
(25, 'TINH DẦU HƯƠNG QUYẾN RŨ – DÙNG CHO TỦ QUẦN ÁO', NULL, '<p>R&ecirc; chuột l&ecirc;n h&igrave;nh để ph&oacute;ng to</p>\r\n\r\n<h1>TINH DẦU HƯƠNG QUYẾN RŨ &ndash; D&Ugrave;NG CHO TỦ QUẦN &Aacute;O</h1>\r\n\r\n<p>Thương hiệu:&nbsp;<a href=\"https://nhathuoc365.vn/thuong-hieu-an-organics-th1\">An Organics</a></p>\r\n\r\n<p>M&atilde; sản phẩm:&nbsp;TD10</p>\r\n\r\n<ul>\r\n	<li>Loại sản phẩm:&nbsp;Tinh dầu kh&aacute;c</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dung dịch</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 1 lọ x 5ml</li>\r\n	<li>H&agrave;m lượng:&nbsp;Nhiều th&agrave;nh phần</li>\r\n</ul>\r\n\r\n<p>195.000 đ</p>\r\n\r\n<form action=\"https://nhathuoc365.vn/index.php?module=product&amp;view=cart&amp;task=addCartMB&amp;id=445\" id=\"formQuantity\" method=\"post\">Số lượng:\r\n<p><input name=\"quantity\" type=\"text\" value=\"1\" /></p>\r\n</form>\r\n\r\n<p><a href=\"javascript:void(0)\">ĐẶT H&Agrave;NG</a><a href=\"javascript:void(0)\" id=\"add-cart-detail\" title=\"Cho vào giỏ hàng\">TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG</a>&nbsp;&nbsp;</p>\r\n\r\n<p>Ngại đặt h&agrave;ng?</p>\r\n\r\n<p>Gọi ngay Hotline: 1800 8155<br />\r\n(Tư vấn miễn ph&iacute; - Thời gian: 8h00 - 20h30)</p>\r\n\r\n<p>Ngại gọi điện? Vui l&ograve;ng nhập số điện thoại</p>\r\n\r\n<form action=\"https://nhathuoc365.vn/tinh-dau-huong-quyen-ru-dung-cho-tu-quan-ao-pd445#\" id=\"frm_call_me445\" method=\"post\">\r\n<p><input name=\"txt_phone\" type=\"text\" /><a href=\"javascript:void(0)\">Gọi lại cho t&ocirc;i ngay</a></p>\r\n</form>\r\n\r\n<p>Gợi &yacute; t&igrave;m kiếm:</p>\r\n\r\n<p><a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=Tinh-d%E1%BA%A7u\" title=\"\">Tinh dầu,</a>&nbsp;<a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=-tinh-d%E1%BA%A7u-kh%E1%BB%AD-m%C3%B9i\" title=\"\">tinh dầu khử m&ugrave;i,</a>&nbsp;<a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=-kh%E1%BB%AD-m%C3%B9i-qu%E1%BA%A7n-%C3%A1o\" title=\"\">khử m&ugrave;i quần &aacute;o,</a>&nbsp;<a href=\"https://nhathuoc365.vn/tim-kiem-san-pham/?keyword=-tinh-d%E1%BA%A7u-h%C6%B0%C6%A1ng\" title=\"\">tinh dầu hương,</a></p>\r\n\r\n<p><strong>C&Ocirc;NG DỤNG</strong></p>\r\n\r\n<p>- Tinh dầu hương quyến rũ với t&ocirc;ng m&ugrave;i chủ đạo l&agrave; Ngọc lan t&acirc;y gi&uacute;p khử tr&ugrave;ng, s&aacute;t khuẩn, xua tan m&ugrave;i ẩm mốc, m&ugrave;i sợi vải kh&oacute; chịu trong tủ quần &aacute;o.&nbsp;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Tinh chất từ tinh dầu hương quyến rũ dễ lan tỏa v&agrave; thấm s&acirc;u, gi&uacute;p quần &aacute;o giữ được hương thơm bền l&acirc;u v&agrave; quyến rũ. M&ugrave;i hương nhẹ dịu, kh&ocirc;ng g&acirc;y &ldquo;cho&aacute;ng v&aacute;ng, đau đầu&rdquo; như những loại tinh dầu pha trộn hương liệu hay t&uacute;i thơm nh&acirc;n tạo.</p>\r\n\r\n<p dir=\"ltr\">- M&ugrave;i hương Ngọc lan t&acirc;y chủ đạo tạo sự quyến rũ, ấn tượng với người đối diện khi tiếp x&uacute;c, tạo cảm hứng cho c&aacute;c c&acirc;u chuyện v&agrave; k&iacute;ch th&iacute;ch t&igrave;nh cảm lứa đ&ocirc;i.</p>\r\n\r\n<p dir=\"ltr\">- Kh&ocirc;ng chỉ thế, tinh dầu Ngọc Lan T&acirc;y c&ograve;n c&oacute; t&aacute;c dụng an thần, thư gi&atilde;n, trấn an đầu &oacute;c.</p>\r\n\r\n<p dir=\"ltr\"><strong>TH&Agrave;NH PHẦN CH&Iacute;NH</strong></p>\r\n\r\n<p>Chiết xuất từ tinh dầu Ngọc Lan t&acirc;y</p>\r\n\r\n<p><img alt=\"\" src=\"https://nhathuoc365.vn/upload_images/images/tinh-dau-huong-quyen-ru-dung-cho-tu-quan-ao-1521884201.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG</strong></p>\r\n\r\n<p>Mở nắp gỗ, bỏ n&uacute;t nhựa ph&iacute;a trong, vặn lại nắp gỗ như cũ. Treo ở vị tr&iacute; bất k&igrave; trong tủ quần &aacute;o.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i c&ocirc;ng dụng để tr&ocirc;ng tủ quần &aacute;o, sản phẩm c&oacute; thể dễ d&agrave;ng sử dụng tại cơ quan, văn ph&ograve;ng, ph&ograve;ng kh&aacute;ch, ph&ograve;ng tắm hay tr&ecirc;n b&agrave;n l&agrave;m việc, tr&ecirc;n xe &ocirc; t&ocirc;... cũng sẽ khiến cho kh&ocirc;ng gian thơm m&aacute;t, thanh khiết, &ecirc;m dịu v&agrave; ngọt ng&agrave;o.</p>\r\n\r\n<p><strong>Khuyến c&aacute;o</strong></p>\r\n\r\n<p dir=\"ltr\">- Kh&ocirc;ng ăn, uống hay để tinh dầu rớt v&agrave;o mắt v&agrave; v&ugrave;ng nhạy cảm. Trong trường hợp sản phẩm d&iacute;nh v&agrave;o mắt h&atilde;y rửa kỹ bằng nước sạch.</p>\r\n\r\n<p dir=\"ltr\">- Kh&ocirc;ng nhỏ trực tiếp v&agrave;o lửa/nến hay nước tắm n&oacute;ng.</p>\r\n\r\n<p>&nbsp;</p>', 'default', NULL, 'tinh-dau-huong-quyen-ru-dung-cho-tu-quan-ao', NULL, NULL, '/library/images/sanpham/limes.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', NULL, NULL, NULL, NULL, '2022-04-09 10:14:33', NULL),
(78, 'Tin mới', NULL, NULL, 'default', NULL, 'tin-moi', NULL, NULL, '/library/images/sanpham/corn.jpg', '', 'post', 0, 'Tin mới', NULL, NULL, NULL, NULL, '2022-04-12 17:57:22', NULL),
(46, 'Chính sách đổi hàng', NULL, NULL, 'default', NULL, 'chinh-sach-doi-hang', NULL, NULL, '/library/images/sanpham/slider2.jpg', '', 'post', 0, 'BLOG GRID', NULL, NULL, NULL, NULL, '2022-04-09 15:17:38', NULL),
(47, 'Chính sách vận chuyển', NULL, NULL, 'default', NULL, 'chinh-sach-van-chuyen', NULL, NULL, '/library/images/sanpham/limes.jpg', '', 'post', 0, 'BLOG GRID', NULL, NULL, NULL, NULL, '2022-04-09 15:17:22', NULL),
(48, 'Hình thức thanh toán', NULL, NULL, 'default', NULL, 'hinh-thuc-thanh-toan', NULL, NULL, '/library/images/sanpham/slider1.jpg', '', 'post', 0, 'BLOG GRID', NULL, NULL, NULL, NULL, '2022-04-09 15:17:11', NULL),
(49, 'Hướng dẫn mua hàng', NULL, '<p>Kh&ocirc;ng cần trực tiếp đến si&ecirc;u thị mua h&agrave;ng, bạn c&oacute; thể lựa chọn c&aacute;ch mua h&agrave;ng online bằng c&aacute;ch chọn một trong những c&aacute;ch mua h&agrave;ng sau:</p>\r\n\r\n<p><strong>C&aacute;ch 1:</strong>&nbsp;Gọi điện thoại đến tổng đ&agrave;i&nbsp;<strong>(028-38.102.102)</strong>&nbsp;hoặc&nbsp;<strong>(1800.1060)</strong>&nbsp;từ 7g30-22g (cả CN &amp; ng&agrave;y lễ) để đặt h&agrave;ng, nh&acirc;n vi&ecirc;n ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn phục vụ, tư vấn v&agrave; hỗ trợ qu&yacute; kh&aacute;ch mua được sản phẩm ưng &yacute;.</p>\r\n\r\n<p><strong>C&aacute;ch 2:</strong>&nbsp;Đặt mua h&agrave;ng online tr&ecirc;n website thegioididong.com:</p>\r\n\r\n<h3><strong>Bước 1: T&igrave;m sản phẩm cần mua</strong></h3>\r\n\r\n<p>Bạn c&oacute; thể truy cập website thegioididong.com để t&igrave;m v&agrave; chọn sản phẩm muốn mua bằng nhiều c&aacute;ch:</p>\r\n\r\n<p>+ Sử dụng &ocirc; t&igrave;m kiếm ph&iacute;a tr&ecirc;n, g&otilde; t&ecirc;n sản phẩm muốn mua (c&oacute; thể t&igrave;m đ&iacute;ch danh 1 sản phẩm, t&igrave;m theo h&atilde;ng...). Website sẽ cung cấp cho bạn những gợi &yacute; ch&iacute;nh x&aacute;c để lựa chọn:</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2017/12/07/1048244/huong-dan-su-dung-chuc-nang-karaoke-tren-tivi-asanzo-40as330-4_800x180.jpg\" /></p>\r\n\r\n<p>+ Trang web lu&ocirc;n c&oacute; sẵn những gợi &yacute; sản phẩm hot nhất, c&oacute; chương tr&igrave;nh khuyến m&atilde;i hấp dẫn, bạn cũng c&oacute; thể chọn xem ngay m&agrave; kh&ocirc;ng cần t&igrave;m kiếm:</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2017/12/07/1048244/huong-dan-su-dung-chuc-nang-karaoke-tren-tivi-asanzo-40as330-3_800x354.jpg\" /></p>\r\n\r\n<p>+ Sử dụng menu sản phẩm của website: chọn loại sản phẩm muốn mua l&agrave; điện thoại, laptop, m&aacute;y t&iacute;nh bảng hay m&aacute;y cũ.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2017/12/07/1048244/huong-dan-su-dung-chuc-nang-karaoke-tren-tivi-asanzo-40as330-5_800x157.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sau đ&oacute; tuỳ v&agrave;o nhu cầu mua, bạn c&oacute; thể lọc c&aacute;c sản phẩm theo c&aacute;c ti&ecirc;u ch&iacute; về gi&aacute;, lọc sản phẩm theo h&atilde;ng, lọc sản phẩm đang c&oacute; chương tr&igrave;nh trả g&oacute;p 0%....</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2017/12/07/1048244/huong-dan-su-dung-chuc-nang-karaoke-tren-tivi-asanzo-40as330_800x514.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Bước 2: Đặt mua sản phẩm</strong></h3>\r\n\r\n<p>Sau khi chọn được sản phẩm ưng &yacute; muốn mua, bạn tiến h&agrave;nh đặt h&agrave;ng bằng c&aacute;ch:</p>\r\n\r\n<p>+ Chọn v&agrave;o n&uacute;t MUA NGAY nếu bạn muốn thanh to&aacute;n lu&ocirc;n to&agrave;n bộ gi&aacute; tiền sản phẩm, chọn v&agrave;o n&uacute;t MUA TRẢ G&Oacute;P hoặc TRẢ G&Oacute;P L&Atilde;I SUẤT 0% nếu bạn muốn mua theo h&igrave;nh thức trả g&oacute;p.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2017/12/07/1048244/huong-dan-su-dung-chuc-nang-karaoke-tren-tivi-asanzo-40as330-2_800x334.jpg\" /></p>\r\n\r\n<p>+ Điền đầy đủ c&aacute;c th&ocirc;ng tin mua h&agrave;ng theo c&aacute;c bước tr&ecirc;n website, sau đ&oacute; chọn h&igrave;nh thức nhận h&agrave;ng l&agrave; giao h&agrave;ng tận nơi hay đến si&ecirc;u thị lấy h&agrave;ng, chọn h&igrave;nh thức thanh to&aacute;n l&agrave; trả khi nhận h&agrave;ng hay thanh to&aacute;n online (bằng thẻ ATM, VISA hay MasterCard) v&agrave; ho&agrave;n tất đặt h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2017/12/07/1048244/huong-dan-su-dung-chuc-nang-karaoke-tren-tivi-asanzo-40as330-1_800x649.jpg\" /></p>\r\n\r\n<p>+ Ngo&agrave;i ra, nếu qu&yacute; kh&aacute;ch đang sở hữu phiếu mua h&agrave;ng, m&atilde; giảm gi&aacute;... th&igrave; h&atilde;y nhập trong bước đặt h&agrave;ng để được giảm gi&aacute; theo c&aacute;c bước tại hướng dẫn:&nbsp;<a href=\"https://www.thegioididong.com/phieu-mua-hang\" target=\"_blank\" title=\"Phiếu mua hàng\">C&aacute;ch sử dụng phiếu mua h&agrave;ng</a>.</p>\r\n\r\n<p>+ Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Thế Giới Di Động sẽ li&ecirc;n hệ qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; ho&agrave;n tất thủ tục.</p>\r\n\r\n<p>Ngo&agrave;i c&aacute;c c&aacute;ch tr&ecirc;n, để mua h&agrave;ng tại Thế Giới Di Động qu&yacute; kh&aacute;ch c&ograve;n c&oacute; thể để lại b&igrave;nh luận tại bất k&igrave; đ&acirc;u tr&ecirc;n website (c&oacute; th&ocirc;ng tin t&ecirc;n, số điện thoại...), hoặc trực tiếp chat với tư vấn vi&ecirc;n của c&ocirc;ng ty để được tư vấn v&agrave; đặt mua sản phẩm.</p>\r\n\r\n<h3><strong>+Lưu &yacute;:</strong></h3>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i chỉ chấp nhận những đơn đặt h&agrave;ng khi cung cấp đủ th&ocirc;ng tin ch&iacute;nh x&aacute;c về địa chỉ, số điện thoại. Sau khi bạn đặt h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc lại để kiểm tra th&ocirc;ng tin v&agrave; thỏa thuận th&ecirc;m những điều c&oacute; li&ecirc;n quan.<br />\r\n<br />\r\n2. Một số trường hợp nhạy cảm: gi&aacute; trị đơn h&agrave;ng qu&aacute; lớn &amp; thời gian giao h&agrave;ng v&agrave;o buổi tối địa chỉ giao h&agrave;ng trong ng&otilde; hoặc c&oacute; thể dẫn đến nguy hiểm. Ch&uacute;ng t&ocirc;i sẽ chủ động li&ecirc;n lạc với qu&yacute; kh&aacute;ch để thống nhất lại thời gian giao h&agrave;ng cụ thể.<br />\r\n<br />\r\n3. C&ocirc;ng ty cam kết tất cả h&agrave;ng h&oacute;a gởi đến qu&yacute; kh&aacute;ch đều l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng mới 100% (c&oacute; đầy đủ h&oacute;a đơn, được bảo h&agrave;nh ch&iacute;nh thức). Những rủi ro ph&aacute;t sinh trong qu&aacute; tr&igrave;nh vận chuyển (va đập, ẩm ướt, tai nạn...) c&oacute; thể ảnh hưởng đến h&agrave;ng h&oacute;a, v&igrave; thế xin Qu&yacute; Kh&aacute;ch vui l&ograve;ng kiểm tra h&agrave;ng h&oacute;a thật kỹ trước khi k&yacute; nhận. Thegioididong sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm với những sai lệch h&igrave;nh thức của h&agrave;ng ho&aacute; sau khi Qu&yacute; kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng.</p>', 'default', NULL, 'huong-dan-mua-hang', NULL, NULL, '/library/images/sanpham/cake_pastries_bg.jpg', '', 'post', 0, 'BLOG GRID', NULL, NULL, NULL, NULL, '2022-04-09 15:32:39', NULL),
(51, 'Bệnh viện Quân y 103 tổ chức hội diễn văn nghệ quần chúng 2018', NULL, '<p><em>Ng&agrave;y 19/9/2018, Hội diễn Nghệ thuật quần ch&uacute;ng Bệnh viện Qu&acirc;n y 103 đ&atilde; ch&iacute;nh thức khai mạc. Hội diễn l&agrave; s&acirc;n chơi thiết thực, bổ &iacute;ch, l&agrave;nh mạnh g&oacute;p phần n&acirc;ng cao đời sống tinh thần cho c&aacute;n bộ, nh&acirc;n vi&ecirc;n, chiến sĩ thiết thực lập th&agrave;nh t&iacute;ch ch&agrave;o mừng Đại hội thi đua quyết thắng Bệnh viện Qu&acirc;n y 103 giai đoạn 2013-2018 hướng tới ch&agrave;o mừng 70 năm ng&agrave;y truyền thống Học viện Qu&acirc;n y</em></p>', 'default', NULL, 'benh-vien-103', NULL, NULL, '/library/images/nhathuoclienket/1.jpg', NULL, 'nha-thuoc-lien-ket', 0, NULL, NULL, NULL, NULL, NULL, '2018-10-01 04:23:54', NULL),
(52, '1', NULL, NULL, 'default', NULL, '1-52', NULL, NULL, '/library/images/bannersanpham_index/zin-c-1533179152.png', NULL, 'banner-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2018-10-04 01:50:58', NULL),
(53, '2', NULL, NULL, 'default', NULL, '2-53', NULL, NULL, '/library/images/bannersanpham_index/2.png', NULL, 'banner-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2018-10-04 01:52:08', NULL),
(54, '3', NULL, NULL, 'default', NULL, '3', NULL, NULL, '/library/images/bannersanpham_index/3.png', NULL, 'banner-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2018-10-04 01:52:38', NULL),
(55, '4', NULL, NULL, 'default', NULL, '4', NULL, NULL, '/library/images/bannersanpham_index/4.png', NULL, 'banner-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2018-10-04 01:53:04', NULL),
(56, '5', NULL, NULL, 'default', NULL, '5', NULL, NULL, '/library/images/bannersanpham_index/5.png', NULL, 'banner-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2018-10-04 01:53:26', NULL),
(57, 'OPENED 24/7', 'Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.', NULL, 'default', NULL, 'opened-24-7', NULL, NULL, NULL, NULL, 'service', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:01:02', NULL),
(58, 'FREE PARKING', 'Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.', NULL, 'default', NULL, 'free-parking', NULL, NULL, NULL, NULL, 'service', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:01:37', NULL),
(59, 'CENTRAL LOCATION', 'Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.', NULL, 'default', NULL, 'central-location', NULL, NULL, NULL, NULL, 'service', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:02:04', NULL),
(60, 'HIGH QUALITY', 'Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.', NULL, 'default', NULL, 'high-quality', NULL, NULL, NULL, NULL, 'service', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:02:52', NULL),
(61, 'Corn', 'Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.', NULL, 'default', NULL, 'corn', NULL, NULL, '/library/images/sanpham/cake_pastries_bg.jpg', NULL, 'our-specialities', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:43:24', NULL),
(62, 'Radish', 'Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.', NULL, 'default', NULL, 'radish', NULL, NULL, '/library/images/sanpham/radish.jpg', NULL, 'our-specialities', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:43:43', NULL),
(63, 'Limes', 'Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.', NULL, 'default', NULL, 'limes', NULL, NULL, '/library/images/sanpham/meat_fish_bg.jpg', NULL, 'our-specialities', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:44:00', NULL),
(64, 'Kabab', 'Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.', NULL, 'default', NULL, 'kabab', NULL, NULL, '/library/images/sanpham/kabab.jpg', NULL, 'our-specialities', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:44:22', NULL),
(65, 'WILD MUSHROOM BUCATINI WITH KALE', 'Mushroom / Veggie / White Sources', NULL, 'default', NULL, 'wild-mushroom-bucatini-with-kale', NULL, NULL, NULL, NULL, 'menu-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:52:40', NULL),
(66, 'LEMON AND GARLIC GREEN BEANS', 'Lemon / Garlic / Beans', NULL, 'default', NULL, 'lemon-and-garlic-green-beans', NULL, NULL, NULL, NULL, 'menu-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:53:03', NULL),
(67, 'LAMBBEEF KOFKA SKEWERS WITH TZATZIKI', 'Lamb / Wine / Butter', NULL, 'default', NULL, 'lambbeef-kofka-skewers-with-tzatziki', NULL, NULL, NULL, NULL, 'menu-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:53:17', NULL),
(68, 'IMPORTED OYSTERS GRILL (5 PIECES)', 'Oysters / Veggie / Ginger', NULL, 'default', NULL, 'imported-oysters-grill-5-pieces', NULL, NULL, NULL, NULL, 'menu-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:53:33', NULL),
(69, 'MEATLOAF WITH BLACK PEPPER-HONEY BBQ', 'Pepper / Chicken / Honey', NULL, 'default', NULL, 'meatloaf-with-black-pepper-honey-bbq', NULL, NULL, NULL, NULL, 'menu-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 20:53:49', NULL),
(75, 'MEATLOAF WITH BLACK PEPPER-HONEY BBQ', 'Pepper / Chicken / Honey', NULL, 'default', NULL, 'meatloaf-with-black-pepper-honey-bbq-75', NULL, NULL, NULL, NULL, 'menu-san-pham', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-08 21:04:15', NULL),
(76, 'Đăng ký', NULL, NULL, 'dang-ky', NULL, 'dang-ky', NULL, NULL, NULL, '', 'page', 0, NULL, NULL, NULL, NULL, NULL, '2022-04-11 21:54:54', NULL),
(77, 'Điện thoại iPhone 11 64GB', 'IPORN', '<h3>Apple đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng bộ 3 si&ecirc;u phẩm iPhone 11, trong đ&oacute; phi&ecirc;n bản&nbsp;<a href=\"https://www.topzone.vn/iphone/iphone-11\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại TopZone.vn\">iPhone 11 64GB</a>&nbsp;c&oacute; mức gi&aacute; rẻ nhất nhưng vẫn được n&acirc;ng cấp mạnh mẽ như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-xr-128gb\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone Xr chính hãng\">iPhone Xr</a>&nbsp;ra mắt&nbsp;trước đ&oacute;.</h3>\r\n\r\n<h3>N&acirc;ng cấp mạnh mẽ về camera</h3>\r\n\r\n<p>N&oacute;i về n&acirc;ng cấp th&igrave; camera ch&iacute;nh l&agrave; điểm c&oacute; nhiều cải tiến nhất tr&ecirc;n thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\">iPhone</a>&nbsp;mới.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/153856/iphone-11-tgdd42.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Thiết kế nhiều màu sắc\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd42.jpg\" title=\"Điện thoại iPhone 11 64GB | Thiết kế nhiều màu sắc\" /></a></p>\r\n\r\n<p>Nếu như trước đ&acirc;y iPhone Xr chỉ c&oacute; một camera th&igrave; nay với&nbsp;<a href=\"https://www.topzone.vn/iphone-11\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 11 đang kinh doanh tại TopZone thương hiệu của Thế Giới Di Động\">iPhone 11</a>&nbsp;ch&uacute;ng ta sẽ c&oacute; tới hai camera ở mặt sau.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/153856/iphone-114-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-114-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Camera sau\" /></a></p>\r\n\r\n<p>Ngo&agrave;i camera ch&iacute;nh vẫn c&oacute; độ ph&acirc;n giải 12 MP th&igrave; ch&uacute;ng ta sẽ c&oacute; th&ecirc;m một camera g&oacute;c si&ecirc;u rộng v&agrave; cũng với độ ph&acirc;n giải tương tự.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/153856/iphone-116.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-116.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" /></a></p>\r\n\r\n<p><em>Ảnh chụp ch&acirc;n dung với iPhone 11</em></p>\r\n\r\n<p>Theo Apple th&igrave; việc chuyển đổi qua lại giữa hai ống k&iacute;nh th&igrave; sẽ kh&ocirc;ng l&agrave;m thay đổi m&agrave;u sắc của bức ảnh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/153856/iphone-11-2-1.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-2-1.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ chân dung\" /></a></p>\r\n\r\n<p><em>Ảnh chụp chế độ ch&acirc;n dung với iPhone 11</em></p>\r\n\r\n<p>Đ&acirc;y l&agrave; một điều được xem l&agrave; bước ngoặt bởi những chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\">smartphone</a>&nbsp;Android c&oacute; nhiều camera hiện nay sẽ thường bị sai lệch về m&agrave;u sắc khi chuyển đổi qua lại giữa c&aacute;c ống k&iacute;nh g&acirc;y cảm gi&aacute;c kh&aacute; kh&oacute; chịu cho người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/153856/iphone-11-tgdd7.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp với Deep Fusion\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-tgdd7.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp với Deep Fusion\" /></a></p>\r\n\r\n<p><em>Ảnh chụp với&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/deep-fusion-tren-dong-iphone-11-pro-la-gi-tinh-nan-1197418\" target=\"_blank\" title=\"Tìm hiểu tính năng Deel Fusion\" type=\"Tìm hiểu tính năng Deel Fusion\">Deep Fusion</a></em></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; với iPhone 11 th&igrave; đ&acirc;y sẽ l&agrave; lần đầu ti&ecirc;n Apple trang bị khả năng chụp đ&ecirc;m l&ecirc;n chiếc iPhone của m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/153856/iphone-113.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp với chế độ Night Mode Ảnh chụp với chế độ Night Mode\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-113.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp với chế độ Night Mode Ảnh chụp với chế độ Night Mode\" /></a></p>\r\n\r\n<p><em>Ảnh chụp với&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/night-mode-la-gi-diem-khac-nhau-giu-night-mode-va-1197122\" target=\"_blank\" title=\"Tìm hiểu chế độ Night Mode\" type=\"Tìm hiểu chế độ Night Mode\">chế độ Night Mode</a></em></p>\r\n\r\n<p>Theo trải nghiệm th&igrave; t&iacute;nh năng n&agrave;y hoạt động rất hiệu quả đặc biệt trong những m&ocirc;i trường cực kỳ thiếu s&aacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/153856/iphone-112.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp bằng camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-112.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp bằng camera sau\" /></a></p>\r\n\r\n<p>K&iacute;ch hoạt chế độ chụp đ&ecirc;m sẽ do iPhone tự quyết định việc của bạn chỉ cần đưa m&aacute;y l&ecirc;n v&agrave; chụp, rất đơn giản.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/153856/iphone-11-.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ góc siêu rộng\" src=\"https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-.jpg\" title=\"Điện thoại iPhone 11 64GB | Ảnh chụp chế độ góc siêu rộng\" /></a></p>\r\n\r\n<p><em>Ảnh chụp chế độ g&oacute;c si&ecirc;u rộng</em></p>\r\n\r\n<p>Năm nay Apple cũng đ&atilde; n&acirc;ng cấp độ ph&acirc;n giải camera trước n&ecirc;n 12 MP thay v&igrave; 7 MP như thế hệ trước đ&oacute;.</p>', 'default', NULL, 'dien-thoai-iphone-11-64gb', NULL, NULL, '/library/images/sanpham/corn.jpg', NULL, 'product', 0, 'SHOP PRODUCTS', 'Điện thoại iPhone 11 64GB', NULL, NULL, NULL, '2022-04-12 14:49:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_facebook`
--

CREATE TABLE `post_facebook` (
  `post_facebook_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_album` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_me` tinyint(4) DEFAULT NULL COMMENT '0: không\n1: có',
  `fanpages` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `face_ids` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `code` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `price` int(254) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` int(254) DEFAULT NULL,
  `price_deal` int(254) DEFAULT NULL,
  `deal_end` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `discount_start` datetime DEFAULT NULL,
  `discount_end` datetime DEFAULT NULL,
  `image_list` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_together` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `buy_after` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `origin_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `code`, `post_id`, `price`, `size`, `discount`, `price_deal`, `deal_end`, `updated_at`, `discount_start`, `discount_end`, `image_list`, `filter`, `properties`, `buy_together`, `buy_after`, `deleted_at`, `origin_price`) VALUES
(1, 'F1CARE', 7, 350000, NULL, 0, 100000, '2019-09-27 04:04:00', '2022-04-09 10:06:02', NULL, NULL, '/library/images/sanpham/s1.jpg,/library/images/sanpham/s2.jpg', 'dưới 500.000 đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Vitamin - kho&aacute;ng chất</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Vi&ecirc;n nang cứng</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Lọ x 30v</li>\r\n	<li>H&agrave;m lượng:&nbsp;Nhiều th&agrave;nh phần</li>\r\n</ul>', NULL, NULL, NULL, '0'),
(2, 'fF333', 9, 750000, NULL, 0, 100000, '2019-09-27 04:04:00', '2022-04-09 10:43:26', NULL, NULL, '/library/images/sanpham/cake_pastries_bg.jpg,/library/images/sanpham/coffee_bg.png,/library/images/sanpham/corn.jpg', '500.000 - 1.000.000đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Tinh Dầu Organics</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dung dịch</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Combo 2 lọ</li>\r\n	<li>H&agrave;m lượng:&nbsp;Nhiều th&agrave;nh phần</li>\r\n</ul>', NULL, NULL, NULL, '0'),
(3, 'F1CAa', 12, 750000, NULL, 0, 0, '2018-10-03 04:18:00', '2022-04-09 10:05:41', NULL, NULL, '/library/images/sanpham/s4.png', 'dưới 500.000 đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Khuẩn</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dạng bột</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 70g</li>\r\n	<li>H&agrave;m lượng:&nbsp;35 g&oacute;i x 2g</li>\r\n</ul>', NULL, NULL, NULL, '0'),
(4, '04', 13, 750000, NULL, 500000, 0, '2018-10-03 04:18:00', '2022-04-09 10:15:33', NULL, NULL, '/library/images/sanpham/s3.1.png,/library/images/sanpham/s3.png', '500.000 - 1.000.000đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Tinh Dầu Organics</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dung dịch</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Combo 3 lọ 10 ml</li>\r\n	<li>H&agrave;m lượng:&nbsp;10ml/lọ</li>\r\n</ul>', NULL, NULL, NULL, '0'),
(5, 'FCD180', 15, 2600000, NULL, 2500000, 0, '2018-10-03 04:18:00', '2022-04-09 10:15:45', NULL, NULL, '/library/images/sanpham/medium_combo-okinawa-fucoidan-ho-tro-dieu-tri-ung-thu.png,/library/images/sanpham/okinawa-fucoidan-ho-tro-dieu-tri-ung-thu-1519788513.png', '500.000 - 1.000.000đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Fucoidan</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Vi&ecirc;n nang cứng</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 1 lọ x 180 vi&ecirc;n</li>\r\n	<li>H&agrave;m lượng:&nbsp;295mg/vi&ecirc;n</li>\r\n</ul>', NULL, NULL, NULL, '0'),
(6, 'AGMO', 16, 2660000, NULL, 2400000, 0, '2018-10-03 04:18:00', '2022-04-09 10:15:20', NULL, NULL, '/library/images/sanpham/s5.jpg,/library/images/sanpham/s5.png', '2.000.000 - 5.000.000đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Nấm</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Vi&ecirc;n n&eacute;n</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 1 lọ x 300 vi&ecirc;n</li>\r\n	<li>H&agrave;m lượng:&nbsp;Nhiều th&agrave;nh phần</li>\r\n</ul>', NULL, NULL, NULL, '0'),
(7, 'RCALUM30V', 22, 195000, NULL, 0, 100000, '2019-09-27 04:04:00', '2022-04-09 10:15:07', NULL, NULL, '/library/images/sanpham/s1.png,/library/images/sanpham/s2(1).png', 'dưới 500.000 đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Vitamin - kho&aacute;ng chất</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Vi&ecirc;n n&eacute;n</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 3 vỉ x 10 vi&ecirc;n</li>\r\n	<li>H&agrave;m lượng:&nbsp;Nhiều th&agrave;nh phần</li>\r\n</ul>', NULL, NULL, NULL, '0'),
(8, '1117236', 23, 522222, NULL, 500000, 0, '2018-09-28 07:55:00', '2022-04-09 10:14:57', NULL, NULL, '/library/images/sanpham/s3.jpeg,/library/images/sanpham/s4.jpg', '500.000 - 1.000.000đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Mắt, Tai, Mũi, Họng</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dung dịch</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;hộp 1 lọ x 250ml</li>\r\n	<li>H&agrave;m lượng:&nbsp;Tinh chất kim ng&acirc;n hoa: 5g</li>\r\n</ul>', NULL, NULL, NULL, '0'),
(9, 'TCNAU', 24, 7000000, NULL, 6500000, 100000, '2019-09-27 04:05:00', '2022-04-09 10:14:45', NULL, NULL, '/library/images/sanpham/a1.jpg,/library/images/sanpham/a2.jpg', '≥ 5.000.000đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Sản phẩm hỗ trợ điều trị ung thư kh&aacute;c</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dạng bột</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 120g (2g x 60 g&oacute;i)</li>\r\n	<li>H&agrave;m lượng:&nbsp;2g</li>\r\n</ul>', NULL, NULL, NULL, '0'),
(10, 'TD10', 25, 500000, NULL, 450000, 100000, '2019-09-21 04:05:00', '2022-04-09 10:14:33', NULL, NULL, '/library/images/sanpham/q1.png,/library/images/sanpham/q2.png', 'dưới 500.000 đ', '<ul>\r\n	<li>Loại sản phẩm:&nbsp;Tinh dầu kh&aacute;c</li>\r\n	<li>Dạng b&agrave;o chế:&nbsp;Dung dịch</li>\r\n	<li>Quy c&aacute;ch sản phẩm:&nbsp;Hộp 1 lọ x 5ml</li>\r\n	<li>H&agrave;m lượng:&nbsp;Nhiều th&agrave;nh phần</li>\r\n</ul>', NULL, NULL, NULL, '100000'),
(11, '11', 26, 0, NULL, 0, NULL, NULL, '2018-09-26 03:39:55', '2018-09-26 03:31:58', '2018-09-26 03:31:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '12', 27, 0, NULL, 0, NULL, NULL, '2018-09-26 03:39:46', '2018-09-26 03:31:58', '2018-09-26 03:31:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '13', 28, 0, NULL, 0, NULL, NULL, '2018-09-26 03:39:42', '2018-09-26 03:31:58', '2018-09-26 03:31:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '14', 29, 0, NULL, 0, NULL, NULL, '2018-09-26 03:39:20', '2018-09-26 03:31:59', '2018-09-26 03:31:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '15', 30, 0, NULL, 0, NULL, NULL, '2018-09-26 03:39:37', '2018-09-26 03:31:59', '2018-09-26 03:31:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '16', 32, 0, NULL, 0, NULL, NULL, '2018-09-26 03:37:23', '2018-09-26 03:31:59', '2018-09-26 03:31:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '17', 31, 0, NULL, 0, NULL, NULL, '2018-09-26 03:39:33', '2018-09-26 03:31:59', '2018-09-26 03:31:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '18', 33, 0, NULL, 0, NULL, NULL, '2018-09-26 03:37:17', '2018-09-26 03:31:59', '2018-09-26 03:31:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '19', 34, 0, NULL, 0, NULL, NULL, '2018-09-26 03:37:09', '2018-09-26 03:32:00', '2018-09-26 03:32:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '20', 35, 0, NULL, 0, 100000, '2018-09-20 03:27:00', '2018-09-27 03:40:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '21', 36, 0, NULL, 0, 2000000, '2018-08-20 01:01:00', '2018-09-27 03:41:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '22', 37, 0, NULL, 0, 0, '2018-09-27 05:53:44', '2018-09-27 05:53:56', '2018-09-27 05:53:44', '2018-09-27 05:53:44', NULL, NULL, NULL, NULL, NULL, NULL, '100000'),
(23, 'IPORN1', 77, 1400000, NULL, 0, 0, '2022-04-12 14:49:00', '2022-04-12 14:49:00', NULL, NULL, '/library/images/sanpham/corn.jpg,/library/images/sanpham/kabab.jpg,/library/images/sanpham/meat_fish_bg.jpg,/library/images/sanpham/reservation.jpg', NULL, NULL, NULL, NULL, NULL, '1500000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `ratingable_id` int(10) UNSIGNED DEFAULT NULL,
  `ratingable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_getfly`
--

CREATE TABLE `setting_getfly` (
  `setting_getfly_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `base_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '0: chưa xóa.\n1: đã xóa.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_order`
--

CREATE TABLE `setting_order` (
  `setting_order_id` int(11) NOT NULL,
  `point_to_currency` int(11) DEFAULT NULL,
  `currency_give_point` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcribe_email`
--

CREATE TABLE `subcribe_email` (
  `subcribe_email_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(8) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcribe_email`
--

INSERT INTO `subcribe_email` (`subcribe_email_id`, `email`, `name`, `group_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'aaaa', NULL, NULL, '2018-10-04 03:40:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_post`
--

CREATE TABLE `sub_post` (
  `sub_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `type_sub_post_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_post`
--

INSERT INTO `sub_post` (`sub_post_id`, `post_id`, `type_sub_post_slug`, `deleted_at`) VALUES
(1, 1, 'slider', NULL),
(2, 2, 'slider', NULL),
(3, 3, 'sologan', NULL),
(4, 4, 'sologan', NULL),
(5, 5, 'sologan', NULL),
(6, 51, 'nha-thuoc-lien-ket', NULL),
(7, 52, 'banner-san-pham', NULL),
(8, 53, 'banner-san-pham', NULL),
(9, 54, 'banner-san-pham', NULL),
(10, 55, 'banner-san-pham', NULL),
(11, 56, 'banner-san-pham', NULL),
(12, 57, 'service', NULL),
(13, 58, 'service', NULL),
(14, 59, 'service', NULL),
(15, 60, 'service', NULL),
(16, 61, 'our-specialities', NULL),
(17, 62, 'our-specialities', NULL),
(18, 63, 'our-specialities', NULL),
(19, 64, 'our-specialities', NULL),
(20, 65, 'menu-san-pham', NULL),
(21, 66, 'menu-san-pham', NULL),
(22, 67, 'menu-san-pham', NULL),
(23, 68, 'menu-san-pham', NULL),
(24, 69, 'menu-san-pham', NULL),
(25, 75, 'menu-san-pham', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `template`
--

CREATE TABLE `template` (
  `template_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_hide` tinyint(4) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `template`
--

INSERT INTO `template` (`template_id`, `title`, `slug`, `created_at`, `updated_at`, `is_hide`, `deleted_at`) VALUES
(1, 'sản phẩm', 'san-pham', NULL, '2018-10-01 02:29:15', NULL, '2018-10-01 02:29:15'),
(2, 'danh mục tin tức', 'danh-muc-tin-tuc', NULL, '2022-04-12 14:53:48', NULL, '2022-04-12 14:53:48'),
(3, 'Đăng ký', 'dang-ky', NULL, '2022-04-11 21:54:32', NULL, NULL),
(4, 'đăng nhập', 'dang-nhap', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_information`
--

CREATE TABLE `type_information` (
  `type_infor_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `type_input` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_information`
--

INSERT INTO `type_information` (`type_infor_id`, `title`, `type_input`, `placeholder`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'domain', 'one_line', NULL, NULL, NULL, 'domain', NULL),
(2, 'logo', 'one_line', NULL, NULL, '2022-04-08 21:16:22', 'logo', NULL),
(3, 'icon', 'image', NULL, NULL, NULL, 'icon', NULL),
(4, 'hotline', 'one_line', NULL, NULL, NULL, 'hotline', NULL),
(5, 'Số điện thoại', 'one_line', NULL, NULL, NULL, 'so-dien-thoai', NULL),
(6, 'thòi gian làm việc', 'one_line', NULL, NULL, '2022-04-12 17:26:30', 'thoi-gian-lam-viec', '2022-04-12 17:26:30'),
(7, 'Đia chỉ', 'one_line', NULL, NULL, NULL, 'dia-chi', NULL),
(8, 'email', 'one_line', NULL, NULL, NULL, 'email', NULL),
(9, 'nhúng facebook', 'multi_line', NULL, NULL, NULL, 'nhung-facebook', NULL),
(10, 'copy right', 'one_line', NULL, NULL, NULL, 'copy-right', NULL),
(11, 'test', 'one_line', NULL, NULL, '2018-09-25 02:58:49', 'test', '2018-09-25 02:58:49'),
(12, 'Text footer', 'editor', NULL, NULL, '2022-04-10 20:45:47', 'text-footer', NULL),
(13, 'thương hiệu', 'image', NULL, NULL, NULL, 'thuong-hieu', NULL),
(14, 'Nhúng bản đồ', 'multi_line', NULL, NULL, NULL, 'nhung-ban-do', NULL),
(15, 'meta title', 'one_line', NULL, NULL, NULL, 'meta_title', NULL),
(16, 'meta description', 'one_line', NULL, NULL, NULL, 'meta_description', NULL),
(17, 'meta keyword', 'one_line', NULL, NULL, NULL, 'meta_keyword', NULL),
(21, 'title_1', 'one_line', NULL, NULL, NULL, 'title_1', NULL),
(22, 'sub_title_1', 'one_line', NULL, NULL, NULL, 'sub_title_1', NULL),
(23, 'title_2', 'one_line', NULL, NULL, NULL, 'title_2', NULL),
(24, 'sub_title_2', 'one_line', NULL, NULL, NULL, 'sub_title_2', NULL),
(25, 'title_trong_video', 'one_line', NULL, NULL, NULL, 'title_trong_video', NULL),
(26, 'link_video', 'one_line', NULL, NULL, NULL, 'link_video', NULL),
(27, 'title_3', 'one_line', NULL, NULL, NULL, 'title_3', NULL),
(28, 'sub_title_3', 'one_line', NULL, NULL, NULL, 'sub_title_3', NULL),
(29, 'button_title_3', 'one_line', NULL, NULL, NULL, 'button_title_3', NULL),
(30, 'button_link', 'one_line', NULL, NULL, NULL, 'button_link', NULL),
(34, 'title_form', 'one_line', NULL, NULL, NULL, 'title_form', NULL),
(35, 'sub_title_form', 'one_line', NULL, NULL, NULL, 'sub_title_form', NULL),
(36, 'image_form', 'one_line', NULL, NULL, NULL, 'image_form', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_input`
--

CREATE TABLE `type_input` (
  `type_input_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `type_input` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_used` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_input`
--

INSERT INTO `type_input` (`type_input_id`, `title`, `slug`, `type_input`, `placeholder`, `post_used`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'thương hiệu', 'thuong-hieu', 'one_line', NULL, 'product', NULL, '2022-04-12 14:34:37', '2022-04-12 14:34:37'),
(2, 'kiem tra truong du lieu', 'kiem-tra-truong-du-lieu', 'one_line', NULL, 'cate_post,cate_product', NULL, '2018-09-28 02:04:39', '2018-09-28 02:04:39'),
(3, 'icon danh mục', 'icon-danh-muc', 'image', NULL, 'cate_product', NULL, '2018-09-28 02:12:08', NULL),
(4, 'backgruod icon', 'backgruod-icon', 'one_line', NULL, 'cate_product', NULL, '2022-04-08 19:59:42', '2022-04-08 19:59:42'),
(5, 'backgruod title', 'backgruod-title', 'one_line', NULL, 'cate_product', NULL, '2022-04-08 19:59:37', '2022-04-08 19:59:37'),
(6, 'Link chứng từ', 'link-chung-tu', 'one_line', NULL, 'product', NULL, '2022-04-12 14:34:43', '2022-04-12 14:34:43'),
(7, 'banner sản phẩm', 'banner-san-pham', 'image', NULL, 'product', NULL, '2022-04-12 14:34:48', '2022-04-12 14:34:48'),
(8, 'mô tả banner', 'mo-ta-banner', 'multi_line', NULL, 'product', NULL, '2022-04-12 14:34:52', '2022-04-12 14:34:52'),
(9, 'Giá', 'gia', 'one_line', 'Giá sản phẩm', 'menu-san-pham', NULL, '2022-04-08 20:52:06', NULL),
(10, 'icon', 'icon', 'one_line', NULL, 'service', NULL, '2022-04-08 20:00:27', NULL),
(11, 'Tiêu đề button', 'tieu-de-button', 'one_line', NULL, 'slider', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_sub_post`
--

CREATE TABLE `type_sub_post` (
  `type_sub_post_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_default_used` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_sub_post`
--

INSERT INTO `type_sub_post` (`type_sub_post_id`, `title`, `slug`, `template`, `input_default_used`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'slider', 'slider', 'default', 'title,image,description', NULL, '2022-04-08 19:01:35', NULL),
(2, 'SERVICES', 'service', 'default', 'title,description', NULL, '2022-04-08 19:59:12', NULL),
(3, 'thanh toán', 'thanh-toan', 'default', 'image', NULL, '2018-09-25 04:12:05', '2018-09-25 04:12:05'),
(4, 'OUR SPECIALITIES', 'our-specialities', 'default', 'title,image,description', NULL, '2022-04-08 20:40:06', NULL),
(5, 'MENU Sản phẩm', 'menu-san-pham', 'default', 'title,description', NULL, '2022-04-08 20:51:27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(254) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Null',
  `accesstoken` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(45) DEFAULT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` int(11) DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `accesstoken`, `phone`, `image`, `role`, `name`, `updated_at`, `created_at`, `age`, `address`, `point`, `deleted_at`) VALUES
(1, 'vn3ctran@gmail.com', '$2y$10$NnWmu0CwTsKP/5ZLaHAa/OUcpMbwWlKYtxoQZOA4D6lreY7uE9pra', '3WcjPFTkHHag3y9FyWyMYSCbjspNctPxc2Gn69KES30Mw9dCMuQPvDog3ox2', NULL, '12345678', 'http://thietkewebtns.com/wp-content/uploads/2017/05/1a-11.jpg', 3, 'Admin', '2018-07-03 12:00:46', NULL, 'nam', 'Cổ đông sơn tây', 0, NULL),
(2, 'vietbt@vatgia.com', '$2y$10$KONS1pmjLr6kLPwVCEKOQuPZELjWzpmxOHb.n4K4bXqWyiUzxpUuy', 'VDFuQTy4Psf0ew2GVT6gHmQKmFC5UgSsKmjJDXITQeLxQVVt9GzjBe3Eh3UB', NULL, '0357176405', 'http://thietkewebtns.com/wp-content/uploads/2017/05/1a-11.jpg', 1, 'Bui Tuan Viet', '2022-04-11 21:56:39', '2022-04-10 09:31:03', NULL, '1345', 0, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`category_post_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `facebook_save_uid`
--
ALTER TABLE `facebook_save_uid`
  ADD PRIMARY KEY (`facebook_save_uid_id`);

--
-- Chỉ mục cho bảng `facebook_setting`
--
ALTER TABLE `facebook_setting`
  ADD PRIMARY KEY (`facebook_id`);

--
-- Chỉ mục cho bảng `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Chỉ mục cho bảng `group_filter`
--
ALTER TABLE `group_filter`
  ADD PRIMARY KEY (`group_filter_id`);

--
-- Chỉ mục cho bảng `group_mail`
--
ALTER TABLE `group_mail`
  ADD PRIMARY KEY (`group_mail_id`);

--
-- Chỉ mục cho bảng `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`infor_id`);

--
-- Chỉ mục cho bảng `information_general`
--
ALTER TABLE `information_general`
  ADD PRIMARY KEY (`infor_id`);

--
-- Chỉ mục cho bảng `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`input_id`);

--
-- Chỉ mục cho bảng `mail_config`
--
ALTER TABLE `mail_config`
  ADD PRIMARY KEY (`mail_config_id`);

--
-- Chỉ mục cho bảng `members_facebook`
--
ALTER TABLE `members_facebook`
  ADD PRIMARY KEY (`member_id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Chỉ mục cho bảng `menu_element`
--
ALTER TABLE `menu_element`
  ADD PRIMARY KEY (`menu_element_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notify_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_bank`
--
ALTER TABLE `order_bank`
  ADD PRIMARY KEY (`order_bank_id`);

--
-- Chỉ mục cho bảng `order_code_sale`
--
ALTER TABLE `order_code_sale`
  ADD PRIMARY KEY (`order_code_sale_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Chỉ mục cho bảng `order_ship`
--
ALTER TABLE `order_ship`
  ADD PRIMARY KEY (`order_ship_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `post_facebook`
--
ALTER TABLE `post_facebook`
  ADD PRIMARY KEY (`post_facebook_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting_getfly`
--
ALTER TABLE `setting_getfly`
  ADD PRIMARY KEY (`setting_getfly_id`);

--
-- Chỉ mục cho bảng `setting_order`
--
ALTER TABLE `setting_order`
  ADD PRIMARY KEY (`setting_order_id`);

--
-- Chỉ mục cho bảng `subcribe_email`
--
ALTER TABLE `subcribe_email`
  ADD PRIMARY KEY (`subcribe_email_id`);

--
-- Chỉ mục cho bảng `sub_post`
--
ALTER TABLE `sub_post`
  ADD PRIMARY KEY (`sub_post_id`);

--
-- Chỉ mục cho bảng `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`template_id`);

--
-- Chỉ mục cho bảng `type_information`
--
ALTER TABLE `type_information`
  ADD PRIMARY KEY (`type_infor_id`);

--
-- Chỉ mục cho bảng `type_input`
--
ALTER TABLE `type_input`
  ADD PRIMARY KEY (`type_input_id`);

--
-- Chỉ mục cho bảng `type_sub_post`
--
ALTER TABLE `type_sub_post`
  ADD PRIMARY KEY (`type_sub_post_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `category_post`
--
ALTER TABLE `category_post`
  MODIFY `category_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=737;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `facebook_save_uid`
--
ALTER TABLE `facebook_save_uid`
  MODIFY `facebook_save_uid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `facebook_setting`
--
ALTER TABLE `facebook_setting`
  MODIFY `facebook_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter`
--
ALTER TABLE `filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `group_filter`
--
ALTER TABLE `group_filter`
  MODIFY `group_filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `group_mail`
--
ALTER TABLE `group_mail`
  MODIFY `group_mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `information`
--
ALTER TABLE `information`
  MODIFY `infor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `information_general`
--
ALTER TABLE `information_general`
  MODIFY `infor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `input`
--
ALTER TABLE `input`
  MODIFY `input_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT cho bảng `mail_config`
--
ALTER TABLE `mail_config`
  MODIFY `mail_config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `members_facebook`
--
ALTER TABLE `members_facebook`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `menu_element`
--
ALTER TABLE `menu_element`
  MODIFY `menu_element_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `notify_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `order_bank`
--
ALTER TABLE `order_bank`
  MODIFY `order_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order_code_sale`
--
ALTER TABLE `order_code_sale`
  MODIFY `order_code_sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `order_ship`
--
ALTER TABLE `order_ship`
  MODIFY `order_ship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `post_facebook`
--
ALTER TABLE `post_facebook`
  MODIFY `post_facebook_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_getfly`
--
ALTER TABLE `setting_getfly`
  MODIFY `setting_getfly_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_order`
--
ALTER TABLE `setting_order`
  MODIFY `setting_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subcribe_email`
--
ALTER TABLE `subcribe_email`
  MODIFY `subcribe_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sub_post`
--
ALTER TABLE `sub_post`
  MODIFY `sub_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `template`
--
ALTER TABLE `template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type_information`
--
ALTER TABLE `type_information`
  MODIFY `type_infor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `type_input`
--
ALTER TABLE `type_input`
  MODIFY `type_input_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `type_sub_post`
--
ALTER TABLE `type_sub_post`
  MODIFY `type_sub_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
