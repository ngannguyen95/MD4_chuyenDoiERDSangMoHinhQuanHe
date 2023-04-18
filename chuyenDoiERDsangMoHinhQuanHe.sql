-- create database chuyenERDSangMoHinhQuanHe;
use chuyenERDSangMoHinhQuanHe;
create table phieuxuat(
sopx int auto_increment primary key,
ngayxuat datetime default now()
);
create table vattu(
mavattu int auto_increment primary key,
tenvattu varchar(255) not null
);
create table chitietphieuxuat(
sopx_id int,
foreign key(sopx_id) references phieuxuat(sopx),
mavattu_id int,
foreign key(mavattu_id) references vattu(mavattu),
dongiaxuat float,
soluongxuat int,
check(soluongxuat>=0)
);
create table phieunhap(
sopn int auto_increment primary key,
ngaynhap datetime default now()
);
create table chitietphieunhap(
mavattu_id int,
sopn_id int,
dongianhap float,
soluongnhap int check(soluongnhap>=0)
);
create table dondathang(
sodh int,
ngaydh datetime default now()
);
create table chitietdondathang(
mavattu_id int references vattu(mavattu),
sodh_id int references dondathang(sodh)
);
create table nhacungcap(
mancc int,
tenncc varchar(255),
diachi varchar(255),
sodienthoai varchar(12)
);
create table cungcap(
mancc_id int references nhacungcap(mancc),
sodh_id int references dondathang(sodh)
);