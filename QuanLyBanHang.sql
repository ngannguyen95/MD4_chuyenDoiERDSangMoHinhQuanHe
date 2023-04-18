create database QuanLyBanHang;
use QuanLyBanHang;
create table customer(
customerId int auto_increment primary key,
customerName varchar(255),
customerAge int
);
create table `order`(
orderId int auto_increment primary key,
customerId int,
foreign key (customerId) references customer(customerId),
orderDate datetime default now(),
orderTotalPrice float
);
create table product(
productId int auto_increment primary key,
productName varchar(255),
productprice float
);
create table orderDetail(
orderId int,
foreign key(orderId) references `order`(orderId),
productId int,
foreign key(productId) references product(productId),
orderQTY int
);
