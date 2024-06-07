create database QuanLyGioHang;
use QuanLyGioHang;
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

insert into Customer(cID, cName,cAge)
values('1','Minh Quan',10),('2','Ngoc Oanh',20),('3','Hong Ha',50);

insert into OrderTB(oID, cID, oDate, oTotalPrice)
values('1','1','2006/3/21',null),('2','2','2006/3/23',null),('3','1','2006/3/16',null);

insert into OrderDetail(oID, pID, odQTY)
values('1','1',3),('1','3',7),('1','4',2),('2','1',1),('3','1',8),('2','5',4),('2','3',3);