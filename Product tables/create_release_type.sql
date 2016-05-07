USE [s16guest27]
GO

/****** Object:  Table [dbo].[release_type]    Script Date: 5/6/2016 12:57:46 PM ******/
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
