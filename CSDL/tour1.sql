-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2021 lúc 05:45 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tour1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `cdate` date NOT NULL,
  `group_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `uname`, `email`, `password`, `fname`, `lname`, `contact`, `address`, `file`, `cdate`, `group_id`, `total_amount`, `delete_status`) VALUES
(1, 'Hung Phan', 'phanquochung922015@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Phan', 'Hung', '+84794318544', 'Tien Giang', 'profile.png', '2018-04-30', 0, 1000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `traveller_id` varchar(200) NOT NULL,
  `state_id` varchar(200) NOT NULL,
  `package_id` varchar(200) NOT NULL,
  `no_of_adults` int(11) NOT NULL,
  `no_of_children` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total_amount` int(11) NOT NULL,
  `adv_amount` varchar(200) NOT NULL,
  `total` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`id`, `traveller_id`, `state_id`, `package_id`, `no_of_adults`, `no_of_children`, `from_date`, `to_date`, `total_amount`, `adv_amount`, `total`, `tax`, `created_date`) VALUES
(1, '1', 'Tinh Tien Giang', '1', 1790000, 1790000, '2021-12-24', '2021-12-24', 1790000, '1790000', 1790000, 179000, '2021-12-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_payment`
--

CREATE TABLE `booking_payment` (
  `id` int(11) NOT NULL,
  `advance_amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_report`
--

CREATE TABLE `booking_report` (
  `id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `curr_code` varchar(200) NOT NULL,
  `curr_symbol` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `currency`
--

INSERT INTO `currency` (`id`, `curr_code`, `curr_symbol`) VALUES
(1, 'Dong', 'VND');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_setup`
--

CREATE TABLE `email_setup` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail_driver_host` varchar(50) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `email_setup`
--

INSERT INTO `email_setup` (`id`, `name`, `mail_driver_host`, `mail_port`, `mail_username`, `mail_password`) VALUES
(1, 'Hung Phan', 'mail.gmail.com', 587, 'phanquochung19q@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `expense_for` varchar(200) NOT NULL,
  `expense_name` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `expense`
--

INSERT INTO `expense` (`id`, `expense_for`, `expense_name`, `amount`, `created_date`) VALUES
(1, '1500000', '2', 1, '2021-12-24'),
(2, '500000', '1', 1, '2021-12-24'),
(3, '500000', '3', 1, '2021-12-24'),
(4, '500000', '4', 1, '2021-12-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(11) NOT NULL,
  `expense_name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `expense_category`
--

INSERT INTO `expense_category` (`id`, `expense_name`, `status`) VALUES
(1, 'An uong', 'Active'),
(2, 'Di lai', 'Active'),
(3, 'Khach san', 'Active'),
(4, 'Mua sam', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `price_adult` int(11) NOT NULL,
  `price_children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `packages`
--

INSERT INTO `packages` (`id`, `pname`, `price_adult`, `price_children`) VALUES
(1, 'Du lich Mien Tay', 1790000, 1790000),
(2, 'Du lich Dong Nai', 790000, 790000),
(3, 'Du lich Dong Bac', 7390000, 7390000),
(4, 'Du lich Can Gio', 1790000, 1790000),
(5, 'Du lich Cu Chi', 699000, 699000),
(6, 'Du lich Quy Nhon', 4890000, 4890000),
(7, 'Du lich Da Nang', 6590000, 6590000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `pending_amount` int(11) NOT NULL,
  `insert_amount` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `cdate` varchar(200) NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id`, `booking_id`, `amount`, `paid_amount`, `pending_amount`, `insert_amount`, `payment_type`, `cdate`, `due_date`) VALUES
(1, 1, 0, 0, 0, 0, '1', '2021-12-24', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `payment_type`
--

INSERT INTO `payment_type` (`id`, `payment_type`) VALUES
(1, 'Ngan hang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `docs` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `f_image` varchar(200) NOT NULL,
  `logo_image` varchar(200) NOT NULL,
  `login_image` varchar(200) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `footer` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `add1` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `title`, `f_image`, `logo_image`, `login_image`, `currency`, `footer`, `address`, `add1`) VALUES
(2, 'Tours and Travels', 'favi.png', 'logo_by NB.png', 'logo_by NB.png', '11', 'Nikhil B', 'Nashik, India', 'Maharashtra 422002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sms_setting`
--

CREATE TABLE `sms_setting` (
  `id` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `sender_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tax`
--

CREATE TABLE `tax` (
  `id` int(11) NOT NULL,
  `tname` varchar(200) NOT NULL,
  `percent` varchar(200) NOT NULL,
  `short_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tax`
--

INSERT INTO `tax` (`id`, `tname`, `percent`, `short_code`) VALUES
(1, 'Thue gia tri gia tang (VAT)	', '10', '61021000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `travellers`
--

CREATE TABLE `travellers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `confirm` varchar(200) NOT NULL,
  `state_name` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'register'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `travellers`
--

INSERT INTO `travellers` (`id`, `name`, `email`, `password`, `confirm`, `state_name`, `mobile`, `address`, `photo`, `status`) VALUES
(1, 'Hung Phan', 'phanquochung19q@gmail.com', 'd7ba779503c024e6eaad69ec2374e459530cfdc6c9028026199f15973ad21535', 'd7ba779503c024e6eaad69ec2374e459530cfdc6c9028026199f15973ad21535', 'Tinh Tien Giang', '0794318544', 'GC', '1.jpg', 'register'),
(2, 'Le Nguyen Phuong Xuan', 'lnpx@gmail.com', '1538d0e7f72087ba599e6b9e7bde2d1e573155b10c186754a748bcc9ebd9894a', '1538d0e7f72087ba599e6b9e7bde2d1e573155b10c186754a748bcc9ebd9894a', 'Tinh Long An', '0794318544', 'LA', '7.jpg', 'register');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `booking_payment`
--
ALTER TABLE `booking_payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `booking_report`
--
ALTER TABLE `booking_report`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_setup`
--
ALTER TABLE `email_setup`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sms_setting`
--
ALTER TABLE `sms_setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `travellers`
--
ALTER TABLE `travellers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `booking_payment`
--
ALTER TABLE `booking_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `booking_report`
--
ALTER TABLE `booking_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_setup`
--
ALTER TABLE `email_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sms_setting`
--
ALTER TABLE `sms_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tax`
--
ALTER TABLE `tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `travellers`
--
ALTER TABLE `travellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
