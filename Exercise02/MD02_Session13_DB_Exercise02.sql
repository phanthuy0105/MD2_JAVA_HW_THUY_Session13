create database QuanLyBanHang;
use QuanLyBanHang;
-- 1. Tạo bảng Customer
create table Customer(
	cID char(5) primary key,
    cName varchar(100),
    cAge int
);
-- 2. Tạo bảng Order
create table OrderTB(
	oID char(5) primary key,
    cID char(5),
    foreign key(cID) references Customer(cID),
    oDate datetime,
    oTotalPrice float
);
-- 3. Tạo bảng Product
create table Product(
	pID char(5) primary key,
    pName varchar(100),
    pPrice float
);
-- 4. Tạo bảng OrderDetail
create table OrderDetail(
	oID char(5),
    foreign key(oID) references OrderTB(oID),
    pID char(5),
    foreign key(pID) references Product(pID),
    odQTY int
);