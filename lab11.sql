create database QLSV1
GO
USE QLSV1

CREATE TABLE LOP(
 MALOP varchar(10) primary key,
 TENLOP nvarchar(40) not null,
 SISO INT NOT NULL
)
GO

CREATE TABLE SINHVIEN(
 MASV VARCHAR(10) PRIMARY KEY,
 HOTEN NVARCHAR(50) NOT NULL,
 NGSINH SMALLDATETIME NOT NULL,
 MALOP VARCHAR(10) NOT NULL
)
GO

CREATE TABLE MONHOC(
 MAMH VARCHAR(10) PRIMARY KEY,
 TENMH NVARCHAR(40) NOT NULL
)
GO

CREATE TABLE KETQUA(
 MASV VARCHAR(10) NOT NULL,
 MAMH VARCHAR(10) NOT NULL,
 DIEMTHI NUMERIC(4,2) NOT NULL,
 constraint PK_KETQUA primary key (MASV,MAMH)
)
GO

ALTER TABLE SINHVIEN ADD CONSTRAINT fk_MALOP FOREIGN KEY(MALOP) REFERENCES LOP(MALOP)
GO

ALTER TABLE KETQUA ADD CONSTRAINT fk_MASV FOREIGN KEY(MASV) REFERENCES SINHVIEN(MASV)
GO

ALTER TABLE KETQUA ADD CONSTRAINT fk_MAMH FOREIGN KEY(MAMH) REFERENCES MONHOC(MAMH)
GO



INSERT INTO LOP(MALOP, TENLOP, SISO) VALUES ('ML01', N'Công nghệ thông tin 1', 6),
                                            ('ML02', N'Công nghệ thông tin 2', 7),
											('ML03', N'Công nghệ thông tin 3', 6),
											('ML04', N'Công nghệ thông tin 4', 7)

INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000001', 'Yasuo', '07-12-2002', 'ML01'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ('000002', 'camile', '09-10-2002', 'ML01'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000003','jhin','06-05-2002', 'ML01'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000004', 'annie', '01-07-2002', 'ML01'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000005', 'Caitlin', '02-22-2002', 'ML01'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000006','Amumu', '11-08-2002', 'ML01'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000007', 'Rengar', '09-12-2002', 'ML02'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES	( '000008', 'Khazid', '12-18-2002', 'ML02'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000009','Hecarim', '01-10-2002', 'ML02'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000010','Ezreal', '07-11-2002', 'ML02'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000011','Kasadin', '11-09-2002', 'ML02'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000012', 'Yone', '07-05-2002', 'ML02'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000013','Zed', '09-12-2002', 'ML02'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000014', 'Shen', '09-04-2002', 'ML03'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000015', 'Belvel', '02-02-2002', 'ML03'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000016', 'Morder', '04-02-2002', 'ML03'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000017', 'Teemo', '04-30-2002', 'ML03'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000018', 'Zilen', '02-03-2002', 'ML03'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000019','Ekko', '05-14-2002', 'ML03')
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000020', 'Ashe', '12-12-2002', 'ML04'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000021', 'Kaisa', '05-04-2002', 'ML04'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000022', 'Wukong', '05-09-2002', 'ML04'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000023', 'Elise', '05-08-2002', 'ML04'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000024', 'Orn', '09-17-2002', 'ML04'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000025', 'Jinx', '07-22-2002', 'ML04'),
INSERT INTO SINHVIEN(MASV, HOTEN, NGSINH, MALOP) VALUES ( '000026','Yasuo', '03-26-2002', 'ML04')

INSERT INTO MONHOC(MAMH, TENMH) VALUES ('01', N'Cấu trúc dữ liệu'),
                                       ('02', N'Bigdata'),
									   ('03', N'Viễn Thám cơ bản'),
									   ('04', N'Công nghệ Java'),
									   ('05', N'Cơ sở nâng cao')

INSERT INTO KETQUA(MASV, MAMH,DIEMTHI) VALUES ('000024','MH01', 7),
                                              ('000010','MH01', 4),
											  ('000011','MH01', 5),
											  ('000019','MH04', 5),
											  ('000018','MH05', 8)
INSERT INTO KETQUA(MASV, MAMH,DIEMTHI) VALUES ('000001','MH04', 9),
											  ('000004','MH05', 7),
											  ('000003','MH01', 10),
											  ('000002','MH02', 9),
											  ('000006','MH02', 9),
											  ('000005','MH04', 7)
											  

											  
go
-------------------------------------------Câu 1------------------------------------

create function diemtb (@msv varchar(10))
returns float
as
begin
 declare @tb float
 set @tb = (select avg(DIEMTHI)
 from KETQUA
where MaSV=@msv) 
 return @tb
end
go
select dbo.diemtb ('000005')-----------Câu 2: Viết hàm bằng 2 cách (table – value fuction và multistatement value function) tính điểm trung bình của 
-----cả lớp, thông tin gồm MaSV, Hoten, ĐiemTB, sử dụng hàm diemtb ở câu 1
--cách 1
go
create function trbinhlop(@malop varchar(10))
returns table
as
return
 select S.MASV, HOTEN, trungbinh=dbo.diemtb(S.MaSV)
 from SINHVIEN S join KETQUA K on S.MASV=K.MASV
 where MALOP=@malop
 group by S.MASV, HOTEN

 --cách 2
go
create function trbinhlop1(@malop varchar(10))
returns @dsdiemtb table (MASV varchar(10), TENSV nvarchar(20), dtb float)
as
begin
 insert @dsdiemtb
 select S.MASV, HOTEN, trungbinh=dbo.diemtb(S.MASV)
 from SINHVIEN S join KETQUA K on S.MASV=K.MASV
 where MALOP=@malop
 group by S.MASV, HOTEN
 return
end
go
select*from trbinhlop1('ML04')

------Câu 3.Viết một thủ tục kiểm tra một sinh viên đã thi bao nhiêu môn, tham số là MaSV, (VD sinh viên có MaSV=01
----thi 3 môn) kết quả trả về chuỗi thông báo “Sinh viên 01 thi 3 môn” hoặc “Sinh viên 01 không thi môn nào”
go
create proc ktra @msv varchar(10)
as
begin 
 declare @L int
 set @L=(select count(*) from KETQUA where MASV=@msv)
 if @L=0 
 print 'sinh vien '+@msv + 'khong thi mon nao'
 else
 print 'sinh vien '+ @msv+ 'thi '+ cast(@L as char(2)) + ' mon '
end 
go
exec ktra '000010'----Câu 4.Viết một trigger kiểm tra sỉ số lớp khi thêm một sinh viên mới vào danh sách sinh viên thì hệ thống cập
-----nhật lại siso của lớp, mỗi lớp tối đa 10SV, nếu thêm vào >10 thì thông báo lớp đầy và hủy giao dịch

go
create trigger CapNhatLop
on SINHVIEN
for insert
as
begin
 declare @siso int
 set @siso=(select count(*) from SINHVIEN S 
 where MALOP in(select MALOP from inserted))
 if @siso>10
   begin
      print 'Lop day'
      rollback tran
   end
 else
   begin
     update LOP
     set SiSo=@siso
     where MALOP in (select MALOP from inserted)
   end
end

-----câu 5.Tạo 2 login user1 và user2 đăng nhập vào sql, tạo 2 user tên user1 và user2 
--trên CSDL Quản lý Sinh viên tương ứng với 2 login vừa tạo.--tao login
create login user1 with password = '111'
create login user2 with password = '222'
--hoac
exec sp_addlogin 'usera','111'
--tao user
create user user1 for login user1
create user user2 for login user2
--hoac
exec Sp_adduser 'usera','111'
go

--6.Gán quyền cho user 1 các quyền Insert, Update, trên bảng sinhvien, 
--gán quyền select cho user2 trên bảng sinhvien

grant Insert, Update on sinhvien to user1
grant select on sinhvien to user2


--7.Tạo một role tên Quanly với đầy đủ các quyền, sau đó thêm use1 và user2 
--vào Role này
go
use QLSV1 
go
Create role Quanly
Grant select, insert, update to Quanly
exec Sp_AddRoleMember 'Quanly', 'usera'
exec Sp_AddRoleMember 'Quanly', 'userb'




