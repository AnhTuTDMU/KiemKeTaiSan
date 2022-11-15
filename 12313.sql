USE [KiemKeTaiSan]
GO
/****** Object:  Table [dbo].[ChiTietPhieuKiemKe]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuKiemKe](
	[MaPhieu] [int] NOT NULL,
	[MaPB] [int] NOT NULL,
	[ConTot] [int] NOT NULL,
	[KemPC] [int] NOT NULL,
	[MatPC] [int] NOT NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_ChiTietPhieuKiemKe] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC,
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](200) NULL,
	[MoTa] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVucPhong]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVucPhong](
	[MaKV] [int] IDENTITY(1,1) NOT NULL,
	[TenKV] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_KhuVucPhong] PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLP] [int] IDENTITY(1,1) NOT NULL,
	[TenLP] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiSan]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiSan](
	[MaLoaiTS] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTS] [nvarchar](200) NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_LoaiTS] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[MaDV] [int] NOT NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[HoVaTen] [nvarchar](100) NOT NULL,
	[ChucDanh] [nvarchar](100) NOT NULL,
	[SoDienThoai] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomTaiSan]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomTaiSan](
	[MaNhomTS] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiTS] [int] NOT NULL,
	[TenNhomTS] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_NhomTaiSan] PRIMARY KEY CLUSTERED 
(
	[MaNhomTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanBo]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanBo](
	[MaPB] [int] IDENTITY(1,1) NOT NULL,
	[MaTS] [int] NOT NULL,
	[MaND] [int] NULL,
	[MaPhong] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DvTinh] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_PhanBo] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuKiemKe]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuKiemKe](
	[MaPhieu] [int] IDENTITY(1,1) NOT NULL,
	[MaPB] [int] NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[TrangThai] [smallint] NOT NULL,
	[NgayCapNhat] [datetime] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_PhieuKiemKe] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[MaLP] [int] NOT NULL,
	[MaKV] [int] NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_Phong_1] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiSan]    Script Date: 10/31/2022 9:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiSan](
	[MaTS] [int] IDENTITY(1,1) NOT NULL,
	[MaNhomTS] [int] NOT NULL,
	[TenTS] [nvarchar](200) NOT NULL,
	[GiaTri] [int] NULL,
	[SoLuongChinh] [int] NULL,
	[SoLuong] [int] NULL,
	[HangSanXuat] [nvarchar](200) NULL,
	[NamSanXuat] [date] NULL,
	[NuocSanXuat] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_TaiSan] PRIMARY KEY CLUSTERED 
(
	[MaTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DonVi] ON 

INSERT [dbo].[DonVi] ([MaDV], [TenDV], [MoTa], [NgayCapNhat], [NgayTao]) VALUES (1, N'Ong Trum', NULL, CAST(N'2022-10-24T00:00:00.000' AS DateTime), CAST(N'2022-10-24T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DonVi] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuVucPhong] ON 

INSERT [dbo].[KhuVucPhong] ([MaKV], [TenKV], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (7, N'Dãy E', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuVucPhong] ([MaKV], [TenKV], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (8, N'Dãy H', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhuVucPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

INSERT [dbo].[LoaiPhong] ([MaLP], [TenLP], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, N'Thực hành', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[LoaiPhong] ([MaLP], [TenLP], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, N'Lý thuyết', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiSan] ON 

INSERT [dbo].[LoaiTaiSan] ([MaLoaiTS], [TenLoaiTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, N'Công cụ dụng cụ', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[LoaiTaiSan] ([MaLoaiTS], [TenLoaiTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, N'Tài sản cố định', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[LoaiTaiSan] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaND], [MaDV], [TenDangNhap], [MatKhau], [HoVaTen], [ChucDanh], [SoDienThoai], [Email], [DiaChi], [NgayCapNhat], [NgayTao]) VALUES (2, 1, N'sadasd', N'asdasd', N'asdsad', N'Test', NULL, NULL, NULL, CAST(N'2022-10-24T00:00:00.000' AS DateTime), CAST(N'2022-10-24T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[NhomTaiSan] ON 

INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, 1, N'Bàn', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, 1, N'Ghế', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (4, 1, N'Tủ', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (5, 1, N'Kệ', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (6, 2, N'Bộ máy vi tính', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (7, 2, N'Máy đa năng: in, photo, scan', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (8, 2, N'Máy in', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (9, 2, N'Tủ lạnh', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (10, 2, N'Tivi', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (11, 2, N'Camera', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[NhomTaiSan] ([MaNhomTS], [MaLoaiTS], [TenNhomTS], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (12, 2, N'Máy điều hòa', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[NhomTaiSan] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanBo] ON 

INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (106, 10, 2, 2, 6, NULL, N'Không có', CAST(N'2022-10-31T20:29:12.543' AS DateTime), CAST(N'2022-10-30T15:48:49.183' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (107, 11, 2, 2, 5, NULL, N'Không có', CAST(N'2022-10-30T15:48:49.197' AS DateTime), CAST(N'2022-10-30T15:48:49.197' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (108, 14, 2, 2, 5, NULL, N'Không có', CAST(N'2022-10-30T15:48:49.207' AS DateTime), CAST(N'2022-10-30T15:48:49.207' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (109, 18, 2, 2, 5, NULL, N'Không có', CAST(N'2022-10-30T15:48:49.220' AS DateTime), CAST(N'2022-10-30T15:48:49.220' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (110, 10, 2, 1, 3, NULL, N'Không có', CAST(N'2022-10-30T16:03:20.190' AS DateTime), CAST(N'2022-10-30T16:03:20.190' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (111, 14, 2, 1, 2, NULL, N'Không có', CAST(N'2022-10-30T16:03:20.210' AS DateTime), CAST(N'2022-10-30T16:03:20.210' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (112, 5, 2, 1, 4, NULL, N'Không có', CAST(N'2022-10-30T16:03:20.220' AS DateTime), CAST(N'2022-10-30T16:03:20.220' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (113, 9, 2, 2, 1, NULL, N'1', CAST(N'2022-10-31T20:29:12.497' AS DateTime), CAST(N'2022-10-31T20:29:12.497' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (114, 5, 2, 2, 1, NULL, N'2', CAST(N'2022-10-31T20:29:12.517' AS DateTime), CAST(N'2022-10-31T20:29:12.517' AS DateTime))
INSERT [dbo].[PhanBo] ([MaPB], [MaTS], [MaND], [MaPhong], [SoLuong], [DvTinh], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (115, 3, 2, 2, 1, NULL, N'3', CAST(N'2022-10-31T20:29:12.527' AS DateTime), CAST(N'2022-10-31T20:29:12.527' AS DateTime))
SET IDENTITY_INSERT [dbo].[PhanBo] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([MaPhong], [MaLP], [MaKV], [TenPhong], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, 2, 7, N'Phòng E3-103', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Phong] ([MaPhong], [MaLP], [MaKV], [TenPhong], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, 2, 7, N'Phòng E3-104', NULL, CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Phong] ([MaPhong], [MaLP], [MaKV], [TenPhong], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (5, 2, 7, N'Phòng E3-105', NULL, CAST(N'2022-10-24T00:00:00.000' AS DateTime), CAST(N'2022-10-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Phong] ([MaPhong], [MaLP], [MaKV], [TenPhong], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (6, 2, 7, N'Phòng E3-302', NULL, CAST(N'2022-10-24T00:00:00.000' AS DateTime), CAST(N'2022-10-24T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiSan] ON 

INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (1, 1, N'Bàn uống nước', NULL, 30, 30, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (2, 1, N'Bàn làm việc', NULL, 30, 30, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (3, 1, N'Bàn học', NULL, 40, 39, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (4, 2, N'Ghế gỗ', NULL, 50, 50, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (5, 2, N'Ghế nhựa', NULL, 60, 55, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (9, 4, N'Tủ gỗ 4 ngăn', NULL, 30, 29, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (10, 4, N'Tủ sắt', NULL, 15, 6, N'Không có', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (11, 6, N'Bộ máy vi tính - Samsung', NULL, 30, 25, N'Samsung', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (14, 6, N'Bộ máy vi tính - LG', NULL, 30, 23, N'LG', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TaiSan] ([MaTS], [MaNhomTS], [TenTS], [GiaTri], [SoLuongChinh], [SoLuong], [HangSanXuat], [NamSanXuat], [NuocSanXuat], [GhiChu], [NgayCapNhat], [NgayTao]) VALUES (18, 8, N'Máy in - HP laserJet P2025d', NULL, 10, 5, N'', NULL, N'Không có', N'Không có', CAST(N'2022-10-16T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[TaiSan] OFF
GO
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF_NguoiDung_ChucDanh]  DEFAULT ('0') FOR [ChucDanh]
GO
ALTER TABLE [dbo].[PhanBo] ADD  CONSTRAINT [DF_PhanBo_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_GiaTri]  DEFAULT ((0)) FOR [GiaTri]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_SoLuongChinh]  DEFAULT ((0)) FOR [SoLuongChinh]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_HangSanXuat]  DEFAULT (N'Không có') FOR [HangSanXuat]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_NuocSanXuat]  DEFAULT (N'Không có') FOR [NuocSanXuat]
GO
ALTER TABLE [dbo].[TaiSan] ADD  CONSTRAINT [DF_TaiSan_GhiChu]  DEFAULT (N'Không có') FOR [GhiChu]
GO
ALTER TABLE [dbo].[ChiTietPhieuKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuKiemKe_PhanBo] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhanBo] ([MaPB])
GO
ALTER TABLE [dbo].[ChiTietPhieuKiemKe] CHECK CONSTRAINT [FK_ChiTietPhieuKiemKe_PhanBo]
GO
ALTER TABLE [dbo].[ChiTietPhieuKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuKiemKe_PhieuKiemKe] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuKiemKe] ([MaPhieu])
GO
ALTER TABLE [dbo].[ChiTietPhieuKiemKe] CHECK CONSTRAINT [FK_ChiTietPhieuKiemKe_PhieuKiemKe]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_DonVi] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DonVi] ([MaDV])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_DonVi]
GO
ALTER TABLE [dbo].[NhomTaiSan]  WITH CHECK ADD  CONSTRAINT [FK_NhomTaiSan_LoaiTaiSan] FOREIGN KEY([MaLoaiTS])
REFERENCES [dbo].[LoaiTaiSan] ([MaLoaiTS])
GO
ALTER TABLE [dbo].[NhomTaiSan] CHECK CONSTRAINT [FK_NhomTaiSan_LoaiTaiSan]
GO
ALTER TABLE [dbo].[PhanBo]  WITH CHECK ADD  CONSTRAINT [FK_PhanBo_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[PhanBo] CHECK CONSTRAINT [FK_PhanBo_NguoiDung]
GO
ALTER TABLE [dbo].[PhanBo]  WITH CHECK ADD  CONSTRAINT [FK_PhanBo_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[PhanBo] CHECK CONSTRAINT [FK_PhanBo_Phong]
GO
ALTER TABLE [dbo].[PhanBo]  WITH CHECK ADD  CONSTRAINT [FK_PhanBo_TaiSan] FOREIGN KEY([MaTS])
REFERENCES [dbo].[TaiSan] ([MaTS])
GO
ALTER TABLE [dbo].[PhanBo] CHECK CONSTRAINT [FK_PhanBo_TaiSan]
GO
ALTER TABLE [dbo].[PhieuKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKiemKe_PhanBo] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhanBo] ([MaPB])
GO
ALTER TABLE [dbo].[PhieuKiemKe] CHECK CONSTRAINT [FK_PhieuKiemKe_PhanBo]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_KhuVucPhong] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KhuVucPhong] ([MaKV])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_KhuVucPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLP])
REFERENCES [dbo].[LoaiPhong] ([MaLP])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[TaiSan]  WITH CHECK ADD  CONSTRAINT [FK_TaiSan_NhomTaiSan] FOREIGN KEY([MaNhomTS])
REFERENCES [dbo].[NhomTaiSan] ([MaNhomTS])
GO
ALTER TABLE [dbo].[TaiSan] CHECK CONSTRAINT [FK_TaiSan_NhomTaiSan]
GO
