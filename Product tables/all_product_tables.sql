USE [s16guest27]
GO
/****** Object:  User [s16guest27]    Script Date: 5/6/2016 2:02:52 PM ******/
CREATE USER [s16guest27] FOR LOGIN [s16guest27] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [s16guest27]
GO
/****** Object:  Table [dbo].[combinations]    Script Date: 5/6/2016 2:02:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[combinations](
	[combo_id] [int] IDENTITY(1,1) NOT NULL,
	[v_p_id] [int] NULL,
	[f_id] [int] NULL,
	[r_type_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[combo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[features]    Script Date: 5/6/2016 2:02:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[features](
	[features_id] [int] IDENTITY(1,1) NOT NULL,
	[feature] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[features_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[platforms]    Script Date: 5/6/2016 2:02:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[platforms](
	[platform_id] [int] IDENTITY(1,1) NOT NULL,
	[platform_name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[platform_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[release_type]    Script Date: 5/6/2016 2:02:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[release_type](
	[r_type_id] [int] IDENTITY(1,1) NOT NULL,
	[r_type] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[r_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[temp_data]    Script Date: 5/6/2016 2:02:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temp_data](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Product] [varchar](20) NULL,
	[Platform] [varchar](20) NULL,
	[Description] [text] NULL,
	[Version] [float] NULL,
	[new_features] [varchar](50) NULL,
	[Release] [float] NULL,
	[type_of_realse] [varchar](20) NULL,
	[date_of_release] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[version_per_platform]    Script Date: 5/6/2016 2:02:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[version_per_platform](
	[v_p_id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [int] NOT NULL,
	[v_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[v_p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[versions]    Script Date: 5/6/2016 2:02:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[versions](
	[version_id] [int] IDENTITY(1,1) NOT NULL,
	[version_number] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[version_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[combinations] ON 

INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (1, 1, 2, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (2, 1, 7, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (3, 1, 6, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (4, 1, 8, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (5, 1, 11, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (6, 1, 1, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (7, 4, 3, 2)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (8, 4, 5, 2)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (9, 4, 4, 2)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (10, 4, 9, 2)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (11, 4, 10, 1)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (12, 2, 2, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (13, 2, 7, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (14, 2, 6, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (15, 2, 8, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (16, 2, 11, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (17, 2, 1, 3)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (18, 3, 3, 2)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (19, 3, 5, 2)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (20, 3, 4, 2)
INSERT [dbo].[combinations] ([combo_id], [v_p_id], [f_id], [r_type_id]) VALUES (21, 3, 9, 2)
SET IDENTITY_INSERT [dbo].[combinations] OFF
SET IDENTITY_INSERT [dbo].[features] ON 

INSERT [dbo].[features] ([features_id], [feature]) VALUES (1, N'address verification')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (2, N'login module')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (3, N'patient authentication')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (4, N'patient e-bill')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (5, N'patient medication form')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (6, N'patient profile')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (7, N'patient registration')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (8, N'patient release form')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (9, N'patient reporting')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (10, N'patient reporting bug fix')
INSERT [dbo].[features] ([features_id], [feature]) VALUES (11, N'physician profile')
SET IDENTITY_INSERT [dbo].[features] OFF
SET IDENTITY_INSERT [dbo].[platforms] ON 

INSERT [dbo].[platforms] ([platform_id], [platform_name]) VALUES (1, N'Linux')
INSERT [dbo].[platforms] ([platform_id], [platform_name]) VALUES (2, N'Windows')
SET IDENTITY_INSERT [dbo].[platforms] OFF
SET IDENTITY_INSERT [dbo].[release_type] ON 

INSERT [dbo].[release_type] ([r_type_id], [r_type]) VALUES (1, N'bug-fix release')
INSERT [dbo].[release_type] ([r_type_id], [r_type]) VALUES (2, N'new features release')
INSERT [dbo].[release_type] ([r_type_id], [r_type]) VALUES (3, N'new product release')
SET IDENTITY_INSERT [dbo].[release_type] OFF
SET IDENTITY_INSERT [dbo].[temp_data] ON 

INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (1, N'EHR System', N'Windows', N'health records system for the patients', 1.1, N'login module', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (2, N'EHR System', N'Windows', N'health records system for the patients', 1.1, N'patient registration', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (3, N'EHR System', N'Windows', N'health records system for the patients', 1.1, N'patient profile', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (4, N'EHR System', N'Windows', N'health records system for the patients', 1.1, N'patient release form', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (5, N'EHR System', N'Windows', N'health records system for the patients', 1.1, N'physician profile', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (6, N'EHR System', N'Windows', N'health records system for the patients', 1.1, N'address verification', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (7, N'EHR System', N'Linux', N'health records system for the patients', 1.2, N'login module', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (8, N'EHR System', N'Linux', N'health records system for the patients', 1.2, N'patient registration', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (9, N'EHR System', N'Linux', N'health records system for the patients', 1.2, N'patient profile', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (10, N'EHR System', N'Linux', N'health records system for the patients', 1.2, N'patient release form', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (11, N'EHR System', N'Linux', N'health records system for the patients', 1.2, N'physician profile', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (12, N'EHR System', N'Linux', N'health records system for the patients', 1.1, N'address verification', 1.1, N'new product release', CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (13, N'EHR System', N'Windows', N'health records system for the patients', 2.1, N'patient authentication', 2.1, N'new features release', CAST(N'2000-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (14, N'EHR System', N'Windows', N'health records system for the patients', 2.1, N'patient medication form', 2.1, N'new features release', CAST(N'2000-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (15, N'EHR System', N'Windows', N'health records system for the patients', 2.1, N'patient e-bill', 2.1, N'new features release', CAST(N'2000-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (16, N'EHR System', N'Windows', N'health records system for the patients', 2.1, N'patient reporting', 2.1, N'new features release', CAST(N'2000-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (17, N'EHR System', N'Linux', N'health records system for the patients', 2.2, N'patient authentication', 2.1, N'new features release', CAST(N'2000-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (18, N'EHR System', N'Linux', N'health records system for the patients', 2.2, N'patient medication form', 2.1, N'new features release', CAST(N'2000-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (19, N'EHR System', N'Linux', N'health records system for the patients', 2.2, N'patient e-bill', 2.1, N'new features release', CAST(N'2000-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (20, N'EHR System', N'Linux', N'health records system for the patients', 2.2, N'patient reporting', 2.1, N'new features release', CAST(N'2000-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[temp_data] ([Product_id], [Product], [Platform], [Description], [Version], [new_features], [Release], [type_of_realse], [date_of_release]) VALUES (21, N'EHR System', N'Linux', N'health records system for the patients', 2.2, N'patient reporting bug fix', 2.2, N'bug-fix release', CAST(N'2000-06-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[temp_data] OFF
SET IDENTITY_INSERT [dbo].[version_per_platform] ON 

INSERT [dbo].[version_per_platform] ([v_p_id], [p_id], [v_id]) VALUES (1, 1, 2)
INSERT [dbo].[version_per_platform] ([v_p_id], [p_id], [v_id]) VALUES (2, 2, 1)
INSERT [dbo].[version_per_platform] ([v_p_id], [p_id], [v_id]) VALUES (3, 2, 3)
INSERT [dbo].[version_per_platform] ([v_p_id], [p_id], [v_id]) VALUES (4, 1, 4)
SET IDENTITY_INSERT [dbo].[version_per_platform] OFF
SET IDENTITY_INSERT [dbo].[versions] ON 

INSERT [dbo].[versions] ([version_id], [version_number]) VALUES (1, 1.1)
INSERT [dbo].[versions] ([version_id], [version_number]) VALUES (2, 1.2)
INSERT [dbo].[versions] ([version_id], [version_number]) VALUES (3, 2.1)
INSERT [dbo].[versions] ([version_id], [version_number]) VALUES (4, 2.2)
SET IDENTITY_INSERT [dbo].[versions] OFF
