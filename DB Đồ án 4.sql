-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 09, 2022 lúc 07:13 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ttt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills_ban`
--

CREATE TABLE `bills_ban` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kh` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `tong_tien` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills_ban`
--

INSERT INTO `bills_ban` (`id`, `id_kh`, `date_order`, `tong_tien`, `payment`, `status`, `note`, `created_at`, `updated_at`) VALUES
(94616599, 5, '2019-05-06', 22000000, 'Online', 'Đã thanh toán', 'không', '2022-06-14 07:22:22', '2022-06-14 00:22:22'),
(488292, 5, '2019-05-06', 3200000, 'Online', 'Đã thanh toán', 'không', '2022-06-14 07:22:23', '2022-06-14 00:22:23'),
(105424422, 5, '2022-06-14', 14000000, 'online', 'chờ xử lý', 'không', '2022-06-14 07:22:23', '2022-06-14 00:22:23'),
(141828476, 5, '2022-06-14', 15500000, 'Online', 'Đã thanh toán', 'không', '2022-06-14 07:22:23', '2022-06-14 00:22:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills_nhap`
--

CREATE TABLE `bills_nhap` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_ncc` int(11) DEFAULT NULL,
  `id_nhanvien` int(10) NOT NULL,
  `date_order` date DEFAULT NULL,
  `tong_tien` float DEFAULT NULL COMMENT 'tổng tiền',
  `thanh_toan` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills_nhap`
--

INSERT INTO `bills_nhap` (`id`, `id_ncc`, `id_nhanvien`, `date_order`, `tong_tien`, `thanh_toan`, `note`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2019-04-15', 2000000, 'Online', 'k', '2022-06-14 03:52:14', '2022-06-13 20:52:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail_ban`
--

CREATE TABLE `bill_detail_ban` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill_ban` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `unit_prices` int(11) NOT NULL,
  `sl` int(11) NOT NULL COMMENT 'số lượng',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail_ban`
--

INSERT INTO `bill_detail_ban` (`id`, `id_bill_ban`, `id_sp`, `unit_prices`, `sl`, `updated_at`, `created_at`) VALUES
(9527107, 1, 4, 1250000, 2, '2022-05-05 19:05:39', '2022-05-05 19:05:39'),
(235659291, 141828476, 36, 9500000, 1, '2022-06-14 00:18:32', '2022-06-14 00:18:32'),
(235659290, 141828476, 15, 2000000, 3, '2022-06-14 00:18:31', '2022-06-14 00:18:31'),
(235659289, 105424422, 36, 9500000, 1, '2022-06-13 20:54:27', '2022-06-13 20:54:27'),
(235659288, 105424422, 34, 4500000, 1, '2022-06-13 20:54:27', '2022-06-13 20:54:27'),
(235659287, 105245682, 31, 1200000, 1, '2022-06-13 20:52:48', '2022-06-13 20:52:48'),
(235659286, 105245682, 15, 2000000, 1, '2022-06-13 20:52:48', '2022-06-13 20:52:48'),
(9470720, 94616599, 42, 4500000, 3, '2022-06-06 19:47:14', '2022-06-06 19:47:13'),
(235659285, 94616599, 34, 4500000, 1, '2022-06-06 19:46:26', '2022-06-06 19:46:26'),
(235659284, 94616599, 15, 2000000, 2, '2022-06-06 19:46:26', '2022-06-06 19:46:26'),
(235659283, 488292, 31, 1200000, 1, '2022-06-06 14:08:10', '2022-06-06 14:08:10'),
(21287559, 1, 6, 330000, 1, '2022-06-06 07:28:15', '2022-06-06 07:28:15'),
(235659282, 488292, 15, 2000000, 1, '2022-06-06 14:08:10', '2022-06-06 14:08:10'),
(153341316, 1, 2, 50000, 1, '2022-06-05 01:33:57', '2022-06-05 01:33:57'),
(235659281, 175417531, 6, 330000, 1, '2022-05-13 03:54:20', '2022-05-13 03:54:20'),
(235659280, 175417531, 4, 1250000, 1, '2022-05-13 03:54:20', '2022-05-13 03:54:20'),
(235659279, 175321979, 2, 50000, 1, '2022-05-13 03:53:24', '2022-05-13 03:53:24'),
(235659278, 175321979, 1, 1400000, 1, '2022-05-13 03:53:24', '2022-05-13 03:53:24'),
(235659277, 10141602, 2, 50000, 1, '2022-05-11 20:01:43', '2022-05-11 20:01:43'),
(235659276, 10141602, 1, 1400000, 1, '2022-05-11 20:01:43', '2022-05-11 20:01:43'),
(235659275, 84227834, 2, 50000, 1, '2022-05-11 18:42:29', '2022-05-11 18:42:29'),
(235659274, 84227834, 1, 1400000, 1, '2022-05-11 18:42:29', '2022-05-11 18:42:29'),
(235659273, 1831369, 2, 50000, 1, '2022-05-11 10:18:32', '2022-05-11 10:18:32'),
(235659272, 1831369, 1, 1400000, 1, '2022-05-11 10:18:32', '2022-05-11 10:18:32'),
(235659271, 1446465, 2, 50000, 1, '2022-05-11 10:14:47', '2022-05-11 10:14:47'),
(235659270, 1446465, 1, 1400000, 1, '2022-05-11 10:14:47', '2022-05-11 10:14:47'),
(235659269, 1113241, 2, 50000, 1, '2022-05-11 10:11:14', '2022-05-11 10:11:14'),
(235659268, 1113241, 1, 1400000, 1, '2022-05-11 10:11:14', '2022-05-11 10:11:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail_nhap`
--

CREATE TABLE `bill_detail_nhap` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill_nhap` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `sl` int(11) NOT NULL COMMENT 'số lượng',
  `don_vi` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail_nhap`
--

INSERT INTO `bill_detail_nhap` (`id`, `id_bill_nhap`, `id_sp`, `sl`, `don_vi`, `created_at`, `updated_at`) VALUES
(1, 5, 15, 1, 'set', '2022-06-07 06:36:37', '2022-06-06 23:36:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_kh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ten_kh`, `email`, `dia_chi`, `sdt`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Đoàn Thùy Linh', 'doanlinh1098@gmail.com', 'Đa Lộc-Ân Thi-Hưng Yên', '0983017991', NULL, '2022-06-02 16:18:59', '2022-06-02 09:18:59'),
(2, 'Đoàn Văn Việt', 'tuan@gmail.com', 'Đa Lộc-Ân Thi-Hưng Yên', '0983756482', NULL, '2022-04-27 10:28:57', '2019-05-05 18:19:04'),
(3, 'Đoàn Linh', 'doanlinh@gmail.com', 'Đa Lộc- Ân Thi-Hưng Yên', '01628470872', NULL, '2022-04-27 10:28:59', '2019-05-09 01:27:05'),
(5, 'Byakuya', 'byakuya2112ss@gmail.com', 'Minh Châu-Yên Mỹ-Hưng Yên', '086638519', NULL, '2022-05-11 15:32:36', '2019-04-18 22:48:32'),
(223828484, 'phan tien trong', 'phantientrong2112ss@gmail.com', 'Minh Chau-Yen My -Hung Yen', '0866438518', NULL, '2022-05-11 08:38:28', '2022-05-11 08:38:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_sp`
--

CREATE TABLE `loai_sp` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_sp`
--

INSERT INTO `loai_sp` (`id`, `tenloai`, `created_at`, `updated_at`) VALUES
(7, 'Scale Figure', '2022-04-12 17:52:23', '2022-06-08 01:53:19'),
(8, 'Nendoroid Figure', '2019-04-05 14:27:26', '2022-04-15 12:25:30'),
(9, 'Fidget Spinner', '2019-04-17 03:41:45', '2022-04-15 13:22:54'),
(10, 'Art Book', '2019-04-17 03:41:45', '2022-04-15 13:31:55'),
(11, 'Other Figure', NULL, NULL),
(12, 'Action Figure', '2022-04-28 02:01:08', '2022-04-28 02:01:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_new` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_new`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'OVERLORD \"GÂY BÃO\" VỚI 2 DỰ ÁN LỚN: SEASON 4 VÀ MOVIE!?', '<p>Trong buổi ghi hình trực tiếp vào hôm thứ bảy, sê-ri anime truyền hình Overlord đã chính thức xác nhận mùa thứ 4 cùng với anime movie. Đồng thời, cũng không quên hé lộ ảnh bìa đầy đặc sắc cùng dàn nhân lực sẽ góp phần tạo nên sự thành công cho dự án lần này.&nbsp;</p><p>&lt;img src=\"/admin/assets/upload/sanpham/azur-lane-laffey-f-nex-1-7-usausa-bride-furyu-6.jpg\" style=\"width:200px\"&gt;</p><p>Anime Overlord được chuyển thể từ light novel ăn khách cùng tên và nhận được rất nhiều sự yêu thích của khán giả ngay từ những tập phim đầu tiên ra mắt năm 2015. Sau hơn ba năm kể từ Overlord season 3 kết thúc, cuối cùng khán giả cũng sẽ sớm được gặp lại chúa tể Ainz Ooal Gown và thuộc hạ của mình trong anime anime Overlord season 4. Hiện tại thì siêu phẩm được cho là sẽ khiến các fan chao đảo đầu năm 2022 này đang trong quá trình sản xuất một cách kỹ lưỡng và được đầu tư bài bản.&nbsp;</p><p>Về nội dung thì anime Overlord nói về trò chơi thực tế ảo nổi tiếng Yggdrasil. Momonga, một pháp sư quyền năng và là chủ của hội hắc ám Ainz Ooal Gown, quyết định dành những giây phút cuối cùng của mình trong trò chơi khi các máy chủ bắt đầu đóng cửa. Momonga nhận ra mình vẫn đang nhập vai là các nhân vật trong tựa game này và các nhân vật không phải người chơi dường như đã phát triển tính cách của riêng họ. Đối mặt với tình huống bất thường này, Momonga ra lệnh cho những người hầu trung thành của mình giúp anh điều tra và kiểm soát thế giới mới với hy vọng tìm ra nguyên nhân đã gây ra sự phát triển này và liệu có những người khác trong tình trạng khó khăn tương tự. Từ đây một âm mưu đen tối và công cuộc giải cứu thế giới chính thức bắt đầu.&nbsp;</p><p>Các bạn thấy sao về anime Overlord season 4, liệu nó có đủ sức để trở thành siêu phẩm anime vào đầu năm 2022 hay không? Hãy để lại ý kiến của mình về vấn đề này nhé!</p>', '43253465474.PNG', '2022-06-12 06:16:17', '2022-06-11 23:16:17'),
(2, 'GIỚI THIỆU FIGURE SAEKANO: HOW TO RAISE A BORING GIRLFRIEND FINE ERIRI SPENCER SAWAMURA CASUAL VER. 1/7', '<p>Chào các bạn quý dị và bà con cô bác gần xa :”v sau nhiều ngày vắng bóng , chương trình review Figure lại trở lại rồi đây ^^ Và nhân vật của chúng ta hôm nay !!! Eriri Spencer Sawamura(Eri Kashiwagi) đến từ Seri với cái tên thân mật : “ Cách dạy dỗ bạn gái hay ủ rủ “ Saekano: How to Raise a Boring Girlfriend&nbsp;</p><p>&nbsp;Scale lần này của cô nàng xuất hiện trong trang phục giản dị! dựa trên hình minh họa áo khoác Blu-ray của Kurehito Misaki từ mùa thứ hai và Eriri trong trang phục cô ấy mặc khi ở tại biệt thự ở Nasu Highland. Áo khoác dotera, cọ vẽ, xô và các bức tranh vẽ đã của cô ấy đều thể hiện linh hoạt và chi tiết. Phong cách độc đáo của Kurehito Misaki từ hình minh họa gốc đã được tạo ra một cách tỉ mỉ với những tác phẩm sơn công phu.</p><p>&nbsp;Với tỷ lệ 1/7 ( 20.5cm ) đây rõ rang là 1 tỷ lệ rất vừa vặn cho việc trang trí hoặc đặt cô nàng vào một góc yêu thong7 rạng rỡ nào đó :3 trong căn phong của bạn đó Chiếc áo khoác đỏ dotera của cô ấy đã được thể hiện như tung bay trong gió ! ( trong động có tĩnh :’v thiệt là ghê gớmPhần đế được thể hiện cũng mang một màu sắc nghệ thuật :3</p><p>Khi mà bạn nhìn xem nó trông giống như một tấm bảng vẽ được bọc vải bạt và dừng lên ấy nhờ !! Một chi tiết phóng đại thú vị và rất phù hợp cho những con người mơ mộng là hình ảnh cô nàng ngồi trên đầu cọ vẽ :3 cô ấy là người chèo lái những thứ do cọ tạo ra , những nghệ thuật của riêng mình&nbsp;</p><p>Hãy nhìn vào biểu cảm đáng yêu của cô ấy! ( đây có lẽ là thứ khiến chúng ta mất nhiều máu nhất đây :…))&nbsp;</p><p>Đây thực sự là 1 Scale rất tuyệt vời mà nếu các bạn là Fan của Seri không nên bỏ qua đặc biệt là fan của cô nàng Eri đó nha</p>', 'g1.jpg', '2022-06-07 02:19:00', '2022-06-06 19:19:00'),
(3, 'Giới thiệu Nendoroid Hibiki Sakura', '<p>Từ anime series “How Heavy Are the Dumbbells You Lift?”, Nendoroid Hibiki Sakura đã chính thức ra mắt! Cô nàng có ba biểu cảm khuôn mặt, bao gồm biểu cảm năng động tiêu chuẩn, biểu cảm tập luyện và biểu cảm \"giới hạn\" mà rất phù hợp với những dụng cụ tập luyện</p><p>! Các bộ phận đi kèm bao gồm tạ nâng, bánh bạch tuột takoyaki và băng ghế nâng tạ! Đừng quên bổ sung cô nàng vào bộ sưu tập!</p><p>Làn da bánh mật và đuôi tóc hai chùm được tái hiện cẩn thận trong kích cỡ Nendoroid! Hình thể của cô nàng được chế tác chi tiết hơn các Nendoroid thông thường để bạn có thể dễ dàng tái hiện những cảnh cô nàng ở phòng gym để giảm cân!&nbsp;</p><p>Biểu cảm tiêu chuẩn với nụ cười hồn nhiên trong series!Cô nàng có các cánh tay gập để dễ dàng tạo dáng nâng tạ!Bạn cũng có thể kết hợp các phần chân khác với thân dưới đặc biệt để tạo ra tư thế ngồi!&nbsp;</p><p>Dù trong kích cỡ Nendoroid, Hibiki vẫn luôn sẵn sàng tập luyện!&nbsp;</p><p>Nếu thích cô nàng này thì các bạn nên sắm ngay để sưu tập trang trí căn phòng của mình nhé :&gt;</p>', 'h2.jpg', '2022-06-07 02:19:32', '2022-06-06 19:19:32'),
(5, 'GIỚI THIỆU FIGURE BLACK ROCK SHOOTER INEXHAUSTIBLE VER. 1/8', '<p>Và để kỷ niệm cho sự trở lại này , nhân vật chính hôm nay của chúng ta cũng phải là 1 nhân vật hoành tráng không kém chứ nhỉ ? Cùng chào đón :3 “ BLACK ROCK SHOOTER INEXHAUSTIBLE VER. 1/8 ♥ Black Rock Shooter ♥Từ Seri Black Rock Shooter luôn !!!&nbsp;</p><p>Thiết kế dựa trên hình minh họa Kỷ niệm 10 năm “ 10th BRS inexhaustible ”, Hình tượng Black Rock Shooter đứng trên đỉnh Rock Cannon khi nó bắn vào mặt đất với ánh sáng xanh rực rỡ phải nói là 10 điểm cho sự hoành tráng luôn &gt;.&lt; !!!!! Ánh sáng ngọn lửa xanh kết tinh và đôi cánh cơ khí của cô nàng đã được tạc khắc vô cùng tỉ mỉ, Chắc chắn đây là điểm đặc sắc nhất của Figure này thu hút bạn chú ý từ cái nhìn đầu tiên&nbsp;</p><p>Điều khiến chúng ta chú ý ngay từ cái nhìn đâu tiên chính sẽ là kích thước , dù chỉ được mô hình hóa với tỷ lệ 1/8 nhưng nó lại mang 1 kích thước đáng kinh ngạc lên đến 46 cm.</p><p>Đúng là kỷ niệm 10 năm :3 Good Smile Company đã chơi lớn thật may mà nó chỉ ở 1/8 nếu ¼ thì thật khó tưởng tượng được :..)) nhờ vậy thì giá cả cũng dễ kiểm soát hơn rất nhiều :..(( sẽ không khiến các fan của Black Rock Shooter khóc ròng về giá cả .</p><p>Thiết kế cơ khí được thể hiện rất tuyệt , chúng ta hoàn toàn có thể cảm nhận được mùi vị của máy móc bắt trọn khung cảnh của Black Rock Shooter . Tuy nhiên , việc trưng bày có thể sẽ cần kỹ lưỡng :3 tránh xa tầm tay trẻ em nhé !!&nbsp;</p><p>&nbsp;Vì thế nên nếu bạn là 1 fan của Block Rock Shooter thì đừng bỏ qua cơ hội để mang ngay cô nàng về bộ sưu tập của mình nhé (◕︵◕) nếu bỏ lỡ thì sẽ rất đáng tiếc đó ^^</p>', 'f1.jpg', '2022-06-07 02:20:05', '2022-06-06 19:20:05'),
(6, 'Giới thiệu Yunyun: Bunny Ver. & Darkness: Bunny Ver.', '<p>Nổi tiếng với những tuyệt phẩm bunny figure, FREEing ra mắt hai 1/4th scale bunny mới toanh từ Konosuba series: Yunyun và Darkness! Figure cao khoảng 37cm.&nbsp;</p><p>Từ anime series “KONO SUBARASHII SEKAI NI SYUKUFUKU WO!”, B-style figure đối thủ của Megumin, Yunyun đã chính thức ra mắt! Sức hút của Yunyun được tái hiện chuyên nghiệp trong trang phục thỏ. Đừng quên bổ sung cô nàng vào bộ sưu tập!&nbsp;</p><p>Điểm chung của các bunny figure từ FREEing là cái đuôi bông đáng yêu và tất chân hàng bằng vải thật. Phong cách thỏ này không chỉ dừng lại ở tai và đuôi mà còn ở đây nữa…!Cổ và ống tay đều có hình thỏ hồng! Đừng quên kiểm tra khi rước cô nàng về nhà!&nbsp;</p><p>Từ anime series “KONO SUBARASHII SEKAI NI SYUKUFUKU WO!”, B-style figure thành viên của hội Kazuma, Darkness đã chính thức ra mắt! Bình thường phần thân dưới của cô nàng bị áo giáp che mất, nhưng hôm nay cô nàng được tái hiện trong trang phục thỏ. Đừng quên bổ sung cô nàng vào bộ sưu tập!Cũng giống như Yunyun, quanh eo có thiết kế dây tết. Tôi thích cách bộ trang phục ôm sát người cô nàng!&nbsp;</p><p>&nbsp;đừng bỏ qua cơ hội để mang 2 nàng thỏ đáng yêu này về bộ sưu tập của mình nhé ehe~haha</p>', 'i1.jpg', '2022-06-07 02:20:26', '2022-06-06 19:20:26'),
(7, 'Bức tường khổng lồ băng Mũ Rơm được xây dựng tại quê nhà Oda, các fan One Piece đã có địa điểm check-in lý tưởng', '<p>Đó là thông tin khiến nhiều độc giả One Piece trên toàn thế giới cảm thấy phấn khích khi mà mới đây một bức tượng khổng lồ băng Mũ Rơm đã được xây dựng tại quê nhà của tác giả Oda.&nbsp;</p><p>Năm 2021 có thể nói là một năm đầy ắp các sự kiện của manga huyền thoại One Piece. Với những cột mốc đáng nhớ trong hành trình gần 30 năm qua của thương hiệu này như manga chap 1000, tập truyện thứ 100 hay anime tập 1000. Tất cả các sự kiện này đều nhận được sự yêu thích và ủng hộ của các fan trên toàn thế giới.&nbsp;</p><p>One Piece xuất hiện khắp mọi nơi, từ một kỳ thế vận hội lớn nhất thế giới như Olympic Tokyo 2021 cho đến những sự kiện cosplay, tranh vẽ tại Mỹ. Tất cả những điều này đều thể hiện được rằng One Piece đang ngày càng vươn tầm ra khỏi Nhật Bản và trở thành một bộ truyện mang tầm quốc tế, một manga thành công nhất của Nhật Bản trong hơn 20 năm qua.&nbsp;</p><p>Không chịu thua kém, tại quê nhà của tác giả Oda, \"cha đẻ\" nên huyền thoại One Piece, một bức tường khổng lồ dài 30m đã được xây dựng ở sân bay Aso Kumamoto. Không khó để thấy đây chính là những bức tượng đồng của băng Mũ rơm đã được xây dựng trong năm qua cũng trên quê nhà của Oda (còn thiếu Zoro và Jinbe).&nbsp;</p><p>Ngay lập tức thì các fan One Piece trên khắp thế giới đã bày tỏ sự ngạc nhiên và phấn khích với bức tường này. Hầu hết các độc giả đều cho rằng trong tương lai, đây chắc chắn sẽ là một nơi Check-in lý tưởng, nơi mà chúng ta có thể thỏa sức sáng tạo trong một thế giới tràn ngập One Piece.&nbsp;</p><p>Hiện tại thì 3 tập truyện tranh mới nhất của One Piece là 99,100, và sắp tới là 101 đang có sự gia tăng chóng mặt về số lượng bản in được tung ra thị trường. Với một arc Wano vô cùng hấp dẫn cộng thêm những hoạt động ý nghĩa như trên, 2022 sẽ là một năm hứa hẹn đại thành công cho tác giả Oda và bộ manga One Piece huyền thoại.</p><p>Các bạn là một fan One Piece, các bạn có muốn một lần được check-in tại địa điểm lý tưởng mà chúng tôi vừa đề cập ở trên hay không?</p>', 't71.jpg', '2022-06-07 02:21:02', '2022-06-06 19:21:02'),
(173712114, 'fffffffff', '<p>ddddddđ</p>', '280295497_5490926690918835_1668922559653211291_n.jpg', '2022-06-06 03:37:21', '2022-06-06 03:37:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `id` int(11) NOT NULL,
  `ten_nhanvien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `quequan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capbac` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`id`, `ten_nhanvien`, `gioitinh`, `ngaysinh`, `quequan`, `sdt`, `email`, `capbac`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thị Thùy', 'Nữ', '1989-10-04', 'Nguyễn Xá-Nhân Hòa-Mỹ Hào-Hưng Yên', '0986253821', 'thuynguyen@gmail.com', 'Bán hàng', '2022-06-05 11:08:16', '2022-06-05 04:08:16'),
(3, 'Lôi Tù', 'Nam', '2001-03-18', 'Yenmy-hungyen', '0866438518', 'loitu@gmail.com', 'Vệ sinh', '2022-06-06 09:36:59', '2022-06-06 02:36:59'),
(4, 'Trần Oánh', 'Nữ', '2001-05-10', 'Yenmy-hungyen', '08392748372', 'tranoanh@gmail.com', 'Kiểm kê', '2022-06-06 09:38:24', '2022-06-06 02:38:24'),
(5, 'Trương Vinh Hương', 'Nữ', '1999-10-04', 'Nguyễn Xá-Nhân Hòa-Mỹ Hào-Hưng Yên', '0986253821', 'vinhhuong@gmail.com', 'Bán hàng', '2022-06-06 09:38:57', '2022-06-06 02:38:57'),
(6, 'Trịnh Xương Đồ', 'Nam', '2001-01-15', 'Yenmy-hungyen', '0947382637', 'xuongdo@gmail.com', 'Bảo vệ', '2022-06-06 09:39:35', '2022-06-06 02:39:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_cung_cap`
--

CREATE TABLE `nha_cung_cap` (
  `id` int(11) NOT NULL,
  `ten_ncc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi_ncc` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`id`, `ten_ncc`, `diachi_ncc`, `email`, `sdt`, `created_at`, `updated_at`) VALUES
(1, 'Bandai Spirits', 'G-BASE Tamachi ,5-29-11,Shiba,Minato-ku, Tokyo,108-0014,Japan', 'Bandai @gmail.com', '024 3750294', '2022-06-06 20:59:26', '2022-06-06 13:59:26'),
(2, 'MiHoYo x Apex', 'Trụ sở tại Thượng Hải, Cộng hòa Nhân dân Trung Hoa', 'MiHoYo @gmail.com', '(028) 39103066', '2022-06-06 21:01:28', '2022-06-06 14:01:28'),
(3, 'MegaHouse', '433 Điện Biên Phủ, Phường 25, Quận Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', 'MegaHouse@gmail.com', '(028) 39103066', '2022-06-06 21:01:37', '2022-06-06 14:01:37'),
(4, 'Good Smile Company', 'trụ sở ở Matsudo, Chiba,Nhật bản', 'GSC@gmail.com', '09648359821', '2022-06-06 21:02:41', '2022-06-06 14:02:41'),
(3233125, 'Myethos', 'Chi nhánh tại Hai Bà Trưng,Hà Nội', 'Myethos@gmail.com', '098374834', '2022-06-06 21:03:51', '2022-06-06 14:03:51'),
(3646854, 'Kotobukiya', 'Kotobukiya Bldg., 4-5, Midori-cho, Tachikawa-shi, Tokyo 190-8542, Nhật Bản', 'Kotobukiya@gmail.com', '0876678678', '2022-06-06 21:04:45', '2022-06-06 14:04:45'),
(31934893, 'Intelligent System', '10 Daimotsu-cho Kamitoba Minami-ku Kyoto-shi Kyoto-fu 601-8121 Japan', 'ISS@gmail.com', '09473846543', '2022-06-06 21:05:27', '2022-06-06 14:05:27'),
(32623860, 'Riot Games', 'trụ sở chính đặt tại Tây Los Angeles, California', 'RiotGames@gmail.com', '08463746375', '2022-06-06 21:06:11', '2022-06-06 14:06:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_loai_sp` int(10) UNSIGNED DEFAULT NULL,
  `id_ncc` int(11) NOT NULL,
  `mota_sp` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `gia_km` float DEFAULT NULL,
  `so_luong` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `img3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `don_vi_tinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `name`, `id_loai_sp`, `id_ncc`, `mota_sp`, `unit_price`, `gia_km`, `so_luong`, `image`, `img2`, `img3`, `don_vi_tinh`, `new`, `created_at`, `updated_at`) VALUES
(15, 'Spy x Family - Yor Forger - Premium Chokonose Figure (SEGA)', 7, 1, '<p>Hãng sản xuất:&nbsp;<strong>SEGA</strong></p><p>Kích thước: 9cm</p><p>Chất liệu: ABS, PVC</p><p>Thời gian phát hành: Tháng 10 năm 2022</p>', 2000000, NULL, 25, 'spy-x-family-yor-forger-premium-chokonose-figure-sega-2.jpg', 'spy-x-family-yor-forger-premium-chokonose-figure-sega-3.jpg', 'spy-x-family-yor-forger-premium-chokonose-figure-sega-4.jpg', 'Bộ', 0, '2019-04-06 03:00:48', '2022-06-13 23:51:28'),
(31, 'Spy x Family - S.H.Figuarts Anya Forger (Bandai Spirits)', 11, 1, '<p>Hãng sản xuất:&nbsp;<strong>Bandai Spirits</strong></p><p>Kích thước: 8cm</p><p>Chất liệu: ABS, PVC</p><p>Thời gian phát hành: Tháng 10 năm 2022</p>', 1200000, NULL, 15, 'spy-x-family-shfiguarts-anya-forger-bandai-spirits-3.jpg', 'spy-x-family-shfiguarts-anya-forger-bandai-spirits-1.jpg', 'spy-x-family-shfiguarts-anya-forger-bandai-spirits-4.jpg', 'Bộ', 1, '2019-04-15 02:46:52', '2022-06-06 12:53:42'),
(34, 'Honkai Impact 3rd - Mei Raiden Herrscher of Thunder (miHoYo & Apex Innovation)', 7, 2, '<p>Manufacturer:&nbsp;<strong>MiHoYo x Apex</strong></p><p>Kích thước: cao 27cm</p><p>Tỉ lệ: 1/8</p><p>Chất liệu:&nbsp;ABS &amp; PVC</p><p>Thời gian phát hành: Tháng 4 năm 2022</p>', 4500000, NULL, 23, 'mihoyo-x-apex-honkai-impact-3rd-herrscher-of-thunder-1.jpg', 'mihoyo-x-apex-honkai-impact-3rd-herrscher-of-thunder-5.jpg', 'mihoyo-x-apex-honkai-impact-3rd-herrscher-of-thunder-9.jpg', 'Bộ', 1, '2019-04-22 00:41:04', '2022-06-06 12:52:49'),
(35, 'One Piece - Portrait of Pirates - Warriors Alliance - Sanji Soba Mask Ver. (MegaHouse)', 12, 3, '<p>Hãng sản xuất: <strong>MegaHouse</strong></p><p>Kích thước: cao 21.5cm</p><p>Tỉ lệ: 1/8</p><p>Thời gian phát hành: Tháng 1 năm 2022</p>', 4500000, NULL, 20, 'one-piece-portrait-of-pirates-warriors-alliance-sanji-soba-mask-ver-megahouse-9.jpg', 'one-piece-portrait-of-pirates-warriors-alliance-sanji-soba-mask-ver-megahouse-5.jpg', 'one-piece-portrait-of-pirates-warriors-alliance-sanji-soba-mask-ver-megahouse-10.jpg', 'Bộ', 1, '2019-05-05 06:21:03', '2022-06-06 12:56:12'),
(36, 'TianTong Studio - Tony Tony Chopper', 7, 3, '<p>Hãng sản xuất: <strong>MegaHouse</strong></p><p>Kích thước:</p><p>- Tỉ lệ 1/4: cao 63cm. Giới hạn 120</p><p>- Tỉ lệ 1/6: cao 43cm. Giới hạn 299</p><p>Thời gian phát hàng; Quý IV&nbsp;năm 2021</p>', 9500000, NULL, 40, 'tiantong-studio-tony-tony-chopper.jpg', 'tiantong-studio-tony-tony-chopper-1.jpg', 'tiantong-studio-tony-tony-chopper-2.jpg', 'Bộ', 1, '2019-05-05 06:23:08', '2022-06-06 12:57:48'),
(37, '[Pre-Order] Collab Redmi x Genshin Impact Klee - Tai Nghe True Wireless Redmi AirDots 3 Pro', 11, 2, '<p><strong>[Pre-Order] Collab Redmi x Genshin Impact Klee - Tai Nghe True Wireless Redmi AirDots 3 Pro&nbsp;</strong></p><p>Thời gian trả hàng: Tháng 8 năm 2022</p><p>Giá 1m8 khi đặt cọc trước 100%</p><p>Giá 2m khi đặt cọc 50%</p><p><strong>Redmi Airdots 3 Pro&nbsp;</strong>một phiên bản&nbsp;<strong>tai nghe không dây</strong>&nbsp;cải tiến hoàn toàn mới, đặc biệt nổi bật bởi công nghệ giảm tiếng ồn thông minh, độ trễ cực kì thấp và còn được hỗ trợ tính năng sạc không dây, thời lượng pin đến 28 giờ sử dụng.</p>', 1800000, NULL, 27, 'collab-redmi-x-genshin-impact-klee-tai-nghe-true-wireless-redmi-airdots-3-pro-3.jpg', 'collab-redmi-x-genshin-impact-klee-tai-nghe-true-wireless-redmi-airdots-3-pro-2.jpg', 'collab-redmi-x-genshin-impact-klee-tai-nghe-true-wireless-redmi-airdots-3-pro.jpg', 'Bộ', 1, '2019-05-05 06:26:17', '2022-06-06 12:58:55'),
(38, 'Genshin Impact - Nendoroid Venti (Good Smile Company)', 8, 4, '<p>Hãng sản xuất:&nbsp;<strong>Good Smile Company</strong></p><p>Kích thước: cao 10cm</p><p>Chất liệu:&nbsp;ABS &amp; PVC</p><p>Thời gian phát hành: Tháng 9&nbsp;năm 2022</p>', 1650000, NULL, 26, 'genshin-impact-nendoroid-venti-good-smile-company-8.jpg', 'genshin-impact-nendoroid-venti-good-smile-company-6 (1).jpg', 'genshin-impact-nendoroid-venti-good-smile-company-7.jpg', 'Bộ', 1, '2019-05-05 06:28:35', '2022-06-06 13:00:51'),
(40, 'Display Box for Genshin Impact: Klee Spark Knight Ver.', 11, 2, '<p>Kích thước: 25*25*22cm</p><p>Chất liệu:&nbsp;Acrylic</p>', 1800000, NULL, 20, 'display-box-for-genshin-impact-klee-spark-knight-ver-5 (1).jpg', 'display-box-for-genshin-impact-klee-spark-knight-ver-4.jpg', 'display-box-for-genshin-impact-klee-spark-knight-ver-8.jpg', 'kg', 1, '2019-05-09 00:33:58', '2022-06-06 13:02:40'),
(41, '[Đặt Trước] Genshin Impact - Đèn Ngủ Hutao Ghost Chính Hãng miHoYo', 11, 2, '<p>Thương hiệu:&nbsp;<strong>miHoYo</strong></p><p>Kích thước: 15cm*14.2cm*13.6cm</p><p>Chất liệu:&nbsp;Silicon thân thiện với môi trường</p><p>Thông số kĩ thuật: Chuôi sạc Micro USB, 3 độ sáng khác nhau</p><p>Thời gian phát hành: Tháng 4 năm 2022</p>', 850000, NULL, 20, 'xzdssw342rewr.PNG', 'sacxzcer5565474.PNG', 'sadsadasdxzczxcw.PNG', 'Bộ', 1, '2019-05-09 01:28:03', '2022-06-06 13:05:05'),
(42, 'Azur Lane - Taihou - 1/7 (Kotobukiya)', 7, 3646854, '<p>Manufacturer:&nbsp;<strong>Kotobukiya</strong></p><p>Kích thước: 28.5cm</p><p>Tỉ lệ: 1/7</p><p>Chất liệu: PVC, ABS</p><p>Thời gian phát hành: Tháng 10&nbsp;năm 2020</p>', 4500000, NULL, 30, 'azur-lane-taihou-1-7-kotobukiya.jpg', 'azur-lane-taihou-1-7-kotobukiya-4.jpg', 'azur-lane-taihou-1-7-kotobukiya-2.jpg', 'Bộ', 1, '2019-05-09 01:28:03', '2022-06-06 13:07:08'),
(43, 'Azur Lane - Laffey - F:Nex - 1/7 - UsaUsa Bride (FuRyu)', 10, 2, '<p>Manufacturer:&nbsp;<strong>Kotobukiya</strong></p><p>Kích thước: cao 24cm</p><p>Tỉ lệ: 1/7</p><p>Chất liệu: PVC, ABS</p><p>Thời gian phát hành:</p>', 7200000, NULL, 20, 'azur-lane-laffey-f-nex-1-7-usausa-bride-furyu.jpg', 'azur-lane-laffey-f-nex-1-7-usausa-bride-furyu-6.jpg', 'azur-lane-laffey-f-nex-1-7-usausa-bride-furyu-7.jpg', 'Bộ', 1, '2019-05-09 01:28:03', '2022-06-06 13:08:15'),
(46, 'Elden Ring - Melina - Figuarts mini (Bandai Spirits)', 8, 1, '<p>Hãng sản xuất:&nbsp;<strong>Bandai Spirits</strong></p><p>Kích thước: 9cm</p><p>Chất liệu: ABS, PVC</p><p>Thời gian phát hành: Tháng 10 năm 2022</p>', 650000, NULL, 34, 'elden-ring-ookami-no-senki-figuarts-mini-bandai-spirits.jpg', 'elden-ring-melina-figuarts-mini-bandai-spirits-1.jpg', 'elden-ring-melina-figuarts-mini-bandai-spirits-4.jpg', 'Bộ', 0, '2022-06-06 03:06:29', '2022-06-06 13:09:31'),
(323, 'Mô hình Figure Monkey D. Luffy thuyền trưởng băng mũ rơm', 7, 2, '<p>Tên nhân vật: Monkey D. Luffy&nbsp;</p><p>Series​: One piece&nbsp;</p><p>Chiều cao: 37 cm&nbsp;</p><p>Bộ sản phẩm gồm: nhân vật cơ bản&nbsp;</p><p>Chất liệu: PVC&nbsp;</p><p>Kiểu: cố định, không thể cử động&nbsp;</p><p>Sử dụng: Trang trí bàn làm việc, trưng bày, sưu tập, quà tặng… Sx : hàng nội địa Trung Quốc&nbsp;</p><p>Khách được xem hàng trước khi nhận hàng&nbsp;</p><p>Cam kết hàng đẹp như hình Mô hình được làm cực kỳ chi tiết, sắc nét, màu sơn đẹp, thể hiện được hết cái thần của nhân vật trong phim, truyện.</p>', 1400000, NULL, 20, 'luf1.jpg', 'luf2.jpg', 'luf3.jpg', 'Bộ', 0, NULL, '2022-06-06 06:55:25'),
(435, 'Mô Hình Trang Trí Bàn Học Nhân Vật Genshin Impact Kute', 11, 2, '<p>Chất liệu : Acrylic | Kỹ thuật in : In Offset | Kích thước : 10x15,5cm</p>', 50000, NULL, 52, 'mkg1.PNG', 'mkg2.PNG', 'mkg3.PNG', 'Bộ', 1, NULL, '2022-06-05 04:10:48'),
(674, 'Mô hình Figure Yae Sakura Shinen Sakimitama Ver. - Honkai impact', 7, 1, '<p>Tên nhân vật: Yae Sakura&nbsp;</p><p>Series​: Honkai impact&nbsp;</p><p>Chiều cao: 31 cm&nbsp;</p><p>Bộ sản phẩm gồm: nhân vật cơ bản&nbsp;</p><p>Chất liệu: PVC&nbsp;</p><p>Kiểu: cố định, không thể cử động&nbsp;</p><p>Bộ sản phẩm đầy đủ như hình Honkai Impact 3 dựa theo cốt truyện manga cùng tên, tiếp nối cốt truyện của Guns Girl, câu chuyện kể về hành trình mạo hiểm của Kiana, Raiden Mei và Bronya cùng chống chọi “Honkai” dưới sự lãnh đạo của sĩ quan chỉ Huy, cùng nhau giải cứu thế giới. Người chơi sẽ được trải nghiệm cực kỳ sống động và ngoạn mục, trải nghiệm toàn diện thế giới chiến đấu cùng các nữ chiến thần Valkyrie với các tính cách khác nhau, mang đến trải nghiệm chiến đấu conkai độc đáo. Mô hình được làm cực kỳ chi tiết, sắc nét, màu sơn đẹp, thể hiện được hết cái thần của nhân vật trong phim, truyện. |*Sử dụng: Trang trí bàn làm việc, trưng bày, sưu tập, quà tặng…&nbsp;</p><p>*Sx : hàng nội địa Trung Quốc&nbsp;</p><p>*Khách được xem hàng trước khi nhận&nbsp;</p><p>Cam kết hàng đẹp như hình</p>', 690000, NULL, 15, 'yae1.jpg', 'yae2.jpg', 'yae3.jpg', 'Cái', 0, NULL, '2022-06-12 06:24:31'),
(898, 'Mô hình figure Sasuke Itachi Susano FiguartsZERO - Naruto', 7, 3, '<p>Mô hình figure Sasuke Itachi Susano Figuarts ZERO - Naruto&nbsp;</p><p>Chất liệu: PVC |Chiều cao : 22 cm&nbsp;</p><p>*Sử dụng: Trang trí bàn làm việc, trưng bày, sưu tập, quà tặng…&nbsp;</p><p>*Sx : hàng nội địa Trung Quốc *Khách được xem hàng trước khi nhận *Cam kết hàng đẹp như hình Mô hình được làm cực kỳ chi tiết, sắc nét, màu sơn đẹp, thể hiện được hết cái thần của nhân vật trong phim, truyện.</p>', 1250000, NULL, 23, 'narsak1.jpg', 'narsak2.jpg', 'narsak3.jpg', 'Bộ', 0, NULL, '2022-06-12 06:25:02'),
(65435, 'Mô Hình Nendoroid 766 - Avenger Jeanne DArc (Alter)', 8, 3, '<p>Dòng sản phẩm : Nendoroid&nbsp;</p><p>Mã số Nendoroid: 766&nbsp;</p><p>Chất liệu: PVC&nbsp;</p><p>chiều cao : 10cm&nbsp;</p><p>Bộ sản phẩm gồm: nhân vật cơ bản và nhiều phụ kiện đi kèm có thể thay đổi theo ý thích Kiểu dáng : Mô hình cử động khớp và tạo dáng dễ dàng, thay đổi bộ phận linh hoạt. :heavy_check_mark: Có thể tạo nhiều kiểu dáng/tư thế cho mô hình. *Sử dụng: Trang trí bàn làm việc, trưng bày, sưu tập, quà tặng… *Sx : hàng nội địa Trung Quốc&nbsp;</p><p>*Khách được xem hàng trước khi nhận&nbsp;</p><p>*Cam kết hàng đẹp như hình Mô hình được làm cực kỳ chi tiết, sắc nét, màu sơn đẹp, thể hiện được hết cái thần của nhân vật trong phim, truyện.</p>', 330000, NULL, 16, 'Jeanne1.jpg', 'Jeanne2.jpg', 'Jeanne3.jpg', 'Bộ', 0, NULL, '2022-06-12 06:25:21'),
(93864, 'Mô Hình Caster/Merlin: Magus Of Flowers', 8, 3, '<p>Dòng sản phẩm : Nendoroid&nbsp;</p><p>Mã số Nendoroid: 970 |Chất liệu: PVC&nbsp;</p><p>chiều cao : 10cm&nbsp;</p><p>Bộ sản phẩm gồm: nhân vật cơ bản và nhiều phụ kiện đi kèm có thể thay đổi theo ý thích Kiểu dáng : Mô hình cử động khớp và tạo dáng dễ dàng, thay đổi bộ phận linh hoạt. :heavy_check_mark: Có thể tạo nhiều kiểu dáng/tư thế cho mô hình. *Sử dụng: Trang trí bàn làm việc, trưng bày, sưu tập, quà tặng… *Sx : hàng nội địa Trung Quốc&nbsp;</p><p>*Khách được xem hàng trước khi nhận&nbsp;</p><p>*Cam kết hàng đẹp như hình Mô hình được làm cực kỳ chi tiết, sắc nét, màu sơn đẹp, thể hiện được hết cái thần của nhân vật trong phim, truyện.</p>', 330000, NULL, 42, 'Merlin1.jpg', 'Merlin2.jpg', 'Merlin3.jpg', 'bộ', 1, NULL, '2022-06-12 06:25:48'),
(98463, 'PAIMON - GENSHIN IMPACT', 8, 2, '<p>Tên nhân vật: Paimon&nbsp;</p><p>Series​: Genshin impact&nbsp;</p><p>Chiều cao: 36 cm&nbsp;</p><p>Bộ sản phẩm gồm: nhân vật cơ bản&nbsp;</p><p>Chất liệu: PVC Kiểu: cố định, không thể cử động&nbsp;</p><p>*Sử dụng: Trang trí bàn làm việc, trưng bày, sưu tập, quà tặng… *Sx : hàng nội địa Trung Quốc&nbsp;</p><p>&nbsp;*Khách được xem hàng trước khi nhận&nbsp;</p><p>*Cam kết hàng đẹp như hình Mô hình được làm cực kỳ chi tiết, sắc nét, màu sơn đẹp, thể hiện được hết cái thần của nhân vật trong phim, truyện.</p>', 1350000, NULL, 24, 'paimon1.PNG', 'paimon2.PNG', 'paimon2.PNG', 'bộ', 0, NULL, '2022-06-12 06:26:15'),
(545362, 'Móc khoá character Genshin Impact', 11, 3, '<p>Chất liệu : nhựa cứng&nbsp;</p><p>Size từ 16-30cm tuỳ mẫu&nbsp;</p><p>*Sử dụng: Trang trí bàn làm việc, trưng bày, sưu tập, quà tặng, móc khóa…&nbsp;</p><p>*Sx : hàng nội địa Trung Quốc&nbsp;</p><p>*Khách được xem hàng trước khi nhận&nbsp;</p><p>*Cam kết hàng đẹp như hình - TẶNG KÈM GIÁ TRƯNG BÀY</p>', 35000, NULL, 33, 'mockhoacharg1.PNG', 'mockhoacharg2.PNG', 'mockhoacharg3.PNG', 'bộ', 1, NULL, '2022-06-12 06:26:35'),
(874934, 'Mô hình Figure Roronoa Zoro - One piece', 7, 2, '<p>Tên nhân vật: Zoro&nbsp;</p><p>Series​: One piece&nbsp;</p><p>Chiều cao: 37 cm&nbsp;</p><p>Bộ sản phẩm gồm: nhân vật cơ bản&nbsp;</p><p>Chất liệu: PVC Kiểu: cố định, không thể cử động&nbsp;</p><p>* Sử dụng: Trang trí bàn làm việc, trưng bày, sưu tập, quà tặng…&nbsp;</p><p>*Sx : hàng nội địa Trung Quốc&nbsp;</p><p>*Khách được xem hàng trước khi nhận&nbsp;</p><p>*Cam kết hàng đẹp như hình Mô hình được làm cực kỳ chi tiết, sắc nét, màu sơn đẹp, thể hiện được hết cái thần của nhân vật trong phim, truyện.</p>', 1500000, NULL, 35, 'zoro1.jpg', 'zoro2.jpg', 'zoro3.jpg', 'bộ', 0, NULL, '2022-06-12 06:27:03'),
(988645, 'Mô hình nhân vật Genshin Ganyu Follow the Moon', 7, 2, '<p>Chiều Cao ~22cm.&nbsp;</p><p>Ra mắt: 01/2023&nbsp;</p><p>Thương hiệu : Chính hãng miHoYo x Apex</p>', 2200000, NULL, 27, 'ganyu1.PNG', 'ganyu2.PNG', 'ganyu3.PNG', 'bộ', 1, NULL, '2022-06-12 06:27:21'),
(2186537, 'Mô hình figure Uchiha Itachi - Có LED', 7, 2, '<p>Tên nhân vật: Itachi&nbsp;</p><p>Series​: Naruto Chiều cao: 36cm&nbsp;</p><p>&nbsp;Bộ sản phẩm gồm: nhân vật cơ bản&nbsp;</p><p>Chất liệu: PVC&nbsp;</p><p>Kiểu: cố định, không thể cử động&nbsp;</p><p>*Sử dụng: Trang trí bàn làm việc, trưng bày, sưu tập, quà tặng…&nbsp;</p><p>&nbsp;*Sx : hàng nội địa Trung Quốc&nbsp;</p><p>*Khách được xem hàng trước khi nhận&nbsp;</p><p>*Cam kết hàng đẹp như hình Mô hình được làm cực kỳ chi tiết, sắc nét, màu sơn đẹp, thể hiện được hết cái thần của nhân vật trong phim, truyện.</p>', 1100000, NULL, 23, 'ita1.jpg', 'ita2.jpg', 'ita3.jpg', 'bộ', 1, NULL, '2022-06-12 06:27:56'),
(3266197, 'Mô Hình Akali K/DA Unlocked Statue [Chính Hãng Riot]', 12, 3233125, '<p>Hãng sản xuất: <strong>Riot Games</strong></p><p>Kích thước: cao 24.4cm</p><p>Chất liệu: PVC</p><p>Thời gian phát hành:&nbsp;Tháng 9&nbsp;năm 2020</p>', 2800000, NULL, 8, 'mo-hinh-akali-k-da-unlocked-statue-chinh-hang-riot.jpg', 'mo-hinh-akali-k-da-unlocked-statue-chinh-hang-riot-1.jpg', 'mo-hinh-akali-k-da-unlocked-statue-chinh-hang-riot-2.jpg', 'Bộ', 0, '2022-06-06 13:27:25', '2022-06-06 13:27:25'),
(3355725, 'FIDGET SPINNER KIM LOẠI SLENDER', 9, 1, '<p>Fidget Spinner Kim Loại Slender.</p><p>Thiết kế đẹp mặt, mỏng, nhẹ, thanh mảnh, cho cảm giác cầm tay rất thoải mái.<br>Trục mỗi cánh dài hơn bình thường đem lại hiệu ứng thị giác tuyệt vời.<br>Đặc biệt khi xoay ở tốc độ cao bạn sẽ cảm nhận được những cơn gió mát khẽ luồn lách qua kẽ tay.</p>', 120000, NULL, 54, '32423412ewq.PNG', 'dáe32423.PNG', 'e123432e32.PNG', 'Cái', 0, '2022-06-06 13:37:18', '2022-06-06 13:37:18'),
(3441286, 'Con quay đồ chơi Fidget SPINNER 3D ANIME Spinner', 9, 4, '<p>✔ Điểm đặc biệt tạo lên sự khác biệt của spiner đồ chơi 3D đó là khi vòng quay ở mức lớn sẽ tạo ra hiệu ứng chuyển động 3D như thật.</p><p>&nbsp;✔ Với nhiều hình ảnh anime trong các bộ truyện tranh nổi tiếng mà ai cũng đã từng hoặc đã xem đều biết, Con quay đồ chơi SPINNER giúp bạn giảm stress sau những giờ làm việc căng thẳng.&nbsp;</p><p>✔ Sự kết hợp tuyệt vời giữa đồ chơi và hình ảnh 3D đem đến cho bạn một trải nghiệm khác lạ và thú vị khi sử dụng.&nbsp;</p><p>✔ Nhỏ gọn vừa tay và hoạt ảnh phá cách, cùng với đó là không kể bất kỳ lứa tuổi nào...... sản phẩm là một món đồ chơi - một món quà thú vị dành cho bạn.&nbsp;</p><p>✔ Nhỏ gọn và không chiếm diện tích để cùng bạn đi khắp mọi nơi.&nbsp;</p><p>✔ Giải trí - giả tỏa căng thẳng mỗi khi học quá nhiều - - áp lực công việc, những lúc rảnh rỗi hoặc những khi đi chơi.......</p><p>✔ Chất liệu Đồ chơi cao cấp ACRYLIC an toàn với cơ thể.&nbsp;</p><p>✔ Trọng lượng: 23,2g&nbsp;</p><p>✔ Kích thước:8x8x4cm</p>', 54000, NULL, 32, '23423r32sđ.PNG', 'ádxzcxzq3.PNG', 'dsaf32423.PNG', 'Cái', 0, '2022-06-06 13:45:12', '2022-06-06 13:45:12'),
(3461637, 'ARTBOOK ATELIER SERIES: OFFICIAL CHRONICLE', 10, 1, '<p>Artbook Atelier Series: Official Chronicle</p><ul><li><strong>Số trang:</strong>&nbsp;272 pages</li><li><strong>Nhà phát hành:</strong>&nbsp;Udon Entertainment (7/6/2011)</li><li><strong>Ngôn ngữ:</strong>&nbsp;English</li><li><strong>Kích thước:&nbsp;</strong>8.1 x 0.8 x 11.6 inches</li></ul><p>The&nbsp;<i>Atelier&nbsp;</i>series has become a favorite of many RPG gamers, with its unique mix of alchemy and action set in a vibrant and magical fantasy world. Now the gorgeous artwork behind this long-running series is collected for all to enjoy. This volume collects character designs, promotional artwork, profile data, creator interviews, and more.</p><p><br>&nbsp;</p>', 1800000, NULL, 10, 'r23rewr24.PNG', '43253465474.PNG', '321424ew.PNG', 'Bộ', 0, '2022-06-06 13:48:46', '2022-06-06 13:48:46'),
(3513708, 'ARTBOOK MUSHIMARO ARTWORK COLLECTION', 10, 3233125, '<p><strong>Artbook Mushimaro Artwork Collection</strong></p><p><strong>Tác giả:</strong>&nbsp;Mushimaro<br><strong>Nhà phát hành:</strong>&nbsp;Ichijinsha<br><strong>Ngày phát hành:</strong>&nbsp;8/2014<br><strong>Kích thước:</strong>&nbsp;A4<br><strong>Số trang:</strong>&nbsp;239<br><strong>Ngôn ngữ:</strong>&nbsp;Japanese</p><p>If you’ve had a chance to play the card game&nbsp;<i><strong>Rage of Bahamut</strong></i>, you might recognize this art style -&nbsp;<strong>Mushimaro</strong>&nbsp;is an illustrator whose work has been seen all over the place! Thanks to publisher&nbsp;<strong>Ichijinsha</strong>, fans can take home this lovely&nbsp;<strong>art book</strong>&nbsp;which comes&nbsp;<strong>in Japanese</strong>&nbsp;with&nbsp;<strong>239 pages</strong>.</p><p>Inside, you’ll find&nbsp;<strong>gorgeous illustrations</strong>&nbsp;in&nbsp;<strong>great detail</strong>&nbsp;and&nbsp;<strong>lovely coloring</strong>&nbsp;unique only to Mushimaro. Prepare for&nbsp;<strong>beautiful women</strong>&nbsp;and&nbsp;<strong>fantasy themes</strong>&nbsp;as well!</p>', 2000000, NULL, 3, '12323214.PNG', '423r324532.PNG', '3123235432.PNG', 'Bộ', 0, '2022-06-06 13:53:05', '2022-06-06 13:53:05'),
(6742332, 'BLACK ROCK SHOOTER INEXHAUSTIBLE VER. 1/8', 8, 2, '<p>Black Rock Shooter inexhaustible Ver. 1/8&nbsp;</p><p>Nhân vật : Black Rock Shooter Series : Black Rock Shooter&nbsp;</p><p>Tỷ lệ : 1/8&nbsp;</p><p>Hãng sản xuất : Good Smile Company&nbsp;</p><p>Kích thước : 46 cm Phát hành : 5/2022</p>', 7900000, NULL, 32, 't1.PNG', 't2.PNG', 't3.PNG', 'bộ', 0, NULL, '2022-06-12 06:29:08'),
(31856204, 'Mô Hình Fire Emblem: Fuukasetsugetsu - Byleth - 1/7 (Intelligent Systems)', 7, 31934893, '<p>Manufacturer:&nbsp;<strong>Intelligent System</strong></p><p>Kích thước: cao 19.5cm</p><p>Tỉ lệ: 1/7</p><p>Chất liệu:&nbsp;ABS &amp; PVC</p><p>Thời gian phát hành: Tháng 2 năm 2023</p>', 6000000, NULL, 2, 'fire-emblem-fuukasetsugetsu-byleth-1-7-intelligent-systems.jpg', 'fire-emblem-fuukasetsugetsu-byleth-1-7-intelligent-systems-7.jpg', 'fire-emblem-fuukasetsugetsu-byleth-1-7-intelligent-systems-5.jpg', 'Bộ', 0, '2022-06-06 13:21:06', '2022-06-06 13:21:06'),
(32120797, 'Touhou Project - POP UP PARADE - Reimu Hakurei (Good Smile Company)', 7, 4, '<p>Hãng sản xuất:&nbsp;<strong>Good Smile&nbsp;Company</strong></p><p>Kích thước: 16.5cm</p><p>Chất liệu: ABS, PVC</p><p>Thời gian phát hành: Tháng 6&nbsp;năm 2022</p>', 1090000, NULL, 5, 'touhou-project-pop-up-parade-reimu-hakurei-good-smile-company.jpg', 'touhou-project-pop-up-parade-reimu-hakurei-good-smile-company-3.jpg', 'touhou-project-pop-up-parade-reimu-hakurei-good-smile-company-4.jpg', 'Bộ', 0, '2022-06-06 13:22:42', '2022-06-06 13:22:42'),
(32248269, 'League of Legends - Jinx by Myethos', 8, 3233125, '<p>Manufacturer:&nbsp;<strong>Myethos</strong></p><p>Tỉ&nbsp;lệ: 1/7</p><p>Kích thước: cao 34.5cm</p><p>Chất liệu: ABS &amp; PVC</p><p>Thời gian phát hành: Tháng 7 năm 2022</p>', 4500000, NULL, 3, 'league-of-legends-jinx-by-myethos.jpg', 'league-of-legends-jinx-by-myethos-12.jpg', 'league-of-legends-jinx-by-myethos-13.jpg', 'Bộ', 0, '2022-06-06 13:24:29', '2022-06-06 13:24:36'),
(32443756, 'Mô Hình Irelia Siêu Phẩm - PROJECT: Irelia Unlocked Statue', 12, 3233125, '<p>\"Let them come! This land will be their graveyard!\"</p><p>Special Edition PROJECT: Irelia is now Unlocked.</p><p><strong>Approximate Measurements:</strong></p><ul><li>PVC materials</li><li>Height: 11.2 in / 28.4 cm</li><li>Width: 7.5 in / 19.1 cm</li></ul><p>Image is a render and may not accurately represent the final product.</p>', 2800000, NULL, 7, 'mo-hinh-irelia-sieu-pham-project-irelia-unlocked-statue-chinh-hang-riot-games-5.jpeg', 'mo-hinh-irelia-sieu-pham-project-irelia-unlocked-statue-chinh-hang-riot-games-6.jpeg', 'mo-hinh-irelia-sieu-pham-project-irelia-unlocked-statue-chinh-hang-riot-games-7.jpeg', 'Bộ', 0, '2022-06-06 13:25:59', '2022-06-06 13:25:59'),
(33033894, 'FIDGET SPINNER KIM LOẠI 3 CÁNH NHỌN MÀU', 9, 3, '<p><strong>Lưu ý:</strong></p><ul><li>Đây là Hàng CÓ SẴN, bạn có thể mua ngay.</li><li>Nhận hàng và thanh toán tại shop hoặc thanh toán tại nhà COD</li><li>Thời gian ship từ 1-5 ngày làm việc, tùy vào địa chỉ của bạn.</li><li>Vui lòng xác nhận khi có shipper gọi đến, bạn yên tâm gửi $ trực tiếp cho shipper</li><li>GIÁ CÓ THỂ BIẾN ĐỘNG sau khi đã hết hàng.</li></ul>', 120000, NULL, 22, 'FS-KL-3-cánh-màu-KL2.jpg', 'Capture.PNG', 'c8b4c286d472e504527d2571d89dd0d0_tn.jpg', 'Cái', 0, '2022-06-06 13:31:17', '2022-06-06 13:31:17'),
(33258981, 'Con quay Spinner Kim loại giải Trí NARUTO ANIME MANGA', 9, 4, '<p>Con quay Spinner Kim loại giải Trí NARUTO ANIME MANGA<br>Spinner quay 2 - 7 phút tùy lực tay.<br>• Chất liệu: thép không gỉ<br>• Kích thước: ~6cm x 6cm<br>• Công Nghệ Vòng Bi Kép giúp spinner quay êm ( không tiếng động) không rung lắc, và cực kỳ lâu.<br>&nbsp;</p>', 55600, NULL, 12, '34223rsd.PNG', '41232r324.PNG', '24332543rertre.PNG', 'Cái', 0, '2022-06-06 13:35:00', '2022-06-06 13:35:00'),
(34853532, 'ARTBOOK TIME CAPSULE BY ANN', 10, 4, '<p><strong>Sản phẩm:</strong> Artbook Time Capsule by Ann</p><p><strong>Original Artwork</strong></p><p><strong>Họa sĩ:</strong> Ann</p><p><strong>Khổ:</strong>&nbsp;A4, 20 trang, full color</p><p><strong>Ngôn ngữ:</strong>&nbsp;Japanese<br>&nbsp;</p><p>Time is the theme of this new doujinshi Creator Ann, titled&nbsp;<i>Time Capsule</i>. Cute and energetic boys and girls are colorfully illustrated in soft colors, each with vivid characteristics and expressions; some are startled, worried, or laughing. All of the 20 pages of the book are fully colored and retain their freshness. This is a great book for reminiscing, recreating memories, and simply have a good time!</p><p><br>&nbsp;</p>', 350000, NULL, 32, 'tret43543.PNG', '3213123ewq.PNG', '42rr435.PNG', 'Bộ', 0, '2022-06-06 13:50:52', '2022-06-06 13:50:52'),
(35326117, 'ILLUSTRATION 2020', 10, 31934893, '<p><strong>Sản phẩm:</strong>&nbsp;Illustration 2020</p><p><strong>Nhà xuất bản :&nbsp;</strong>Shoeisha</p><p><strong>Phát hành:</strong>&nbsp;4/12/2019</p><p><strong>Số trang:</strong>&nbsp;320</p><p><strong>Kích thước:</strong>&nbsp;B5</p><p><strong>Ngôn ngữ:</strong>&nbsp;Tiếng Nhật</p><p>One hundred and fifty illustrators have been brought together to represent the “now” in the world of illustration for the 2020 edition of&nbsp;<i>Illustration</i>! Once again, there’s no shortage of artwork included that pulls inspiration from Japanese pop culture and how the world is changing, making it a time capsule of sorts for everything popular right now in the world of illustration.</p><p>This year’s edition features a cover illustration created by illustrator Daisuke Richard who is popular in Japan and abroad. The overall book design was handled by up-and-coming designer Tomoyuki Arima, and the 2020 text design has been updated for a more clear and impressive look.</p><p>It\'s 320 full-color pages are absolutely packed with artwork printed using the Brilliant Palette® printing technique so you can enjoy every subtle charm, color usage, and even brush stroke in each artist’s work. Also included is an interview with Hong Kong illustrator Little Thunder who has over 600,000 followers on Instagram and a talk with Daisuke Richard and Tomoyuki Arima about the production process of the book’s cover design. A must-have collection for any fan of Japanese illustration!</p>', 1500000, NULL, 4, '65654645.PNG', '432432432.PNG', '4353453.PNG', 'Bộ', 0, '2022-06-06 13:55:10', '2022-06-06 13:55:10'),
(35632612, 'BAKI ACTION FIGURE BAKI HANMA', 12, 3233125, '<p>Nhân vật : Baki Hanma</p><p>Series : Baki&nbsp;</p><p>Hãng sản xuất :&nbsp;Myethos</p><p>Kích thước : 17cm&nbsp;</p><p>Phát hành : 12/2022</p>', 4450000, NULL, 4, 'bk.PNG', 'bki1.PNG', 'bki43.PNG', 'Bộ', 0, '2022-06-06 13:58:21', '2022-06-06 13:58:21'),
(165657212, 'TriEagles Studio - Licensed Medusa', 7, 1, '<p>Kích thước:&nbsp;cao 59cm, rộng 40cm, sâu 42cm</p><p>Tỉ lệ: 1/4</p><p>Giới hạn: 899 bản</p><p>Thời gian vận chuyển dự kiến: Quý III năm 2022</p>', 25000000, NULL, 12, 'trieagles-studio-licensed-medusa.jpg', 'trieagles-studio-licensed-medusa-1.jpg', 'trieagles-studio-licensed-medusa-2.jpg', 'Bộ', 0, '2022-06-06 02:58:03', '2022-06-12 06:30:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `full_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `users_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `capquyen` int(11) NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `users_name`, `email`, `password`, `phone`, `address`, `image`, `capquyen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hồng Thiên', 'hongthien', 'hongthien@gmail.com', '1', '0983017992', 'Đa Lộc -Ân Thi-Hưng Yên', 'chag1.jpg', 0, '1', '2022-06-12 06:13:17', '2022-06-11 23:13:17'),
(2, 'Đỗ Trang', 'b2', 'dngchang@gmail.com', '2', '0983017991', 'Bình Nguyên-Đa Lộc-Ân Thi-Hưng Yên', 'chag2.jpg', 0, 'bWKdka3a0UR3Qu8Iu2wGYZrqafQnlzhk9O82dcsUlILBO0vIXS0zvog62m51', '2022-06-06 14:53:28', '2022-06-06 07:53:28'),
(3, 'Phương Vũ', 'phuongvu2222', 'phuongvu2222@gmail.com', '2112', '01628470872', 'Đa Lộc- Ân Thi-Hưng Yên', 'chag3.jpg', 0, NULL, '2022-06-06 14:56:37', '2022-06-06 07:56:37'),
(5, 'Byakuyas', 'b', 'Byakuyas@gmail.com', '1', '0983715373', 'Minh Châu-Yên Mỹ-Hưng Yên', 'chag4.jpg', 1, NULL, '2022-06-06 14:57:01', '2022-06-06 07:57:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills_ban`
--
ALTER TABLE `bills_ban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills_nhap`
--
ALTER TABLE `bills_nhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail_ban`
--
ALTER TABLE `bill_detail_ban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail_nhap`
--
ALTER TABLE `bill_detail_nhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_sp`
--
ALTER TABLE `loai_sp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenloai` (`tenloai`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_new`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `users_name` (`users_name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills_ban`
--
ALTER TABLE `bills_ban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235918883;

--
-- AUTO_INCREMENT cho bảng `bills_nhap`
--
ALTER TABLE `bills_nhap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `bill_detail_ban`
--
ALTER TABLE `bill_detail_ban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235659292;

--
-- AUTO_INCREMENT cho bảng `bill_detail_nhap`
--
ALTER TABLE `bill_detail_nhap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131631635;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223828485;

--
-- AUTO_INCREMENT cho bảng `loai_sp`
--
ALTER TABLE `loai_sp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173411588;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_new` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173712115;

--
-- AUTO_INCREMENT cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32623861;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165657213;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172330795;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
