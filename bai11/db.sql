-- Câu lệnh tạo database 
-- create database + tên db

create database if not exists netflix;
-- if not exists cho phép chạy câu lệnh nhiều lần mà không lỗi

-- phim
   id int;    --key
   ten_phim varchar(100);
   thoi_luong int;
   nam int;
   gioi_thieu varchar(255);
   dao_dien_id int;

-- phim_dien_vien
   id int;   -- key
   phim_id int;
   dien_vien_id int;

-- phim_the_loai
   id int;   --key
   phim_id int;
   the_loai_id int;

-- nguoi_dung
   id int;  --key
   ten_dang_nhap varchar(50);
   mat_khau varchar(30);
   email varchar(50);
   so_dien_thoai varchar(10);

-- dao_dien
   id int;   -- key
   ten_dao_dien varchar(50);

-- the_loai
   id int;   -- key
   ten_the_loai varchar(100);

-- dien_vien
   id int;   -- key
   ten_dien_vien varchar(50);

-- quoc_gia
   id int;   -- key
   ten_quoc_gia varchar(50);

-- TẠO BẢNG
create table if not exists phim (
    id int auto_increment primary key,
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);

create table if not exists dao_dien (
    id int auto_increment primary key, 
    ten_dao_dien varchar(50)
);

create table if not exists dien_vien (
    id int auto_increment primary key, 
    ten_dien_vien varchar(50)
);

create table if not exists the_loai (
    id int auto_increment primary key, 
    ten_the_loai varchar(50)
);

create table if not exists quoc_gia (
    id int auto_increment primary key, 
    ten_quoc_gia varchar(50)
);

create table if not exists nguoi_dung (
    id int auto_increment primary key, 
    ten_dang_nhap varchar(50),
    mat_khau varchar(30),
    email varchar(50),
    so_dien_thoai varchar(10)
);

create table if not exists phim_dien_vien (
    id int auto_increment primary key, 
    phim_id int,
    dien_vien_id int
);

create table if not exists phim_the_loai (
    id int auto_increment primary key, 
    phim_id int,
    the_loai_id int
);


-- Thêm dữ liệu vào các bảng
-- Phim
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('doraemon','60','2004','Meo may den tu tuong lai','4')
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('sieu nhan gao','80','2020','	
5 anh em sieu nhan','2')
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Jujutsu Kaisen','180','2026','Thay cung dai chien
','1')
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Huyet nguc tu la','200','2018','Kinh di ve phieu luu cua 1 dam nhoc','3')

-- dao_dien
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`hoang hoa tham`)
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`vu trong khanh`)
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`hoang the long`)
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`phung minh long`)
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`sieu nhan xanh`)

-- dien_vien
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`yuamikami`)
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`mariaozawa`)
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`shigeotokuda`)
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`zawarudo`)
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`zotaro`)

-- nguoi_dung
INSERT INTO 'nguoi_dung'('ten_dang_nhap', 'mat_khau', 'email', 'so_dien_thoai') VALUES ('sieunhanxanh', '569874', 'siunhok@gmail.com
', '0125364987')
INSERT INTO 'nguoi_dung'('ten_dang_nhap', 'mat_khau', 'email', 'so_dien_thoai') VALUES ('sieunhanvang', '445566', 'vangcan5@gmail.com
', '0222233665')
INSERT INTO 'nguoi_dung'('ten_dang_nhap', 'mat_khau', 'email', 'so_dien_thoai') VALUES ('gaoBac', '668899', 'gaobacff@gmail.com
', '0111111111')
INSERT INTO 'nguoi_dung'('ten_dang_nhap', 'mat_khau', 'email', 'so_dien_thoai') VALUES ('gaotymmmmmmm', 'aoma099', 'aomatun@gmail.com
', '0333666999')

-- quoc_gia
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('Viet nam')
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('Han quoc')
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('Trieu tien')
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('Phap')
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('US')

-- the_loai
INSERT INTO 'the_loai'('ten_the_loai') VALUES ('Hai')
INSERT INTO 'the_loai'('ten_the_loai') VALUES ('Kinh di')
INSERT INTO 'the_loai'('ten_the_loai') VALUES ('Tinh cam')
INSERT INTO 'the_loai'('ten_the_loai') VALUES ('Hanh dong')

-- Join bang phim và the_loai bằng bảng trung gian phim_the_loai
select * from phim p
join phim_the_loai ptl
on p.id = ptl.phim_id
join the_loai tl
on ptl.the_loai_id = tl.id
where p.id = 1

-- Join bang phim và dien_vien bằng bảng trung gian phim_dien_vien
select * from phim p
join phim_dien_vien pdv
on p.id = pdv.phim_id
join dien_vien dv
on pdv.dien_vien_id = dv.id
where p.id = 1

-- Thêm dữ liệu cho 2 bảng trung gian
-- phim_the_loai
INSERT INTO phim_the_loai (phim_id, the_loai_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

-- phim_dien_vien
INSERT INTO phim_dien_vien (phim_id, dien_vien_id)
VALUES
(1, 1),
(1, 2),
(2, 3);


