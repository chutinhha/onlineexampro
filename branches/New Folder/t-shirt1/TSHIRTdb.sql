USE [Tshirt]
GO
/****** Object:  Table [dbo].[ecommerce_Size]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Size](
	[Size_id] [int] IDENTITY(1,1) NOT NULL,
	[Size_values] [nvarchar](50) NULL,
 CONSTRAINT [PK_ecommerce_Size] PRIMARY KEY CLUSTERED 
(
	[Size_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_Category]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Category](
	[Category_id] [int] IDENTITY(1,1) NOT NULL,
	[Categories] [nvarchar](50) NULL,
 CONSTRAINT [PK_ecommerce_Category] PRIMARY KEY CLUSTERED 
(
	[Category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_OfferDetail]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ecommerce_OfferDetail](
	[Offer_id] [int] IDENTITY(1,1) NOT NULL,
	[Offer_name] [varbinary](50) NULL,
 CONSTRAINT [PK_ecommerce_OfferDetail] PRIMARY KEY CLUSTERED 
(
	[Offer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ecommerce_Customer_registration]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Customer_registration](
	[Customer_id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Mobile] [bigint] NULL,
	[Country] [int] NULL,
	[Reg_Date] [datetime] NULL,
	[Last_login] [datetime] NULL,
	[Error_count] [int] NULL,
	[Cus_Status] [nvarchar](100) NULL,
	[Profile_image] [nvarchar](100) NULL,
	[First_name] [nvarchar](100) NULL,
	[Last_name] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[ActivationStatus_Mail] [int] NULL,
	[ActivationStatus_Sms] [int] NULL,
	[Email_Subs] [nvarchar](50) NULL,
	[Sms_Subs] [nvarchar](50) NULL,
 CONSTRAINT [PK_ecommerce_Customer_registration] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_CountryDetail]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_CountryDetail](
	[Country_id] [int] IDENTITY(1,1) NOT NULL,
	[Country_Name] [nvarchar](50) NULL,
	[Country_Code] [int] NULL,
 CONSTRAINT [PK_ecommerce_CountryDetail] PRIMARY KEY CLUSTERED 
(
	[Country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_Color]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Color](
	[Color_id] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](50) NULL,
 CONSTRAINT [PK_ecommerce_Color] PRIMARY KEY CLUSTERED 
(
	[Color_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_StateDetail]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_StateDetail](
	[State_id] [int] IDENTITY(1,1) NOT NULL,
	[State_Name] [nvarchar](50) NULL,
	[FkCountry_id] [int] NULL,
 CONSTRAINT [PK_ecommerce_StateDetail] PRIMARY KEY CLUSTERED 
(
	[State_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_Billing_Address]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Billing_Address](
	[billing_id] [int] IDENTITY(1,1) NOT NULL,
	[bil_Name] [nvarchar](50) NULL,
	[bill_Address] [nvarchar](500) NULL,
	[bill_zipcode] [int] NULL,
	[bill_City] [nvarchar](50) NULL,
	[bill_State] [int] NULL,
	[bill_Country] [int] NULL,
	[bill_Mail] [nvarchar](50) NULL,
	[bill_Phone] [bigint] NULL,
	[fk_Customerid] [int] NULL,
 CONSTRAINT [PK_ecommerce_Billing_Address] PRIMARY KEY CLUSTERED 
(
	[billing_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_check_user]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_check_user]
@Email nvarchar(100),
@Password nvarchar(100),
@Name nvarchar(100) output,
@Result bit output
as
IF EXISTS(SELECT 1 FROM ecommerce_Customer_registration 
where Email=@Email and Password=@Password)
BEGIN
SELECT @Name=Email+'|'+First_name FROM ecommerce_Customer_registration
where Email=@Email and Password=@Password
IF EXISTS(SELECT 1 FROM ecommerce_Customer_registration 
where Email=@Email and Password=@Password and ActivationStatus_Mail=1)
BEGIN
update ecommerce_Customer_registration set Last_login=GETDATE()
where Email=@Email and Password=@Password
set @Result=1
END
else
begin
set @Result=0
end
END
ELSE
BEGIN
SELECT @Name=NULL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OfferDetailNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OfferDetailNewUpdateCommand]
(
	@Offer_name varbinary(50),
	@Original_Offer_id int,
	@Offer_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_OfferDetail] SET [Offer_name] = @Offer_name WHERE (([Offer_id] = @Original_Offer_id));
	
SELECT Offer_id, Offer_name FROM ecommerce_OfferDetail WHERE (Offer_id = @Offer_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OfferDetailNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OfferDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Offer_id, Offer_name
FROM            ecommerce_OfferDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OfferDetailNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OfferDetailNewInsertCommand]
(
	@Offer_name varbinary(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_OfferDetail] ([Offer_name]) VALUES (@Offer_name);
	
SELECT Offer_id, Offer_name FROM ecommerce_OfferDetail WHERE (Offer_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OfferDetailNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OfferDetailNewDeleteCommand]
(
	@Original_Offer_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_OfferDetail] WHERE (([Offer_id] = @Original_Offer_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Customer_registrationNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Customer_registrationNewUpdateCommand]
(
	@Email nvarchar(50),
	@Password nvarchar(50),
	@Mobile bigint,
	@Country int,
	@Reg_Date datetime,
	@Last_login datetime,
	@Error_count int,
	@Cus_Status nvarchar(100),
	@Profile_image nvarchar(100),
	@First_name nvarchar(100),
	@Last_name nvarchar(50),
	@DOB datetime,
	@ActivationStatus_Mail int,
	@ActivationStatus_Sms int,
	@Email_Subs nvarchar(50),
	@Sms_Subs nvarchar(50),
	@Original_Customer_id int,
	@Customer_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Customer_registration] SET [Email] = @Email, [Password] = @Password, [Mobile] = @Mobile, [Country] = @Country, [Reg_Date] = @Reg_Date, [Last_login] = @Last_login, [Error_count] = @Error_count, [Cus_Status] = @Cus_Status, [Profile_image] = @Profile_image, [First_name] = @First_name, [Last_name] = @Last_name, [DOB] = @DOB, [ActivationStatus_Mail] = @ActivationStatus_Mail, [ActivationStatus_Sms] = @ActivationStatus_Sms, [Email_Subs] = @Email_Subs, [Sms_Subs] = @Sms_Subs WHERE (([Customer_id] = @Original_Customer_id));
	
SELECT Customer_id, Email, Password, Mobile, Country, Reg_Date, Last_login, Error_count, Cus_Status, Profile_image, First_name, Last_name, DOB, ActivationStatus_Mail, ActivationStatus_Sms, Email_Subs, Sms_Subs FROM ecommerce_Customer_registration WHERE (Customer_id = @Customer_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Customer_registrationNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Customer_registrationNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Customer_id, Email, Password, Mobile, Country, Reg_Date, Last_login, Error_count, Cus_Status, Profile_image, First_name, Last_name, DOB, ActivationStatus_Mail,
                          ActivationStatus_Sms, Email_Subs, Sms_Subs
FROM            ecommerce_Customer_registration
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Customer_registrationNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Customer_registrationNewInsertCommand]
(
	@Email nvarchar(50),
	@Password nvarchar(50),
	@Mobile bigint,
	@Country int,
	@Reg_Date datetime,
	@Last_login datetime,
	@Error_count int,
	@Cus_Status nvarchar(100),
	@Profile_image nvarchar(100),
	@First_name nvarchar(100),
	@Last_name nvarchar(50),
	@DOB datetime,
	@ActivationStatus_Mail int,
	@ActivationStatus_Sms int,
	@Email_Subs nvarchar(50),
	@Sms_Subs nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Customer_registration] ([Email], [Password], [Mobile], [Country], [Reg_Date], [Last_login], [Error_count], [Cus_Status], [Profile_image], [First_name], [Last_name], [DOB], [ActivationStatus_Mail], [ActivationStatus_Sms], [Email_Subs], [Sms_Subs]) VALUES (@Email, @Password, @Mobile, @Country, @Reg_Date, @Last_login, @Error_count, @Cus_Status, @Profile_image, @First_name, @Last_name, @DOB, @ActivationStatus_Mail, @ActivationStatus_Sms, @Email_Subs, @Sms_Subs);
	
SELECT Customer_id, Email, Password, Mobile, Country, Reg_Date, Last_login, Error_count, Cus_Status, Profile_image, First_name, Last_name, DOB, ActivationStatus_Mail, ActivationStatus_Sms, Email_Subs, Sms_Subs FROM ecommerce_Customer_registration WHERE (Customer_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Customer_registrationNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Customer_registrationNewDeleteCommand]
(
	@Original_Customer_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Customer_registration] WHERE (([Customer_id] = @Original_Customer_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_CountryDetailNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_CountryDetailNewUpdateCommand]
(
	@Country_Name nvarchar(50),
	@Country_Code int,
	@Original_Country_id int,
	@Country_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_CountryDetail] SET [Country_Name] = @Country_Name, [Country_Code] = @Country_Code WHERE (([Country_id] = @Original_Country_id));
	
SELECT Country_id, Country_Name, Country_Code FROM ecommerce_CountryDetail WHERE (Country_id = @Country_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_CountryDetailNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_CountryDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Country_id, Country_Name, Country_Code
FROM            ecommerce_CountryDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_CountryDetailNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_CountryDetailNewInsertCommand]
(
	@Country_Name nvarchar(50),
	@Country_Code int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_CountryDetail] ([Country_Name], [Country_Code]) VALUES (@Country_Name, @Country_Code);
	
SELECT Country_id, Country_Name, Country_Code FROM ecommerce_CountryDetail WHERE (Country_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_CountryDetailNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_CountryDetailNewDeleteCommand]
(
	@Original_Country_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_CountryDetail] WHERE (([Country_id] = @Original_Country_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ColorNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ColorNewUpdateCommand]
(
	@Color nvarchar(50),
	@Original_Color_id int,
	@Color_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Color] SET [Color] = @Color WHERE (([Color_id] = @Original_Color_id));
	
SELECT Color_id, Color FROM ecommerce_Color WHERE (Color_id = @Color_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ColorNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ColorNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Color_id, Color
FROM            ecommerce_Color
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ColorNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ColorNewInsertCommand]
(
	@Color nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Color] ([Color]) VALUES (@Color);
	
SELECT Color_id, Color FROM ecommerce_Color WHERE (Color_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ColorNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ColorNewDeleteCommand]
(
	@Original_Color_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Color] WHERE (([Color_id] = @Original_Color_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_SizeNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_SizeNewUpdateCommand]
(
	@Size_values nvarchar(50),
	@Original_Size_id int,
	@Size_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Size] SET [Size_values] = @Size_values WHERE (([Size_id] = @Original_Size_id));
	
SELECT Size_id, Size_values FROM ecommerce_Size WHERE (Size_id = @Size_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_SizeNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_SizeNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Size_id, Size_values
FROM            ecommerce_Size
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_SizeNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_SizeNewInsertCommand]
(
	@Size_values nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Size] ([Size_values]) VALUES (@Size_values);
	
SELECT Size_id, Size_values FROM ecommerce_Size WHERE (Size_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_SizeNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_SizeNewDeleteCommand]
(
	@Original_Size_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Size] WHERE (([Size_id] = @Original_Size_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_CategoryNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_CategoryNewUpdateCommand]
(
	@Categories nvarchar(50),
	@Original_Category_id int,
	@Category_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Category] SET [Categories] = @Categories WHERE (([Category_id] = @Original_Category_id));
	
SELECT Category_id, Categories FROM ecommerce_Category WHERE (Category_id = @Category_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_CategoryNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_CategoryNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Category_id, Categories
FROM            ecommerce_Category
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_CategoryNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_CategoryNewInsertCommand]
(
	@Categories nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Category] ([Categories]) VALUES (@Categories);
	
SELECT Category_id, Categories FROM ecommerce_Category WHERE (Category_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_CategoryNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_CategoryNewDeleteCommand]
(
	@Original_Category_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Category] WHERE (([Category_id] = @Original_Category_id))
GO
/****** Object:  Table [dbo].[ecommerce_Change_pwd_log]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Change_pwd_log](
	[Change_pwd_id] [int] IDENTITY(1,1) NOT NULL,
	[New_pwd] [nvarchar](50) NULL,
	[old_pwd] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[fkCustomer_id] [int] NULL,
 CONSTRAINT [PK_ecommerce_Change_pwd_log] PRIMARY KEY CLUSTERED 
(
	[Change_pwd_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_Orders]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Orders](
	[Order_id] [int] IDENTITY(1,1) NOT NULL,
	[fkCustomer_id] [int] NULL,
	[Order_Date] [datetime] NULL,
	[Shipping_tax] [decimal](18, 2) NULL,
	[Tax] [decimal](18, 2) NULL,
	[Order_status] [nvarchar](50) NULL,
	[Total_Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ecommerce_Orders] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_Shipping_Address]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Shipping_Address](
	[Shipping_id] [int] IDENTITY(1,1) NOT NULL,
	[ship_Name] [nvarchar](50) NULL,
	[ship_Address] [nvarchar](500) NULL,
	[ship_Zipcode] [int] NULL,
	[ship_City] [nvarchar](50) NULL,
	[ship_State] [int] NULL,
	[ship_Country] [int] NULL,
	[ship_Mail] [nvarchar](50) NULL,
	[ship_Phone] [bigint] NULL,
	[fk_Customerid] [int] NULL,
 CONSTRAINT [PK_ecommerce_Shipping_Address] PRIMARY KEY CLUSTERED 
(
	[Shipping_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_Promocode]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Promocode](
	[Promocode_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[Promo_Discount] [nvarchar](100) NULL,
	[fkCustomer_id] [int] NULL,
 CONSTRAINT [PK_ecommerce_Promocode_1] PRIMARY KEY CLUSTERED 
(
	[Promocode_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_ProductSubdetail]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_ProductSubdetail](
	[ProductSub_id] [int] IDENTITY(1,1) NOT NULL,
	[Productsub_name] [nvarchar](100) NULL,
	[fkCatagoryId] [int] NULL,
 CONSTRAINT [PK_ecommerce_ProductSubdetail] PRIMARY KEY CLUSTERED 
(
	[ProductSub_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_StateDetailNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_StateDetailNewUpdateCommand]
(
	@State_Name nvarchar(50),
	@FkCountry_id int,
	@Original_State_id int,
	@State_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_StateDetail] SET [State_Name] = @State_Name, [FkCountry_id] = @FkCountry_id WHERE (([State_id] = @Original_State_id));
	
SELECT State_id, State_Name, FkCountry_id FROM ecommerce_StateDetail WHERE (State_id = @State_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_StateDetailNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_StateDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        State_id, State_Name, FkCountry_id
FROM            ecommerce_StateDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_StateDetailNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_StateDetailNewInsertCommand]
(
	@State_Name nvarchar(50),
	@FkCountry_id int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_StateDetail] ([State_Name], [FkCountry_id]) VALUES (@State_Name, @FkCountry_id);
	
SELECT State_id, State_Name, FkCountry_id FROM ecommerce_StateDetail WHERE (State_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_StateDetailNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_StateDetailNewDeleteCommand]
(
	@Original_State_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_StateDetail] WHERE (([State_id] = @Original_State_id))
GO
/****** Object:  Table [dbo].[ecommerce_Productdetail]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Productdetail](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Short_Description] [nvarchar](200) NULL,
	[Date] [datetime] NULL,
	[Pro_Discount] [nvarchar](100) NULL,
	[fkProductSubdetail] [int] NULL,
	[fkOfferDetail] [int] NULL,
	[Gender] [int] NULL,
 CONSTRAINT [PK_ecommerce_Productdetail] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Billing_AddressNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Billing_AddressNewUpdateCommand]
(
	@bil_Name nvarchar(50),
	@bill_Address nvarchar(500),
	@bill_zipcode int,
	@bill_City nvarchar(50),
	@bill_State int,
	@bill_Country int,
	@bill_Mail nvarchar(50),
	@bill_Phone bigint,
	@fk_Customerid int,
	@Original_billing_id int,
	@billing_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Billing_Address] SET [bil_Name] = @bil_Name, [bill_Address] = @bill_Address, [bill_zipcode] = @bill_zipcode, [bill_City] = @bill_City, [bill_State] = @bill_State, [bill_Country] = @bill_Country, [bill_Mail] = @bill_Mail, [bill_Phone] = @bill_Phone, [fk_Customerid] = @fk_Customerid WHERE (([billing_id] = @Original_billing_id));
	
SELECT billing_id, bil_Name, bill_Address, bill_zipcode, bill_City, bill_State, bill_Country, bill_Mail, bill_Phone, fk_Customerid FROM ecommerce_Billing_Address WHERE (billing_id = @billing_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Billing_AddressNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Billing_AddressNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        billing_id, bil_Name, bill_Address, bill_zipcode, bill_City, bill_State, bill_Country, bill_Mail, bill_Phone, fk_Customerid
FROM            ecommerce_Billing_Address
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Billing_AddressNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Billing_AddressNewInsertCommand]
(
	@bil_Name nvarchar(50),
	@bill_Address nvarchar(500),
	@bill_zipcode int,
	@bill_City nvarchar(50),
	@bill_State int,
	@bill_Country int,
	@bill_Mail nvarchar(50),
	@bill_Phone bigint,
	@fk_Customerid int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Billing_Address] ([bil_Name], [bill_Address], [bill_zipcode], [bill_City], [bill_State], [bill_Country], [bill_Mail], [bill_Phone], [fk_Customerid]) VALUES (@bil_Name, @bill_Address, @bill_zipcode, @bill_City, @bill_State, @bill_Country, @bill_Mail, @bill_Phone, @fk_Customerid);
	
SELECT billing_id, bil_Name, bill_Address, bill_zipcode, bill_City, bill_State, bill_Country, bill_Mail, bill_Phone, fk_Customerid FROM ecommerce_Billing_Address WHERE (billing_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Billing_AddressNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Billing_AddressNewDeleteCommand]
(
	@Original_billing_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Billing_Address] WHERE (([billing_id] = @Original_billing_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OrdersNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OrdersNewUpdateCommand]
(
	@fkCustomer_id int,
	@Order_Date datetime,
	@Shipping_tax decimal(18, 2),
	@Tax decimal(18, 2),
	@Order_status nvarchar(50),
	@Total_Amount decimal(18, 2),
	@Original_Order_id int,
	@Order_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Orders] SET [fkCustomer_id] = @fkCustomer_id, [Order_Date] = @Order_Date, [Shipping_tax] = @Shipping_tax, [Tax] = @Tax, [Order_status] = @Order_status, [Total_Amount] = @Total_Amount WHERE (([Order_id] = @Original_Order_id));
	
SELECT Order_id, fkCustomer_id, Order_Date, Shipping_tax, Tax, Order_status, Total_Amount FROM ecommerce_Orders WHERE (Order_id = @Order_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OrdersNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OrdersNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Order_id, fkCustomer_id, Order_Date, Shipping_tax, Tax, Order_status, Total_Amount
FROM            ecommerce_Orders
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OrdersNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OrdersNewInsertCommand]
(
	@fkCustomer_id int,
	@Order_Date datetime,
	@Shipping_tax decimal(18, 2),
	@Tax decimal(18, 2),
	@Order_status nvarchar(50),
	@Total_Amount decimal(18, 2)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Orders] ([fkCustomer_id], [Order_Date], [Shipping_tax], [Tax], [Order_status], [Total_Amount]) VALUES (@fkCustomer_id, @Order_Date, @Shipping_tax, @Tax, @Order_status, @Total_Amount);
	
SELECT Order_id, fkCustomer_id, Order_Date, Shipping_tax, Tax, Order_status, Total_Amount FROM ecommerce_Orders WHERE (Order_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OrdersNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OrdersNewDeleteCommand]
(
	@Original_Order_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Orders] WHERE (([Order_id] = @Original_Order_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Shipping_AddressNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Shipping_AddressNewUpdateCommand]
(
	@ship_Name nvarchar(50),
	@ship_Address nvarchar(500),
	@ship_Zipcode int,
	@ship_City nvarchar(50),
	@ship_State int,
	@ship_Country int,
	@ship_Mail nvarchar(50),
	@ship_Phone bigint,
	@fk_Customerid int,
	@Original_Shipping_id int,
	@Shipping_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Shipping_Address] SET [ship_Name] = @ship_Name, [ship_Address] = @ship_Address, [ship_Zipcode] = @ship_Zipcode, [ship_City] = @ship_City, [ship_State] = @ship_State, [ship_Country] = @ship_Country, [ship_Mail] = @ship_Mail, [ship_Phone] = @ship_Phone, [fk_Customerid] = @fk_Customerid WHERE (([Shipping_id] = @Original_Shipping_id));
	
SELECT Shipping_id, ship_Name, ship_Address, ship_Zipcode, ship_City, ship_State, ship_Country, ship_Mail, ship_Phone, fk_Customerid FROM ecommerce_Shipping_Address WHERE (Shipping_id = @Shipping_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Shipping_AddressNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Shipping_AddressNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Shipping_id, ship_Name, ship_Address, ship_Zipcode, ship_City, ship_State, ship_Country, ship_Mail, ship_Phone, fk_Customerid
FROM            ecommerce_Shipping_Address
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Shipping_AddressNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Shipping_AddressNewInsertCommand]
(
	@ship_Name nvarchar(50),
	@ship_Address nvarchar(500),
	@ship_Zipcode int,
	@ship_City nvarchar(50),
	@ship_State int,
	@ship_Country int,
	@ship_Mail nvarchar(50),
	@ship_Phone bigint,
	@fk_Customerid int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Shipping_Address] ([ship_Name], [ship_Address], [ship_Zipcode], [ship_City], [ship_State], [ship_Country], [ship_Mail], [ship_Phone], [fk_Customerid]) VALUES (@ship_Name, @ship_Address, @ship_Zipcode, @ship_City, @ship_State, @ship_Country, @ship_Mail, @ship_Phone, @fk_Customerid);
	
SELECT Shipping_id, ship_Name, ship_Address, ship_Zipcode, ship_City, ship_State, ship_Country, ship_Mail, ship_Phone, fk_Customerid FROM ecommerce_Shipping_Address WHERE (Shipping_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Shipping_AddressNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Shipping_AddressNewDeleteCommand]
(
	@Original_Shipping_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Shipping_Address] WHERE (([Shipping_id] = @Original_Shipping_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_PromocodeNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_PromocodeNewUpdateCommand]
(
	@code nvarchar(50),
	@Promo_Discount nvarchar(100),
	@fkCustomer_id int,
	@Original_Promocode_id int,
	@Promocode_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Promocode] SET [code] = @code, [Promo_Discount] = @Promo_Discount, [fkCustomer_id] = @fkCustomer_id WHERE (([Promocode_id] = @Original_Promocode_id));
	
SELECT Promocode_id, code, Promo_Discount, fkCustomer_id FROM ecommerce_Promocode WHERE (Promocode_id = @Promocode_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_PromocodeNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_PromocodeNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Promocode_id, code, Promo_Discount, fkCustomer_id
FROM            ecommerce_Promocode
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_PromocodeNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_PromocodeNewInsertCommand]
(
	@code nvarchar(50),
	@Promo_Discount nvarchar(100),
	@fkCustomer_id int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Promocode] ([code], [Promo_Discount], [fkCustomer_id]) VALUES (@code, @Promo_Discount, @fkCustomer_id);
	
SELECT Promocode_id, code, Promo_Discount, fkCustomer_id FROM ecommerce_Promocode WHERE (Promocode_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_PromocodeNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_PromocodeNewDeleteCommand]
(
	@Original_Promocode_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Promocode] WHERE (([Promocode_id] = @Original_Promocode_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ProductSubdetailNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ProductSubdetailNewUpdateCommand]
(
	@Productsub_name nvarchar(100),
	@fkCatagoryId int,
	@Original_ProductSub_id int,
	@ProductSub_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_ProductSubdetail] SET [Productsub_name] = @Productsub_name, [fkCatagoryId] = @fkCatagoryId WHERE (([ProductSub_id] = @Original_ProductSub_id));
	
SELECT ProductSub_id, Productsub_name, fkCatagoryId FROM ecommerce_ProductSubdetail WHERE (ProductSub_id = @ProductSub_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ProductSubdetailNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ProductSubdetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        ProductSub_id, Productsub_name, fkCatagoryId
FROM            ecommerce_ProductSubdetail
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ProductSubdetailNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ProductSubdetailNewInsertCommand]
(
	@Productsub_name nvarchar(100),
	@fkCatagoryId int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_ProductSubdetail] ([Productsub_name], [fkCatagoryId]) VALUES (@Productsub_name, @fkCatagoryId);
	
SELECT ProductSub_id, Productsub_name, fkCatagoryId FROM ecommerce_ProductSubdetail WHERE (ProductSub_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ProductSubdetailNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ProductSubdetailNewDeleteCommand]
(
	@Original_ProductSub_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_ProductSubdetail] WHERE (([ProductSub_id] = @Original_ProductSub_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Change_pwd_logNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Change_pwd_logNewUpdateCommand]
(
	@New_pwd nvarchar(50),
	@old_pwd nvarchar(50),
	@Date datetime,
	@fkCustomer_id int,
	@Original_Change_pwd_id int,
	@Change_pwd_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Change_pwd_log] SET [New_pwd] = @New_pwd, [old_pwd] = @old_pwd, [Date] = @Date, [fkCustomer_id] = @fkCustomer_id WHERE (([Change_pwd_id] = @Original_Change_pwd_id));
	
SELECT Change_pwd_id, New_pwd, old_pwd, Date, fkCustomer_id FROM ecommerce_Change_pwd_log WHERE (Change_pwd_id = @Change_pwd_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Change_pwd_logNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Change_pwd_logNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Change_pwd_id, New_pwd, old_pwd, Date, fkCustomer_id
FROM            ecommerce_Change_pwd_log
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Change_pwd_logNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Change_pwd_logNewInsertCommand]
(
	@New_pwd nvarchar(50),
	@old_pwd nvarchar(50),
	@Date datetime,
	@fkCustomer_id int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Change_pwd_log] ([New_pwd], [old_pwd], [Date], [fkCustomer_id]) VALUES (@New_pwd, @old_pwd, @Date, @fkCustomer_id);
	
SELECT Change_pwd_id, New_pwd, old_pwd, Date, fkCustomer_id FROM ecommerce_Change_pwd_log WHERE (Change_pwd_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_Change_pwd_logNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_Change_pwd_logNewDeleteCommand]
(
	@Original_Change_pwd_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Change_pwd_log] WHERE (([Change_pwd_id] = @Original_Change_pwd_id))
GO
/****** Object:  Table [dbo].[ecommerce_Stock]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_Stock](
	[Stock_id] [int] IDENTITY(1,1) NOT NULL,
	[Stock_Value] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[Stock_Image] [nvarchar](100) NULL,
	[fkSize_id] [int] NULL,
	[fkColor_id] [int] NULL,
	[fkProduct_id] [int] NULL,
	[Actual_Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ecommerce_Stock] PRIMARY KEY CLUSTERED 
(
	[Stock_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ProductdetailNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ProductdetailNewUpdateCommand]
(
	@Description nvarchar(MAX),
	@Short_Description nvarchar(200),
	@Date datetime,
	@Pro_Discount nvarchar(100),
	@fkProductSubdetail int,
	@fkOfferDetail int,
	@Gender int,
	@Original_Product_id int,
	@Product_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Productdetail] SET [Description] = @Description, [Short_Description] = @Short_Description, [Date] = @Date, [Pro_Discount] = @Pro_Discount, [fkProductSubdetail] = @fkProductSubdetail, [fkOfferDetail] = @fkOfferDetail, [Gender] = @Gender WHERE (([Product_id] = @Original_Product_id));
	
SELECT Product_id, Description, Short_Description, Date, Pro_Discount, fkProductSubdetail, fkOfferDetail, Gender FROM ecommerce_Productdetail WHERE (Product_id = @Product_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ProductdetailNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ProductdetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Product_id, Description, Short_Description, Date, Pro_Discount, fkProductSubdetail, fkOfferDetail, Gender
FROM            ecommerce_Productdetail
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ProductdetailNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ProductdetailNewInsertCommand]
(
	@Description nvarchar(MAX),
	@Short_Description nvarchar(200),
	@Date datetime,
	@Pro_Discount nvarchar(100),
	@fkProductSubdetail int,
	@fkOfferDetail int,
	@Gender int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Productdetail] ([Description], [Short_Description], [Date], [Pro_Discount], [fkProductSubdetail], [fkOfferDetail], [Gender]) VALUES (@Description, @Short_Description, @Date, @Pro_Discount, @fkProductSubdetail, @fkOfferDetail, @Gender);
	
SELECT Product_id, Description, Short_Description, Date, Pro_Discount, fkProductSubdetail, fkOfferDetail, Gender FROM ecommerce_Productdetail WHERE (Product_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_ProductdetailNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_ProductdetailNewDeleteCommand]
(
	@Original_Product_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Productdetail] WHERE (([Product_id] = @Original_Product_id))
GO
/****** Object:  StoredProcedure [dbo].[Usp_Stock]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Stock] @Gender      INT=0,
                               @Size        INT=0,
                               @Color       INT=0,
                               @SubCatagory INT=0
    AS
    BEGIN
       
       SELECT *  FROM  DBO.ECOMMERCE_PRODUCTDETAIL A
                 INNER JOIN DBO.ECOMMERCE_STOCK B ON A.PRODUCT_ID=B.FKPRODUCT_ID 
                 WHERE (A.Gender = @Gender                 OR  @Gender =0) 
                 AND   (B.FKSIZE_ID=@Size                  OR  @Size =0) 
                 AND   (B.FKCOLOR_ID=@Color                OR  @Color =0) 
                 AND   (A.FKPRODUCTSUBDETAIL=@SubCatagory  OR  @SubCatagory=0)
    END
GO
/****** Object:  StoredProcedure [dbo].[Usp_getsize]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_getsize]
@fkproductsub int,
@fkcolor int
as 
begin
	if @fkproductsub is not null or @fkproductsub !=''
		begin
			select b.fkSize_id from dbo.ecommerce_Productdetail a 
											inner join ecommerce_Stock b 
											on a.Product_id=b.fkProduct_id 
											where a.fkProductSubdetail = @fkproductsub and b.fkColor_id=@fkcolor
		end
	else
		begin
			select b.fkSize_id from dbo.ecommerce_Productdetail a 
										inner join ecommerce_Stock b 
										on a.Product_id=b.fkProduct_id 
										where a.fkProductSubdetail is null and b.fkColor_id=@fkcolor
		end
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_getcolor]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Usp_getcolor]
@fkproductsub int
as 
begin
	if @fkproductsub is not null or @fkproductsub !=''
		begin
			select b.fkColor_id,b.fkSize_id from dbo.ecommerce_Productdetail a 
											inner join ecommerce_Stock b 
											on a.Product_id=b.fkProduct_id 
											where a.fkProductSubdetail = @fkproductsub
		end
	else
		begin
			select b.fkColor_id,b.fkSize_id from dbo.ecommerce_Productdetail a 
										inner join ecommerce_Stock b 
										on a.Product_id=b.fkProduct_id 
										where a.fkProductSubdetail is null
		end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_StockNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_StockNewUpdateCommand]
(
	@Stock_Value int,
	@price decimal(18, 2),
	@Stock_Image nvarchar(100),
	@fkSize_id int,
	@fkColor_id int,
	@fkProduct_id int,
	@Actual_Price decimal(18, 2),
	@Original_Stock_id int,
	@Stock_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_Stock] SET [Stock_Value] = @Stock_Value, [price] = @price, [Stock_Image] = @Stock_Image, [fkSize_id] = @fkSize_id, [fkColor_id] = @fkColor_id, [fkProduct_id] = @fkProduct_id, [Actual_Price] = @Actual_Price WHERE (([Stock_id] = @Original_Stock_id));
	
SELECT Stock_id, Stock_Value, price, Stock_Image, fkSize_id, fkColor_id, fkProduct_id, Actual_Price FROM ecommerce_Stock WHERE (Stock_id = @Stock_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_StockNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_StockNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Stock_id, Stock_Value, price, Stock_Image, fkSize_id, fkColor_id, fkProduct_id, Actual_Price
FROM            ecommerce_Stock
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_StockNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_StockNewInsertCommand]
(
	@Stock_Value int,
	@price decimal(18, 2),
	@Stock_Image nvarchar(100),
	@fkSize_id int,
	@fkColor_id int,
	@fkProduct_id int,
	@Actual_Price decimal(18, 2)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_Stock] ([Stock_Value], [price], [Stock_Image], [fkSize_id], [fkColor_id], [fkProduct_id], [Actual_Price]) VALUES (@Stock_Value, @price, @Stock_Image, @fkSize_id, @fkColor_id, @fkProduct_id, @Actual_Price);
	
SELECT Stock_id, Stock_Value, price, Stock_Image, fkSize_id, fkColor_id, fkProduct_id, Actual_Price FROM ecommerce_Stock WHERE (Stock_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_StockNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_StockNewDeleteCommand]
(
	@Original_Stock_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_Stock] WHERE (([Stock_id] = @Original_Stock_id))
GO
/****** Object:  Table [dbo].[ecommerce_OrderItemsDetail]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_OrderItemsDetail](
	[Item_id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[Discount] [nvarchar](50) NULL,
	[Order_price] [decimal](18, 2) NULL,
	[fkStockid] [int] NULL,
	[fkOrder_id] [int] NULL,
 CONSTRAINT [PK_ecommerce_OrderItemsDetail] PRIMARY KEY CLUSTERED 
(
	[Item_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ecommerce_CartDetail]    Script Date: 07/26/2012 19:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ecommerce_CartDetail](
	[Cart_id] [int] IDENTITY(1,1) NOT NULL,
	[fkStock_id] [int] NULL,
	[fkCustomer_id] [int] NULL,
	[Cart_Date] [datetime] NULL,
 CONSTRAINT [PK_ecommerce_CartDetail] PRIMARY KEY CLUSTERED 
(
	[Cart_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OrderItemsDetailNewUpdateCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OrderItemsDetailNewUpdateCommand]
(
	@Quantity int,
	@Discount nvarchar(50),
	@Order_price decimal(18, 2),
	@fkStockid int,
	@fkOrder_id int,
	@Original_Item_id int,
	@Item_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [ecommerce_OrderItemsDetail] SET [Quantity] = @Quantity, [Discount] = @Discount, [Order_price] = @Order_price, [fkStockid] = @fkStockid, [fkOrder_id] = @fkOrder_id WHERE (([Item_id] = @Original_Item_id));
	
SELECT Item_id, Quantity, Discount, Order_price, fkStockid, fkOrder_id FROM ecommerce_OrderItemsDetail WHERE (Item_id = @Item_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OrderItemsDetailNewSelectCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OrderItemsDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Item_id, Quantity, Discount, Order_price, fkStockid, fkOrder_id
FROM            ecommerce_OrderItemsDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OrderItemsDetailNewInsertCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OrderItemsDetailNewInsertCommand]
(
	@Quantity int,
	@Discount nvarchar(50),
	@Order_price decimal(18, 2),
	@fkStockid int,
	@fkOrder_id int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [ecommerce_OrderItemsDetail] ([Quantity], [Discount], [Order_price], [fkStockid], [fkOrder_id]) VALUES (@Quantity, @Discount, @Order_price, @fkStockid, @fkOrder_id);
	
SELECT Item_id, Quantity, Discount, Order_price, fkStockid, fkOrder_id FROM ecommerce_OrderItemsDetail WHERE (Item_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ecommerce_OrderItemsDetailNewDeleteCommand]    Script Date: 07/26/2012 19:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ecommerce_OrderItemsDetailNewDeleteCommand]
(
	@Original_Item_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [ecommerce_OrderItemsDetail] WHERE (([Item_id] = @Original_Item_id))
GO
/****** Object:  ForeignKey [ecommerce_Billing_Address_ecommerce_Customer_registration]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Billing_Address]  WITH CHECK ADD  CONSTRAINT [ecommerce_Billing_Address_ecommerce_Customer_registration] FOREIGN KEY([fk_Customerid])
REFERENCES [dbo].[ecommerce_Customer_registration] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Billing_Address] CHECK CONSTRAINT [ecommerce_Billing_Address_ecommerce_Customer_registration]
GO
/****** Object:  ForeignKey [FK_ecommerce_CartDetail_ecommerce_Customer_registration]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_CartDetail_ecommerce_Customer_registration] FOREIGN KEY([fkCustomer_id])
REFERENCES [dbo].[ecommerce_Customer_registration] ([Customer_id])
GO
ALTER TABLE [dbo].[ecommerce_CartDetail] CHECK CONSTRAINT [FK_ecommerce_CartDetail_ecommerce_Customer_registration]
GO
/****** Object:  ForeignKey [FK_ecommerce_CartDetail_ecommerce_Stock]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_CartDetail_ecommerce_Stock] FOREIGN KEY([fkStock_id])
REFERENCES [dbo].[ecommerce_Stock] ([Stock_id])
GO
ALTER TABLE [dbo].[ecommerce_CartDetail] CHECK CONSTRAINT [FK_ecommerce_CartDetail_ecommerce_Stock]
GO
/****** Object:  ForeignKey [FK_ecommerce_Change_pwd_log_ecommerce_Customer_registration]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Change_pwd_log]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Change_pwd_log_ecommerce_Customer_registration] FOREIGN KEY([fkCustomer_id])
REFERENCES [dbo].[ecommerce_Customer_registration] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Change_pwd_log] CHECK CONSTRAINT [FK_ecommerce_Change_pwd_log_ecommerce_Customer_registration]
GO
/****** Object:  ForeignKey [FK_ecommerce_OrderItemsDetail_ecommerce_Orders]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_OrderItemsDetail]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_OrderItemsDetail_ecommerce_Orders] FOREIGN KEY([fkOrder_id])
REFERENCES [dbo].[ecommerce_Orders] ([Order_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_OrderItemsDetail] CHECK CONSTRAINT [FK_ecommerce_OrderItemsDetail_ecommerce_Orders]
GO
/****** Object:  ForeignKey [FK_ecommerce_OrderItemsDetail_ecommerce_Stock]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_OrderItemsDetail]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_OrderItemsDetail_ecommerce_Stock] FOREIGN KEY([fkStockid])
REFERENCES [dbo].[ecommerce_Stock] ([Stock_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_OrderItemsDetail] CHECK CONSTRAINT [FK_ecommerce_OrderItemsDetail_ecommerce_Stock]
GO
/****** Object:  ForeignKey [FK_ecommerce_Orders_ecommerce_Customer_registration]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Orders]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Orders_ecommerce_Customer_registration] FOREIGN KEY([fkCustomer_id])
REFERENCES [dbo].[ecommerce_Customer_registration] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Orders] CHECK CONSTRAINT [FK_ecommerce_Orders_ecommerce_Customer_registration]
GO
/****** Object:  ForeignKey [FK_ecommerce_Category_ecommerce_Productdetail]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Productdetail]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Category_ecommerce_Productdetail] FOREIGN KEY([Gender])
REFERENCES [dbo].[ecommerce_Category] ([Category_id])
GO
ALTER TABLE [dbo].[ecommerce_Productdetail] CHECK CONSTRAINT [FK_ecommerce_Category_ecommerce_Productdetail]
GO
/****** Object:  ForeignKey [FK_ecommerce_Productdetail_ecommerce_OfferDetail]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Productdetail]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Productdetail_ecommerce_OfferDetail] FOREIGN KEY([fkOfferDetail])
REFERENCES [dbo].[ecommerce_OfferDetail] ([Offer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Productdetail] CHECK CONSTRAINT [FK_ecommerce_Productdetail_ecommerce_OfferDetail]
GO
/****** Object:  ForeignKey [FK_ecommerce_Productdetail_ecommerce_Productdetail]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Productdetail]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Productdetail_ecommerce_Productdetail] FOREIGN KEY([fkProductSubdetail])
REFERENCES [dbo].[ecommerce_ProductSubdetail] ([ProductSub_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Productdetail] CHECK CONSTRAINT [FK_ecommerce_Productdetail_ecommerce_Productdetail]
GO
/****** Object:  ForeignKey [FK_ecommerce_ProductSubdetail_ecommerce_Category]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_ProductSubdetail]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_ProductSubdetail_ecommerce_Category] FOREIGN KEY([fkCatagoryId])
REFERENCES [dbo].[ecommerce_Category] ([Category_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_ProductSubdetail] CHECK CONSTRAINT [FK_ecommerce_ProductSubdetail_ecommerce_Category]
GO
/****** Object:  ForeignKey [FK_ecommerce_Promocode_ecommerce_Customer_registration]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Promocode]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Promocode_ecommerce_Customer_registration] FOREIGN KEY([fkCustomer_id])
REFERENCES [dbo].[ecommerce_Customer_registration] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Promocode] CHECK CONSTRAINT [FK_ecommerce_Promocode_ecommerce_Customer_registration]
GO
/****** Object:  ForeignKey [ecommerce_Shipping_Address_ecommerce_Shipping_Address]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Shipping_Address]  WITH CHECK ADD  CONSTRAINT [ecommerce_Shipping_Address_ecommerce_Shipping_Address] FOREIGN KEY([fk_Customerid])
REFERENCES [dbo].[ecommerce_Customer_registration] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Shipping_Address] CHECK CONSTRAINT [ecommerce_Shipping_Address_ecommerce_Shipping_Address]
GO
/****** Object:  ForeignKey [FK_ecommerce_StateDetail_ecommerce_CountryDetail]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_StateDetail]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_StateDetail_ecommerce_CountryDetail] FOREIGN KEY([FkCountry_id])
REFERENCES [dbo].[ecommerce_CountryDetail] ([Country_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_StateDetail] CHECK CONSTRAINT [FK_ecommerce_StateDetail_ecommerce_CountryDetail]
GO
/****** Object:  ForeignKey [FK_ecommerce_Stock_ecommerce_Color]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Stock]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Stock_ecommerce_Color] FOREIGN KEY([fkColor_id])
REFERENCES [dbo].[ecommerce_Color] ([Color_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Stock] CHECK CONSTRAINT [FK_ecommerce_Stock_ecommerce_Color]
GO
/****** Object:  ForeignKey [FK_ecommerce_Stock_ecommerce_Productdetail]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Stock]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Stock_ecommerce_Productdetail] FOREIGN KEY([fkProduct_id])
REFERENCES [dbo].[ecommerce_Productdetail] ([Product_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Stock] CHECK CONSTRAINT [FK_ecommerce_Stock_ecommerce_Productdetail]
GO
/****** Object:  ForeignKey [FK_ecommerce_Stock_ecommerce_Size]    Script Date: 07/26/2012 19:03:48 ******/
ALTER TABLE [dbo].[ecommerce_Stock]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Stock_ecommerce_Size] FOREIGN KEY([fkSize_id])
REFERENCES [dbo].[ecommerce_Size] ([Size_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ecommerce_Stock] CHECK CONSTRAINT [FK_ecommerce_Stock_ecommerce_Size]
GO
