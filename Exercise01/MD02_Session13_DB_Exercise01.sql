create database store_management;
use store_management;
-- 1. Tạo bảng Phiếu xuất
create table PhieuXuat(
	soPX char(5) primary key,
	ngayXuat date
);
-- 2. Tạo bảng Vật tư
create table VatTu(
	maVT char(5) primary key,
    tenVT varchar(100)
);
-- 3. Phiếu xuất chi tiết 
create table PhieuXuatCT(
	soPX char(5),
    foreign key(soPX) references PhieuXuat(soPX),
    maVT char(5),
    foreign key(maVT) references VatTu(maVT),
    primary key(soPX,maVT),
    dongGiaXuat float,
    slXuat int
);
-- 4. Phiếu nhập
create table PhieuNhap(
	soPN char(5) primary key,
    ngayNhap date
);
-- 5. Phiếu nhập chi tiết 
create table PhieuNhapCT(
	soPN char(5),
    foreign key(soPN) references PhieuNhap(soPN),
    maVT char(5),
    foreign key(maVT) references VatTu(maVT),
    primary key(soPN,maVT),
    dongGiaNhap float,
    slNhap int
);
-- 6. Nhà cung cấp 
create table NhaCungCap(
	maCC char(5) primary key,
    tenCC varchar(100),
    diaChi varchar(200),
    soDienThoai varchar(50)
);
-- 7. Đơn đặt hàng 
create table DonDatHang(
	soDH char(5) primary key,
    ngayDH date,
    maCC char(5),
    foreign key(maCC) references NhaCungCap(maCC)
);
-- 8. Chi tiết đơn hàng 
create table ChiTietDonHang(
	maVT char(5),
    foreign key(maVT) references VatTu(maVT),
    soDH char(5),
    foreign key(soDH) references DonDatHang(soDH)
);