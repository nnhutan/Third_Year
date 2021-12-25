-- Chèn dữ liệu mẫu cho bảng `baove`
--
INSERT INTO `baove` (`e_id`, `vitri`) VALUES
(2, 'BAI_DO_XE_1'),
(9, 'CUA_PHU'),
(17, 'BAI_DO_XE_2'),
(18, 'BAI_DO_XE_1'),
(28, 'CUA_CHINH'),
(34, 'BAI_DO_XE_2');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `calamviec_bv`
--
INSERT INTO `calamviec_bv` (`e_id`, `calamviec`) VALUES
(2, 'T2_6H-12H|T5_12H_18H|CN_6H_12H'),
(9, 'T2_6H-12H|T5_12H_18H|CN_6H_12H'),
(17, 'T3_6H-12H|T6_12H_18H|T7_6H_12H|T4_6H_12H'),
(18, 'T3_6H-12H|T6_12H_18H|T7_6H_12H|T4_6H_12H'),
(28, 'T2_6H-12H|T5_12H_18H|CN_6H_12H'),
(34, 'T3_6H-12H|T6_12H_18H|T7_6H_12H|T4_6H_12H');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `danhmuc`
--
INSERT INTO `danhmuc` (`dm_id`, `tendanhmuc`) VALUES
(1, 'LAPTOP|GAMING|ASUS'),
(2, 'LOA_TAINGHE|THUONG_HIEU|APPLE'),
(3, 'CONSOLE|SONY_PLAYSTATION'),
(4, 'PC_GEARVN|TAM_TRUNG'),
(5, 'APPLE|MACBOOK'),
(6, 'LAPTOP|GAMING|ACER'),
(7, 'MANHINH|LG & MANHINH|22-inch'),
(8, 'MANHINH|LG & MANHINH|27-inch'),
(9, 'MANHINH|VIEWSONIC& MANHINH|22-inch');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `diachi_kh`
--
INSERT INTO `diachi_kh` (`kh_id`, `diachi`) VALUES
(1, '248 Võ Văn Tần, Thanh Xuân , Hà Nội'),
(1, '348 Võ Thị Tâm, Cầu Giấy, Hà Nội'),
(2, ' Số 06 Cẩm Bá Thước, Phường Lam Sơn, Thành phố Thanh Hoá, Tỉnh Thanh Hoá.'),
(2, '35 Đại lộ Lê Lợi, Phường Lam Sơn, TP Thanh Hóa'),
(3, 'Lô D12 Golden City 10, khối 1,, Phường Quán Bàu, Thành phố Vinh, Nghệ An'),
(4, 'Số 94, đường Phan Đình Phùng, thành phố Hà Tĩnh, tỉnh Hà Tĩnh'),
(5, 'Số 129 Trần Phú, Thị Trấn Hoàn Lão, Huyện Bố Trạch, Tỉnh Quảng Bình.'),
(6, 'Đội 4, Đại An Khê, Hải Thượng, Hải Lăng, Quảng Trị'),
(7, '459 Trần Phú, Khu 6, Linh Trung, Thủ Đức, TP HCM'),
(7, 'Số 17/2 Đường 14, Khu phố Gò Công, Phường Long Thạnh Mỹ, Thành phố Thủ Đức, Thành phố Hồ Chí Minh'),
(8, ' 6 Alexandre De Rhodes, Quận 1, TP.HCM'),
(9, '459 Trần Phú, Khu 4, Phường 1, Quận 3, TP HCM'),
(10, '234 Trần Thánh Tông, Khu phố 6, Phường 6, Quận 5, TP HCM');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `donhang`
--

INSERT INTO `donhang` (`dh_id`, `tenkh`, `tongtien_sp`, `diachi`, `ngaytao`, `giamgia`, `han_bh`, `dvvc_id`, `mgg_id`, `ghichu`) VALUES
(1, 'Nguyễn Văn Một', 43000000, '248 Võ Văn Tần, Thanh Xuân , Hà Nội', '2021-11-26', '0', '2022-11-26', 1, NULL, 'Giao hàng nhanh giúp em!'),
(2, 'Nguyễn Đình Hai', 47000000, 'Số 06 Cẩm Bá Thước, Phường Lam Sơn, Thành phố Thanh Hoá', '2021-11-25', '0', '2022-11-25', 2, NULL, 'Đóng gói kỹ giúp em!'),
(3, 'Đinh Tuấn Ba', 51000000, 'Lô D12 Golden City 10, khối 1,, Phường Quán Bàu, Thành phố Vinh, Nghệ An', '2021-11-24', '0', '2022-11-24', 1, NULL, 'Hàng dễ vỡ, xin nhẹ tay!'),
(4, 'Đoàn Văn Bốn', 55000000, 'Số 94, đường Phan Đình Phùng, thành phố Hà Tĩnh, tỉnh Hà Tĩnh', '2021-11-23', '0', '2022-11-23', 4, NULL, 'Love Database System!'),
(5, 'Trần Kiều Năm', 47000000, 'Số 129 Trần Phú, Thị Trấn Hoàn Lão, Huyện Bố Trạch, Tỉnh Quảng Bình.', '2021-11-22', '0', '2022-11-22', 3, 1, 'Giao trong giờ hành chính ạ!');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `donvicungcap`
--

INSERT INTO `donvicungcap` (`dvcc_id`, `tendonvi`, `fax`, `sdt`, `email`) VALUES
(1, 'TNHH Thành Phát', '1112223334', 987123654, 'a.cty@gmail.com'),
(2, 'TNHH Liên Tân', '1122334455', 123987456, 'b.cty@gmail.com'),
(3, 'TNHH Mai Hoàng', '242536473', 353425636, 'maihoang.cty@gmail.com');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `donvivanchuyen`
--

INSERT INTO `donvivanchuyen` (`dvvc_id`, `ten`, `fax`, `hotline`) VALUES
(1, 'GHTK', '011223345', '0123321456'),
(2, 'GHN', '0994477214', '01982377456'),
(3, 'ViettelPost', '011222424', '0122323251'),
(4, 'BestExpress', '0123242424', '0525324251');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `employee`
--

INSERT INTO `employee` (`e_id`, `cmnd`, `ho`, `dem`, `ten`, `ngaysinh`, `sdt`, `email`, `luong`, `chinhanh`) VALUES
(1, '044201001000', 'Đinh', 'Văn', 'An', '1999-11-03', '0123456700', 'dinhvana@gmail.com', 6000000, 'Hà Nội'),
(2, '044201001001', 'Nguyễn', 'Văn', 'Ba', '1998-08-03', '0123456701', 'nguyenvanb@gmail.com', 5500000, 'Đà Nẵng'),
(3, '044201001002', 'Trần', 'Thị', 'Cúc', '2001-07-21', '0123456702', 'tranthic@gmail.com', 6000000, 'Hồ Chí Minh'),
(4, '044201001003', 'Hoàng', 'Kiều', 'Dung', '2000-02-03', '0123456703', 'hoangkieud@gmail.com', 7000000, 'Hà Nội'),
(5, '044201001004', 'Phan', 'Mỹ', 'Em', '1997-06-03', '0123456704', 'phanmye@gmail.com', 5500000, 'Đà Nẵng'),
(6, '044201001005', 'Hồ', 'Thanh', 'Phương', '2001-09-23', '0123456705', 'hothanhf@gmail.com', 6500000, 'Hồ Chí Minh'),
(7, '044201001006', 'Trần', 'Huyền', 'Giang', '2002-01-01', '0123456706', 'tranhuyeng@gmail.com', 7000000, 'Hà Nội'),
(8, '044201001007', 'Lê', 'Khánh', 'Hoà', '2003-01-17', '0123456707', 'lekhanhh@gmail.com', 7500000, 'Đà Nẵng'),
(9, '044201001008', 'Mai', 'Hoài', 'Anh', '1997-05-26', '0123456708', 'maihoaij@gmail.com', 6000000, 'Hồ Chí Minh'),
(10, '044201001009', 'Đinh', 'Kỳ', 'Kha', '1996-11-08', '0123456709', 'dinhkyk@gmail.com', 7500000, 'Hà Nội'),
(11, '044201001010', 'Lưu', 'Văn', 'Lai', '1998-10-20', '0123456710', 'luuvanl@gmail.com', 6000000, 'Đà Nẵng'),
(12, '044201001011', 'Đào', 'Văn', 'Tuấn', '2000-11-21', '0123456711', 'daovanm@gmail.com', 8000000, 'Hồ Chí Minh'),
(13, '044201001012', 'Vũ', 'Tuấn', 'Nam', '1996-07-09', '0123456712', 'vutuann@gmail.com', 8500000, 'Hà Nội'),
(14, '044201001013', 'Nguyễn', 'Hoài', 'Phương', '1999-08-15', '0123456712', 'nguyenhoaip@gmail.com', 6500000, 'Đà Nẵng'),
(15, '044201001014', 'Trần', 'Minh', 'Quân', '2002-05-26', '0123456714', 'tranminhq@gmail.com', 6500000, 'Hồ Chí Minh'),
(16, '044201001015', 'Hồ', 'Hoài', 'Oanh', '1999-06-14', '0123456715', 'hohoaio@gmail.com', 6000000, 'Hà Nội'),
(17, '044201001016', 'Nguyễn', 'Văn', 'Sơn', '1998-08-07', '0123456716', 'nguyenvans@gmail.com', 5500000, 'Đà Nẵng'),
(18, '044201001017', 'Dương', 'Văn', 'Dân', '2001-09-21', '0123456717', 'duongvanz@gmail.com', 6000000, 'Hồ Chí Minh'),
(19, '044201001018', 'Lê', 'Thành', 'Vũ', '1997-11-08', '0123456718', 'lethanhv@gmail.com', 7000000, 'Hà Nội'),
(20, '044201001019', 'Nguyễn', 'Đình', 'Anh', '1998-08-12', '0123456719', 'nguyenvanb@gmail.com', 6500000, 'Đà Nẵng'),
(21, '044201001020', 'Trần', 'Kiều', 'Trang', '2000-06-29', '0123456720', 'trankieuc@gmail.com', 6500000, 'Hồ Chí Minh'),
(22, '044201001021', 'Nguyễn', 'Công', 'Trọng', '1998-02-28', '0123456721', 'nguyencongx@gmail.com', 6500000, 'Hà Nội'),
(23, '044201001022', 'Đinh', 'Thị', 'Uyên', '1999-11-13', '0123456722', 'dinhthiu@gmail.com', 7500000, 'Đà Nẵng'),
(24, '044201001023', 'Lại', 'Văn', 'Huy', '2002-10-21', '0123456723', 'laivanw@gmail.com', 7500000, 'Hồ Chí Minh'),
(25, '044201001024', 'Lê', 'Tấn', 'Long', '1999-01-15', '0123456724', 'letani@gmail.com', 8000000, 'Hà Nội'),
(26, '044201001025', 'Đinh', 'Đăng', 'Quang', '1998-12-03', '0123456725', 'dinhdangq@gmail.com', 7500000, 'Đà Nẵng'),
(27, '044201001026', 'Dương', 'Thị', 'Minh', '2002-10-11', '0123456726', 'tranthic@gmail.com', 6500000, 'Hồ Chí Minh'),
(28, '044201001027', 'Lê', 'Văn', 'Trung', '1997-04-04', '0123456727', 'levanl@gmail.com', 5500000, 'Hà Nội'),
(29, '044201001028', 'Nguyễn', 'Đình', 'Lân', '1996-08-09', '0123456728', 'nguyendinhln@gmail.com', 7500000, 'Đà Nẵng'),
(30, '044201001029', 'Nguyễn', 'Thành', 'Trung', '2001-07-28', '0123456729', 'nguyenthanhv@gmail.com', 7000000, 'Hồ Chí Minh'),
(31, '044201001030', 'Đinh', 'Thế', 'An', '1999-12-12', '0123456730', 'dinhthea@gmail.com', 6500000, 'Hà Nội'),
(32, '044201001031', 'Nguyễn', 'Tiến', 'Hùng', '2001-03-03', '0123456731', 'nguyentienhung@gmail.com', 6500000, 'Đà Nẵng'),
(33, '044201001032', 'Trần', 'Hoài', 'Trang', '2001-10-02', '0123456732', 'tranhoait@gmail.com', 8000000, 'Hồ Chí Minh'),
(34, '044201001033', 'Lê', 'Đức', 'Vũ', '1996-11-07', '0123456733', 'leduvu@gmail.com', 5000000, 'Hà Nội'),
(35, '044201001034', 'Nguyễn', 'Quang', 'Khánh', '1999-04-12', '0123456734', 'nguyenquangk@gmail.com', 6500000, 'Đà Nẵng'),
(36, '044201001035', 'Đinh', 'Kỳ', 'Nam', '2001-05-16', '0123456735', 'dinhkyv@gmail.com', 7000000, 'Hồ Chí Minh');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng 'nguoiphuthuoc`
INSERT INTO `nguoiphuthuoc`(`e_id`, `hoten`, `ngaysinh`, `moiquanhe`, `gioitinh`, `sodienthoai`) VALUES 
('2','Nguyễn Văn Bốn','1968-10-03','cha','nam','0374344843'),
('9','Trần Ba','1958-08-03','cha','nam','037422223'),
('17','Nguyễn Văn Trung','1969-10-03','cha','nam','0372424582'),
('18','Dương Văn Dan','1976-10-03','cha','nam','0374444443'),
('28','Lê Văn Van','1966-04-09','cha','nam','0371111111'),
('34','Phan Hoài Nhan','1968-01-29','vợ','nữ','0372222222')
-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `giohang`
--

INSERT INTO `giohang` (`gh_id`, `tongtien`) VALUES
(1, 43000000),
(2, 47000000),
(3, 51000000),
(4, 55000000),
(5, 470000),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 75000000);

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `giohang_gom_sp`
--

INSERT INTO `giohang_gom_sp` (`gh_id`, `sp_id`, `soluong`) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1),
(2, 4, 1),
(3, 5, 1),
(3, 6, 1),
(4, 7, 1),
(4, 8, 1),
(5, 9, 1),
(5, 10, 1),
(10, 15, 1),
(10, 19, 1),
(10, 20, 1);

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`kh_id`, `username`, `password`, `ho`, `ten`, `sdt`, `ermai`, `gh_id`) VALUES
(1, 'kh1', '1', 'Nguyễn Văn ', 'Một', '0111111111', 'nvmot@gmail.com', 1),
(2, 'kh2', '1', 'Nguyễn Đình', 'Hai', '0222222222', 'ndhai@gmail.com', 2),
(3, 'kh3', '1', 'Đinh Tuấn', 'Ba', '0333333333', 'dtba@gmail.com', 3),
(4, 'kh4', '1', 'Đoàn Văn', 'Bốn', '0444444444', 'dvbon@gmail.com', 4),
(5, 'kh5', '1', 'Trần Kiều', 'Năm', '0555555555', 'tknam@gmail.com', 5),
(6, 'kh6', '1', 'Lê Khánh', 'Sáu', '0666666666', 'lksau@gmail.com', 6),
(7, 'kh7', '1', 'Nguyễn Đức', 'Bảy', '0777777777', 'ndbay@gmail.com', 7),
(8, 'kh8', '1', 'Mai Anh', 'Tám', '0888888888', 'matam@gmail.com', 8),
(9, 'kh9', '1', 'Hồ Văn', 'Chín', '0999999999', 'hvchin@gmail.com', 9),
(10, 'kh10', '1', 'Phan Văn', 'Mười', '0101010101', 'pvmuoi@gmail.com', 10);

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `code`, `phantram`, `toida`) VALUES
(1, 'FREESHIP15', 15, 150000),
(2, 'FREESHIP30', 30, 300000),
(3, 'FREESHIPMAX', 40, 200000),
(4, 'LOVEDATABASESYSTEM', 100, 100000);

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `mausac_sp`
--

INSERT INTO `mausac_sp` (`sp_id`, `mausac`) VALUES
(1, 'xám'),
(2, 'đen'),
(2, 'xám'),
(3, 'xám'),
(4, 'xám'),
(5, 'bạc'),
(5, 'đen'),
(5, 'đỏ'),
(6, 'đen'),
(6, 'đỏ'),
(7, 'đen'),
(8, 'đen'),
(9, 'đen'),
(9, 'trắng'),
(10, 'trắng'),
(11, 'bạc'),
(12, 'đen'),
(13, 'đen'),
(14, 'đen'),
(19, 'bạc'),
(20, 'bạc');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`e_id`, `khuvuc`) VALUES
(1, 'BAN_HANG'),
(3, 'KY_THUAT'),
(4, 'KHO'),
(5, 'TIEP_THI'),
(6, 'TIEP_THI'),
(11, 'BAN_HANG'),
(15, 'THU_NGAN'),
(16, 'THU_NGAN'),
(20, 'KY_THUAT'),
(21, 'KY_THUAT'),
(22, 'KHO'),
(27, 'BAN_HANG'),
(31, 'TIEP_THI'),
(32, 'THU_NGAN'),
(35, 'KY_THUAT');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `quanly`
--

INSERT INTO `quanly` (`e_id`, `username`, `password`) VALUES
(7, 'manager1_HCM', 'password1'),
(8, 'manager2_HCM', 'password2'),
(10, 'manager1_DN', 'password1'),
(12, 'manager2_DN', 'password2'),
(13, 'manager1_HN', 'password1'),
(14, 'manager2_HN', 'password2'),
(19, 'SUPERVISOR_HN', 'password'),
(23, 'SUPERVISOR_HCM', 'password'),
(24, 'SUPERVISOR_DN', 'password'),
(25, 'QUANKHO_HCM', 'password'),
(26, 'QUANKHO_DN', 'password'),
(29, 'QUANKHO_HN', 'password'),
(30, 'GIAMDOC', 'password'),
(33, 'PHOGIAMDOC', 'password'),
(36, 'CEO', 'password');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`sp_id`, `tensp`, `thoiluong_bh`, `mota`, `cauhinh`, `gia`, `giakm`, `SL`, `kt`, `kl`, `dm_id`, `dvcc_id`) VALUES
(1, 'Asus vivobook K3500PC', 18, 'Asus VivoBook Pro 15 OLED K3500PC i7 (L1046T) mang phong cách tối giản mà hiện đại cùng bộ cấu hình mạnh mẽ đến từ con chip Intel Gen 11, đảm bảo đáp ứng tốt các tác vụ học tập, văn phòng đến đồ họa chuyên nghiệp cũng như giải trí hàng ngày.\r\nHiệu năng vượt trội, mượt mà các tác vụ đồ họa phức tạp\r\nCon chip Intel Core i7 Tiger Lake 11370H cấu trúc 4 nhân 8 luồng cung cấp sức mạnh hiệu năng mạnh mẽ xử lý êm mượt các công việc văn phòng trên các công cụ Word, Excel, PowerPoint,... đến các tác vụ thiết kế đồ họa nặng với tốc độ xung nhịp cơ bản 3.30 GHz và đạt tối đa Turbo Boost 4.8 GHz.\r\n\r\nBộ nhớ RAM 16 GB chuẩn DDR4 (On board) tốc độ Bus RAM 3200 MHz đa nhiệm cực mượt mà nhiều cửa sổ ứng dụng mở cùng lúc mà không lo giật lag, đơ máy, đứng máy, bạn yên tâm vừa làm việc vừa lướt web tìm kiếm thông tin cũng như nghe nhạc giải trí hoàn hảo.', 'CPU:i711370H3.3GHz|\r\nRAM:16 GBDDR4 (On board)3200 MHz|\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2TB)|\r\nMàn hình:15.6\"Full HD (1920 x 1080)|\r\nCard màn hình:Card rời RTX 3050 4GB|\r\nCổng kết nối:1 x USB 3.22 x USB 2.0HDMIJack tai nghe 3.5 mmThunderbolt 4 USB-C|\r\nĐặc biệt:Có đèn bàn phím|\r\nHệ điều hành:Windows 10 Home SL|\r\nThiết kế:Vỏ kim loại|\r\nKích thước, trọng lượng:Dài 359.8 mm - Rộng 235.3 mm - Dày 19.9 mm - Nặng 1.65 kg|\r\nThời điểm ra mắt:2021|', 21000000, 20999999, 15, '359.8x235.3x19.9', 1.65, 1, 1),
(2, 'Asus vivobook Pro 15 OLED M3500QC R5', 20, 'Đại diện cho thế hệ sản phẩm tân tiến, Asus VivoBook Pro 15 OLED M3500QC R5 5600H (L1105T) không những được thiết kế thời thượng, mà còn sở hữu cấu hình đáng kinh ngạc, hứa hẹn sẽ mang đến cho bạn những trải nghiệm khó quên.\r\nNâng tầm trải nghiệm trong cả hình ảnh và âm thanh\r\nAsus VivoBook Pro 15 sở hữu màn hình viền mỏng 15.6 inch với độ phân giải Full HD (1920 x 1080) cùng màn hình OLED mang đến những hình ảnh rõ nét có độ tương phản và ánh sáng cao, đồng thời có khả năng tạo màu đen sâu hơn với góc nhìn được rộng mở, cho bạn những trải nghiệm trọn vẹn nhưng vẫn giúp tiết kiệm điện năng tối đa.', 'CPU:Ryzen 55600 H3.3GHz|\r\nRAM: 8 GBDDR4 (On board)3200 MHz|\r\nỔ cứng: 512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2TB)|\r\nMàn hình:15.6\"Full HD (1920 x 1080) OLED|\r\nCard màn hình:Card rờiRTX 3050 4GB|\r\nCổng kết nối:1 x USB 3.22 x USB 2.0HDMIJack tai nghe 3.5 mmUSB Type-C|\r\nĐặc biệt:Có đèn bàn phím|\r\nHệ điều hành:Windows 10 Home SL|\r\nThiết kế:Vỏ nhựa - nắp lưng bằng kim loại|\r\nKích thước, trọng lượng:Dài 359.8 mm - Rộng 235.3 mm - Dày 19.9 mm - Nặng 1.65 kg|\r\nThời điểm ra mắt:2021|', 22000000, 21999999, 35, '359.8x235.3x19.9', 1.85, 1, 1),
(3, 'Asus VivoBook A515EP i5 1135G7 (BN334T)', 12, 'Laptop Asus VivoBook A515EP i5 (BN334T) là chiếc laptop đa năng phù hợp với đa dạng người dùng bởi nó thuộc phân khúc tầm trung nhưng lại đem đến trải nghiệm hiệu năng khá ấn tượng từ chip Intel thế hệ 11 mạnh mẽ, thỏa mãn mọi nhu cầu học tập, làm việc và giải trí.\r\nThiết kế tinh tế, tối giản\r\nLaptop Asus VivoBook A515EP sở hữu vẻ ngoài sang trọng và tươi sáng bằng nắp lưng kim loại với độ dày 17.9 mm và khối lượng 1.8 kg, tính di động cao, một trong những chiếc laptop mỏng nhẹ, tiện dụng. Phần thân máy tạo nên từ chất liệu nhựa giúp giảm thiểu khối lượng máy nhưng vẫn giữ được nét thẩm mỹ và tinh tế đến từng bo góc.\r\n\r\nLaptop được thiết kế gọn nhẹ, tối giản nhưng không đánh mất khả năng bền bỉ và chắn chắn, phù hợp mang đi mọi nơi phục vụ cho công việc học tập văn phòng, cho người sử dụng cảm giác dễ dàng thoải mái.\r\n\r\nAsus VivoBook A515EP i5 1135G7 (BN334T) - Thiết kế\r\n\r\nBảo mật vân tay được tích hợp trên bàn di chuột nhằm tăng khả năng bảo mật an toàn cho người dùng và tiện lợi mở khóa máy chỉ với một chạm vân tay.\r\n\r\nAsus VivoBook A515EP i5 1135G7 (BN334T) - Vân tay\r\n\r\nThiết kế bàn phím tinh tế với kiểu bàn phím Fullsize, diện tiếp xúc đủ rộng và độ nảy phím tốt đem đến cảm giác gõ phím êm ái và dễ chịu phù hợp trong suốt quá trình làm việc lâu dài mà không để lại dấu bám vân tay hay mồ hôi, là một điểm nổi bật của chiếc laptop này.\r\n\r\nAsus VivoBook A515EP i5 1135G7 (BN334T) - Bàn phím\r\n\r\nNgoài ra máy còn trang bị một cổng kết nối USB Type-C truyền dữ liệu một cách nhanh chóng, 2 cổng USB 2.0, 1 cổng USB 3.1, HDMI kết nối dễ dàng với các màn hình thiết bị khác.\r\n\r\nAsus VivoBook A515EP i5 1135G7 (BN334T) - Cổng kết nối\r\n\r\nHỗ trợ chuẩn không dây Wi-Fi 6 AX201 cùng Bluetooth 5.0 mang lại trải nghiệm đường truyền ổn định, mượt mà trong từng tác vụ làm việc học tập online từ xa trên các ứng dụng Google Meet, Zoom,...\r\n\r\nCấu hình mạnh mẽ, hiệu năng ổn định, giải trí tối ưu\r\nLaptop Asus VivoBook A515EP i5 (BN334) mang cấu hình ổn định đến từ bộ xử lý CPU Intel Core i5 Tiger Lake 1135G7 hiện đại, đem đến hiệu năng tốt, có thể sử dụng mượt mà các tác vụ văn phòng như: Word, Excel, Power Point,...\r\n\r\nHỗ trợ RAM 8 GB DDR4 dễ dàng sử dụng song song nhiều tác vụ với tốc độ mượt mà tiện nghi trong công việc và học tập, không gây nhiều trở ngại và khó khăn ảnh hưởng nghiêm trọng. Ngoài ra còn hỗ trợ đến 24 GB để nâng cao trải nghiệm hơn nữa nếu người dùng có nhu cầu.\r\n\r\nAsus VivoBook A515EP i5 1135G7 (BN334T) - Cấu hình\r\n\r\nCard đồ họa rời NVIDIA GeForce MX330 2 GB tạo nên sức mạnh hiệu quả và mượt mà sử dụng phần mềm đồ họa cơ bản như chỉnh sửa hình ảnh, làm poster, banner và chơi game giải trí đồ họa trung bình như: LOL, FIFA, PUBG,...\r\n\r\nAsus VivoBook A515EP i5 1135G7 (BN334T) - Card đồ họa\r\n\r\nLaptop này còn được trang bị ổ cứng SSD 512 GB NVMe PCIe và hỗ trợ khe cắm HDD SATA nâng cao tốc độ xử lý, tiết kiệm thời gian và hiệu quả công việc cải thiện rõ rệt.\r\n\r\nAsus VivoBook A515EP i5 1135G7 (BN334T) - SSD\r\n\r\nHình ảnh sắc nét cùng âm thanh chất lượng\r\nMàn hình 15.6 inch có độ phân giải Full HD (1920 x 1080) hiển thị hình ảnh sắc nét, tươi mới đến từng chi tiết qua từng khung hình phim ảnh giải trí, đắm chìm trong không gian ảo hoàn hảo.\r\n\r\nTấm nền IPS cùng màn hình 100% sRGB và độ sáng 300 nits mang đến hình ảnh sống động với màu sắc chính xác, tươi mới ở mọi góc độ rộng đến 178 độ, chất lượng hình ảnh không bị bóp méo khi nhìn từ hướng nghiêng.\r\n\r\nAsus VivoBook A515EP i5 1135G7 (BN334T) - Hình ảnh\r\n\r\nCông nghệ Audio by Harman/Kardon hài hòa giữa âm cao và âm trầm, đem đến độ chi tiết chính xác, lọc tạp âm tốt cho bạn những phút giây thư giãn với âm thanh chất lượng, sống động.\r\n\r\nAsus VivoBook A515EP i5 1135G7 (BN334T) - Âm thanh\r\n\r\nLaptop Asus VivoBook A515EP i5 (BN334T) là chiếc laptop đáng sở hữu trong phân khúc tầm trung với cấu hình ổn định, thiết kế hiện đại, tinh tế đáp ứng mọi nhu cầu học tập, làm việc và giải trí đa năng.\r\n\r\n', 'CPU:\r\n\r\ni51135G72.4GHz\r\nRAM:\r\n\r\n8 GBDDR4 2 khe (1 khe 8GB onboard + 1 khe trống)3200 MHz\r\nỔ cứng:\r\n\r\nSSD 512 GB NVMe PCIeHỗ trợ khe cắm HDD SATA\r\nMàn hình:\r\n\r\n15.6\"Full HD (1920 x 1080)\r\nCard màn hình:\r\n\r\nCard rờiMX330 2GB\r\nCổng kết nối:\r\n\r\n2 x USB 2.0HDMIJack tai nghe 3.5 mmUSB 3.1USB Type-C\r\nHệ điều hành:\r\n\r\nWindows 10 Home SL\r\nThiết kế:\r\n\r\nVỏ nhựa - nắp lưng bằng kim loại\r\nKích thước, trọng lượng:\r\n\r\nDài 359 mm - Rộng 235 mm - Dày 17.9 mm - Nặng 1.8 kg\r\nThời điểm ra mắt:\r\n\r\n2020', 22000000, 21999999, 5, '359.8x235.3x20', 1.65, 1, 2),
(4, 'Asus VivoBook A515EP i5 (BN544T)', 2, 'Laptop Asus VivoBook A515EP i5 (BN544T) gây ấn tượng bởi sự đẳng cấp đến từ thiết kế thanh lịch, sang trọng cùng hiệu năng vượt bậc nhờ vào con chip Intel thế hệ 11 mạnh mẽ, đáp ứng đầy đủ mọi nhu cầu của người dùng từ tác vụ văn phòng đến đồ họa - kỹ thuật.\r\nChinh phục mọi ánh nhìn với phong cách tối giản, đoan trang\r\nLớp vỏ nhựa cứng cáp cùng nắp lưng bằng kim loại bền bỉ và sắc bạc sang trọng đã làm cho chiếc laptop Asus VivoBook trở nên nổi bật hơn bao giờ hết dù ở không gian văn phòng hay những quán cafe đông đúc. Bề dày 17.9 mm và trọng lượng 1.8 kg cho phép bạn cất gọn máy vào một góc balo và linh hoạt di chuyển đến mọi nẻo đường.', 'CPU:\r\n\r\ni51135G72.4GHz\r\nRAM:\r\n\r\n8 GBDDR4 2 khe (1 khe 8GB onboard + 1 khe trống)3200 MHz\r\nỔ cứng:\r\n\r\nSSD 512 GB NVMe PCIeHỗ trợ khe cắm HDD SATA\r\nMàn hình:\r\n\r\n15.6\"Full HD (1920 x 1080)\r\nCard màn hình:\r\n\r\nCard rờiMX330 2GB\r\nCổng kết nối:\r\n\r\n2 x USB 2.0HDMIJack tai nghe 3.5 mmUSB 3.1USB Type-C\r\nHệ điều hành:\r\n\r\nWindows 10 Home SL\r\nThiết kế:\r\n\r\nVỏ nhựa - nắp lưng bằng kim loại\r\nKích thước, trọng lượng:\r\n\r\nDài 359 mm - Rộng 235 mm - Dày 17.9 mm - Nặng 1.8 kg\r\nThời điểm ra mắt:\r\n\r\n2021', 25000000, 24999999, 7, '360x235.3x19.9', 1.55, 1, 3),
(5, 'Bluetooth AirPods 2 Apple MV7N2', 12, 'Acer nitro đời thứ 1Thiết kế đơn giản, thời trang và nhỏ gọn.\r\nTrang bị chip H1 hoàn toàn mới, cho tốc độ kết nối, chuyển đổi giữa các thiết bị nhanh chóng.\r\nKích hoạt nhanh trợ lý ảo Siri bằng cách nói \"Hey, Siri\".\r\nCó thể sử dụng nghe nhạc lên đến 5 giờ (âm lượng 50%) cho mỗi một lần sạc đầy.\r\nTích hợp công nghệ sạc nhanh hiện đại. Sạc nhanh 15 phút có thể nghe nhạc 3 giờ (âm lượng 50%).\r\nSử dụng song song với hộp sạc có thể dùng được lên đến 24 giờ.\r\nTính năng nhận cuộc gọi, kích hoạt Siri, nghe hoặc tạm dừng đoạn nhạc đang phát.\r\nSản phẩm chính hãng Apple, nguyên seal 100%.\r\nLưu ý: Thanh toán trước khi mở seal.', 'Pin: Dùng 5 giờ - Sạc 2 giờ|\r\nCổng sạc:Lightning|\r\nTương thích:Android, iOS (iPhone)|\r\nỨng dụng kết nối:Siri|\r\nTiện ích:Có mic thoại|\r\nĐiều khiển bằng:Cảm ứng chạm|\r\nHãng:Apple.|', 2990000, 2890000, 1, '40x40x12', 0.123, 2, 1),
(6, 'Acer Nitro 5 Gaming AN515 57 5831 i5', 2, 'Laptop Acer Nitro 5 Gaming AN515 57 5831 i5 (NH.QDGSV.003) là thế hệ laptop gaming mới của nhà Acer có nhiều thay đổi trong thiết kế. Hiệu năng vẫn giữ vững phong độ, tự tin mang đến cho game thủ trải nghiệm chơi game cực đã. \r\nThiết kế mạnh mẽ chuẩn gaming \r\nChiếc laptop này mang đến cảm giác cực hầm hố thể hiện sự mạnh mẽ trên từng đường nét với gam màu đen tuyền, các góc cạnh cứng cáp. Vỏ máy được làm từ nhựa cao cấp đem đến khả năng chịu lực tốt, máy có độ dày khoảng 23.9 mm và trọng lượng 2.2 kg, không quá nặng khi cho vào balo để di chuyển đối với một chiếc máy tính gaming 15.6 inch. Mặt lưng của phiên bản mới này được tô điểm thêm bằng những đường cắt góc cạnh tựa như những tia sét trên nền đen nhám, tạo cảm giác khí thể mỗi khi mở nắp máy.', 'CPU:\r\n\r\ni511400H2.7GHz\r\nRAM:\r\n\r\n8 GBDDR4 2 khe (1 khe 8GB + 1 khe rời)3200 MHz\r\nỔ cứng:\r\n\r\n512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1TB)Hỗ trợ khe cắm HDD SATA (nâng cấp tối đa 2TB)Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1TB)\r\nMàn hình:\r\n\r\n15.6\"Full HD (1920 x 1080)144Hz\r\nCard màn hình:\r\n\r\nCard rờiRTX 3060 6GB\r\nCổng kết nối:\r\n\r\n3 x USB 3.2HDMIJack tai nghe 3.5 mmLAN (RJ45)USB Type-C\r\nĐặc biệt:\r\n\r\nCó đèn bàn phím\r\nHệ điều hành:\r\n\r\nWindows 10 Home SL\r\nThiết kế:\r\n\r\nVỏ nhựa\r\nKích thước, trọng lượng:\r\n\r\nDài 363.4 mm - Rộng 255 mm - Dày 23.9 mm - Nặng 2.2 kg\r\nThời điểm ra mắt:\r\n\r\n2021', 31390000, 31000000, 3, '63.4x255x23.9', 2.2, 1, 3),
(7, 'GVN Titan M', 20, '\"Khung xương\" của GVN Titan M - H510M\r\nTrước hết GVN Titan M được trang bị Mainboard H510M được thiết tối ưu nhằm đem lại hiệu năng ổn định nhất cho bộ nhớ giúp người sử dụng có thể khai thác triệt để sức mạnh của các CPU Intel. \r\n\r\nVới những thiết tối ưu nhằm đem lại hiệu năng ổn định nhất cho bộ nhớ giúp người sử dụng khai thác triệt để sức mạnh của các CPU Intel.\r\n\r\nRAM Gigabyte Memory DDR4 \r\nTrang bị Gigabyte Memory DDR4 với dung lượng 8GB được hỗ trợ (BUS) ở mức 2666MHz.\r\n\r\n\r\nCPU Pentium G6405 có chuẩn bộ nhớ DDR4 với xung nhịp bus 2666MHz.Chuẩn RAM phổ biến nhất hiện nay, mang đến dung lượng băng thông tối đa 37.5GB/s, cao hơn đến 50% so với DDR3.\r\n\r\nChơi game mượt mà với GT 1030', 'Mainboard	MSI H510M BOMBER	36 tháng\r\nCPU	Intel Pentium G6405 / 4MB / 4.1GHz / 2 Nhân 4 Luồng / LGA 1200	36 tháng\r\nRAM	Kingston HyperX Fury Black 1x8GB bus 2666	36 tháng\r\nVGA	INNO3D GeForce GT 1030 2GB (N1030-1DDV-E6BL)	36 tháng\r\nHDD	Có thể tùy chọn Nâng cấp	24 tháng\r\nSSD	Lexar NS100 RB 2.5\'\' SATA3 128GB	36 tháng\r\nPSU	Deepcool DN450 - 80 Plus	36 tháng\r\nCase	XIGMATEK AERO 2F', 9700000, 8590000, 22, '2300x3600x150', 2, 4, 1),
(8, 'GVN Assassin M', 36, 'GVN Assassin M\r\nGVN Assassin M được trang bị Mainboard H510M được thiết tối ưu nhằm đem lại hiệu năng ổn định nhất cho bộ nhớ giúp người sử dụng có thể khai thác triệt để sức mạnh của các CPU Intel. \r\n\r\nVới những thiết tối ưu nhằm đem lại hiệu năng ổn định nhất cho bộ nhớ giúp người sử dụng khai thác triệt để sức mạnh của các CPU Intel.', 'Mainboard	Mainboard ASUS PRIME A320M-E	36 Tháng\r\nCPU	AMD Athlon 3000G / 5MB / 3.5GHz / 2 nhân 4 luồng / AM4	36 Tháng\r\nRAM	Gigabyte Memory DDR4 1x8GB bus 2666	36 Tháng\r\nVGA - Card đồ họa	GIGABYTE GeForce GTX 1050 Ti D5 4GB	36 Tháng\r\nHDD	Có thể tùy chọn Nâng cấp	24Tháng\r\nSSD	SSD PNY CS900 120G 2.5\" Sata 3	36 Tháng\r\nPSU	Deepcool DN450 - 80 Plus	36 Tháng\r\nCase 	XIGMATEK AERO 2F	12 Tháng', 11090000, 11850000, 6, '160x3600x200', 4.5, 4, 2),
(9, 'Sony Playstation 4 Slim 1TB MegaPack 3', 12, 'Máy chơi game Sony Playstation 4 Slim có kích thước nhỏ gọn hơn nhiều so với phiên bản ban đầu, ít chiếm diện tích hơn và đem lại sự tinh tế cho căn phòng của bạn. Lớp vỏ được phủ nhựa matte màu đen nhám chống bám vân tay, giúp thiết bị luôn mới khi sử dụng thời gian dài.\r\n\r\n\r\n\r\nChơi được các tựa game AAA có đồ họa khủng nhờ engine đồ họa AMD Radeon\r\nMáy chơi game Sony PS4 Slim ở hữu engine đồ họa AMD Radeon mạnh mẽ giúp cho các game thủ chơi được các tựa gảm có đồ họa khủng với FPS cao. Chiếc máy chơi game này sẽ mang đến những hình ảnh sắc nét, sống động, chân thực hơn, nhanh chóng hòa mình vào những trận game kịch tính như God Of War, Red Dead Redemption 2,...', 'Hãng sản xuất	Sony\r\nDòng điện vào	AC 100 - 240V, 50/60Hz\r\nCổng/Khe cắm	HDMI (4K/HDR), cổng OPTICAL, Ethernet, USB 3.1, AUX\r\nKích thước	295 × 55 × 327 mm\r\nTrọng lượng	4.4 kg\r\nCPU	AMD Jaguar 8 nhân xung nhịp 2.1GHz\r\nGPU	4.2 TFLOP AMD Radeon (36CU, 911MHz)\r\nBluetooth	Bluetooth® 4.0\r\nRAM	8GB GDDR5 + 1GB', 8990000, NULL, 19, '160x3600x200', 3.8, 3, 1),
(10, 'Sony Playstation 5 Standard Edition', 18, 'Thiết kế tinh tế\r\nSony đã tạo ra CUỘC CÁCH MẠNG VỀ THIẾT KẾ cho hệ máy chơi game PlayStation 5 ( hay còn gọi tắt là PS5 ). Bỏ đi thiết kế phẳng trên phiên bản tiền nhiệm, máy console thế hệ mới của Sony sở hữu những đường cong mềm mại đối xứng dọc thân máy và bo tròn tại các góc.\r\n\r\nLogo mạ chrome được cách điệu tại góc trái, nổi bật trên nền vỏ trắng thay vì đen nhám như thế hệ trước. Hai đường led xanh lam độc đáo trên phần tản nhiệt càng khiến PS5 toát lên nét đẹp đầy tinh tế, chắc chắn đây sẽ là điểm nhấn cho góc giải trí của bạn.\r\n\r\nCấu hình mạnh mẽ với CPU và GPU đến từ AMD\r\nSony PlayStation 5 được trang bị vi xử lý do chính AMD sản xuất với công nghệ Zen 2 với 8 nhân và 16 luồng cùng mức xung nhịp đa lên đến 3.5GHz.\r\n\r\nPS5 sử dụng GPU được thiết kế theo kiến trúc RDNA 2 độc quyền của AMD. Không chỉ thế, Sony còn tích hợp thêm card đồ họa tùy biến với những tính năng vô cùng độc đáo. Sự kết hợp phần cứng trên hệ máy console lần này cho phép người dùng giải trí với độ phân giải cao hơn, số khung hình/giây cũng vượt trội so với phiên bản trước. ', NULL, 17000000, NULL, 0, '38x130x200', 2, 3, 1),
(11, 'MacBook Pro 16 2021 M1 Max 32GB 1TB Silver', 20, '\r\nApple Macbook Pro 16 (Apple M1) là sản phẩm MacBook mới nhất và mạnh mẽ nhất tới từ “Táo Khuyết”. Kế thừa những tinh hoa từ đời MacBook tốt nhất cùng với những nâng cấp. Hiệu năng mà chiếc máy này mang lại sẽ đủ sức để có thể “gánh vác” được những công việc multimedia nặng nhất hiện nay.\r\n\r\nThiết kế lưng máy phẳng, màn hình XDR Retina 16 inch\r\nMacbook Pro 16 inch 2021 (MK1H3SA/A) sẽ có màn hình kích thước 16 inch và sử dụng công nghệ màn hình Liquid Retina XDR tiên tiến. Tấm nền tốt nhất với độ phân giải lên tới 3.456 x 2.234 pixel, công nghệ ProMotion 120Hz, độ sáng lên tới 1600 nits, độ tương phản lên tới 1.000.000:1 và hỗ trợ 1 tỷ màu, qua đó giúp cho những công việc thiết kế đồ họa hay giải trí trở nên tốt hơn. Mỗi màn hình được sản xuất, cân chỉnh tại nhà máy với các tiêu chuẩn chuyên nghiệp nhất.', 'CPU:	Apple M1 Pro, 200GB/s memory bandwidth\r\nRAM:	16 GB\r\nỔ cứng:	512 GB SSD\r\nMàn hình:	14.2 inch, Liquid Retina XDR display (3024 x 1964)\r\nCard màn hình:	Card tích hợp, 14 core-GPU\r\nCổng kết nối:	Jack tai nghe 3.5 mm, 3 x Thunderbolt 4 USB-C, HDMI\r\nHệ điều hành:	Mac OS\r\nThiết kế:	Vỏ kim loại nguyên khối\r\nThời điểm ra mắt:	10/2021', 119900000, NULL, 5, '359.8x235.3x20', 1.4, 5, 2),
(12, 'Màn hình LG 22MN430M-B 22\" IPS 75Hz FreeSync', 18, 'LG 22MN430M-B là một mẫu màn hình hướng đến đối tượng là dân văn phòng, đáp ứng được những nhu cầu cơ bản, cho bạn một khung nhìn để làm việc, cũng như xem phim, chơi game với một mức giá bình dân nhất có thể. Nếu bạn đang quan tâm về mẫu màn hình này thì hãy cùng tham khảo một số điểm sáng của nó ngay sau đây nhé.\r\n\r\nGóc nhìn thoải mái\r\nTấm nền IPS được sử dụng trên chiếc màn hình này có độ phủ màu đạt trên 72% dải dài màu CIE 1931, tuy không phải là quá tốt nhưng vẫn đủ để đáp ứng những nhu cầu cơ bản như làm việc, với game, giải trí. Góc nhìn siêu rộng của tấm nền IPS cũng giúp hình ảnh không bị biến màu theo góc nhìn, bạn sẽ không phải chỉnh góc màn hình.\r\n\r\n\r\nTrọn vẹn khung ảnh\r\nMẫu màn hình LG này tương thích với công nghệ chống xé hình FreeSync của AMD giúp đồng bộ tần số quét của màn hình với giúp cho từng khung hình xuất ra được đồng một với các lượt quét của màn hình để cho bạn những hình ảnh trọn vẹn hơn, hạn chế tối đa hiện tượng xé hình.\r\n\r\nĐáp ứng thời gian thực\r\nTính năng Dynamic Action Sync sẽ giúp màn hình máy tính giảm được độ trễ tín hiệu đầu vào xuống mức tối thiểu, từ đó mà game thủ sẽ nhận được những hình ảnh từ chiến trường ảo với tốc nhanh nhất có thể, giúp bạn nhìn thấy trước phản ứng trước đối thủ. Đối với một game thủ, ngoài sức mạnh phần cứng và tốc độ đường truyền thì độ trễ màn hình chính là thứ quyết định.', 'Kích thước màn hình: 21.5\"\r\n    Tấm nền: IPS\r\n    Gam màu (CIE1931): 72%\r\n    Độ sâu màu (Số màu): 16,7 triệu màu\r\n    Kích thước điểm ảnh (mm): 0.24795x0.24795 \r\n    Thời gian đáp ứng hình ảnh (GTG): 5ms (Nhanh hơn) \r\n    Tần số quét: 75 Hz\r\n    Tỷ lệ màn hình: 16:9 \r\n    Độ phân giải: 1920 x 1080 \r\n    Độ sáng: 250 (điển hình), 200 (tối thiểu) cd/m2\r\n    Độ tương phản: 1000:1(typical)\r\n    Góc nhìn: 178 / 178 \r\n    Loại màn hình: Chống lóa mắt\r\n\r\nHDMI: Có x 1\r\nD-Sub: Có x 1 \r\nCổng hiển thị: Không \r\nĐầu ra tai nghe: Có', 3850000, 3750000, 20, '21,9\" x 16,6\"x 7,2', 1.87, 7, 3),
(13, 'Màn hình LG 27MP60G-B 27\" IPS 75Hz FreeSync chuyên game', 12, 'Màn hình IPS Full HD\r\nMàu sắc chân thực ở góc rộng. Màn hình LG với công nghệ IPS làm nổi bật hiệu suất của màn hình tinh thể lỏng. Rút ngắn thời gian phản hồi, cải thiện khả năng tái tạo màu sắc và người dùng có thể xem ở các góc rộng.\r\n\r\nlicker Safe - Reader Mode\r\nChế độ xem chăm sóc đôi mắt. Giúp đôi mắt thoải mái hơn khi làm việc cường độ cao và đọc các văn bản dài trên màn hình vi tính. Chế độ đọc sách (Reader Mode) điều chỉnh nhiệt độ màu và độ sáng tương tự như khi đọc trên giấy tạo cảm giác thoải mái khi nhìn lâu. Chế độ chống nháy (Flicker Safe) giảm thiểu hiện tượng nhấp nháy không nhìn thấy trên màn hình, mang lại môi trường làm việc thoải mái, giảm mỏi mắt.\r\n\r\n\r\n1ms Motion Blur Reduction\r\nGiành chiến thắng với tốc độ đáng kinh ngạc 1ms MBR giúp chơi game mượt mà, không bị nhòe hay bóng mờ. Các vật thể chuyển động nhiều và có tốc độ nhanh trong lúc thao tác có thể mang lại lợi thế cạnh tranh cho game thủ.\r\n', 'Hãng sản xuất	LG\r\nModel	Màn hình LG 27MP60G-B 27\"\r\nKích thước	27 Inch\r\nKích thước (cm)	68.6 cm\r\nĐộ phân giải	1920 x 1080\r\nTấm nền	IPS\r\nTần số quét	75hz\r\nTỷ lệ	16:9\r\nĐộ sáng	200 cd/m²\r\nMàu sắc	NTSC 72%, 16.7M\r\nTỉ lệ tương phản	600:1\r\nThời gian phản hồi	5ms (GtG at Faster), 1ms MBR\r\nGóc nhìn	178º(R/L), 178º(U/D)\r\nTính năng	\r\nChống nháy\r\nAMD FreeSync\r\nChế độ đọc sách\r\nSuper Resolution+\r\nCrosshair\r\nKết nối	\r\nD-Sub\r\nHDMI\r\nDisplayPort\r\nĐiện năng tiêu thụ	20W\r\nKhối lượng	\r\n4.4 kg\r\n3.8 kg\r\nKích thước	\r\nKích thước tính cả chân đế (Rộng x Cao x Dày)\r\n\r\n611.1 x 455.1 x 211.7 mm\r\n\r\nKích thước không tính chân đế (Rộng x Cao x Dày)\r\n\r\n611.1 x 362.6 x 39.5 mm', 5590000, 5390000, 14, '611.1 x 455.1 x 211.7', 3.8, 8, 1),
(14, 'Màn hình ViewSonic VA2261H-2 22\" FHD', 12, 'Đánh giá màn hình ViewSonic VA2261H-2 22\"\r\nMàn hình ViewSonic VA2261H-2 làm một chiếc màn hình máy tính có kích thước 22\" với độ phân giải Full HD LED Monitor, phù hợp cho các nhu cầu sử dụng tại gia đình và văn phòng. Độ phân giải 1080p giúp cho sản phẩm hiển thị được chất lượng hình ảnh chân thực và chi tiết. Màn hình sở hữu tính năng độc quyền Viewmode với các chế độ màu được thiết lập sẵn cho từng nhu cầu sử dụng từ công việc đến giải trí. Bạn có thể hoàn toàn yên tâm làm việc mà không sợ các hiện tượng mỏi mắt, đau đầu do sản phẩm đã được trang bị các công nghệ bảo vệ mắt như Bộ lọc ánh sáng xanh và chống nhấp nháy. Bên cạnh đó, màn hình được trang bị các cổng kết nối thông dụng như HDMI,VGA và giá treo tường chuẩn VESA. \r\n\r\nĐộ phân giải Full HD 1080P\r\nMàn hình này có độ phân giải Full HD 1920x1080 cho hiệu suất hình ảnh pixel-by-pixel không thể tin được. Bạn sẽ trải nghiệm sự rõ ràng và chi tiết tuyệt vời nhất cho dù đó là khi làm việc, chơi trò chơi hay thưởng thức nội dung giải trí đa phương tiện mới nhất.\r\n\r\nCổng kết nối đa dạng\r\nCổng kết nối HDMI và VGA cho phép bạn thoải mái kết nối màn hình với nhiều thiết bị khác nhau. ', 'Thương hiệu	ViewSonic \r\nBảo hành	36 Tháng\r\nKích thước	21,5 inch\r\nĐộ phân giải	\r\nFull HD 1920 x 1080\r\nTấm nền	TN\r\nTần số quét	60Hz\r\nThời gian phản hồi	5ms\r\nKiểu màn hình ( phẳng / cong )	Phẳng \r\nĐộ sáng	400 cd/m2\r\nGóc nhìn	178 độ\r\nKhả năng hiển thị màu sắc	16,7 triệu màu 99% sRGB\r\nĐộ tương phản tĩnh	600:1 \r\nĐộ tương phản động	50,000,000:1\r\nCổng xuất hình	1 x HDMI 2.0\r\n1 x VGA\r\n1 x 3.5mm Audio Out\r\nKhối lượng	\r\n2,6 kg\r\nTiêu thụ điện	32W\r\nKích thước 	505 x 312 x 48 mm\r\nPhụ kiện đi kèm	Cáp VGA, dây nguồn', 3390000, 3120000, 14, '505 x 312 x 48', 2.6, 9, 2),
(15, 'Màn hình ViewSonic VA2215-H 22\" 75Hz FHD', 12, 'Màn hình ViewSonic VA2215-H 22\" 75Hz FHD\r\nMàn hình ViewSonic VA2215-H 22\" 75Hz FHD làm một chiếc màn hình máy tính có kích thước 22\" với độ phân giải Full HD LED Monitor, phù hợp cho các nhu cầu sử dụng tại gia đình và văn phòng. Độ phân giải 1080p giúp cho sản phẩm hiển thị được chất lượng hình ảnh chân thực và chi tiết. Màn hình sở hữu tính năng độc quyền Viewmode với các chế độ màu được thiết lập sẵn cho từng nhu cầu sử dụng từ công việc đến giải trí. Bạn có thể hoàn toàn yên tâm làm việc mà không sợ các hiện tượng mỏi mắt, đau đầu do sản phẩm đã được trang bị các công nghệ bảo vệ mắt như Bộ lọc ánh sáng xanh và chống nhấp nháy. Bên cạnh đó, màn hình được trang bị các cổng kết nối thông dụng như HDMI,VGA và giá treo tường chuẩn VESA. \r\n\r\nĐộ phân giải Full HD 1080P\r\nMàn hình này có độ phân giải Full HD 1920x1080 cho hiệu suất hình ảnh pixel-by-pixel không thể tin được. Bạn sẽ trải nghiệm sự rõ ràng và chi tiết tuyệt vời nhất cho dù đó là khi làm việc, chơi trò chơi hay thưởng thức nội dung giải trí đa phương tiện mới nhất.', 'Hãng sản xuất	ViewSonic \r\nModel	VA2215-H\r\nKích thước màn hình	22 inch\r\nĐộ phân giải	FHD 1920 x 1080\r\nTỉ lệ	16:9\r\nTấm nền màn hình	VA\r\nĐộ sáng	3,000:1 (typ)\r\nMàu sắc hiển thị	16.7 triệu màu\r\nTần số quét	75Hz\r\nCổng kết nối	VGA: 1\r\n3.5mm Audio Out: 1\r\nHDMI 1.4: 1\r\nPower in: External power adapter\r\nThời gian đáp ứng	5ms\r\nGóc nhìn	178º horizontal, 178º vertical\r\nĐiện năng tiêu thụ	Eco Mode (Conserve): 13W\r\nEco Mode (optimized): 15W\r\nConsumption (typical): 20W\r\nConsumption (max): 21W\r\nVoltage: AC 100-240V, 50/60 Hz\r\nStand-by: 0.5W\r\nPower Supply: External\r\nKích thước	Packaging (in.): 22.4 x 15.1 x 4.6\r\nPhysical (in.): 19.4 x 14.8 x 7.4\r\nPhysical Without Stand (in.): 19.4 x 11.1 x 1.5\r\nCân nặng	Net (kg): 2.4\r\nNet Without Stand (kg): 2\r\nGross (kg): 3.5\r\nPhụ kiện	HDMI Cable (v1.4; Male-Male) x1, AC/DC Adapter x1, Quick Start Guide x1', 3600000, 3450000, 6, '19.4 x 11.1 x 1.5', 3.5, 9, 2),
(19, 'Macbook Air 2020 M1 7GPU 8GB 256GB MGN63SA/A - Grey', 18, 'Trong cùng 1 năm MacBook Air 2020 mới được Apple nâng cấp ra mắt với sự xuất hiện của con Chip Apple M1 được phát triển với kiến trúc ARM mới, nhanh hơn 98% PC, pin 18 giờ. Đây là chiếc MacBook Air đầu tiên và cũng là chiếc máy Mac đầu tiên của Apple trong việc chuyển dịch sang hệ chip ARM. \r\n\r\nApple cho biết chiếc MacBook Air 2020 mới này sẽ cho hiệu năng mạnh mẽ nhanh hơn tới 3 lần so với \"chiếc laptop Windows bán chạy nhất trong phân khúc\" và mạnh nhanh hơn \"98% PC được bán ra trong năm ngoái\". Bên cạnh đó, Apple cũng tuyên bố con chip M1 mới cho hiệu năng và khả năng tiêu thụ năng lượng hiệu quả hơn bất cứ con chip Intel nào.\r\n\r\nMột trong những hệ quả của việc chuyển dịch sang nền tảng ARM mới trên dòng Mac năm nay là các ứng dụng của iOS có thể được cài đặt trực tiếp trên nền tảng macOS Big Sur, cho phép người dùng sử dụng các ứng dụng được thiết kế riêng cho iOS trên chính chiếc Mac, đây cũng là tin vui dành cho các lập trình viên iOS và macOS khi giờ đây họ có thể đồng nhất ứng dụng giữa các nền tảng. Thậm chí cả các ứng dụng nặng chuyên dụng như Adobe Photoshop hay Lightroom đều hoạt động mượt mà trên dòng MacBook mới. MacBook ARM mới cũng đi kèm với công cụ giả lập có tên Rosetta 2, cho phép \"dịch\" bất kỳ ứng dụng dành cho hệ Intel x86 trên hệ máy Mac cũ sang nền tảng ARM mới.\r\n\r\nThời lượng pin tiếp tục là hệ quả của việc sử dụng nền tảng ARM trên dòng Mac. Từ lâu, kiến trúc CPU ARM luôn cho khả năng tiết kiệm năng lượng hiệu quả hơn hẳn so với kiến trúc x86 sử dụng trên hệ máy Mac cũ. Với MacBook Air chạy chip M1, máy cho thời lượng dùng pin mà theo như Apple công bố là lên tới 15 giờ duyệt web hoặc 18 giờ xem Apple TV. Máy sử dụng viên pin 49.9Wh và đi kèm củ sạc 30W USB-C PD.\r\n\r\nNgoài thay đổi về con chip cũng như thời lượng pin, MacBook Air vẫn mang trong mình thiết kế truyền thống với các thông số khác như màn hình, dung lượng bộ nhớ không thay đổi so với bản sử dụng chip của Intel. MacBook Air mới có màn hình kích thước 13.3 inch, độ phân giải 2560 x 1600, độ sáng 400 nits, hỗ trợ True Tone. Mức dung lượng RAM cho bản tiêu chuẩn là 8GB, tuy nhiên người dùng có thể tùy chọn nâng cấp lên tối đa 16GB, bộ nhớ khởi điểm từ 256GB và có thể nâng cấp lên tối đa 2TB.', 'CPU	Apple M1 chip with 8‑core CPU\r\nRAM	8GB\r\nỔ lưu trữ:	256GB SSD\r\nCard đồ họa	Apple M1 GPU 7 cores\r\nMàn hình	Retina 13.3 inch (2560x1600) IPS Led Backlit True Tone\r\nBàn phím	Magic Keyboard, có LED\r\nAudio	Stereo speakers\r\nĐọc thẻ nhớ	None\r\nKết nối có dây (LAN)	None\r\nKết nối không dây	Wifi 802.11ac - Bluetooth 5.0\r\nWebcam	720p HD\r\nCổng giao tiếp	\r\n* Two Thunderbolt / USB 4 ports with support for::\r\n* Charging, DisplayPort, Thunderbolt 3 (up to 40 Gbps)\r\n* USB-C 3.1 Gen 2 (up to 10 Gbps)\r\n\r\nHệ điều hành	Mac OS\r\nPin	* Up to 15 hours wireless web\r\n* Up to 18 hours Apple TV app movie playback\r\n* Built-in 49.9‑watt‑hour lithium‑polymer battery\r\n* 30W USB-C Power Adapter; \r\nTrọng lượng	1.4 kg\r\nKích thước	304 x 212 x 4.1 mm\r\nMàu sắc	Xám\r\nBảo mật	Bảo mật dấu vân tay', 28490000, 26990000, 23, '304 x 212 x 4.1', 1.4, 5, 2),
(20, 'Macbook Air 2020 M1 7GPU 16GB 256GB Z127000DE - Silver', 2, 'Macbook Air 13 2020 M1 7GPU 16GB 256GB Z127000DE là chiếc laptop đến từ hãng công nghệ hàng đầu Apple. Với thiết kế mỏng hơn, nhẹ hơn, Macbook Air 13 2020 đem đến cho người dùng văn phòng thêm một lựa chọn trong phân khúc laptop văn phòng mỏng nhẹ.\r\n\r\nThiết kế mỏng nhẹ, sang trọng\r\nMacbook Air 13 2020 M1 7GPU 16GB 256GB Z127000DE được thiết kế với hình dáng thanh thoát, mỏng nhẹ chỉ với 1.29 kg đúng với tiêu chí của những dòng Macbook Air trước đây. Sơn lên lớp màu bạc sang trọng, quý phái cùng vỏ ngoài là lớp kim loại nguyên khối, Macbook Air 13 giúp bạn tự tin tỏa sáng khi di chuyển cùng chiếc laptop cao cấp từ nhà Apple.\r\n\r\nHiệu năng nâng cao từ con chip M1\r\nSở hữu bộ vi xử lý do chính tay Apple thiết kế là Apple M1, giúp hiệu năng xử lý của Macbook Air 13 2020 M1 7GPU 16GB 256GB Z127000DE tăng lên nhiều lần với 8 nhân xử lý CPU giúp các tác vụ công việc được hoàn thành một cách nhanh nhất có thể. \r\n\r\nĐi cùng trên con chip M1 là 7 nhân GPU nâng cao khả năng xử lý đồ họa. Ngoài ra, đi kèm là 16 nhân Neural-Engine trang bị công nghệ máy học (Machine Learning) hỗ trợ chỉnh sửa ảnh thông minh, lọc âm thanh cùng nhiều công cụ tiện ích khác có trên photoshop và video editor. Macbook Air 13  và dòng máy tính MacBook Pro sẽ là trợ thủ đắc lực cho các creator và coder.', 'CPU	Apple M1 chip with 8‑core CPU\r\nRAM	16GB\r\nỔ lưu trữ:	256GB SSD\r\nCard đồ họa	Apple M1 GPU 7 cores\r\nMàn hình	Retina 13.3 inch (2560x1600) IPS, Led Backlit, True Tone, 400nits brightness\r\nBàn phím	Magic Keyboard, có LED\r\nAudio	Stereo speakers\r\nĐọc thẻ nhớ	None\r\nKết nối có dây (LAN)	None\r\nKết nối không dây	802.11ax Wi-Fi 6 - Bluetooth 5.0\r\nWebcam	720p FaceTime HD camera\r\nCổng giao tiếp	\r\n* Two Thunderbolt / USB 4 ports with support for::\r\n* Charging, DisplayPort, Thunderbolt 3 (up to 40 Gbps)\r\n* USB-C 3.1 Gen 2 (up to 10 Gbps)\r\n\r\nAudio	Stereo speakers\r\nWide stereo sound\r\nSupport for Dolby Atmos playback\r\nThree-mic array with directional beamforming\r\n3.5mm headphone jack\r\nHệ điều hành	macOS\r\nPin	* Up to 15 hours wireless web\r\n* Up to 18 hours Apple TV app movie playback\r\n* Built-in 49.9‑watt‑hour lithium‑polymer battery\r\n* 30W USB-C Power Adapter; \r\nTrọng lượng	1.29 kg\r\nKích thước (WxDxH)	304 x 212 x 4.1 mm\r\nMàu sắc	Silver\r\nBảo mật	Bảo mật dấu vân tay\r\nPhụ kiện đi kèm trong hộp	MacBook Air\r\n30W USB-C Power Adapter\r\nUSB-C Charge Cable (2m)', 34990000, 32990000, 14, '304 x 212 x 4.1', 1.29, 5, 2);

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`dh_id`, `sp_id`, `thoigian`, `trangthai`, `hinhthuc_tt`) VALUES
(1, 1, '2021-11-26', 1, 'Chuyển khoản'),
(1, 2, '2021-11-26', 1, 'Chuyển khoản'),
(2, 3, '2021-11-26', 0, 'Tiền mặt-COD'),
(2, 4, '2021-11-26', 0, 'Tiền mặt-COD'),
(3, 5, '2021-11-27', 1, 'Chuyển khoản'),
(3, 6, '2021-11-27', 1, 'Chuyển khoản'),
(4, 7, '2021-11-27', 1, 'Chuyển khoản'),
(4, 8, '2021-11-27', 1, 'Chuyển khoản'),
(5, 9, '2021-11-27', 0, 'Tiền mặt-COD'),
(5, 10, '2021-11-27', 0, 'Tiền mặt-COD');

-- --------------------------------------------------------
-- Chèn dữ liệu mẫu cho bảng `thuchien_dh`
--
INSERT INTO `thuchien_dh` (`dh_id`, `kh_id`, `e_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 4),
(4, 4, 5),
(5, 5, 6);
