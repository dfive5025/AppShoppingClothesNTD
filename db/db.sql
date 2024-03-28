-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 02, 2023 lúc 11:49 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dior`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `series_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `password` text NOT NULL,
  `admin_type` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin_accounts`
--

INSERT INTO `admin_accounts` (`series_id`, `user_name`, `password`, `admin_type`, `id`) VALUES
(1, 'hieu', '$2y$10$IV.lF3m2FC.AFRI7naEX9evHg7h9kpm2GigVVX.ZcOJz5w0lOnNhC', 'super', 1),
(2, 'admin', 'admin', 'super', 2),
(4, 'thao', '$2y$10$YOzDxn9irKkE96v0MceVR.DYrCmQWuXht6.wylx1Sp5YsyqTGUrQ2', 'admin', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giasp` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idsp`, `soluong`, `giasp`, `id`) VALUES
(52, 7, 1, 319200, 19),
(52, 8, 1, 449100, 20),
(52, 30, 1, 784000, 21),
(53, 10, 1, 499000, 22),
(53, 10, 1, 499000, 23),
(53, 12, 1, 399000, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_by`
--

CREATE TABLE `order_by` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `soluong` int(20) NOT NULL,
  `total_money` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `payment_methods` varchar(70) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `created_date` text NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `order_by`
--

INSERT INTO `order_by` (`order_id`, `user_id`, `soluong`, `total_money`, `status`, `payment_methods`, `note`, `email`, `sdt`, `diachi`, `created_date`, `updated_at`) VALUES
(52, 2, 3, 1602300, 'no', '1', '', 'tronghieuidol212@gmail.com', '0397823682', '192 Le Trong Tan, ThÃ¡i BÃ¬nh', '02-07-2023', 0),
(53, 2, 3, 1447000, 'no', '1', '', 'tronghieuidol212@gmail.com', '0397823682', '192 Le Trong Tan, Thai Binh', '02-07-2023', 2023);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `ngaynhap` date DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `gender` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `image` text NOT NULL,
  `phanloai` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `ngaynhap`, `price`, `quantity`, `gender`, `image`, `phanloai`, `sale`, `created_at`, `updated_at`) VALUES
(8, 'ÁO POLO VẢI DRY PIQUE NGẮN TAY', 'Áo Polo vải Pique thông hơi tốt, mềm mà vẫn lên form áo.\r\nÁo thiết kế form suông mặc thoải mái, phần', '2023-06-06', 499000, 1000, 'NAM', 'https://down-vn.img.susercontent.com/file/c6e5cc3d537e920ebe5d8904f606f723', 1, 10, '', ''),
(9, 'ÁO THUN CỔ TRÒN KẺ SỌC DÁNG RỘNG ', ' Thiết kế cổ thuyền hẹp mang đến phong cách đẹp mắt.\r\n- Tay áo lửng.\r\n- Dáng rộng, vai rũ.\r\n- Cấu tr', '2023-06-02', 399000, 500, 'Nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/461914/sub/vngoods_461914_sub4.jpg?width=750', 1, 0, '', ''),
(10, 'Áo Polo Vải Dry Pique Ngắn Tay', '- Vải pique được làm từ sự kết hợp giữa cotton chống vón và polyester tái chế để tạo nên kết cấu mềm', '2023-06-04', 499000, 500, 'NAM', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/459713/item/vngoods_61_459713.jpg?width=750', 1, 0, '', ''),
(11, 'Áo Thun Dáng Rộng Kẻ Sọc Tay Lỡ', '- Chất liệu áo thun 100% cotton bền đẹp.\r\n- Thiết kế đẹp mắt, cảm giác mượt mà.\r\n- Giữ nguyên dáng á', '2023-06-01', 399000, 500, 'NAM', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/457930/item/vngoods_69_457930.jpg?width=750', 1, 0, '', ''),
(12, 'Dragon Ball UT Áo Thun Ngắn Tay', 'Đây là một sự kiện từ thời niên thiếu của nhân vật chính, Son Goku.\r\nBản in mô tả cảnh Goku, một cậu bé sống trên núi Paoz, gặp Bulma lần đầu tiên và họ bắt đầu cuộc phiêu lưu tìm kiếm các viên ngọc rồng. Mặt trước của chiếc áo thun có hình in mô tả Bulma lấy ra một viên nang bí ẩn, mặt sau in hình Bulma và Goku đang cưỡi một chiếc mô tô đã xuất hiện. Biểu cảm ngạc nhiên trên khuôn mặt của Goku khi lần đầu tiên anh ấy lái mô tô thật ấn tượng.', '2023-06-04', 399000, 500, 'NAM', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/461874/sub/vngoods_461874_sub7.jpg?width=750', 1, 0, '', ''),
(13, 'DRY-EX Áo Thun Cổ Tròn Ngắn Tay', '- Kết cấu tự nhiên.\r\n- Công nghệ \'DRY-EX\'.\r\n- Đường cắt tiêu chuẩn không quá lỏng cũng không quá chật ở vai và eo.\r\n- Trọng lượng nhẹ và dễ dàng di chuyển.\r\n- Thích hợp cho làm trang phục thể thao và hàng ngày.', '2023-06-07', 399000, 1000, 'nữ', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/461910/item/vngoods_12_461910.jpg?width=750', 1, 20, '', ''),
(14, 'Áo Polo Dáng Ngắn Relax Ngắn Tay', '- Cotton jersey fabric with a subtle drape.\r\n- Cropped-length boxy silhouette.\r\n- Flat knit collar and buttons for classic vibes.\r\n- Basic 2-tone stripes.\r\n- Perfect for tennis or golf.', '2023-06-07', 499000, 1000, 'nữ', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/459199/item/vngoods_55_459199.jpg?width=750', 1, 0, '', ''),
(15, 'Áo Thun Gân Kẻ Sọc Cổ Tròn Tay Lỡ', '- Chất liệu thun gân cotton bền đẹp, co giãn cực tốt.\r\n- Đủ dày để mặc riêng.\r\n- Vải có đường gân mịn phù hợp với mọi phong cách.\r\n- Áo thun nửa tay có đường gân, form dáng ôm.\r\n- Một chiếc áo riêng hoàn hảo\r\n- Cổ tròn kiểu dáng đẹp, nhỏ gọn.\r\n- Sọc có độ dốc vừa phải để dễ dàng tạo kiểu.\r\n- Kết hợp tốt với mọi loại quần.', '2023-06-07', 299000, 500, 'nữ', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/458962/item/vngoods_00_458962.jpg?width=750', 1, 20, '', ''),
(16, 'AIRism Áo Khoác Khóa Kéo Chống UV Vải Mắt Lưới ', '- vải \'AIRism\' mịn màng.\r\n- với Công nghệ DRY khô nhanh, cool touch, Chống tia cực tím và các Chức năng khử mùi.\r\n- Được làm bằng Polyester tái chế.\r\n- Thiết kế bỏ túi.\r\n- Dây rút Được thêm vào để điều chỉnh nón áo.\r\n- Chiều dài Được thay đổi cho Kiểu dáng thoải mái.\r\n- Được Thiết kế để có thể đóng gói từ Túi phía sau, vì vậy nó dễ dàng nằm gọn trong Túi xách của bạn.\r\n- Thích hợp cho các hoạt động thể thao, giải trí hoặc mặc hằng ngày.', '2023-06-07', 699000, 500, 'nữ', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/456261/item/vngoods_09_456261.jpg?width=750', 1, 0, '', ''),
(17, 'Áo Nỉ Có Mũ Dài Tay Khóa Kéo giữ nhiệt', 'Xin lưu ý mã số nhận diện của sản phẩm có thể có sự khác biệt, kể cả khi đó là cùng một mặt hàng.\r\nVẢI\r\nThân: 100% Bông/ Bo: 86% Bông, 14% Polyeste/ Lớp Lót Mũ Trùm: 61% Bông, 39% Polyeste\r\nHƯỚNG DẪN GIẶT\r\nGiặt máy nước lạnh, giặt nhẹ\r\n-\r\n- Những hình ảnh sản phẩm có thể bao gồm những màu không có sẵn.', '2023-06-07', 799000, 600, 'nữ', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/419503/item/goods_09_419503.jpg?width=750', 1, 20, '', ''),
(18, 'AIRism Cotton Áo Thun In Họa Tiết Ngắn Tay', '- Chất liệu vải AIRism mịn màng như cotton.- Kết cấu cực kỳ mịn màng.- Với công nghệ DRY nhanh khô.- Họa tiết lấy cảm hứng từ các hoạt động ngoài trời với tay áo khối màu đậm.- Thiết kế thoải mái giúp tạo kiểu dễ dàng.', '2023-06-07', 249000, 1000, 'kids', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/457755/item/vngoods_57_457755.jpg?width=750', 1, 0, '', '2023-07-01 09:37:52'),
(19, 'AIRism Cotton Áo Thun In Họa Tiết Ngắn Tay', '- Chất vải cotton AIRism mềm mịn.- Họa tiết theo chủ đề ngoài trời.- Tay áo khối màu.', '2023-06-07', 249000, 1000, 'kids', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/457754/item/vngoods_69_457754.jpg?width=750', 1, 30, '', '2023-07-01 09:46:29'),
(20, 'Áo Polo Dry Vải Pique Ngắn Tay', '- Chất liệu vải pique mềm mại với công nghệ DRY.- Hình thêu đơn giản trước ngực.- Thiết kế áo polo cổ điển.- Kiểu dáng đơn giản.- Cổ và tay áo dệt kim có gân.- Có nút phía trước.', '2023-06-07', 399000, 500, 'kids', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/454509/item/vngoods_15_454509.jpg?width=750', 1, 40, '', '2023-07-01 09:48:50'),
(21, 'ÁO THUN SỌC NHỎ FORM RỘNG TAY LỠ ', 'Bộ sưu tập áo thun Sọc của shop đã về thêm 3 màu đây. Với chất vải cotton mề mại thấm hút mồ hôi tốt', '2023-06-03', 399000, 1000, 'Nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/457931/item/vngoods_12_457931.jpg?width=750', 1, 20, '', ''),
(22, 'Áo Parka Chống UV Bỏ Túi (3D Cut) (Chống Nắng)', '- Vải có bề mặt và kết cấu đẹp mắt nên có thể sử dụng để phối đồ thông thường. \r\n- Công nghệ chống tia cực tím.\r\n - Thiết kế có thể bỏ túi.\r\n - Áo chống thấm nước bền bỉ.\r\n * Vải được phủ một chất chống thấm nước nên hiệu quả kéo dài lâu hơn. Nhưng không phải là vĩnh viễn.\r\n - Thiết kế 3D hình hộp vừa vặn thoải mái ở thân, vai và tay áo.\r\n - Vòng bên trong bên trái để gắn túi đựng.\r\n - Các khối màu có điểm nhấn.\r\n - Dễ phối với các hoạt động ngoài trời thông thường hoặc nhẹ nhàng như cắm trại.\r\n *Sản phẩm không chống cháy hoặc chống cháy. Hãy thận trọng khi ở gần lửa.', '2023-07-01', 980000, 500, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/459616/item/vngoods_41_459616.jpg?width=750', 2, 0, '2023-07-01 14:38:17', '2023-07-01 16:38:10'),
(23, 'Áo Khoác Thoải Mái 2B', '- Chất vải nhẹ và co giãn.\r\n- Giặt bằng tay.\r\n- Tay áo được lót bằng vải co giãn thêm sự thoải mái.\r\n- Phù hợp với trang phục hằng ngày, giờ đây được trang bị thêm thắt lưng.\r\n- Một chiếc áo khoác đa năng với thiết kế cong mềm mại tự nhiên từ vai đến tay áo.', '2023-07-01', 1471000, 1000, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/449621/item/vngoods_69_449621.jpg?width=750', 2, 20, '2023-07-01 16:59:38', ''),
(24, 'Áo Khoác Giả Lông Cừu Kéo Khóa Dài Tay', '- Chất len nhẹ, ấm.\r\n- Được làm bằng lông cừu dày, ấm cúng.\r\n- Có thể giặt bằng máy, dễ chăm sóc.\r\n- Tay áo raglan rộng rãi giúp bạn dễ dàng kết hợp nhiều lớp trang phục khác.\r\n- Các mấu kéo dễ vận hành khi đeo găng tay.\r\n- Cổ áo cao và ống chống gió ở gấu áo và cổ tay áo giúp giữ ấm cho bạn.\r\n- Chúng tôi hướng đến góp phần giảm thiểu chất thải và tiêu thụ dầu. Trang phục được làm bằng chất liệu polyester tái chế là một phần của nỗ lực này.\r\nTỷ lệ chất liệu polyester tái chế được sử dụng là khác nhau tùy theo từng sản phẩm.', '2023-07-01', 686000, 1000, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/450195/item/vngoods_69_450195.jpg?width=750', 2, 0, '2023-07-01 17:13:04', ''),
(25, 'Áo Khoác Giả Lông Cừu Loại Dày Kéo Khóa Dài Tay', '- Lông cừu nhẹ và ấm cúng.\r\n- Cảm giác rộng rãi.\r\n- Kiểu dáng cơ bản linh hoạt.\r\n- Các mấu kéo dễ vận hành khi đeo găng tay.\r\n- Có thể giặt bằng máy để dễ chăm sóc.', '2023-07-06', 686000, 1500, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/450198/item/vngoods_08_450198.jpg?width=750', 2, 10, '2023-07-01 17:19:48', ''),
(26, 'Áo Parka Blocktech (3D Cut)', '- Chất liệu vải 2,5 lớp được hoàn thiện hơn với tính năng chống nước, hiệu suất chống gió và độ ẩm tuyệt vời. *Vải được phủ một chất chống thấm nước, Lớp phủ bên ngoài không có khả năng chống thấm vĩnh viễn. *Vải không hoàn toàn không thấm nước.\r\n- Dải băng dính bên trong giúp chắn gió và mưa.\r\n- Thiết kế phù hợp cho mọi dịp, thoải mái và dễ di chuyển.\r\n- Thiết kế 3D phần vai giúp bạn dễ dàng chuyển động cánh tay.\r\n- Điều chỉnh gấu áo với dây rút đầy phong cách.\r\n- Túi áo tiện dụng ở hai bên.\r\n- Một chiếc áo parka đa năng cho bạn mặc quanh năm.\r\n- Cổ tay áo có thể điều chỉnh.', '2023-07-01', 1471000, 500, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/453774/item/vngoods_03_453774.jpg?width=750', 2, 40, '2023-07-01 17:26:28', ''),
(27, 'Ultra Light Down Áo Khoác Siêu Nhẹ (3D Cut)', '- Vải taffeta xoắn mềm mại làm từ nylon nhẹ.\r\n- Lớp lót chống tĩnh điện.\r\n- Lớp phủ bền, không thấm nước.\r\n-750+ Fill Power * theo phương pháp đo lường IDFB\r\n-Trọng lượng siêu nhẹ.\r\n-Thiết kế có thể tháo rời. Bao gồm túi đựng riêng.\r\n- Thiết kế vừa vặn thoải mái để tạo kiểu đơn giản.\r\n- Kiểu dáng thời trang với lớp lót màu ton-sur-ton.\r\n- Túi áo có dây kéo và dễ sử dụng.\r\n- Khóa kéo phía trước để giữ ấm.\r\n- Đường cắt 3D giúp chuyển động ở phần vai dễ dàng, thiết kế tay áo raglan tạo vẻ ngoài đẹp mắt.\r\n- Lớp lót trên cổ áo phía trong tạo cảm giác mềm mại.\r\n- Một lớp áo khoác nhẹ và ấm áp để tạo kiểu hàng ngày.\r\n- Được cập nhật với thiết kế vừa vặn thoải mái làm cho sản phẩm có thể kết hợp với nhiều lớp áo hoặc là áo khoác ngoài.', '2023-07-01', 1668000, 1000, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/449631/item/vngoods_56_449631.jpg?width=750', 2, 20, '2023-07-01 18:15:20', ''),
(28, 'Quần Smart Pants Dài Đến Mắt Cá (họa tiết)', '- Chất thun co giãn 2 chiều.\r\n- Quần ôm vừa vặn với đường cắt côn đẹp mắt, dài đến mắt cá chân.\r\n- Chống nhăn sau khi giặt để dễ bảo quản.\r\n*Định hình lại quần sau khi giặt để phơi khô.\r\n- Nếp gấp ở giữa vẫn giữ nguyên hình dạng sau khi giặt.\r\n- Cạp quần sử dụng cùng loại vải với quần để tạo vẻ gọn gàng khi sơ vin áo.\r\n- Kỹ thuật may đặc biệt với đường chỉ gọn gàng.', '2023-07-02', 784000, 1000, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/455842/item/vngoods_69_455842.jpg?width=750', 3, 0, '2023-07-01 19:26:35', ''),
(29, 'Quần Smart Pants Dài Đến Mắt Cá (vải woollike)', '- Chất thun co giãn 2 chiều mặc rất thoải mái.\r\n- Kiểu dáng thanh lịch nhưng vẫn dễ dàng vận động.\r\n- Thiết kế côn, dài đến mắt cá chân với phom dáng ôm sát.\r\n- Chống nhăn để dễ chăm sóc. *Định hình lại quần sau khi giặt để phơi.\r\n- Lưng thun co giãn thoải mái với kiểu dáng lịch sự khi mặc áo vào.\r\n- Nếp gấp ở giữa giữ nguyên hình dạng sau khi giặt.\r\n- Đường kim và chỉ được lựa chọn cẩn thận để tạo nên vẻ ngoài thanh lịch.\r\n- Chúng tôi hướng đến góp phần giảm thiểu chất thải và tiêu thụ dầu. Trang phục được làm bằng chất liệu polyester tái chế là một phần của nỗ lực này.\r\nTỷ lệ chất liệu polyester tái chế được sử dụng là khác nhau tùy theo từng sản phẩm. Vui lòng kiểm tra thông tin tại phần \"Chất Liệu\" để biết thêm chi tiết.', '2023-07-02', 784000, 1000, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/455492/item/vngoods_69_455492.jpg?width=750', 3, 0, '2023-07-01 19:32:54', ''),
(30, 'Quần Smart Pants Dài Đến Mắt Cá (Vải Cotton)', '- Chất thun co giãn 2 chiều thoải mái.\r\n- Vải twill cotton được làm từ sợi mịn.\r\n- Quần ôm vừa vặn với đường cắt thon gọn đẹp mắt, dài đến mắt cá chân.\r\n- Đường may túi hai bên.\r\n- Lưng thun co giãn thoải mái mang lại vẻ cổ điển khi kết hợp cùng các loại áo.\r\n- Thích hợp cho phong cách giản dị hoặc thanh lịch.', '2023-07-02', 784000, 1000, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/452112/item/vngoods_31_452112.jpg?width=750', 3, 0, '2023-07-01 19:35:37', ''),
(31, 'AIRism Quần Lót Boxer Briefs Không Đường May', '- Made from \'AIRism\' with quick-drying DRY and Cool Touch functions.\r\n- Knit with a special design that prevents frayed edges.\r\n- Excellent 2-direction stretch for a smooth feel and superb comfort.\r\n- Completely seamless design without sewing.\r\n- The next generation of boxer briefs with an outstanding fit.\r\n- Updated contoured front for an improved fit.', '2023-07-02', 249000, 1000, 'nam', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/457675/item/goods_17_457675.jpg?width=750', 4, 0, '2023-07-01 19:37:40', ''),
(32, 'AIRism Quần Lót Boxer Briefs Không Đường May', '- Made from AIRism with quick-drying DRY and Cool Touch functions.\r\n- Knit with a special design that prevents frayed edges.\r\n- Excellent 2-direction stretch for a smooth feel and superb comfort.\r\n- Completely seamless design without sewing.\r\n- The next generation of boxer briefs with an outstanding fit.\r\n- Updated contoured front for an improved fit.', '2023-07-02', 249000, 1000, 'nam', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/456710/item/goods_03_456710.jpg?width=750', 4, 0, '2023-07-01 19:44:38', ''),
(33, 'AIRism Áo Tank Top Cotton', '- với các tính năng thoải mái co giãn, khô thoáng, cool touch và kiểm soát mùi.\r\n- hoàn hảo để mặc như một lớp ngoài.\r\n- \'AIRism\' Được UNIQLO và Toray cùng phát triển.', '2023-07-02', 244000, 500, 'nam', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/457484/item/goods_09_457484.jpg?width=750', 4, 0, '2023-07-01 19:46:56', ''),
(34, 'Áo Sơ Mi Cổ Mở Ngắn Tay', '- Vải bông và Rayon pha trộn với kết cấu mịn và treo lên vừa phải.\r\n- Cắt thoải mái với vai hơi rơi.\r\n- Họa tiết in hoa mờ.\r\n- Vừa vặn, rộng rãi có thể mặc riêng hoặc khoác bên ngoài.', '2023-07-02', 689000, 1000, 'nam', 'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/458354/item/vngoods_69_458354.jpg?width=750', 1, 0, '2023-07-02 09:02:36', '2023-07-02 11:39:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_kichco`
--

CREATE TABLE `product_kichco` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `kichco_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_kichco`
--

INSERT INTO `product_kichco` (`id`, `product_id`, `kichco_id`) VALUES
(6, 8, 1),
(7, 8, 2),
(8, 8, 3),
(9, 8, 4),
(10, 8, 5),
(11, 9, 1),
(12, 9, 2),
(13, 9, 3),
(14, 9, 4),
(15, 9, 5),
(16, 10, 1),
(17, 10, 2),
(18, 10, 3),
(19, 11, 1),
(20, 11, 2),
(21, 11, 3),
(22, 11, 4),
(23, 11, 5),
(24, 12, 1),
(25, 12, 2),
(26, 12, 3),
(27, 12, 4),
(28, 12, 5),
(31, 13, 1),
(32, 13, 2),
(33, 13, 3),
(34, 13, 4),
(35, 13, 5),
(42, 14, 1),
(43, 14, 2),
(44, 14, 3),
(45, 15, 1),
(46, 15, 2),
(47, 15, 3),
(48, 15, 4),
(49, 16, 1),
(50, 16, 2),
(51, 16, 3),
(52, 16, 4),
(53, 17, 1),
(54, 17, 2),
(55, 17, 3),
(56, 17, 4),
(57, 17, 5),
(63, 19, 1),
(64, 19, 2),
(65, 19, 3),
(66, 19, 4),
(67, 19, 5),
(72, 18, 1),
(73, 18, 2),
(74, 18, 3),
(75, 18, 4),
(76, 20, 1),
(77, 20, 2),
(78, 20, 3),
(79, 20, 4),
(80, 20, 5),
(81, 22, 1),
(82, 22, 2),
(83, 22, 3),
(84, 22, 4),
(85, 22, 5),
(86, 23, 1),
(87, 23, 2),
(88, 23, 3),
(89, 23, 4),
(90, 25, 1),
(91, 25, 2),
(92, 25, 3),
(93, 25, 4),
(94, 25, 5),
(95, 24, 1),
(96, 24, 2),
(97, 24, 3),
(98, 26, 1),
(99, 26, 2),
(100, 26, 3),
(101, 26, 4),
(102, 26, 5),
(103, 27, 1),
(104, 27, 2),
(105, 27, 3),
(106, 28, 1),
(107, 28, 2),
(108, 28, 3),
(109, 28, 4),
(110, 28, 5),
(111, 29, 1),
(112, 29, 2),
(113, 29, 3),
(114, 29, 4),
(115, 29, 5),
(116, 30, 1),
(117, 30, 2),
(118, 30, 3),
(119, 30, 4),
(120, 30, 5),
(121, 31, 1),
(122, 31, 2),
(123, 31, 3),
(124, 31, 4),
(125, 32, 1),
(126, 32, 2),
(127, 32, 3),
(128, 32, 4),
(129, 33, 1),
(130, 33, 2),
(131, 33, 3),
(132, 33, 4),
(133, 33, 5),
(134, 21, 1),
(135, 21, 2),
(136, 21, 3),
(137, 21, 4),
(138, 21, 5),
(161, 34, 1),
(162, 34, 2),
(163, 34, 3),
(164, 34, 4),
(165, 34, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `kichco` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id`, `kichco`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userr`
--

CREATE TABLE `userr` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `gender` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `userr`
--

INSERT INTO `userr` (`user_id`, `username`, `gender`, `phoneNumber`, `email`, `address`, `city`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Van Tan', 'Nữ', '01253658659', 'tanpro238@gmail.com', 'Quy Hop', 'Nghe An', '123456', '', ''),
(2, 'Nguyễn Trọng Hiếu', 'Nam', '0397823682', 'tronghieuidol212@gmail.com', '192 Le Trong Tan', 'Thai Binh', '123456', '', '2023-07-01 21:28:20'),
(4, 'nguyễn trọng hiếu', 'Nam', '0397823682', 'tronghieuidol@gmail.com', 'Hoa thám, quang bình , kiến xương', 'Thai Binh', '123456', '2023-06-22 08:08:03', '2023-07-01 21:28:10'),
(6, 'nguyễn trọng hiếu', 'Nam', '0397823682', 'tronghieuidol2@gmail.com', 'Hoa thám, quang bình , kiến xương', 'Thai Binh', '123', '2023-06-22 12:13:49', '2023-07-01 21:27:49'),
(7, 'Tân', 'Nam', '0398237657', 'Tan@gmail.com', 'Vinh', 'Nghe An', '1234567', '2023-06-22 13:58:39', '2023-07-01 21:28:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_by`
--
ALTER TABLE `order_by`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_kichco`
--
ALTER TABLE `product_kichco`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userr`
--
ALTER TABLE `userr`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `order_by`
--
ALTER TABLE `order_by`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `product_kichco`
--
ALTER TABLE `product_kichco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `userr`
--
ALTER TABLE `userr`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
