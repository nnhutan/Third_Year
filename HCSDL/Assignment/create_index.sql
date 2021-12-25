
-- Lệnh tạo INDEX cho bảng "donhang" trên 2 cột thường xuyên tìm kiếm: tenkh và ngaytao
CREATE INDEX index_for_ten_and_date
ON donhang (tenkh,ngaytao);

-- Lệnh tạo INDEX cho bảng "sanpham" trên 2 cột thường xuyên tìm kiếm: "tensp" và "gia"
CREATE INDEX index_for_tensp_and_gia
ON sanpham (tensp,gia);

-- Lệnh tạo INDEX cho bảng "khachhang" trên 2 cột thường xuyên tìm kiếm: "username" và "email"
CREATE INDEX index_for_username_and_email
ON khachhang (username,email);

