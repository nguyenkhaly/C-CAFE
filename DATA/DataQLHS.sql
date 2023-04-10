USE [QLBH]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [int] IDENTITY(1000,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[SoLuong] [int] NOT NULL,
	[DonGiaBan] [float] NOT NULL,
	[DonGiaNhap] [float] NOT NULL,
	[HinhAnh] [varchar](400) NOT NULL,
	[GhiChu] [nvarchar](20) NOT NULL,
	[MaNV] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[DienThoai] [varchar](15) NOT NULL,
	[TenKhach] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[Phai] [nvarchar](3) NOT NULL,
	[MaNV] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[MaNV] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[VaiTro] [tinyint] NOT NULL,
	[TinhTrang] [tinyint] NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[User] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hang] ON 

INSERT [dbo].[Hang] ([MaHang], [TenHang], [SoLuong], [DonGiaBan], [DonGiaNhap], [HinhAnh], [GhiChu], [MaNV]) VALUES (2016, N'cua hoàng đế', 10, 3500000, 3000000, N'BeFunky-collage(69)-800x450.jpg', N'Đảo hải sản', N'NV1022')
SET IDENTITY_INSERT [dbo].[Hang] OFF
GO
INSERT [dbo].[KhachHang] ([DienThoai], [TenKhach], [DiaChi], [Phai], [MaNV]) VALUES (N'0123456789', N'Nguyễn ly', N'Kiên giang', N'Nam', N'NV1000')
INSERT [dbo].[KhachHang] ([DienThoai], [TenKhach], [DiaChi], [Phai], [MaNV]) VALUES (N'093222442', N'Quy', N'HCM', N'Nam', N'NV1002')
INSERT [dbo].[KhachHang] ([DienThoai], [TenKhach], [DiaChi], [Phai], [MaNV]) VALUES (N'0963398104', N'đặng', N'hcm', N'Nam', N'NV1000')
INSERT [dbo].[KhachHang] ([DienThoai], [TenKhach], [DiaChi], [Phai], [MaNV]) VALUES (N'0963398105', N'mai mai', N'HN', N'Nữ', N'NV1000')
INSERT [dbo].[KhachHang] ([DienThoai], [TenKhach], [DiaChi], [Phai], [MaNV]) VALUES (N'0987654321', N'gegrg', N'regr', N'Nam', N'NV1002')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1000, N'NV1000', N'khaly2001@gmail.com', N'Nguyễn kha', N'Kiên Giang', 1, 1, N'263617819617711222721081031195915165129188', N'khaly001')
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1014, N'NV1002', N'khaly@gmail.com', N'LY', N'HCM', 1, 1, N'21767152351432202142141419722656119168118164', NULL)
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1016, N'NV1016', N'khaly2@gmail.com', N'khaly', N'hcm,', 1, 1, N'263617819617711222721081031195915165129188', NULL)
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1020, N'NV1020', N'lhaly012001@gmail.com', N'Nguyen kha ly', N'HCM', 1, 1, N'561278025218119815517213753818525310128', NULL)
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1022, N'NV1022', N'khaly012001@gmail.com', N'kha ly', N'hcm', 1, 1, N'237181301925122311243100118187186175584469', NULL)
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1024, N'NV1023', N'khaluuhh@gmail.com', N'khaly', N'hcm', 0, 1, N'199255103204241101235761681162251375320019846', NULL)
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1025, N'NV1025', N'khaly0909111@gmail.com', N'khaly', N'hcm', 0, 1, N'2851795417719927130227251311834724615324', NULL)
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1026, N'NV1026', N'kudokana2001@gmail.com', N'phu', N'hcm', 0, 1, N'76100154237174502031331831742470112199223127', NULL)
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1027, N'NV1027', N'khalydsdsvv@gmail.com', N'kha ly', N'kiengiang', 0, 1, N'237181301925122311243100118187186175584469', NULL)
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau], [User]) VALUES (1028, N'NV1028', N'gddgf@gmail.com', N'sfsd', N'eds', 0, 1, N'19023151131123171118177211551382232091054', NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
ALTER TABLE [dbo].[Hang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
/****** Object:  StoredProcedure [dbo].[ChangePwd]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChangePwd]
@email nvarchar(50) , @oPwd nvarchar(50) , @nPwd nvarchar(50) 
AS BEGIN 

declare @op nvarchar(50) , @result int;
select @op = MatKhau from NhanVien where Email = @email
if @op = @oPwd
begin
	UPDATE NhanVien set MatKhau = @nPwd where Email = @email
	set @result =  1 
end
else 
	set @result = 0
select @result
END
GO
/****** Object:  StoredProcedure [dbo].[DangNhap]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DangNhap] @email varchar(50) , @matkhau nvarchar(50)
 AS
BEGIN
		Declare @status int 
	if exists(select * from NhanVien where email = @email and MatKhau = @matkhau)
		set @status = 1 
	else
		set @status = 0 
	select @status

END
GO
/****** Object:  StoredProcedure [dbo].[DanhSachHang]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DanhSachHang] 
AS
BEGIN
SELECT MaHang, TenHang , SoLuong , DonGiaNhap , DonGiaBan ,HinhAnh ,GhiChu FROM Hang
END
GO
/****** Object:  StoredProcedure [dbo].[DanhSachKhach]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DanhSachKhach]
AS
BEGIN
SELECT DienThoai, TenKhach , DiaChi,Phai FROM KhachHang
END
GO
/****** Object:  StoredProcedure [dbo].[DanhSachNhanVien]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DanhSachNhanVien]
AS 
BEGIN
SELECT Email, TenNV , DiaChi,VaiTro,TinhTrang FROM NhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataFromHang]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DeleteDataFromHang] @mahang int
as
BEGIN 
	DECLARE @result int = 1;
if exists(select * from Hang where MaHang = @mahang)
	DELETE Hang where MaHang = @mahang
	else
	set @result = 0
select @result
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataFromKhach]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteDataFromKhach] @DienThoai varchar(15)
as
BEGIN 

if exists(select * from KhachHang where DienThoai = @DienThoai)
	DELETE KhachHang where DienThoai = @DienThoai

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataFromNhanVien]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteDataFromNhanVien] @Email varchar(50)
as
BEGIN 

if exists(select * from NhanVien where Email = @Email)
	DELETE NhanVien where Email = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[InsertDataHang]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertDataHang] @TenHang nvarchar(50), @Soluong int, @DonGiaBan float, @DonGiaNhap float,
@HinhAnh varchar(400) ,@GhiChu nvarchar(20), @Email varchar(50)
AS 
BEGIN 
	DECLARE @MaNV  varchar(20)
	Select @MaNV =  MaNV from NhanVien where Email = @Email
	INSERT INTO Hang values (@TenHang,@Soluong,@DonGiaBan,@DonGiaNhap,@HinhAnh,@GhiChu,@MaNV)

END
GO
/****** Object:  StoredProcedure [dbo].[InsertDataKhach]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertDataKhach] @DienThoai varchar(15) , @TenKhach nvarchar(50) , 
@DiaChi nvarchar(100) , @Phai nvarchar(3), @Email varchar(50)
AS 
BEGIN 
		DECLARE @MaNV  varchar(20)
	Select @MaNV =  MaNV from NhanVien where Email = @Email
	INSERT INTO KhachHang values (@DienThoai,@TenKhach,@DiaChi,@Phai,@MaNV)

END
GO
/****** Object:  StoredProcedure [dbo].[InsertDataNhanVien]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertDataNhanVien] @email varchar(50) , @tennv nvarchar(50) , 
@diachi nvarchar(100), @vaitro tinyint, @tinhtrang tinyint , @matkhau varchar(50)
AS 
BEGIN 

	DECLARE @Manv varchar(20);
	DECLARE @Id int
	Select @Id = ISNULL(MAX(Id),1000) + 1 FROM NhanVien
	SELECT @Manv = 'NV' + CONVERT(varchar(4),@Id)
	INSERT INTO NhanVien (MaNV,Email,TenNV,DiaChi,VaiTro,TinhTrang,MatKhau)
	VALUES (@Manv, @email , @tennv , @diachi , @vaitro , @tinhtrang,@matkhau )	
END
GO
/****** Object:  StoredProcedure [dbo].[LayVaiTroNV]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayVaiTroNV] @email varchar(50) 
as 
begin 

	SELECT VaiTro from NhanVien where Email = @email

end
GO
/****** Object:  StoredProcedure [dbo].[QuenMatKhau]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[QuenMatKhau] @email nvarchar(50)
as
begin 
	
	declare @result int 
	if exists(select *from NhanVien where Email = @email)
		set @result = 1
	else 
		set @result = 0 
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[SearchHang]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchHang] @tenHang nvarchar (50)
AS 
BEGIN
	SELECT * FROM Hang WHERE TenHang like '%'  + @tenHang + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SearchKhach]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchKhach] @tenKhach nvarchar (50)
AS 
BEGIN
	SELECT DienThoai, TenKhach,DiaChi,Phai FROM KhachHang WHERE TenKhach like '%'  + @tenKhach + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SearchNhanVien]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchNhanVien] @tenNV nvarchar (50)
AS 
BEGIN
	SELECT Email,TenNV,DiaChi,VaiTro,TinhTrang FROM NhanVien WHERE TenNV like '%'  + @tenNV + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKeSP]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKeSP]
as begin 

	SELECT a.MaNV, b.TenNV , Count(a.MaHang) FROM Hang a inner join NhanVien b on a.MaNV = b.MaNV 
	group by a.MaNV ,b.TenNV  
end
GO
/****** Object:  StoredProcedure [dbo].[ThongKeTonKho]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKeTonKho] 
as begin 

	SELECT TenHang , SUM(SoLuong) from Hang group by (TenHang)
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateHang]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateHang] @maHang int, @tenHang nvarchar(50), @soLuong int , 
@donGiaNhap float , @donGiaBan float , @hinhAnh nvarchar(400), @ghiChu nvarchar(50)
as begin

UPDATE Hang set TenHang = @tenHang , SoLuong = @soLuong , DonGiaBan = @donGiaBan , DonGiaNhap = @donGiaNhap,
HinhAnh = @hinhAnh , GhiChu = @ghiChu
where MaHang = @maHang;
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateKhach]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateKhach] @dienThoai varchar(15) , @tenKhach nvarchar(30) , @diaChi nvarchar(100) , @phai nvarchar(3)
as begin
UPDATE KhachHang set TenKhach = @tenKhach, DiaChi = @diaChi , Phai = @phai 
where DienThoai = @dienThoai;
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateMatKhau]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateMatKhau]
	@email varchar(50) , @pass varchar(50)
	
AS BEGIN
	UPDATE NhanVien set MatKhau = @pass where Email = @email
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateNhanVien]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateNhanVien] @email nvarchar(50) , @tenNv nvarchar(50), @diaChi nvarchar(100) ,
@vaitro tinyint , @tinhtrang tinyint
as begin

UPDATE NhanVien set TenNV = @tenNv , DiaChi = @diaChi , VaiTro = @vaitro , TinhTrang = @tinhtrang 
where Email = @email;
end
GO
/****** Object:  StoredProcedure [dbo].[XemThongTinNV]    Script Date: 11/13/2022 1:28:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XemThongTinNV] @email varchar(50)
as 
begin 

	select * from NhanVien where Email = @email

end
GO
