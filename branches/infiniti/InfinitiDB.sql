USE [InfinitiDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_check_user]    Script Date: 08/01/2012 18:45:34 ******/
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
/****** Object:  Table [dbo].[Infiniti_SizeDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_SizeDetail](
	[Size_id] [int] IDENTITY(1,1) NOT NULL,
	[Size_Name] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Infiniti_Size] PRIMARY KEY CLUSTERED 
(
	[Size_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infinit_OfferDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infinit_OfferDetail](
	[Offer_id] [int] IDENTITY(1,1) NOT NULL,
	[Offer_Name] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Infinit_OfferDetail] PRIMARY KEY CLUSTERED 
(
	[Offer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infiniti_CatagoryDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_CatagoryDetail](
	[Catagory_id] [int] IDENTITY(1,1) NOT NULL,
	[Catagory_Name] [nvarchar](100) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Infiniti_CatagoryDetail] PRIMARY KEY CLUSTERED 
(
	[Catagory_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infiniti_CustomerRegistration]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_CustomerRegistration](
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
/****** Object:  Table [dbo].[Infiniti_CountryDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_CountryDetail](
	[Country_id] [int] IDENTITY(1,1) NOT NULL,
	[Country_Name] [nvarchar](50) NULL,
	[Country_Code] [int] NULL,
 CONSTRAINT [PK_ecommerce_CountryDetail] PRIMARY KEY CLUSTERED 
(
	[Country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infiniti_ColorDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_ColorDetail](
	[Color_id] [int] IDENTITY(1,1) NOT NULL,
	[Color_Name] [nvarchar](50) NULL,
	[Color_image_url] [nvarchar](100) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Infiniti_ColorDetail] PRIMARY KEY CLUSTERED 
(
	[Color_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infiniti_Change_pwd_log]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_Change_pwd_log](
	[Change_pwd_id] [int] IDENTITY(1,1) NOT NULL,
	[New_pwd] [nvarchar](50) NULL,
	[old_pwd] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[fkCustomer_id] [int] NULL,
 CONSTRAINT [PK_Infiniti_Change_pwd_log] PRIMARY KEY CLUSTERED 
(
	[Change_pwd_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infiniti_Billing_Address]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_Billing_Address](
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
/****** Object:  Table [dbo].[Infiniti_Shipping_Address]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_Shipping_Address](
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
 CONSTRAINT [PK_Infiniti_Shipping_Address] PRIMARY KEY CLUSTERED 
(
	[Shipping_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Infinit_OfferDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infinit_OfferDetailNewUpdateCommand]
(
	@Offer_Name nvarchar(50),
	@Date datetime,
	@Original_Offer_id int,
	@Offer_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infinit_OfferDetail] SET [Offer_Name] = @Offer_Name, [Date] = @Date WHERE (([Offer_id] = @Original_Offer_id));
	
SELECT Offer_id, Offer_Name, Date FROM Infinit_OfferDetail WHERE (Offer_id = @Offer_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infinit_OfferDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infinit_OfferDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Offer_id, Offer_Name, Date
FROM            Infinit_OfferDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infinit_OfferDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infinit_OfferDetailNewInsertCommand]
(
	@Offer_Name nvarchar(50),
	@Date datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infinit_OfferDetail] ([Offer_Name], [Date]) VALUES (@Offer_Name, @Date);
	
SELECT Offer_id, Offer_Name, Date FROM Infinit_OfferDetail WHERE (Offer_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infinit_OfferDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infinit_OfferDetailNewDeleteCommand]
(
	@Original_Offer_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infinit_OfferDetail] WHERE (([Offer_id] = @Original_Offer_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CatagoryDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CatagoryDetailNewUpdateCommand]
(
	@Catagory_Name nvarchar(100),
	@Date datetime,
	@Original_Catagory_id int,
	@Catagory_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_CatagoryDetail] SET [Catagory_Name] = @Catagory_Name, [Date] = @Date WHERE (([Catagory_id] = @Original_Catagory_id));
	
SELECT Catagory_id, Catagory_Name, Date FROM Infiniti_CatagoryDetail WHERE (Catagory_id = @Catagory_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CatagoryDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CatagoryDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Catagory_id, Catagory_Name, Date
FROM            Infiniti_CatagoryDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CatagoryDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CatagoryDetailNewInsertCommand]
(
	@Catagory_Name nvarchar(100),
	@Date datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_CatagoryDetail] ([Catagory_Name], [Date]) VALUES (@Catagory_Name, @Date);
	
SELECT Catagory_id, Catagory_Name, Date FROM Infiniti_CatagoryDetail WHERE (Catagory_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CatagoryDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CatagoryDetailNewDeleteCommand]
(
	@Original_Catagory_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_CatagoryDetail] WHERE (([Catagory_id] = @Original_Catagory_id))
GO
/****** Object:  Table [dbo].[Infiniti_SubCatarory]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_SubCatarory](
	[SubCatagory_id] [int] IDENTITY(1,1) NOT NULL,
	[SubCatagory_Name] [nvarchar](100) NULL,
	[fkCatagory_id] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Infiniti_SubCatarory] PRIMARY KEY CLUSTERED 
(
	[SubCatagory_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infiniti_StateDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_StateDetail](
	[State_id] [int] IDENTITY(1,1) NOT NULL,
	[State_Name] [nvarchar](50) NULL,
	[FkCountry_id] [int] NULL,
 CONSTRAINT [PK_Infiniti_StateDetail] PRIMARY KEY CLUSTERED 
(
	[State_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infiniti_OrderDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_OrderDetail](
	[Order_id] [int] IDENTITY(1,1) NOT NULL,
	[fkCustomer_id] [int] NULL,
	[Order_Date] [datetime] NULL,
	[Delivery_Date] [datetime] NULL,
	[Shiping_Tax] [decimal](18, 2) NULL,
	[Total_Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Infiniti_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_SizeDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_SizeDetailNewUpdateCommand]
(
	@Size_Name nvarchar(50),
	@Date datetime,
	@Original_Size_id int,
	@Size_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_SizeDetail] SET [Size_Name] = @Size_Name, [Date] = @Date WHERE (([Size_id] = @Original_Size_id));
	
SELECT Size_id, Size_Name, Date FROM Infiniti_SizeDetail WHERE (Size_id = @Size_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_SizeDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_SizeDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Size_id, Size_Name, Date
FROM            Infiniti_SizeDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_SizeDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_SizeDetailNewInsertCommand]
(
	@Size_Name nvarchar(50),
	@Date datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_SizeDetail] ([Size_Name], [Date]) VALUES (@Size_Name, @Date);
	
SELECT Size_id, Size_Name, Date FROM Infiniti_SizeDetail WHERE (Size_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_SizeDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_SizeDetailNewDeleteCommand]
(
	@Original_Size_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_SizeDetail] WHERE (([Size_id] = @Original_Size_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CustomerRegistrationNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CustomerRegistrationNewUpdateCommand]
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
UPDATE [Infiniti_CustomerRegistration] SET [Email] = @Email, [Password] = @Password, [Mobile] = @Mobile, [Country] = @Country, [Reg_Date] = @Reg_Date, [Last_login] = @Last_login, [Error_count] = @Error_count, [Cus_Status] = @Cus_Status, [Profile_image] = @Profile_image, [First_name] = @First_name, [Last_name] = @Last_name, [DOB] = @DOB, [ActivationStatus_Mail] = @ActivationStatus_Mail, [ActivationStatus_Sms] = @ActivationStatus_Sms, [Email_Subs] = @Email_Subs, [Sms_Subs] = @Sms_Subs WHERE (([Customer_id] = @Original_Customer_id));
	
SELECT Customer_id, Email, Password, Mobile, Country, Reg_Date, Last_login, Error_count, Cus_Status, Profile_image, First_name, Last_name, DOB, ActivationStatus_Mail, ActivationStatus_Sms, Email_Subs, Sms_Subs FROM Infiniti_CustomerRegistration WHERE (Customer_id = @Customer_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CustomerRegistrationNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CustomerRegistrationNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Customer_id, Email, Password, Mobile, Country, Reg_Date, Last_login, Error_count, Cus_Status, Profile_image, First_name, Last_name, DOB, ActivationStatus_Mail,
                          ActivationStatus_Sms, Email_Subs, Sms_Subs
FROM            Infiniti_CustomerRegistration
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CustomerRegistrationNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CustomerRegistrationNewInsertCommand]
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
INSERT INTO [Infiniti_CustomerRegistration] ([Email], [Password], [Mobile], [Country], [Reg_Date], [Last_login], [Error_count], [Cus_Status], [Profile_image], [First_name], [Last_name], [DOB], [ActivationStatus_Mail], [ActivationStatus_Sms], [Email_Subs], [Sms_Subs]) VALUES (@Email, @Password, @Mobile, @Country, @Reg_Date, @Last_login, @Error_count, @Cus_Status, @Profile_image, @First_name, @Last_name, @DOB, @ActivationStatus_Mail, @ActivationStatus_Sms, @Email_Subs, @Sms_Subs);
	
SELECT Customer_id, Email, Password, Mobile, Country, Reg_Date, Last_login, Error_count, Cus_Status, Profile_image, First_name, Last_name, DOB, ActivationStatus_Mail, ActivationStatus_Sms, Email_Subs, Sms_Subs FROM Infiniti_CustomerRegistration WHERE (Customer_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CustomerRegistrationNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CustomerRegistrationNewDeleteCommand]
(
	@Original_Customer_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_CustomerRegistration] WHERE (([Customer_id] = @Original_Customer_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CountryDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CountryDetailNewUpdateCommand]
(
	@Country_Name nvarchar(50),
	@Country_Code int,
	@Original_Country_id int,
	@Country_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_CountryDetail] SET [Country_Name] = @Country_Name, [Country_Code] = @Country_Code WHERE (([Country_id] = @Original_Country_id));
	
SELECT Country_id, Country_Name, Country_Code FROM Infiniti_CountryDetail WHERE (Country_id = @Country_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CountryDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CountryDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Country_id, Country_Name, Country_Code
FROM            Infiniti_CountryDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CountryDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CountryDetailNewInsertCommand]
(
	@Country_Name nvarchar(50),
	@Country_Code int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_CountryDetail] ([Country_Name], [Country_Code]) VALUES (@Country_Name, @Country_Code);
	
SELECT Country_id, Country_Name, Country_Code FROM Infiniti_CountryDetail WHERE (Country_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_CountryDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_CountryDetailNewDeleteCommand]
(
	@Original_Country_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_CountryDetail] WHERE (([Country_id] = @Original_Country_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_ColorDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_ColorDetailNewUpdateCommand]
(
	@Color_Name nvarchar(50),
	@Color_image_url nvarchar(100),
	@Date datetime,
	@Original_Color_id int,
	@Color_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_ColorDetail] SET [Color_Name] = @Color_Name, [Color_image_url] = @Color_image_url, [Date] = @Date WHERE (([Color_id] = @Original_Color_id));
	
SELECT Color_id, Color_Name, Color_image_url, Date FROM Infiniti_ColorDetail WHERE (Color_id = @Color_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_ColorDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_ColorDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Color_id, Color_Name, Color_image_url, Date
FROM            Infiniti_ColorDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_ColorDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_ColorDetailNewInsertCommand]
(
	@Color_Name nvarchar(50),
	@Color_image_url nvarchar(100),
	@Date datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_ColorDetail] ([Color_Name], [Color_image_url], [Date]) VALUES (@Color_Name, @Color_image_url, @Date);
	
SELECT Color_id, Color_Name, Color_image_url, Date FROM Infiniti_ColorDetail WHERE (Color_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_ColorDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_ColorDetailNewDeleteCommand]
(
	@Original_Color_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_ColorDetail] WHERE (([Color_id] = @Original_Color_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_SubCataroryNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_SubCataroryNewUpdateCommand]
(
	@SubCatagory_Name nvarchar(100),
	@fkCatagory_id int,
	@Date datetime,
	@Original_SubCatagory_id int,
	@SubCatagory_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_SubCatarory] SET [SubCatagory_Name] = @SubCatagory_Name, [fkCatagory_id] = @fkCatagory_id, [Date] = @Date WHERE (([SubCatagory_id] = @Original_SubCatagory_id));
	
SELECT SubCatagory_id, SubCatagory_Name, fkCatagory_id, Date FROM Infiniti_SubCatarory WHERE (SubCatagory_id = @SubCatagory_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_SubCataroryNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_SubCataroryNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        SubCatagory_id, SubCatagory_Name, fkCatagory_id, Date
FROM            Infiniti_SubCatarory
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_SubCataroryNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_SubCataroryNewInsertCommand]
(
	@SubCatagory_Name nvarchar(100),
	@fkCatagory_id int,
	@Date datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_SubCatarory] ([SubCatagory_Name], [fkCatagory_id], [Date]) VALUES (@SubCatagory_Name, @fkCatagory_id, @Date);
	
SELECT SubCatagory_id, SubCatagory_Name, fkCatagory_id, Date FROM Infiniti_SubCatarory WHERE (SubCatagory_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_SubCataroryNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_SubCataroryNewDeleteCommand]
(
	@Original_SubCatagory_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_SubCatarory] WHERE (([SubCatagory_id] = @Original_SubCatagory_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_StateDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_StateDetailNewUpdateCommand]
(
	@State_Name nvarchar(50),
	@FkCountry_id int,
	@Original_State_id int,
	@State_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_StateDetail] SET [State_Name] = @State_Name, [FkCountry_id] = @FkCountry_id WHERE (([State_id] = @Original_State_id));
	
SELECT State_id, State_Name, FkCountry_id FROM Infiniti_StateDetail WHERE (State_id = @State_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_StateDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_StateDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        State_id, State_Name, FkCountry_id
FROM            Infiniti_StateDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_StateDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_StateDetailNewInsertCommand]
(
	@State_Name nvarchar(50),
	@FkCountry_id int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_StateDetail] ([State_Name], [FkCountry_id]) VALUES (@State_Name, @FkCountry_id);
	
SELECT State_id, State_Name, FkCountry_id FROM Infiniti_StateDetail WHERE (State_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_StateDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_StateDetailNewDeleteCommand]
(
	@Original_State_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_StateDetail] WHERE (([State_id] = @Original_State_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Change_pwd_logNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Change_pwd_logNewUpdateCommand]
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
UPDATE [Infiniti_Change_pwd_log] SET [New_pwd] = @New_pwd, [old_pwd] = @old_pwd, [Date] = @Date, [fkCustomer_id] = @fkCustomer_id WHERE (([Change_pwd_id] = @Original_Change_pwd_id));
	
SELECT Change_pwd_id, New_pwd, old_pwd, Date, fkCustomer_id FROM Infiniti_Change_pwd_log WHERE (Change_pwd_id = @Change_pwd_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Change_pwd_logNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Change_pwd_logNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Change_pwd_id, New_pwd, old_pwd, Date, fkCustomer_id
FROM            Infiniti_Change_pwd_log
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Change_pwd_logNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Change_pwd_logNewInsertCommand]
(
	@New_pwd nvarchar(50),
	@old_pwd nvarchar(50),
	@Date datetime,
	@fkCustomer_id int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_Change_pwd_log] ([New_pwd], [old_pwd], [Date], [fkCustomer_id]) VALUES (@New_pwd, @old_pwd, @Date, @fkCustomer_id);
	
SELECT Change_pwd_id, New_pwd, old_pwd, Date, fkCustomer_id FROM Infiniti_Change_pwd_log WHERE (Change_pwd_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Change_pwd_logNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Change_pwd_logNewDeleteCommand]
(
	@Original_Change_pwd_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_Change_pwd_log] WHERE (([Change_pwd_id] = @Original_Change_pwd_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Shipping_AddressNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Shipping_AddressNewUpdateCommand]
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
UPDATE [Infiniti_Shipping_Address] SET [ship_Name] = @ship_Name, [ship_Address] = @ship_Address, [ship_Zipcode] = @ship_Zipcode, [ship_City] = @ship_City, [ship_State] = @ship_State, [ship_Country] = @ship_Country, [ship_Mail] = @ship_Mail, [ship_Phone] = @ship_Phone, [fk_Customerid] = @fk_Customerid WHERE (([Shipping_id] = @Original_Shipping_id));
	
SELECT Shipping_id, ship_Name, ship_Address, ship_Zipcode, ship_City, ship_State, ship_Country, ship_Mail, ship_Phone, fk_Customerid FROM Infiniti_Shipping_Address WHERE (Shipping_id = @Shipping_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Shipping_AddressNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Shipping_AddressNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Shipping_id, ship_Name, ship_Address, ship_Zipcode, ship_City, ship_State, ship_Country, ship_Mail, ship_Phone, fk_Customerid
FROM            Infiniti_Shipping_Address
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Shipping_AddressNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Shipping_AddressNewInsertCommand]
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
INSERT INTO [Infiniti_Shipping_Address] ([ship_Name], [ship_Address], [ship_Zipcode], [ship_City], [ship_State], [ship_Country], [ship_Mail], [ship_Phone], [fk_Customerid]) VALUES (@ship_Name, @ship_Address, @ship_Zipcode, @ship_City, @ship_State, @ship_Country, @ship_Mail, @ship_Phone, @fk_Customerid);
	
SELECT Shipping_id, ship_Name, ship_Address, ship_Zipcode, ship_City, ship_State, ship_Country, ship_Mail, ship_Phone, fk_Customerid FROM Infiniti_Shipping_Address WHERE (Shipping_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Shipping_AddressNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Shipping_AddressNewDeleteCommand]
(
	@Original_Shipping_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_Shipping_Address] WHERE (([Shipping_id] = @Original_Shipping_id))
GO
/****** Object:  Table [dbo].[Infiniti_DesignDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_DesignDetail](
	[Design_id] [int] IDENTITY(1,1) NOT NULL,
	[Design_Name] [nvarchar](100) NULL,
	[fkSubCatagory_id] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Infiniti_DesignDetail] PRIMARY KEY CLUSTERED 
(
	[Design_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Billing_AddressNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Billing_AddressNewUpdateCommand]
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
UPDATE [Infiniti_Billing_Address] SET [bil_Name] = @bil_Name, [bill_Address] = @bill_Address, [bill_zipcode] = @bill_zipcode, [bill_City] = @bill_City, [bill_State] = @bill_State, [bill_Country] = @bill_Country, [bill_Mail] = @bill_Mail, [bill_Phone] = @bill_Phone, [fk_Customerid] = @fk_Customerid WHERE (([billing_id] = @Original_billing_id));
	
SELECT billing_id, bil_Name, bill_Address, bill_zipcode, bill_City, bill_State, bill_Country, bill_Mail, bill_Phone, fk_Customerid FROM Infiniti_Billing_Address WHERE (billing_id = @billing_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Billing_AddressNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Billing_AddressNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        billing_id, bil_Name, bill_Address, bill_zipcode, bill_City, bill_State, bill_Country, bill_Mail, bill_Phone, fk_Customerid
FROM            Infiniti_Billing_Address
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Billing_AddressNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Billing_AddressNewInsertCommand]
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
INSERT INTO [Infiniti_Billing_Address] ([bil_Name], [bill_Address], [bill_zipcode], [bill_City], [bill_State], [bill_Country], [bill_Mail], [bill_Phone], [fk_Customerid]) VALUES (@bil_Name, @bill_Address, @bill_zipcode, @bill_City, @bill_State, @bill_Country, @bill_Mail, @bill_Phone, @fk_Customerid);
	
SELECT billing_id, bil_Name, bill_Address, bill_zipcode, bill_City, bill_State, bill_Country, bill_Mail, bill_Phone, fk_Customerid FROM Infiniti_Billing_Address WHERE (billing_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_Billing_AddressNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_Billing_AddressNewDeleteCommand]
(
	@Original_billing_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_Billing_Address] WHERE (([billing_id] = @Original_billing_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_ Infiniti_OrderDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ Infiniti_OrderDetailNewUpdateCommand]
(
	@fkCustomer_id int,
	@Order_Date datetime,
	@Delivery_Date datetime,
	@Shiping_Tax decimal(18, 2),
	@Total_Amount decimal(18, 2),
	@Original_Order_id int,
	@Order_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_OrderDetail] SET [fkCustomer_id] = @fkCustomer_id, [Order_Date] = @Order_Date, [Delivery_Date] = @Delivery_Date, [Shiping_Tax] = @Shiping_Tax, [Total_Amount] = @Total_Amount WHERE (([Order_id] = @Original_Order_id));
	
SELECT Order_id, fkCustomer_id, Order_Date, Delivery_Date, Shiping_Tax, Total_Amount FROM Infiniti_OrderDetail WHERE (Order_id = @Order_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_ Infiniti_OrderDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ Infiniti_OrderDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Order_id, fkCustomer_id, Order_Date, Delivery_Date, Shiping_Tax, Total_Amount
FROM            Infiniti_OrderDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_ Infiniti_OrderDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ Infiniti_OrderDetailNewInsertCommand]
(
	@fkCustomer_id int,
	@Order_Date datetime,
	@Delivery_Date datetime,
	@Shiping_Tax decimal(18, 2),
	@Total_Amount decimal(18, 2)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_OrderDetail] ([fkCustomer_id], [Order_Date], [Delivery_Date], [Shiping_Tax], [Total_Amount]) VALUES (@fkCustomer_id, @Order_Date, @Delivery_Date, @Shiping_Tax, @Total_Amount);
	
SELECT Order_id, fkCustomer_id, Order_Date, Delivery_Date, Shiping_Tax, Total_Amount FROM Infiniti_OrderDetail WHERE (Order_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_ Infiniti_OrderDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ Infiniti_OrderDetailNewDeleteCommand]
(
	@Original_Order_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_OrderDetail] WHERE (([Order_id] = @Original_Order_id))
GO
/****** Object:  Table [dbo].[Infiniti_ProductDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_ProductDetail](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[fkDesign_id] [int] NULL,
	[fkColor_id] [int] NULL,
	[fkSize_id] [int] NULL,
	[fkOffer_id] [int] NULL,
	[Stock_Value] [int] NULL,
	[Product_img_url_small] [nvarchar](100) NULL,
	[Product_img_url_large] [nvarchar](100) NULL,
	[Product_Actual_Price] [decimal](18, 2) NULL,
	[Product_Discount_Price] [decimal](18, 2) NULL,
	[Discount] [int] NULL,
	[Short_Discription] [nvarchar](100) NULL,
	[Discription] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Infiniti_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_DesignDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_DesignDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Design_id, Design_Name, fkSubCatagory_id, Date
FROM            Infiniti_DesignDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_DesignDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_DesignDetailNewInsertCommand]
(
	
	@Design_Name nvarchar(100),
	@fkSubCatagory_id int,
	@Date datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_DesignDetail] ( [Design_Name], [fkSubCatagory_id], [Date]) VALUES ( @Design_Name, @fkSubCatagory_id, @Date);
	
SELECT Design_id, Design_Name, fkSubCatagory_id, Date FROM Infiniti_DesignDetail WHERE (Design_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_DesignDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_DesignDetailNewDeleteCommand]
(
	@Original_Design_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_DesignDetail] WHERE (([Design_id] = @Original_Design_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_WomenHomePage]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_WomenHomePage]


AS

BEGIN
;WITH CTE AS
(
      SELECT      D.DESIGN_NAME
             ,    P.*
             ,    ROW_NUMBER() OVER(PARTITION BY fkDesign_id ORDER BY fkDesign_id ) RANK FROM Infiniti_ProductDetail P
                                                                                   INNER JOIN Infiniti_DesignDetail D 
                                                                                   ON D.DESIGN_ID=P.FKDESIGN_ID 
                                                                                   INNER JOIN Infiniti_SubCatarory S
                                                                                   ON D.fkSubCatagory_id=S.SubCatagory_id
                                                                                   WHERE S.SubCatagory_id=3
)
SELECT * FROM CTE WHERE RANK=1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenHomePage]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_MenHomePage]


AS

BEGIN
;WITH CTE AS
(
      SELECT      D.DESIGN_NAME
             ,    P.*
             ,    ROW_NUMBER() OVER(PARTITION BY fkDesign_id ORDER BY fkDesign_id ) RANK FROM Infiniti_ProductDetail P
                                                                                   INNER JOIN Infiniti_DesignDetail D 
                                                                                   ON D.DESIGN_ID=P.FKDESIGN_ID 
                                                                                   INNER JOIN Infiniti_SubCatarory S
                                                                                   ON D.fkSubCatagory_id=S.SubCatagory_id
                                                                                   WHERE S.SubCatagory_id=1
)
SELECT * FROM CTE WHERE RANK=1
END
GO
/****** Object:  Table [dbo].[Infiniti_OrderSummaryDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_OrderSummaryDetail](
	[OrderSummary_id] [int] IDENTITY(1,1) NOT NULL,
	[fkCustomer_id] [int] NULL,
	[fkProduct_id] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Infiniti_OrderSummaryDetail] PRIMARY KEY CLUSTERED 
(
	[OrderSummary_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infiniti_OrderItemDetail]    Script Date: 08/01/2012 18:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infiniti_OrderItemDetail](
	[OrderItem_id] [int] IDENTITY(1,1) NOT NULL,
	[fkProduct_id] [int] NULL,
	[Quantity] [int] NULL,
	[Actual_Price] [decimal](18, 2) NULL,
	[Discount] [int] NULL,
	[fkOrder_id] [int] NULL,
 CONSTRAINT [PK_Infiniti_OrderItemDetail] PRIMARY KEY CLUSTERED 
(
	[OrderItem_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetSize]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSize]
	-- Add the parameters for the stored procedure here
(
 @Design_id int,@Color_id int
)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT b.Size_id,b.Size_Name FROM dbo.Infiniti_ProductDetail a 
							   join dbo.Infiniti_SizeDetail b 
							   ON a.fkSize_id=b.Size_id 
							   WHERE a.fkDesign_id=@Design_id and a.fkColor_id=@Color_id order by(b.Size_Name) Asc
END
GO
/****** Object:  StoredProcedure [dbo].[GetColor]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetColor]
	-- Add the parameters for the stored procedure here
	@Designid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT b.Color_id,b.Color_Name FROM dbo.Infiniti_ProductDetail a 
							   join dbo.Infiniti_ColorDetail b 
							   ON a.fkColor_id=b.Color_id 
							   WHERE fkDesign_id=@Designid
END
GO
/****** Object:  StoredProcedure [dbo].[sp_HomePage]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_HomePage]

AS

BEGIN
;WITH CTE AS
(
      SELECT      D.DESIGN_NAME
             ,    P.*
             ,    ROW_NUMBER() OVER(PARTITION BY fkDesign_id ORDER BY fkDesign_id ) RANK FROM Infiniti_ProductDetail P
                                                                                   INNER JOIN Infiniti_DesignDetail D 
                                                                                   ON D.DESIGN_ID=P.FKDESIGN_ID 
                                                                                   INNER JOIN Infiniti_SubCatarory S
                                                                                   ON D.fkSubCatagory_id=S.SubCatagory_id
                                                                                  
)
SELECT * FROM CTE WHERE RANK=1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_designhome]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_designhome]

@SUBCATAGORY_ID INT
AS

BEGIN
;WITH CTE AS
(
      SELECT      D.DESIGN_NAME
             ,    P.*
             ,    ROW_NUMBER() OVER(PARTITION BY fkDesign_id ORDER BY fkDesign_id ) RANK FROM Infiniti_ProductDetail P
                                                                                   INNER JOIN Infiniti_DesignDetail D 
                                                                                   ON D.DESIGN_ID=P.FKDESIGN_ID 
                                                                                   INNER JOIN Infiniti_SubCatarory S
                                                                                   ON D.fkSubCatagory_id=S.SubCatagory_id
                                                                                   WHERE S.SubCatagory_id=@SUBCATAGORY_ID
)
SELECT * FROM CTE WHERE RANK=1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_ProductDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_ProductDetailNewUpdateCommand]
(
	@fkDesign_id int,
	@fkColor_id int,
	@fkSize_id int,
	@fkOffer_id int,
	@Stock_Value int,
	@Product_img_url_small nvarchar(100),
	@Product_img_url_large nvarchar(100),
	@Product_Actual_Price decimal(18, 2),
	@Product_Discount_Price decimal(18, 2),
	@Discount int,
	@Short_Discription nvarchar(100),
	@Discription nvarchar(MAX),
	@Date datetime,
	@Original_Product_id int,
	@Product_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_ProductDetail] SET [fkDesign_id] = @fkDesign_id, [fkColor_id] = @fkColor_id, [fkSize_id] = @fkSize_id, [fkOffer_id] = @fkOffer_id, [Stock_Value] = @Stock_Value, [Product_img_url_small] = @Product_img_url_small, [Product_img_url_large] = @Product_img_url_large, [Product_Actual_Price] = @Product_Actual_Price, [Product_Discount_Price] = @Product_Discount_Price, [Discount] = @Discount, [Short_Discription] = @Short_Discription, [Discription] = @Discription, [Date] = @Date WHERE (([Product_id] = @Original_Product_id));
	
SELECT Product_id, fkDesign_id, fkColor_id, fkSize_id, fkOffer_id, Stock_Value, Product_img_url_small, Product_img_url_large, Product_Actual_Price, Product_Discount_Price, Discount, Short_Discription, Discription, Date FROM Infiniti_ProductDetail WHERE (Product_id = @Product_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_ProductDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_ProductDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Product_id, fkDesign_id, fkColor_id, fkSize_id, fkOffer_id, Stock_Value, Product_img_url_small, Product_img_url_large, Product_Actual_Price, 
                         Product_Discount_Price, Discount, Short_Discription, Discription, Date
FROM            Infiniti_ProductDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_ProductDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_ProductDetailNewInsertCommand]
(
	@fkDesign_id int,
	@fkColor_id int,
	@fkSize_id int,
	@fkOffer_id int,
	@Stock_Value int,
	@Product_img_url_small nvarchar(100),
	@Product_img_url_large nvarchar(100),
	@Product_Actual_Price decimal(18, 2),
	@Product_Discount_Price decimal(18, 2),
	@Discount int,
	@Short_Discription nvarchar(100),
	@Discription nvarchar(MAX),
	@Date datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_ProductDetail] ([fkDesign_id], [fkColor_id], [fkSize_id], [fkOffer_id], [Stock_Value], [Product_img_url_small], [Product_img_url_large], [Product_Actual_Price], [Product_Discount_Price], [Discount], [Short_Discription], [Discription], [Date]) VALUES (@fkDesign_id, @fkColor_id, @fkSize_id, @fkOffer_id, @Stock_Value, @Product_img_url_small, @Product_img_url_large, @Product_Actual_Price, @Product_Discount_Price, @Discount, @Short_Discription, @Discription, @Date);
	
SELECT Product_id, fkDesign_id, fkColor_id, fkSize_id, fkOffer_id, Stock_Value, Product_img_url_small, Product_img_url_large, Product_Actual_Price, Product_Discount_Price, Discount, Short_Discription, Discription, Date FROM Infiniti_ProductDetail WHERE (Product_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_ProductDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_ProductDetailNewDeleteCommand]
(
	@Original_Product_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_ProductDetail] WHERE (([Product_id] = @Original_Product_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_OrderSummaryDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_OrderSummaryDetailNewUpdateCommand]
(
	@fkCustomer_id int,
	@fkProduct_id int,
	@Date datetime,
	@Original_OrderSummary_id int,
	@OrderSummary_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_OrderSummaryDetail] SET [fkCustomer_id] = @fkCustomer_id, [fkProduct_id] = @fkProduct_id, [Date] = @Date WHERE (([OrderSummary_id] = @Original_OrderSummary_id));
	
SELECT OrderSummary_id, fkCustomer_id, fkProduct_id, Date FROM Infiniti_OrderSummaryDetail WHERE (OrderSummary_id = @OrderSummary_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_OrderSummaryDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_OrderSummaryDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        OrderSummary_id, fkCustomer_id, fkProduct_id, Date
FROM            Infiniti_OrderSummaryDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_OrderSummaryDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_OrderSummaryDetailNewInsertCommand]
(
	@fkCustomer_id int,
	@fkProduct_id int,
	@Date datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_OrderSummaryDetail] ([fkCustomer_id], [fkProduct_id], [Date]) VALUES (@fkCustomer_id, @fkProduct_id, @Date);
	
SELECT OrderSummary_id, fkCustomer_id, fkProduct_id, Date FROM Infiniti_OrderSummaryDetail WHERE (OrderSummary_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_OrderSummaryDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_OrderSummaryDetailNewDeleteCommand]
(
	@Original_OrderSummary_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_OrderSummaryDetail] WHERE (([OrderSummary_id] = @Original_OrderSummary_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_OrderItemDetailNewUpdateCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_OrderItemDetailNewUpdateCommand]
(
	@fkProduct_id int,
	@Quantity int,
	@Actual_Price decimal(18, 2),
	@Discount int,
	@fkOrder_id int,
	@Original_OrderItem_id int,
	@OrderItem_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Infiniti_OrderItemDetail] SET [fkProduct_id] = @fkProduct_id, [Quantity] = @Quantity, [Actual_Price] = @Actual_Price, [Discount] = @Discount, [fkOrder_id] = @fkOrder_id WHERE (([OrderItem_id] = @Original_OrderItem_id));
	
SELECT OrderItem_id, fkProduct_id, Quantity, Actual_Price, Discount, fkOrder_id FROM Infiniti_OrderItemDetail WHERE (OrderItem_id = @OrderItem_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_OrderItemDetailNewSelectCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_OrderItemDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        OrderItem_id, fkProduct_id, Quantity, Actual_Price, Discount, fkOrder_id
FROM            Infiniti_OrderItemDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_OrderItemDetailNewInsertCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_OrderItemDetailNewInsertCommand]
(
	@fkProduct_id int,
	@Quantity int,
	@Actual_Price decimal(18, 2),
	@Discount int,
	@fkOrder_id int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Infiniti_OrderItemDetail] ([fkProduct_id], [Quantity], [Actual_Price], [Discount], [fkOrder_id]) VALUES (@fkProduct_id, @Quantity, @Actual_Price, @Discount, @fkOrder_id);
	
SELECT OrderItem_id, fkProduct_id, Quantity, Actual_Price, Discount, fkOrder_id FROM Infiniti_OrderItemDetail WHERE (OrderItem_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Infiniti_OrderItemDetailNewDeleteCommand]    Script Date: 08/01/2012 18:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Infiniti_OrderItemDetailNewDeleteCommand]
(
	@Original_OrderItem_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Infiniti_OrderItemDetail] WHERE (([OrderItem_id] = @Original_OrderItem_id))
GO
/****** Object:  ForeignKey [FK_ecommerce_Billing_Address_ecommerce_Customer_registration]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_Billing_Address]  WITH CHECK ADD  CONSTRAINT [FK_ecommerce_Billing_Address_ecommerce_Customer_registration] FOREIGN KEY([fk_Customerid])
REFERENCES [dbo].[Infiniti_CustomerRegistration] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Infiniti_Billing_Address] CHECK CONSTRAINT [FK_ecommerce_Billing_Address_ecommerce_Customer_registration]
GO
/****** Object:  ForeignKey [FK_Infiniti_Change_pwd_log_Infiniti_Customer_registration]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_Change_pwd_log]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_Change_pwd_log_Infiniti_Customer_registration] FOREIGN KEY([fkCustomer_id])
REFERENCES [dbo].[Infiniti_CustomerRegistration] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Infiniti_Change_pwd_log] CHECK CONSTRAINT [FK_Infiniti_Change_pwd_log_Infiniti_Customer_registration]
GO
/****** Object:  ForeignKey [FK_Infiniti_DesignDetail_Infiniti_SubCatarory]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_DesignDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_DesignDetail_Infiniti_SubCatarory] FOREIGN KEY([fkSubCatagory_id])
REFERENCES [dbo].[Infiniti_SubCatarory] ([SubCatagory_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Infiniti_DesignDetail] CHECK CONSTRAINT [FK_Infiniti_DesignDetail_Infiniti_SubCatarory]
GO
/****** Object:  ForeignKey [FK_Infiniti_OrderDetail_Infiniti_CustomerRegistration]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_OrderDetail_Infiniti_CustomerRegistration] FOREIGN KEY([fkCustomer_id])
REFERENCES [dbo].[Infiniti_CustomerRegistration] ([Customer_id])
GO
ALTER TABLE [dbo].[Infiniti_OrderDetail] CHECK CONSTRAINT [FK_Infiniti_OrderDetail_Infiniti_CustomerRegistration]
GO
/****** Object:  ForeignKey [FK_Infiniti_OrderItemDetail_Infiniti_OrderDetail]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_OrderItemDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_OrderItemDetail_Infiniti_OrderDetail] FOREIGN KEY([fkOrder_id])
REFERENCES [dbo].[Infiniti_OrderDetail] ([Order_id])
GO
ALTER TABLE [dbo].[Infiniti_OrderItemDetail] CHECK CONSTRAINT [FK_Infiniti_OrderItemDetail_Infiniti_OrderDetail]
GO
/****** Object:  ForeignKey [FK_Infiniti_OrderItemDetail_Infiniti_ProductDetail]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_OrderItemDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_OrderItemDetail_Infiniti_ProductDetail] FOREIGN KEY([fkProduct_id])
REFERENCES [dbo].[Infiniti_ProductDetail] ([Product_id])
GO
ALTER TABLE [dbo].[Infiniti_OrderItemDetail] CHECK CONSTRAINT [FK_Infiniti_OrderItemDetail_Infiniti_ProductDetail]
GO
/****** Object:  ForeignKey [FK_Infiniti_OrderSummaryDetail_Infiniti_CustomerRegistration]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_OrderSummaryDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_OrderSummaryDetail_Infiniti_CustomerRegistration] FOREIGN KEY([fkCustomer_id])
REFERENCES [dbo].[Infiniti_CustomerRegistration] ([Customer_id])
GO
ALTER TABLE [dbo].[Infiniti_OrderSummaryDetail] CHECK CONSTRAINT [FK_Infiniti_OrderSummaryDetail_Infiniti_CustomerRegistration]
GO
/****** Object:  ForeignKey [FK_Infiniti_OrderSummaryDetail_Infiniti_ProductDetail]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_OrderSummaryDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_OrderSummaryDetail_Infiniti_ProductDetail] FOREIGN KEY([fkProduct_id])
REFERENCES [dbo].[Infiniti_ProductDetail] ([Product_id])
GO
ALTER TABLE [dbo].[Infiniti_OrderSummaryDetail] CHECK CONSTRAINT [FK_Infiniti_OrderSummaryDetail_Infiniti_ProductDetail]
GO
/****** Object:  ForeignKey [FK_Infiniti_ProductDetail_Infinit_OfferDetail]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_ProductDetail_Infinit_OfferDetail] FOREIGN KEY([fkOffer_id])
REFERENCES [dbo].[Infinit_OfferDetail] ([Offer_id])
GO
ALTER TABLE [dbo].[Infiniti_ProductDetail] CHECK CONSTRAINT [FK_Infiniti_ProductDetail_Infinit_OfferDetail]
GO
/****** Object:  ForeignKey [FK_Infiniti_ProductDetail_Infiniti_ColorDetail]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_ProductDetail_Infiniti_ColorDetail] FOREIGN KEY([fkColor_id])
REFERENCES [dbo].[Infiniti_ColorDetail] ([Color_id])
GO
ALTER TABLE [dbo].[Infiniti_ProductDetail] CHECK CONSTRAINT [FK_Infiniti_ProductDetail_Infiniti_ColorDetail]
GO
/****** Object:  ForeignKey [FK_Infiniti_ProductDetail_Infiniti_DesignDetail]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_ProductDetail_Infiniti_DesignDetail] FOREIGN KEY([fkDesign_id])
REFERENCES [dbo].[Infiniti_DesignDetail] ([Design_id])
GO
ALTER TABLE [dbo].[Infiniti_ProductDetail] CHECK CONSTRAINT [FK_Infiniti_ProductDetail_Infiniti_DesignDetail]
GO
/****** Object:  ForeignKey [FK_Infiniti_ProductDetail_Infiniti_SizeDetail]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_ProductDetail_Infiniti_SizeDetail] FOREIGN KEY([fkSize_id])
REFERENCES [dbo].[Infiniti_SizeDetail] ([Size_id])
GO
ALTER TABLE [dbo].[Infiniti_ProductDetail] CHECK CONSTRAINT [FK_Infiniti_ProductDetail_Infiniti_SizeDetail]
GO
/****** Object:  ForeignKey [FK_Infiniti_Shipping_Address_Infiniti_CustomerRegistration]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_Shipping_Address]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_Shipping_Address_Infiniti_CustomerRegistration] FOREIGN KEY([fk_Customerid])
REFERENCES [dbo].[Infiniti_CustomerRegistration] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Infiniti_Shipping_Address] CHECK CONSTRAINT [FK_Infiniti_Shipping_Address_Infiniti_CustomerRegistration]
GO
/****** Object:  ForeignKey [FK_Infiniti_StateDetail_Infiniti_CountryDetail]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_StateDetail]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_StateDetail_Infiniti_CountryDetail] FOREIGN KEY([FkCountry_id])
REFERENCES [dbo].[Infiniti_CountryDetail] ([Country_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Infiniti_StateDetail] CHECK CONSTRAINT [FK_Infiniti_StateDetail_Infiniti_CountryDetail]
GO
/****** Object:  ForeignKey [FK_Infiniti_SubCatarory_Infiniti_CatagoryDetail]    Script Date: 08/01/2012 18:45:37 ******/
ALTER TABLE [dbo].[Infiniti_SubCatarory]  WITH CHECK ADD  CONSTRAINT [FK_Infiniti_SubCatarory_Infiniti_CatagoryDetail] FOREIGN KEY([fkCatagory_id])
REFERENCES [dbo].[Infiniti_CatagoryDetail] ([Catagory_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Infiniti_SubCatarory] CHECK CONSTRAINT [FK_Infiniti_SubCatarory_Infiniti_CatagoryDetail]
GO
