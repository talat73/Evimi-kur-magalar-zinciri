USE [EvimiKur]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 19.03.2021 11:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[AdresID] [int] IDENTITY(1,1) NOT NULL,
	[SokakAdi] [nvarchar](70) NULL,
	[EvAdresi] [nvarchar](200) NOT NULL,
	[MahalleID] [int] NOT NULL,
	[CalisanID] [int] NULL,
	[TedarikciID] [int] NOT NULL,
	[MusterıID] [int] NULL,
 CONSTRAINT [PK_Adres] PRIMARY KEY CLUSTERED 
(
	[AdresID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnaKategori]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnaKategori](
	[AnaKategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_AnaKategori] PRIMARY KEY CLUSTERED 
(
	[AnaKategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bayi]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bayi](
	[BayiID] [int] IDENTITY(1,1) NOT NULL,
	[AnaBayiID] [int] NULL,
	[Sehir] [nvarchar](20) NOT NULL,
	[AdresID] [int] NOT NULL,
 CONSTRAINT [PK_Bayi] PRIMARY KEY CLUSTERED 
(
	[BayiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BayiDepartman]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BayiDepartman](
	[BayiID] [int] NOT NULL,
	[DepartmanID] [int] NOT NULL,
 CONSTRAINT [PK_BayiDepartman] PRIMARY KEY CLUSTERED 
(
	[BayiID] ASC,
	[DepartmanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BayiUrun]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BayiUrun](
	[BayiID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
 CONSTRAINT [PK_BayiUrun] PRIMARY KEY CLUSTERED 
(
	[BayiID] ASC,
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bedenler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bedenler](
	[BedenID] [int] IDENTITY(1,1) NOT NULL,
	[Beden] [char](10) NOT NULL,
 CONSTRAINT [PK_Bedenler] PRIMARY KEY CLUSTERED 
(
	[BedenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalisanIseGirisCikis]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalisanIseGirisCikis](
	[CalisanID] [int] NOT NULL,
	[Tarih] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calisanlar]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calisanlar](
	[CalisanID] [int] IDENTITY(1,1) NOT NULL,
	[CalisanAdi] [nvarchar](30) NOT NULL,
	[CalisanSoyad] [nvarchar](30) NOT NULL,
	[DogumTarihi] [date] NOT NULL,
	[DogumYeri] [nvarchar](30) NOT NULL,
	[DepartmanID] [int] NOT NULL,
	[BayiID] [int] NOT NULL,
	[YoneticiID] [int] NOT NULL,
	[UnvanId] [int] NULL,
 CONSTRAINT [PK_Calisanlar] PRIMARY KEY CLUSTERED 
(
	[CalisanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departman]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departman](
	[DepartmanID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmanAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Departman] PRIMARY KEY CLUSTERED 
(
	[DepartmanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giderler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giderler](
	[GiderID] [int] IDENTITY(1,1) NOT NULL,
	[SonOdemeTarihi] [date] NOT NULL,
	[FaturaNo] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Giderler] PRIMARY KEY CLUSTERED 
(
	[GiderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilceler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilceler](
	[IlceNo] [int] IDENTITY(1,1) NOT NULL,
	[IlceAdi] [nvarchar](50) NOT NULL,
	[IlNo] [int] NOT NULL,
 CONSTRAINT [PK_Ilceler] PRIMARY KEY CLUSTERED 
(
	[IlceNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iller]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iller](
	[IlNo] [int] IDENTITY(1,1) NOT NULL,
	[IlAdi] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Iller] PRIMARY KEY CLUSTERED 
(
	[IlNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IseBaslamaAyrilmaTarihi]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IseBaslamaAyrilmaTarihi](
	[IsGirisCikisID] [int] IDENTITY(1,1) NOT NULL,
	[IseBaslamaTarhi] [date] NOT NULL,
	[IstenAyrilisTarihi] [date] NULL,
	[CalisanID] [int] NOT NULL,
 CONSTRAINT [PK_IseBaslamaAyrilmaTarihi] PRIMARY KEY CLUSTERED 
(
	[IsGirisCikisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kargolar]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kargolar](
	[KargoID] [int] IDENTITY(1,1) NOT NULL,
	[KargoSirketAdi] [nvarchar](50) NOT NULL,
	[KargoNo] [char](11) NOT NULL,
	[KargoTelNo] [char](11) NOT NULL,
 CONSTRAINT [PK_Kargolar] PRIMARY KEY CLUSTERED 
(
	[KargoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](25) NOT NULL,
	[AnaKategoriID] [int] NOT NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maas]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maas](
	[MaasID] [int] IDENTITY(1,1) NOT NULL,
	[MaasMiktari] [money] NOT NULL,
	[CalisanID] [int] NOT NULL,
 CONSTRAINT [PK_Maas] PRIMARY KEY CLUSTERED 
(
	[MaasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaasTarih]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaasTarih](
	[MaasID] [int] NOT NULL,
	[MaasTarihi] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mahalle]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mahalle](
	[MahalleID] [int] IDENTITY(1,1) NOT NULL,
	[MahalleAdi] [nvarchar](100) NOT NULL,
	[IlceID] [int] NOT NULL,
 CONSTRAINT [PK_Mahalle] PRIMARY KEY CLUSTERED 
(
	[MahalleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marka]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marka](
	[MarkaID] [int] IDENTITY(1,1) NOT NULL,
	[MarkaAdi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Marka] PRIMARY KEY CLUSTERED 
(
	[MarkaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[ModelID] [int] IDENTITY(1,1) NOT NULL,
	[ModelAdi] [nvarchar](100) NOT NULL,
	[MarkaID] [int] NOT NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAdi] [nvarchar](30) NOT NULL,
	[MusteriSoyad] [nvarchar](30) NOT NULL,
	[DogumTarihi] [date] NULL,
	[Cinsyet] [char](1) NOT NULL,
	[TelefonNo] [char](11) NOT NULL,
	[MusteriEmail] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Renkler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Renkler](
	[RenkID] [int] IDENTITY(1,1) NOT NULL,
	[RenkKodu] [char](10) NULL,
 CONSTRAINT [PK_Renkler] PRIMARY KEY CLUSTERED 
(
	[RenkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resimler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resimler](
	[ResimID] [int] IDENTITY(1,1) NOT NULL,
	[Resim] [image] NOT NULL,
	[UrunID] [int] NOT NULL,
 CONSTRAINT [PK_Resimler] PRIMARY KEY CLUSTERED 
(
	[ResimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sepet]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sepet](
	[SepetID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NOT NULL,
	[Adet] [tinyint] NOT NULL,
	[MusteriID] [int] NOT NULL,
 CONSTRAINT [PK_Sepet] PRIMARY KEY CLUSTERED 
(
	[SepetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisBilgi]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisBilgi](
	[SiparisID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[BirimFiyati] [int] NOT NULL,
	[Miktar] [tinyint] NOT NULL,
 CONSTRAINT [PK_SiparisBilgi] PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC,
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[SiparisID] [int] IDENTITY(1,1) NOT NULL,
	[SiparisTarihi] [date] NOT NULL,
	[MusteriID] [int] NOT NULL,
	[CalisanID] [int] NOT NULL,
	[AdresID] [int] NOT NULL,
	[KargoID] [int] NOT NULL,
 CONSTRAINT [PK_Siparisler] PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stok]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stok](
	[StokID] [int] IDENTITY(1,1) NOT NULL,
	[BayiID] [int] NOT NULL,
	[StokMiktari] [int] NOT NULL,
	[TeminTarihi] [date] NOT NULL,
	[UrunID] [int] NOT NULL,
 CONSTRAINT [PK_Stok] PRIMARY KEY CLUSTERED 
(
	[StokID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikciler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikciler](
	[TedarikciID] [int] IDENTITY(1,1) NOT NULL,
	[SirketAdi] [nvarchar](50) NOT NULL,
	[SorumluAdi] [nvarchar](50) NOT NULL,
	[IletisimKonusu] [nvarchar](150) NULL,
	[TelefonNo] [char](11) NOT NULL,
	[FaxNo] [char](11) NULL,
	[WebSitesi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tedarikciler] PRIMARY KEY CLUSTERED 
(
	[TedarikciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unvan]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unvan](
	[UnvanID] [int] IDENTITY(1,1) NOT NULL,
	[UnvanAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Unvan] PRIMARY KEY CLUSTERED 
(
	[UnvanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunlerID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriID] [int] NOT NULL,
	[UrunAdi] [nvarchar](30) NOT NULL,
	[Fiyat] [money] NOT NULL,
	[RenkID] [int] NOT NULL,
	[BedenID] [int] NULL,
	[ModelID] [int] NOT NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunlerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunTedarikci]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunTedarikci](
	[UrunID] [int] NOT NULL,
	[TedarikciID] [int] NOT NULL,
	[UrunFiyati] [money] NULL,
	[UrunAdeti] [int] NULL,
	[SatinAlimTarihi] [date] NULL,
 CONSTRAINT [PK_UrunTedarikci] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC,
	[TedarikciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yonetici]    Script Date: 19.03.2021 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetici](
	[YoneticiID] [int] IDENTITY(1,1) NOT NULL,
	[CalisanID] [int] NOT NULL,
 CONSTRAINT [PK_Yonetici] PRIMARY KEY CLUSTERED 
(
	[YoneticiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CalisanIseGirisCikis] ADD  CONSTRAINT [DF_CalisanIseGirisCikis_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Calisanlar] FOREIGN KEY([CalisanID])
REFERENCES [dbo].[Calisanlar] ([CalisanID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Calisanlar]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Mahalle] FOREIGN KEY([MahalleID])
REFERENCES [dbo].[Mahalle] ([MahalleID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Mahalle]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Musteriler] FOREIGN KEY([MusterıID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Musteriler]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Tedarikciler] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikciler] ([TedarikciID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Tedarikciler]
GO
ALTER TABLE [dbo].[BayiDepartman]  WITH CHECK ADD  CONSTRAINT [FK_BayiDepartman_Bayi] FOREIGN KEY([BayiID])
REFERENCES [dbo].[Bayi] ([BayiID])
GO
ALTER TABLE [dbo].[BayiDepartman] CHECK CONSTRAINT [FK_BayiDepartman_Bayi]
GO
ALTER TABLE [dbo].[BayiDepartman]  WITH CHECK ADD  CONSTRAINT [FK_BayiDepartman_Departman] FOREIGN KEY([DepartmanID])
REFERENCES [dbo].[Departman] ([DepartmanID])
GO
ALTER TABLE [dbo].[BayiDepartman] CHECK CONSTRAINT [FK_BayiDepartman_Departman]
GO
ALTER TABLE [dbo].[BayiUrun]  WITH CHECK ADD  CONSTRAINT [FK_BayiUrun_Bayi] FOREIGN KEY([BayiID])
REFERENCES [dbo].[Bayi] ([BayiID])
GO
ALTER TABLE [dbo].[BayiUrun] CHECK CONSTRAINT [FK_BayiUrun_Bayi]
GO
ALTER TABLE [dbo].[BayiUrun]  WITH CHECK ADD  CONSTRAINT [FK_BayiUrun_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunlerID])
GO
ALTER TABLE [dbo].[BayiUrun] CHECK CONSTRAINT [FK_BayiUrun_Urunler]
GO
ALTER TABLE [dbo].[CalisanIseGirisCikis]  WITH CHECK ADD  CONSTRAINT [FK_CalisanIseGirisCikis_Calisanlar] FOREIGN KEY([CalisanID])
REFERENCES [dbo].[Calisanlar] ([CalisanID])
GO
ALTER TABLE [dbo].[CalisanIseGirisCikis] CHECK CONSTRAINT [FK_CalisanIseGirisCikis_Calisanlar]
GO
ALTER TABLE [dbo].[Calisanlar]  WITH CHECK ADD  CONSTRAINT [FK_Calisanlar_Departman] FOREIGN KEY([DepartmanID])
REFERENCES [dbo].[Departman] ([DepartmanID])
GO
ALTER TABLE [dbo].[Calisanlar] CHECK CONSTRAINT [FK_Calisanlar_Departman]
GO
ALTER TABLE [dbo].[Calisanlar]  WITH CHECK ADD  CONSTRAINT [FK_Calisanlar_Unvan] FOREIGN KEY([UnvanId])
REFERENCES [dbo].[Unvan] ([UnvanID])
GO
ALTER TABLE [dbo].[Calisanlar] CHECK CONSTRAINT [FK_Calisanlar_Unvan]
GO
ALTER TABLE [dbo].[Calisanlar]  WITH CHECK ADD  CONSTRAINT [FK_Calisanlar_Yonetici] FOREIGN KEY([YoneticiID])
REFERENCES [dbo].[Yonetici] ([YoneticiID])
GO
ALTER TABLE [dbo].[Calisanlar] CHECK CONSTRAINT [FK_Calisanlar_Yonetici]
GO
ALTER TABLE [dbo].[Ilceler]  WITH CHECK ADD  CONSTRAINT [FK_Ilceler_Iller] FOREIGN KEY([IlNo])
REFERENCES [dbo].[Iller] ([IlNo])
GO
ALTER TABLE [dbo].[Ilceler] CHECK CONSTRAINT [FK_Ilceler_Iller]
GO
ALTER TABLE [dbo].[IseBaslamaAyrilmaTarihi]  WITH CHECK ADD  CONSTRAINT [FK_IseBaslamaAyrilmaTarihi_Calisanlar] FOREIGN KEY([CalisanID])
REFERENCES [dbo].[Calisanlar] ([CalisanID])
GO
ALTER TABLE [dbo].[IseBaslamaAyrilmaTarihi] CHECK CONSTRAINT [FK_IseBaslamaAyrilmaTarihi_Calisanlar]
GO
ALTER TABLE [dbo].[Kategoriler]  WITH CHECK ADD  CONSTRAINT [FK_Kategoriler_AnaKategori] FOREIGN KEY([AnaKategoriID])
REFERENCES [dbo].[AnaKategori] ([AnaKategoriID])
GO
ALTER TABLE [dbo].[Kategoriler] CHECK CONSTRAINT [FK_Kategoriler_AnaKategori]
GO
ALTER TABLE [dbo].[Maas]  WITH CHECK ADD  CONSTRAINT [FK_Maas_Calisanlar] FOREIGN KEY([CalisanID])
REFERENCES [dbo].[Calisanlar] ([CalisanID])
GO
ALTER TABLE [dbo].[Maas] CHECK CONSTRAINT [FK_Maas_Calisanlar]
GO
ALTER TABLE [dbo].[MaasTarih]  WITH CHECK ADD  CONSTRAINT [FK_MaasTarih_Maas] FOREIGN KEY([MaasID])
REFERENCES [dbo].[Maas] ([MaasID])
GO
ALTER TABLE [dbo].[MaasTarih] CHECK CONSTRAINT [FK_MaasTarih_Maas]
GO
ALTER TABLE [dbo].[Mahalle]  WITH CHECK ADD  CONSTRAINT [FK_Mahalle_Ilceler] FOREIGN KEY([IlceID])
REFERENCES [dbo].[Ilceler] ([IlceNo])
GO
ALTER TABLE [dbo].[Mahalle] CHECK CONSTRAINT [FK_Mahalle_Ilceler]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_Marka1] FOREIGN KEY([MarkaID])
REFERENCES [dbo].[Marka] ([MarkaID])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_Marka1]
GO
ALTER TABLE [dbo].[Resimler]  WITH CHECK ADD  CONSTRAINT [FK_Resimler_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunlerID])
GO
ALTER TABLE [dbo].[Resimler] CHECK CONSTRAINT [FK_Resimler_Urunler]
GO
ALTER TABLE [dbo].[Sepet]  WITH CHECK ADD  CONSTRAINT [FK_Sepet_Musteriler] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[Sepet] CHECK CONSTRAINT [FK_Sepet_Musteriler]
GO
ALTER TABLE [dbo].[Sepet]  WITH CHECK ADD  CONSTRAINT [FK_Sepet_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunlerID])
GO
ALTER TABLE [dbo].[Sepet] CHECK CONSTRAINT [FK_Sepet_Urunler]
GO
ALTER TABLE [dbo].[SiparisBilgi]  WITH CHECK ADD  CONSTRAINT [FK_SiparisBilgi_Siparisler] FOREIGN KEY([SiparisID])
REFERENCES [dbo].[Siparisler] ([SiparisID])
GO
ALTER TABLE [dbo].[SiparisBilgi] CHECK CONSTRAINT [FK_SiparisBilgi_Siparisler]
GO
ALTER TABLE [dbo].[SiparisBilgi]  WITH CHECK ADD  CONSTRAINT [FK_SiparisBilgi_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunlerID])
GO
ALTER TABLE [dbo].[SiparisBilgi] CHECK CONSTRAINT [FK_SiparisBilgi_Urunler]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_Siparisler_Calisanlar] FOREIGN KEY([CalisanID])
REFERENCES [dbo].[Calisanlar] ([CalisanID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_Siparisler_Calisanlar]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_Siparisler_Kargolar] FOREIGN KEY([KargoID])
REFERENCES [dbo].[Kargolar] ([KargoID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_Siparisler_Kargolar]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_Siparisler_Musteriler] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_Siparisler_Musteriler]
GO
ALTER TABLE [dbo].[Stok]  WITH CHECK ADD  CONSTRAINT [FK_Stok_Bayi] FOREIGN KEY([BayiID])
REFERENCES [dbo].[Bayi] ([BayiID])
GO
ALTER TABLE [dbo].[Stok] CHECK CONSTRAINT [FK_Stok_Bayi]
GO
ALTER TABLE [dbo].[Stok]  WITH CHECK ADD  CONSTRAINT [FK_Stok_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunlerID])
GO
ALTER TABLE [dbo].[Stok] CHECK CONSTRAINT [FK_Stok_Urunler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Bedenler] FOREIGN KEY([BedenID])
REFERENCES [dbo].[Bedenler] ([BedenID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Bedenler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategoriler] ([KategoriID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Model1] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ModelID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Model1]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Renkler] FOREIGN KEY([RenkID])
REFERENCES [dbo].[Renkler] ([RenkID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Renkler]
GO
ALTER TABLE [dbo].[UrunTedarikci]  WITH CHECK ADD  CONSTRAINT [FK_UrunTedarikci_Tedarikciler] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikciler] ([TedarikciID])
GO
ALTER TABLE [dbo].[UrunTedarikci] CHECK CONSTRAINT [FK_UrunTedarikci_Tedarikciler]
GO
ALTER TABLE [dbo].[UrunTedarikci]  WITH CHECK ADD  CONSTRAINT [FK_UrunTedarikci_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunlerID])
GO
ALTER TABLE [dbo].[UrunTedarikci] CHECK CONSTRAINT [FK_UrunTedarikci_Urunler]
GO
ALTER TABLE [dbo].[Yonetici]  WITH CHECK ADD  CONSTRAINT [FK_Yonetici_Calisanlar] FOREIGN KEY([CalisanID])
REFERENCES [dbo].[Calisanlar] ([CalisanID])
GO
ALTER TABLE [dbo].[Yonetici] CHECK CONSTRAINT [FK_Yonetici_Calisanlar]
GO
