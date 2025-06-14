USE [QL_CHI_TIEU_CA_NHAN]
GO
/****** Object:  Table [dbo].[ChuyenTien]    Script Date: 5/18/2025 11:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenTien](
	[MaChuyenTien] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NULL,
	[TuVi] [int] NULL,
	[DenVi] [int] NULL,
	[SoTien] [decimal](15, 2) NOT NULL,
	[NgayChuyen] [date] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 5/18/2025 11:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
	[Loai] [nvarchar](10) NULL,
	[BieuTuong] [nvarchar](50) NULL,
	[MacDinh] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoDich]    Script Date: 5/18/2025 11:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDich](
	[MaGiaoDich] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NULL,
	[MaVi] [int] NULL,
	[MaDanhMuc] [int] NULL,
	[SoTien] [decimal](15, 2) NOT NULL,
	[Loai] [nvarchar](10) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayGiaoDich] [date] NOT NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/18/2025 11:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](max) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViTien]    Script Date: 5/18/2025 11:42:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTien](
	[MaVi] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NULL,
	[TenVi] [nvarchar](100) NOT NULL,
	[SoDu] [decimal](15, 2) NULL,
	[DonViTienTe] [nvarchar](10) NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChuyenTien] ON 

INSERT [dbo].[ChuyenTien] ([MaChuyenTien], [MaNguoiDung], [TuVi], [DenVi], [SoTien], [NgayChuyen], [GhiChu], [NgayTao]) VALUES (1, 1, 1, 6, CAST(1000000.00 AS Decimal(15, 2)), CAST(N'2025-03-25' AS Date), N'Chuyển tiền sang ví đầu tư', CAST(N'2025-04-13T16:18:32.723' AS DateTime))
INSERT [dbo].[ChuyenTien] ([MaChuyenTien], [MaNguoiDung], [TuVi], [DenVi], [SoTien], [NgayChuyen], [GhiChu], [NgayTao]) VALUES (2, 2, 2, 3, CAST(500000.00 AS Decimal(15, 2)), CAST(N'2025-03-20' AS Date), N'Chuyển sang tài khoản ngân hàng', CAST(N'2025-04-13T16:18:32.723' AS DateTime))
INSERT [dbo].[ChuyenTien] ([MaChuyenTien], [MaNguoiDung], [TuVi], [DenVi], [SoTien], [NgayChuyen], [GhiChu], [NgayTao]) VALUES (3, 3, 3, 4, CAST(200000.00 AS Decimal(15, 2)), CAST(N'2025-03-10' AS Date), N'Chuyển sang ví mặt', CAST(N'2025-04-13T16:18:32.723' AS DateTime))
INSERT [dbo].[ChuyenTien] ([MaChuyenTien], [MaNguoiDung], [TuVi], [DenVi], [SoTien], [NgayChuyen], [GhiChu], [NgayTao]) VALUES (4, 4, 4, 5, CAST(3000000.00 AS Decimal(15, 2)), CAST(N'2025-03-05' AS Date), N'Tiết kiệm', CAST(N'2025-04-13T16:18:32.723' AS DateTime))
INSERT [dbo].[ChuyenTien] ([MaChuyenTien], [MaNguoiDung], [TuVi], [DenVi], [SoTien], [NgayChuyen], [GhiChu], [NgayTao]) VALUES (5, 5, 5, 1, CAST(100000.00 AS Decimal(15, 2)), CAST(N'2025-03-12' AS Date), N'Trả nợ bạn', CAST(N'2025-04-13T16:18:32.723' AS DateTime))
SET IDENTITY_INSERT [dbo].[ChuyenTien] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (1, 1, N'Ăn uống', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (2, 1, N'Lương', N'thu', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (3, 1, N'Mua sắm', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (4, 2, N'Xăng xe', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (5, 2, N'Thưởng', N'thu', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (6, 3, N'Giải trí', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (7, 1, N'Tiện ích', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (8, 1, N'Nhà ở', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (9, 1, N'Giao thông công cộng', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (10, 1, N'Sức khỏe', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (11, 1, N'Giáo dục', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (12, 1, N'Du lịch', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (13, 1, N'Quà tặng', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (14, 1, N'Dịch vụ', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (15, 1, N'Văn phòng phẩm', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (16, 1, N'Bảo hiểm', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (17, 1, N'Đầu tư (CK, ETF...)', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (18, 1, N'Bảo trì, sửa chữa', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (19, 1, N'Phụ kiện điện tử', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (20, 1, N'Trang phục', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (21, 1, N'Giải trí ngoài trời', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (22, 1, N'Dịch vụ trực tuyến', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (23, 1, N'Khoản nhỏ lẻ', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (24, 1, N'Thuê nhà', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (25, 1, N'Internet & Viễn thông', N'chi', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (26, 1, N'Phụ cấp', N'thu', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (27, 1, N'Thu nhập khác', N'thu', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (28, 1, N'Hoàn trả', N'thu', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (29, 1, N'Lãi tiết kiệm', N'thu', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (30, 1, N'Thu nhập thụ động', N'thu', NULL, 0)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaNguoiDung], [TenDanhMuc], [Loai], [BieuTuong], [MacDinh]) VALUES (31, 1, N'Từ thiện', N'chi', NULL, 0)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaoDich] ON 

INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (2, 1, 1, 2, CAST(12000000.00 AS Decimal(15, 2)), N'Thu', N'Lương tháng 3', CAST(N'2025-03-01' AS Date), CAST(N'2025-04-13T16:18:32.717' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (3, 1, 1, 3, CAST(150000.00 AS Decimal(15, 2)), N'Chi', N'Mua áo mới', CAST(N'2025-03-10' AS Date), CAST(N'2025-04-13T16:18:32.717' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (4, 2, 2, 4, CAST(50000.00 AS Decimal(15, 2)), N'chi', N'Đổ xăng xe', CAST(N'2025-03-15' AS Date), CAST(N'2025-04-13T16:18:32.717' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (5, 2, 2, 5, CAST(2000000.00 AS Decimal(15, 2)), N'thu', N'Thưởng Tết', CAST(N'2025-03-05' AS Date), CAST(N'2025-04-13T16:18:32.717' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (6, 3, 3, 6, CAST(120000.00 AS Decimal(15, 2)), N'Chi', N'Xem phim', CAST(N'2025-03-20' AS Date), CAST(N'2025-04-13T16:18:32.717' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (7, NULL, NULL, NULL, CAST(150000.00 AS Decimal(15, 2)), N'CHI', N'Mua đồ ăn', CAST(N'2025-05-16' AS Date), CAST(N'2025-05-16T02:52:46.043' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1030, 1, 1, 1, CAST(50000.00 AS Decimal(15, 2)), N'Chi', N'Ăn sáng tại quán phở', CAST(N'2025-05-01' AS Date), CAST(N'2025-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1031, 1, 1, 1, CAST(120000.00 AS Decimal(15, 2)), N'Chi', N'Ăn cơm trưa văn phòng', CAST(N'2025-05-02' AS Date), CAST(N'2025-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1032, 1, 1, 1, CAST(80000.00 AS Decimal(15, 2)), N'Chi', N'Cà phê và bánh ngọt', CAST(N'2025-05-03' AS Date), CAST(N'2025-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1033, 1, 1, 1, CAST(300000.00 AS Decimal(15, 2)), N'Chi', N'Ăn tại nhà hàng', CAST(N'2025-05-04' AS Date), CAST(N'2025-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1034, 1, 1, 1, CAST(60000.00 AS Decimal(15, 2)), N'Chi', N'Ăn vặt quán bên đường', CAST(N'2025-05-05' AS Date), CAST(N'2025-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1035, 1, 1, 3, CAST(350000.00 AS Decimal(15, 2)), N'Chi', N'Mua áo sơ mi công sở', CAST(N'2025-05-01' AS Date), CAST(N'2025-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1036, 1, 1, 3, CAST(200000.00 AS Decimal(15, 2)), N'Chi', N'Mua giày thể thao', CAST(N'2025-05-06' AS Date), CAST(N'2025-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1037, 1, 1, 3, CAST(50000.00 AS Decimal(15, 2)), N'Chi', N'Mua bút và sổ tay', CAST(N'2025-05-07' AS Date), CAST(N'2025-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1038, 1, 1, 3, CAST(450000.00 AS Decimal(15, 2)), N'chi', N'Mua quần jean', CAST(N'2025-05-08' AS Date), CAST(N'2025-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1039, 1, 1, 3, CAST(300000.00 AS Decimal(15, 2)), N'chi', N'Mua túi xách', CAST(N'2025-05-09' AS Date), CAST(N'2025-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1040, 1, 1, 3, CAST(15000.00 AS Decimal(15, 2)), N'chi', N'Taxi sân bay', CAST(N'2025-05-02' AS Date), CAST(N'2025-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1041, 1, 1, 9, CAST(200000.00 AS Decimal(15, 2)), N'chi', N'Mua vé tàu Sài Gòn–Ðồng Tháp', CAST(N'2025-05-10' AS Date), CAST(N'2025-05-10T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1042, 1, 1, 3, CAST(20000.00 AS Decimal(15, 2)), N'chi', N'Xang xe máy', CAST(N'2025-05-11' AS Date), CAST(N'2025-05-11T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1043, 1, 1, 9, CAST(120000.00 AS Decimal(15, 2)), N'chi', N'Xe khách di Cần Thơ', CAST(N'2025-05-12' AS Date), CAST(N'2025-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1045, 1, 1, 4, CAST(200000.00 AS Decimal(15, 2)), N'chi', N'Xem phim CGV', CAST(N'2025-05-14' AS Date), CAST(N'2025-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1046, 1, 1, 4, CAST(100000.00 AS Decimal(15, 2)), N'chi', N'Hát karaoke', CAST(N'2025-05-15' AS Date), CAST(N'2025-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1047, 1, 1, 5, CAST(500000.00 AS Decimal(15, 2)), N'chi', N'Thanh toán di?n tháng 4', CAST(N'2025-05-05' AS Date), CAST(N'2025-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1048, 1, 1, 8, CAST(300000.00 AS Decimal(15, 2)), N'chi', N'Thanh toán tiền nước', CAST(N'2025-05-06' AS Date), CAST(N'2025-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1049, 1, 1, 5, CAST(400000.00 AS Decimal(15, 2)), N'chi', N'Thanh toán internet', CAST(N'2025-05-07' AS Date), CAST(N'2025-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1050, 1, 1, 10, CAST(250000.00 AS Decimal(15, 2)), N'chi', N'Khám nha khoa', CAST(N'2025-05-08' AS Date), CAST(N'2025-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1051, 1, 1, 10, CAST(180000.00 AS Decimal(15, 2)), N'Chi', N'Mua thuốc cảm', CAST(N'2025-05-09' AS Date), CAST(N'2025-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1052, 1, 1, 11, CAST(1500000.00 AS Decimal(15, 2)), N'Chi', N'Học phí tin học', CAST(N'2025-05-10' AS Date), CAST(N'2025-05-10T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1054, 1, 1, 11, CAST(500000.00 AS Decimal(15, 2)), N'chi', N'Khóa học tiếng Anh online', CAST(N'2025-05-12' AS Date), CAST(N'2025-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1055, 1, 1, 2, CAST(15000000.00 AS Decimal(15, 2)), N'thu', N'Lương tháng 5', CAST(N'2025-05-01' AS Date), CAST(N'2025-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1056, 1, 1, 5, CAST(2000000.00 AS Decimal(15, 2)), N'thu', N'Thưởng dự án', CAST(N'2025-05-10' AS Date), CAST(N'2025-05-10T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1058, 1, 1, 30, CAST(1000000.00 AS Decimal(15, 2)), N'thu', N'Bán hàng online', CAST(N'2025-05-12' AS Date), CAST(N'2025-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1059, 1, 1, 8, CAST(300000.00 AS Decimal(15, 2)), N'thu', N'Lãi tiết kiệm', CAST(N'2025-05-13' AS Date), CAST(N'2025-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1060, 1, NULL, 1, CAST(100000.00 AS Decimal(15, 2)), N'CHI', N'Mua đồ ăn', CAST(N'2025-05-18' AS Date), CAST(N'2025-05-18T15:03:12.570' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1061, 1, NULL, 2, CAST(10000000.00 AS Decimal(15, 2)), N'CHI', N'Lương tháng 6', CAST(N'2025-06-08' AS Date), CAST(N'2025-05-18T15:04:54.767' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1062, 1, NULL, 4, CAST(50000000.00 AS Decimal(15, 2)), N'CHI', N'đổ xăng xe ', CAST(N'2025-05-18' AS Date), CAST(N'2025-05-18T16:37:26.757' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1063, 2, NULL, 2, CAST(13000000.00 AS Decimal(15, 2)), N'Thu', N'Lương tháng 5', CAST(N'2025-05-18' AS Date), CAST(N'2025-05-18T23:05:34.970' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1064, 2, NULL, 3, CAST(150000.00 AS Decimal(15, 2)), N'Chi', N'Mua đồ ăn', CAST(N'2025-05-14' AS Date), CAST(N'2025-05-18T23:06:55.437' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1065, 2, NULL, 6, CAST(300000.00 AS Decimal(15, 2)), N'Chi', N'Đi xem phim', CAST(N'2025-05-29' AS Date), CAST(N'2025-05-18T23:14:18.723' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1066, 2, NULL, 8, CAST(300000.00 AS Decimal(15, 2)), N'Chi', N'đóng tiền nhà', CAST(N'2025-05-08' AS Date), CAST(N'2025-05-18T23:20:41.097' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1067, 2, NULL, 12, CAST(3000000.00 AS Decimal(15, 2)), N'Chi', N'đi Đà Lạt', CAST(N'2025-05-28' AS Date), CAST(N'2025-05-18T23:21:08.897' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1068, 2, NULL, 10, CAST(100000.00 AS Decimal(15, 2)), N'Chi', N'mua thuốc cảm', CAST(N'2025-05-14' AS Date), CAST(N'2025-05-18T23:21:34.780' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1069, 2, NULL, 11, CAST(1000000.00 AS Decimal(15, 2)), N'Chi', N'đóng tiền học cho con', CAST(N'2025-05-23' AS Date), CAST(N'2025-05-18T23:21:58.587' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1070, 2, NULL, 19, CAST(200000.00 AS Decimal(15, 2)), N'Chi', N'sửa điện thoại', CAST(N'2025-05-14' AS Date), CAST(N'2025-05-18T23:22:29.073' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1071, 3, NULL, 2, CAST(17000000.00 AS Decimal(15, 2)), N'CHI', N'lương tháng 5', CAST(N'2025-05-08' AS Date), CAST(N'2025-05-18T23:23:43.950' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1072, 3, NULL, 1, CAST(50000.00 AS Decimal(15, 2)), N'Chi', N'ăn vặt', CAST(N'2025-05-09' AS Date), CAST(N'2025-05-18T23:24:09.420' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1073, 3, NULL, 4, CAST(100000.00 AS Decimal(15, 2)), N'Chi', N'đổ xăng', CAST(N'2025-05-10' AS Date), CAST(N'2025-05-18T23:24:28.313' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1074, 3, NULL, 8, CAST(3000000.00 AS Decimal(15, 2)), N'Chi', N'đóng tiền nhà', CAST(N'2025-05-10' AS Date), CAST(N'2025-05-18T23:24:48.560' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1075, 3, NULL, 10, CAST(300000.00 AS Decimal(15, 2)), N'Chi', N'khám bệnh', CAST(N'2025-05-16' AS Date), CAST(N'2025-05-18T23:27:02.423' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1076, 3, NULL, 5, CAST(1000000.00 AS Decimal(15, 2)), N'CHI', N'thưởng dự án', CAST(N'2025-05-19' AS Date), CAST(N'2025-05-18T23:27:33.963' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1077, 3, NULL, 9, CAST(50000.00 AS Decimal(15, 2)), N'Chi', N'thuê xe công nghệ', CAST(N'2025-05-16' AS Date), CAST(N'2025-05-18T23:28:01.577' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1078, 3, NULL, 25, CAST(180000.00 AS Decimal(15, 2)), N'Chi', N'đóng tiền wifi', CAST(N'2025-05-16' AS Date), CAST(N'2025-05-18T23:28:26.080' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1079, 3, NULL, 13, CAST(500000.00 AS Decimal(15, 2)), N'CHI', N'đi sinh nhật bạn', CAST(N'2025-05-22' AS Date), CAST(N'2025-05-18T23:28:59.777' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1080, 4, NULL, 2, CAST(20000000.00 AS Decimal(15, 2)), N'Thu', N'Lương tháng 5', CAST(N'2025-05-08' AS Date), CAST(N'2025-05-18T23:31:10.720' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1081, 4, NULL, 1, CAST(50000.00 AS Decimal(15, 2)), N'Thu', N'Mua đồ ăn', CAST(N'2025-05-09' AS Date), CAST(N'2025-05-18T23:31:28.740' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1082, 4, NULL, 4, CAST(50000.00 AS Decimal(15, 2)), N'Chi', N'Đổ xăng xe', CAST(N'2025-05-10' AS Date), CAST(N'2025-05-18T23:31:42.963' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1083, 4, NULL, 5, CAST(500000.00 AS Decimal(15, 2)), N'Thu', N'Thưởng dự án', CAST(N'2025-05-11' AS Date), CAST(N'2025-05-18T23:32:07.150' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1084, 4, NULL, 3, CAST(400000.00 AS Decimal(15, 2)), N'Chi', N'Mua giày thể thao', CAST(N'2025-05-12' AS Date), CAST(N'2025-05-18T23:33:28.117' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1085, 4, NULL, 8, CAST(2000000.00 AS Decimal(15, 2)), N'Chi', N'đóng tiền nhà', CAST(N'2025-05-03' AS Date), CAST(N'2025-05-18T23:34:03.840' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1086, 4, NULL, 12, CAST(4000000.00 AS Decimal(15, 2)), N'Chi', N'đi Đà Nẵng', CAST(N'2025-05-23' AS Date), CAST(N'2025-05-18T23:34:31.833' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1087, 4, NULL, 17, CAST(2000000.00 AS Decimal(15, 2)), N'CHI', N'đầu tư chứng khoáng', CAST(N'2025-05-21' AS Date), CAST(N'2025-05-18T23:35:11.510' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1088, 4, NULL, 3, CAST(2000000.00 AS Decimal(15, 2)), N'Chi', N'mua quần áo và giày thể thao', CAST(N'2025-05-21' AS Date), CAST(N'2025-05-18T23:35:50.510' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1089, 4, NULL, 11, CAST(700000.00 AS Decimal(15, 2)), N'CHI', N'đóng tiền học cho con', CAST(N'2025-05-22' AS Date), CAST(N'2025-05-18T23:36:17.780' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1090, 5, NULL, 2, CAST(18000000.00 AS Decimal(15, 2)), N'Thu', N'Lương tháng 5', CAST(N'2025-05-09' AS Date), CAST(N'2025-05-18T23:37:31.637' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1091, 5, NULL, 29, CAST(500000.00 AS Decimal(15, 2)), N'Chi', N'Lãi tiết kiệm', CAST(N'2025-05-09' AS Date), CAST(N'2025-05-18T23:37:56.403' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1092, 5, NULL, 8, CAST(3000000.00 AS Decimal(15, 2)), N'Chi', N'đóng tiền nhà', CAST(N'2025-05-02' AS Date), CAST(N'2025-05-18T23:38:23.370' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1093, 5, NULL, 4, CAST(300000.00 AS Decimal(15, 2)), N'Chi', N'đổ xăng xe', CAST(N'2025-05-07' AS Date), CAST(N'2025-05-18T23:38:43.093' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1094, 5, NULL, 11, CAST(400000.00 AS Decimal(15, 2)), N'Chi', N'học tiếng anh', CAST(N'2025-05-16' AS Date), CAST(N'2025-05-18T23:39:05.770' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1095, 5, NULL, 13, CAST(1000000.00 AS Decimal(15, 2)), N'Chi', N'đi đám cưới', CAST(N'2025-05-18' AS Date), CAST(N'2025-05-18T23:39:32.997' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1096, 5, NULL, 10, CAST(1000000.00 AS Decimal(15, 2)), N'Chi', N'Khám nha khoa', CAST(N'2025-05-22' AS Date), CAST(N'2025-05-18T23:39:50.320' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1097, 5, NULL, 3, CAST(2000000.00 AS Decimal(15, 2)), N'Chi', N'mua son và giày ', CAST(N'2025-05-29' AS Date), CAST(N'2025-05-18T23:40:32.487' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1098, 5, NULL, 23, CAST(20000.00 AS Decimal(15, 2)), N'Chi', N'phí gửi xe', CAST(N'2025-05-27' AS Date), CAST(N'2025-05-18T23:40:54.853' AS DateTime))
INSERT [dbo].[GiaoDich] ([MaGiaoDich], [MaNguoiDung], [MaVi], [MaDanhMuc], [SoTien], [Loai], [MoTa], [NgayGiaoDich], [NgayTao]) VALUES (1099, 5, NULL, 30, CAST(3000000.00 AS Decimal(15, 2)), N'Chi', N'job quảng cáo', CAST(N'2025-05-26' AS Date), CAST(N'2025-05-18T23:41:14.720' AS DateTime))
SET IDENTITY_INSERT [dbo].[GiaoDich] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [Email], [MatKhau], [HoTen], [NgayTao]) VALUES (1, N'khanh123', N'khanh@gmail.com', N'123456mahoa', N'Nguyễn Khánh', CAST(N'2025-04-13T16:16:39.487' AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [Email], [MatKhau], [HoTen], [NgayTao]) VALUES (2, N'thanh123', N'thanh@gmail.com', N'123mahoa1', N'Lê Thành', CAST(N'2025-04-13T16:17:23.890' AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [Email], [MatKhau], [HoTen], [NgayTao]) VALUES (3, N'quynh98', N'quynh98@gmail.com', N'123mahoa2', N'Phạm Quỳnh', CAST(N'2025-04-13T16:17:23.890' AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [Email], [MatKhau], [HoTen], [NgayTao]) VALUES (4, N'namhoang', N'namhoang@gmail.com', N'123mahoa3', N'Hoàng Nam', CAST(N'2025-04-13T16:17:23.890' AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [Email], [MatKhau], [HoTen], [NgayTao]) VALUES (5, N'linh2025', N'linh2025@gmail.com', N'123mahoa4', N'Trần Linh', CAST(N'2025-04-13T16:17:23.890' AS DateTime))
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [Email], [MatKhau], [HoTen], [NgayTao]) VALUES (6, N'kietle', N'kietle@gmail.com', N'123mahoa5', N'Lê Kiệt', CAST(N'2025-04-13T16:17:23.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[ViTien] ON 

INSERT [dbo].[ViTien] ([MaVi], [MaNguoiDung], [TenVi], [SoDu], [DonViTienTe], [NgayTao]) VALUES (1, 1, N'Ví tiền mặt', CAST(2000000.00 AS Decimal(15, 2)), N'VND', CAST(N'2025-04-13T16:16:39.487' AS DateTime))
INSERT [dbo].[ViTien] ([MaVi], [MaNguoiDung], [TenVi], [SoDu], [DonViTienTe], [NgayTao]) VALUES (2, 2, N'Ví MoMo', CAST(1500000.00 AS Decimal(15, 2)), N'VND', CAST(N'2025-04-13T16:18:32.697' AS DateTime))
INSERT [dbo].[ViTien] ([MaVi], [MaNguoiDung], [TenVi], [SoDu], [DonViTienTe], [NgayTao]) VALUES (3, 3, N'Tài khoản ngân hàng', CAST(5000000.00 AS Decimal(15, 2)), N'VND', CAST(N'2025-04-13T16:18:32.697' AS DateTime))
INSERT [dbo].[ViTien] ([MaVi], [MaNguoiDung], [TenVi], [SoDu], [DonViTienTe], [NgayTao]) VALUES (4, 4, N'Ví tiền mặt', CAST(800000.00 AS Decimal(15, 2)), N'VND', CAST(N'2025-04-13T16:18:32.697' AS DateTime))
INSERT [dbo].[ViTien] ([MaVi], [MaNguoiDung], [TenVi], [SoDu], [DonViTienTe], [NgayTao]) VALUES (5, 5, N'Tài khoản tiết kiệm', CAST(20000000.00 AS Decimal(15, 2)), N'VND', CAST(N'2025-04-13T16:18:32.697' AS DateTime))
INSERT [dbo].[ViTien] ([MaVi], [MaNguoiDung], [TenVi], [SoDu], [DonViTienTe], [NgayTao]) VALUES (6, 1, N'Ví đầu tư', CAST(3000000.00 AS Decimal(15, 2)), N'VND', CAST(N'2025-04-13T16:18:32.697' AS DateTime))
SET IDENTITY_INSERT [dbo].[ViTien] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__55F68FC0C6054084]    Script Date: 5/18/2025 11:42:45 PM ******/
ALTER TABLE [dbo].[NguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__A9D10534D42EA7B9]    Script Date: 5/18/2025 11:42:45 PM ******/
ALTER TABLE [dbo].[NguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChuyenTien] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DanhMuc] ADD  DEFAULT ((0)) FOR [MacDinh]
GO
ALTER TABLE [dbo].[GiaoDich] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ViTien] ADD  DEFAULT ((0)) FOR [SoDu]
GO
ALTER TABLE [dbo].[ViTien] ADD  DEFAULT (N'VND') FOR [DonViTienTe]
GO
ALTER TABLE [dbo].[ViTien] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChuyenTien]  WITH CHECK ADD FOREIGN KEY([DenVi])
REFERENCES [dbo].[ViTien] ([MaVi])
GO
ALTER TABLE [dbo].[ChuyenTien]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[ChuyenTien]  WITH CHECK ADD FOREIGN KEY([TuVi])
REFERENCES [dbo].[ViTien] ([MaVi])
GO
ALTER TABLE [dbo].[DanhMuc]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD FOREIGN KEY([MaVi])
REFERENCES [dbo].[ViTien] ([MaVi])
GO
ALTER TABLE [dbo].[ViTien]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DanhMuc]  WITH CHECK ADD CHECK  (([Loai]=N'chi' OR [Loai]=N'thu'))
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD CHECK  (([Loai]=N'chi' OR [Loai]=N'thu'))
GO
