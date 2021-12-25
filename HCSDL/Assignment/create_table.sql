-- Tạo bảng: `employee`

CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL,
  `cmnd` varchar(12) DEFAULT NULL,
  `ho` varchar(30)  DEFAULT NULL,
  `dem` varchar(30)  DEFAULT NULL,
  `ten` varchar(25) NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sdt` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `luong` int(11) DEFAULT NULL,
  `chinhanh` varchar(30)  DEFAULT NULL,
  PRIMARY KEY (`e_id`)
);
-- --------------------------------------------
-- Tạo bảng: `baove`

CREATE TABLE `baove` (
  `e_id` int(11) NOT NULL,
  `vitri` varchar(80) DEFAULT NULL,
  PRIMARY KEY (e_id)
);
-- --------------------------------------------
-- Tạo bảng: `calamviec_bv`

CREATE TABLE `calamviec_bv` (
  `e_id` int(11) NOT NULL,
  `calamviec` varchar(50) DEFAULT NULL,
  PRIMARY KEY (e_id,calamviec)
);
-- --------------------------------------------
-- Tạo bảng: `chinhsua_sp`
CREATE TABLE `chinhsua_sp` (
  `e_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `thoigian` date DEFAULT NULL,
  `log` longtext DEFAULT NULL,
  PRIMARY KEY (`e_id`,`sp_id`)
);
-- --------------------------------------------
-- Tạo bảng: `danhmuc`

CREATE TABLE `danhmuc` (
  `dm_id` int(11) NOT NULL,
  `tendanhmuc` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`dm_id`)
);
-- --------------------------------------------

-- Tạo bảng: `diachi_kh`
CREATE TABLE `diachi_kh` (
  `kh_id` int(11) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kh_id`,`diachi`)
) ;
-- --------------------------------------------

-- Tạo bảng: `donvicungcap`
CREATE TABLE `donvicungcap` (
  `dvcc_id` int(11) NOT NULL,
  `tendonvi` varchar(60) NOT NULL,
  `fax` varchar(11) DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`dvcc_id`)
);
-- --------------------------------------------

-- Tạo bảng: `donvivanchuyen`
CREATE TABLE `donvivanchuyen` (
  `dvvc_id` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `fax` varchar(11)  DEFAULT NULL,
  `hotline` varchar(11)  DEFAULT NULL,
  PRIMARY KEY (`dvvc_id`)
);
-- --------------------------------------------

-- Tạo bảng: `donhang`
CREATE TABLE `donhang` (
  `dh_id` int(11) NOT NULL,
  `tenkh` varchar(60)  DEFAULT NULL,
  `tongtien_sp` int(15) DEFAULT NULL,
  `diachi` varchar(255)  DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  `giamgia` varchar(255)  DEFAULT NULL,
  `han_bh` date DEFAULT NULL,
  `dvvc_id` int(11) DEFAULT NULL,
  `mgg_id` int(11) DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dh_id`)
);

-- --------------------------------------------

-- Tạo bảng: `khachhang`
CREATE TABLE `khachhang` (
  `kh_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32)DEFAULT NULL,
  `ho` varchar(30)DEFAULT NULL,
  `ten` varchar(30) NOT NULL,
  `sdt` varchar(11) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `gh_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`kh_id`)
);
-- --------------------------------------------

-- Tạo bảng: `giohang`
--
CREATE TABLE `giohang` (
  `gh_id` int(11) NOT NULL,
  `tongtien` int(11) DEFAULT NULL,
  PRIMARY KEY (`gh_id`)
);
-- ---------------------------------------------
-- Tạo bảng: `giohang_gom_sp`
--
CREATE TABLE `giohang_gom_sp` (
  `gh_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  PRIMARY KEY (`gh_id`,`sp_id`)
);
-- ---------------------------------------------
-- Tạo bảng: `magiamgia`
--
CREATE TABLE `magiamgia` (
  `id` int(11) NOT NULL,
  `code` varchar(255)  DEFAULT NULL,
  `phantram` int(11) DEFAULT NULL,
  `toida` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;
-- ----------------------------------------------
-- Tạo bảng: `mausac_sp`

CREATE TABLE `mausac_sp` (
  `sp_id` int(11) NOT NULL,
  `mausac` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sp_id`,`mausac`)
) ;
-- ----------------------------------------------
-- Tạo bảng: `nguoiphuthuoc`
--
CREATE TABLE `nguoiphuthuoc` (
  `e_id` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `moiquanhe` varchar(10)  DEFAULT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `sodienthoai` varchar(11)  DEFAULT NULL,
  PRIMARY KEY (`e_id`,`hoten`)
) ;
-- --------------------------------------------------------
-- Tạo bảng: `nhanvien`
--
CREATE TABLE `nhanvien` (
  `e_id` int(11) NOT NULL,
  `khuvuc` varchar(255)  DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ;
-- --------------------------------------------------------
-- Tạo bảng: `quanly`
--
CREATE TABLE `quanly` (
  `e_id` int(11) NOT NULL,
  `username` varchar(50)  DEFAULT NULL,
  `password` varchar(32)  DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ;
-- -- --------------------------------------------
-- Tạo bảng: `sanpham`
--
CREATE TABLE `sanpham` (
  `sp_id` int(11) NOT NULL,
  `tensp` varchar(255) DEFAULT NULL,
  `thoiluong_bh` int(11) DEFAULT NULL,
  `mota` longtext  DEFAULT NULL,
  `cauhinh` longtext DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `giakm` int(11) DEFAULT NULL,
  `SL` int(5) DEFAULT NULL,
  `kt` varchar(30) DEFAULT NULL,
  `kl` float DEFAULT NULL,
  `dm_id` int(11) DEFAULT NULL,
  `dvcc_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sp_id`)
);
-- --------------------------------------------
-- Tạo bảng: `thanhtoan`
--
CREATE TABLE `thanhtoan` (
  `dh_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `soluong` int(5) NOT NULL,
  `thoigian` date DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `hinhthuc_tt` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`dh_id`,`sp_id`)
) ;
-- --------------------------------------------------------
-- Tạo bảng: `thuchien_dh`
--
CREATE TABLE `thuchien_dh` (
  `dh_id` int(11) NOT NULL,
  `kh_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  PRIMARY KEY (`dh_id`)
);
-- --------------------------------------------------------
-- --------------------------------------------------------
-- Ràng buộc khoá ngoại cho bảng `calamviec_bv`
--
ALTER TABLE `calamviec_bv`
  ADD CONSTRAINT `forekey_to_bv_id` FOREIGN KEY (`e_id`) REFERENCES `employee` (`e_id`);


-- Ràng buộc khoá ngoại cho bảng `chinhsua_sp`
--
ALTER TABLE `chinhsua_sp`
  ADD CONSTRAINT `forekey_to_ql_id` FOREIGN KEY (`e_id`) REFERENCES `quanly` (`e_id`);


-- Ràng buộc khoá ngoại cho bảng `diachi_kh`
--
ALTER TABLE `diachi_kh`
  ADD CONSTRAINT `forekey_to_kh_id` FOREIGN KEY (`kh_id`) REFERENCES `khachhang` (`kh_id`);


-- Ràng buộc khoá ngoại cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`mgg_id`) REFERENCES `magiamgia` (`id`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`dvvc_id`) REFERENCES `donvivanchuyen` (`dvvc_id`);


-- Ràng buộc khoá ngoại cho bảng `giohang_gom_sp`
--
ALTER TABLE `giohang_gom_sp`
  ADD CONSTRAINT `giohang_gom_sp_ibfk_1` FOREIGN KEY (`gh_id`) REFERENCES `giohang` (`gh_id`),
  ADD CONSTRAINT `giohang_gom_sp_ibfk_2` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`);

-- Ràng buộc khoá ngoại cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`gh_id`) REFERENCES `giohang` (`gh_id`);


-- Ràng buộc khoá ngoại cho bảng `mausac_sp`
--
ALTER TABLE `mausac_sp`
  ADD CONSTRAINT `forekey_to_sp_id2` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`);


-- Ràng buộc khoá ngoại cho bảng `nguoiphuthuoc`
--
ALTER TABLE `nguoiphuthuoc`
  ADD CONSTRAINT `forekey_to_e_id` FOREIGN KEY (`e_id`) REFERENCES `employee` (`e_id`);


-- Ràng buộc khoá ngoại cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`e_id`);


-- Ràng buộc khoá ngoại cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD CONSTRAINT `quanly_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `employee` (`e_id`);


-- Ràng buộc khoá ngoại cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`dvcc_id`) REFERENCES `donvicungcap` (`dvcc_id`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`dm_id`) REFERENCES `danhmuc` (`dm_id`);


-- Ràng buộc khoá ngoại cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `thanhtoan_ibfk_1` FOREIGN KEY (`dh_id`) REFERENCES `donhang` (`dh_id`),
  ADD CONSTRAINT `thanhtoan_ibfk_2` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`);


-- Ràng buộc khoá ngoại cho bảng `thuchien_dh`
--
ALTER TABLE `thuchien_dh`
  ADD CONSTRAINT `thuchien_dh_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `nhanvien` (`e_id`),
  ADD CONSTRAINT `thuchien_dh_ibfk_2` FOREIGN KEY (`kh_id`) REFERENCES `khachhang` (`kh_id`),
  ADD CONSTRAINT `thuchien_dh_ibfk_3` FOREIGN KEY (`dh_id`) REFERENCES `donhang` (`dh_id`);


