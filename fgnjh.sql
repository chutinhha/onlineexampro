USE [master]
GO
/****** Object:  Database [PhotoProcessing]    Script Date: 06/22/2012 18:57:32 ******/
CREATE DATABASE [PhotoProcessing] ON  PRIMARY 
( NAME = N'PhotoProcessing', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PhotoProcessing.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PhotoProcessing_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PhotoProcessing_1.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PhotoProcessing] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhotoProcessing].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhotoProcessing] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PhotoProcessing] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PhotoProcessing] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PhotoProcessing] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PhotoProcessing] SET ARITHABORT OFF
GO
ALTER DATABASE [PhotoProcessing] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [PhotoProcessing] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PhotoProcessing] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PhotoProcessing] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PhotoProcessing] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PhotoProcessing] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PhotoProcessing] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PhotoProcessing] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PhotoProcessing] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PhotoProcessing] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PhotoProcessing] SET  DISABLE_BROKER
GO
ALTER DATABASE [PhotoProcessing] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PhotoProcessing] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PhotoProcessing] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PhotoProcessing] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PhotoProcessing] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PhotoProcessing] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PhotoProcessing] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PhotoProcessing] SET  READ_WRITE
GO
ALTER DATABASE [PhotoProcessing] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PhotoProcessing] SET  MULTI_USER
GO
ALTER DATABASE [PhotoProcessing] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PhotoProcessing] SET DB_CHAINING OFF
GO
USE [PhotoProcessing]
GO
/****** Object:  Table [dbo].[Photo_Shipping_Address]    Script Date: 06/22/2012 18:57:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_Shipping_Address](
	[Shipping_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Ship_Name] [nvarchar](50) NULL,
	[Ship_Address] [nvarchar](50) NULL,
	[Ship_zipcode] [int] NULL,
	[Ship_Country] [int] NULL,
	[Ship_State] [int] NULL,
	[Ship_City] [nvarchar](50) NULL,
	[Ship_Mail] [nvarchar](50) NULL,
	[Ship_Phone] [bigint] NULL,
	[Ship_Mobile] [bigint] NULL,
 CONSTRAINT [PK_Photo_Shipping_Address] PRIMARY KEY CLUSTERED 
(
	[Shipping_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_Billing_Address]    Script Date: 06/22/2012 18:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_Billing_Address](
	[Billing_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Bill_Name] [nvarchar](50) NULL,
	[Bill_Address] [nvarchar](50) NULL,
	[Bill_zipcode] [int] NULL,
	[Bill_Country] [int] NULL,
	[Bill_State] [int] NULL,
	[Bill_City] [nvarchar](50) NULL,
	[Bill_Mail] [nvarchar](50) NULL,
	[Bill_Phone] [bigint] NULL,
	[Bill_Mobile] [bigint] NULL,
 CONSTRAINT [PK_Photo_Billing_Address] PRIMARY KEY CLUSTERED 
(
	[Billing_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_PlanDetail]    Script Date: 06/22/2012 18:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_PlanDetail](
	[Plan_id] [int] IDENTITY(1,1) NOT NULL,
	[Plan_Name] [nvarchar](100) NULL,
	[Rate] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Photo_PlanDetail] PRIMARY KEY CLUSTERED 
(
	[Plan_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_CustomerRegistrationDetail]    Script Date: 06/22/2012 18:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_CustomerRegistrationDetail](
	[Customer_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Mobile] [bigint] NULL,
	[Country] [int] NULL,
	[Reg_Date] [datetime] NULL,
	[Last_Login] [datetime] NULL,
	[Error_count] [int] NULL,
	[Current_Status] [int] NULL,
	[Profile_Image] [nvarchar](50) NULL,
	[Full_Name] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[ActivationStatus_Mail] [int] NULL,
	[ActivationStatus_Mobile] [int] NULL,
	[Email_Subs] [int] NULL,
	[SMS_Subs] [int] NULL,
 CONSTRAINT [PK_Photo_CustomerRegistrationDetail] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_Customer_Status]    Script Date: 06/22/2012 18:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_Customer_Status](
	[Status_id] [int] IDENTITY(1,1) NOT NULL,
	[Status_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Photo_Customer_Status] PRIMARY KEY CLUSTERED 
(
	[Status_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_CountryDetail]    Script Date: 06/22/2012 18:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_CountryDetail](
	[Country_id] [int] IDENTITY(1,1) NOT NULL,
	[Country_Name] [nvarchar](50) NULL,
	[Country_Code] [int] NULL,
 CONSTRAINT [PK_Photo_CountryDetail] PRIMARY KEY CLUSTERED 
(
	[Country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Shipping_AddressNewUpdateCommand]    Script Date: 06/22/2012 18:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Shipping_AddressNewUpdateCommand]
(
	@Ship_Name nvarchar(50),
	@Ship_Address nvarchar(50),
	@Ship_zipcode int,
	@Ship_Country int,
	@Ship_State int,
	@Ship_City nvarchar(50),
	@Ship_Mail nvarchar(50),
	@Ship_Phone bigint,
	@Ship_Mobile bigint,
	@Original_Shipping_id bigint,
	@Shipping_id bigint
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_Shipping_Address] SET [Ship_Name] = @Ship_Name, [Ship_Address] = @Ship_Address, [Ship_zipcode] = @Ship_zipcode, [Ship_Country] = @Ship_Country, [Ship_State] = @Ship_State, [Ship_City] = @Ship_City, [Ship_Mail] = @Ship_Mail, [Ship_Phone] = @Ship_Phone,[Ship_Mobile]=@Ship_Mobile WHERE (([Shipping_id]  = @Original_Shipping_id));
	
SELECT Shipping_id, Ship_Name, Ship_Address, Ship_zipcode, Ship_Country, Ship_State, Ship_City, Ship_Mail, Ship_Phone,Ship_Mobile FROM Photo_Shipping_Address WHERE (Shipping_id = @Shipping_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Shipping_AddressNewSelectCommand]    Script Date: 06/22/2012 18:58:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Shipping_AddressNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_Shipping_Address
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Shipping_AddressNewInsertCommand]    Script Date: 06/22/2012 18:58:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Shipping_AddressNewInsertCommand]
(
	@Ship_Name nvarchar(50),
	@Ship_Address nvarchar(50),
	@Ship_zipcode int,
	@Ship_Country int,
	@Ship_State int,
	@Ship_City nvarchar(50),
	@Ship_Mail nvarchar(50),
	@Ship_Phone bigint,
	@Ship_Mobile bigint
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_Shipping_Address] ([Ship_Name], [Ship_Address], [Ship_zipcode], [Ship_Country], [Ship_State], [Ship_City], [Ship_Mail], [Ship_Phone],[Ship_Mobile]) VALUES (@Ship_Name, @Ship_Address, @Ship_zipcode, @Ship_Country, @Ship_State, @Ship_City, @Ship_Mail, @Ship_Phone,@Ship_Mobile);
	
SELECT Shipping_id, Ship_Name, Ship_Address, Ship_zipcode, Ship_Country, Ship_State, Ship_City, Ship_Mail, Ship_Phone,Ship_Mobile FROM Photo_Shipping_Address WHERE (Shipping_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Shipping_AddressNewDeleteCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Shipping_AddressNewDeleteCommand]
(
	@Original_Shipping_id bigint
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_Shipping_Address] WHERE (([Shipping_id] = @Original_Shipping_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_PlanDetailNewUpdateCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_PlanDetailNewUpdateCommand]
(
	@Plan_Name nvarchar(100),
	@Rate decimal(18, 2),
	@Original_Plan_id int,
	@Plan_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_PlanDetail] SET [Plan_Name] = @Plan_Name, [Rate] = @Rate WHERE (([Plan_id] = @Original_Plan_id));
	
SELECT Plan_id, Plan_Name, Rate FROM Photo_PlanDetail WHERE (Plan_id = @Plan_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_PlanDetailNewSelectCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_PlanDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_PlanDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_PlanDetailNewInsertCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_PlanDetailNewInsertCommand]
(
	@Plan_Name nvarchar(100),
	@Rate decimal(18, 2)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_PlanDetail] ([Plan_Name], [Rate]) VALUES (@Plan_Name, @Rate);
	
SELECT Plan_id, Plan_Name, Rate FROM Photo_PlanDetail WHERE (Plan_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_PlanDetailNewDeleteCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_PlanDetailNewDeleteCommand]
(
	@Original_Plan_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_PlanDetail] WHERE (([Plan_id] = @Original_Plan_id))
GO
/****** Object:  Table [dbo].[Photo_Change_Password_log]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_Change_Password_log](
	[Change_pwd_id] [int] IDENTITY(1,1) NOT NULL,
	[New_Password] [nvarchar](50) NULL,
	[Old_Password] [nvarchar](50) NULL,
	[Date_of_change] [datetime] NULL,
	[FkCustomer_id] [bigint] NULL,
 CONSTRAINT [PK_Photo_Change_Password_log] PRIMARY KEY CLUSTERED 
(
	[Change_pwd_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_OrderSummaryDetail]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_OrderSummaryDetail](
	[OrderSummary_id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[EditOption] [nvarchar](50) NULL,
	[fkPlan_id] [int] NULL,
	[fkCustomer_id] [bigint] NULL,
 CONSTRAINT [PK_Photo_OrderSummaryDetail] PRIMARY KEY CLUSTERED 
(
	[OrderSummary_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_OrderDetail]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_OrderDetail](
	[Order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[FkCustomer_id] [bigint] NULL,
	[Image_name] [nvarchar](50) NULL,
	[Input_Image_URL] [nvarchar](200) NULL,
	[Edit_Options] [nvarchar](100) NULL,
	[Complaint_Towards] [nvarchar](500) NULL,
	[FkPlan_id] [int] NULL,
	[Ordered_date] [datetime] NULL,
	[DeliveredDate_SoftCopy] [datetime] NULL,
	[Process_Status] [nvarchar](100) NULL,
	[Total_Amount] [decimal](18, 2) NULL,
	[FkCustomer_Status] [int] NULL,
	[Output_Image_URL] [nvarchar](200) NULL,
 CONSTRAINT [PK_Photo_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_Promo_codeDetail]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_Promo_codeDetail](
	[Promo_code_id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Promo_Discount] [decimal](18, 2) NULL,
	[FkCustomer_id] [bigint] NULL,
 CONSTRAINT [PK_Photo_Promo_codeDetail] PRIMARY KEY CLUSTERED 
(
	[Promo_code_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Billing_AddressNewUpdateCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Billing_AddressNewUpdateCommand]
(
	@Bill_Name nvarchar(50),
	@Bill_Address nvarchar(50),
	@Bill_zipcode int,
	@Bill_Country int,
	@Bill_State int,
	@Bill_City nvarchar(50),
	@Bill_Mail nvarchar(50),
	@Bill_Phone bigint,
	@Bill_Mobile bigint,
	@Original_Billing_id bigint,
	@Billing_id bigint
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_Billing_Address] SET [Bill_Name] = @Bill_Name, [Bill_Address] = @Bill_Address, [Bill_zipcode] = @Bill_zipcode, [Bill_Country] = @Bill_Country, [Bill_State] = @Bill_State, [Bill_City] = @Bill_City, [Bill_Mail] = @Bill_Mail, [Bill_Phone] = @Bill_Phone,[Bill_Mobile] = @Bill_Mobile WHERE (([Billing_id] = @Original_Billing_id));
	
SELECT Billing_id, Bill_Name, Bill_Address, Bill_zipcode, Bill_Country, Bill_State, Bill_City, Bill_Mail, Bill_Phone,Bill_Mobile FROM Photo_Billing_Address WHERE (Billing_id = @Billing_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Billing_AddressNewSelectCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Billing_AddressNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_Billing_Address
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Billing_AddressNewInsertCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Billing_AddressNewInsertCommand]
(
	@Bill_Name nvarchar(50),
	@Bill_Address nvarchar(50),
	@Bill_zipcode int,
	@Bill_Country int,
	@Bill_State int,
	@Bill_City nvarchar(50),
	@Bill_Mail nvarchar(50),
	@Bill_Phone bigint,
	@Bill_Mobile bigint
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_Billing_Address] ([Bill_Name], [Bill_Address], [Bill_zipcode], [Bill_Country], [Bill_State], [Bill_City], [Bill_Mail], [Bill_Phone],[Bill_Mobile]) VALUES (@Bill_Name, @Bill_Address, @Bill_zipcode, @Bill_Country, @Bill_State, @Bill_City, @Bill_Mail, @Bill_Phone,@Bill_Mobile);
	
SELECT Billing_id, Bill_Name, Bill_Address, Bill_zipcode, Bill_Country, Bill_State, Bill_City, Bill_Mail, Bill_Phone ,Bill_Mobile FROM Photo_Billing_Address WHERE (Billing_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Billing_AddressNewDeleteCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Billing_AddressNewDeleteCommand]
(
	@Original_Billing_id bigint
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_Billing_Address] WHERE (([Billing_id] = @Original_Billing_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_check_user]    Script Date: 06/22/2012 18:58:34 ******/
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
IF EXISTS(SELECT 1 FROM Photo_CustomerRegistrationDetail   
where Email=@Email and Password=@Password)  
BEGIN  
SELECT @Name=Email+'|'+Full_Name+'|'+cast(Customer_id as nvarchar) FROM Photo_CustomerRegistrationDetail  
where Email=@Email and Password=@Password  
IF EXISTS(SELECT 1 FROM Photo_CustomerRegistrationDetail   
where Email=@Email and Password=@Password and ActivationStatus_Mail=1)  
BEGIN  
update Photo_CustomerRegistrationDetail set Last_Login=GETDATE()  
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
/****** Object:  Table [dbo].[Photo_SubCatagoryDetail]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_SubCatagoryDetail](
	[SubCategory_id] [int] IDENTITY(1,1) NOT NULL,
	[Category_name] [nvarchar](100) NULL,
	[FkPlan_id] [int] NULL,
 CONSTRAINT [PK_Photo_SubCatagoryDetail] PRIMARY KEY CLUSTERED 
(
	[SubCategory_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_StateDetail]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_StateDetail](
	[State_id] [int] IDENTITY(1,1) NOT NULL,
	[State_Name] [nvarchar](50) NULL,
	[FkCountry_id] [int] NULL,
 CONSTRAINT [PK_Photo_StateDetail] PRIMARY KEY CLUSTERED 
(
	[State_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_CustomerRegistrationDetailNewUpdateCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_CustomerRegistrationDetailNewUpdateCommand]
(
	@Email nvarchar(50),
	@Password nvarchar(50),
	@Mobile bigint,
	@Country int,
	@Reg_Date datetime,
	@Last_Login datetime,
	@Error_count int,
	@Current_Status int,
	@Profile_Image nvarchar(50),
	@Full_Name nvarchar(50),
	@DOB datetime,
	@ActivationStatus_Mail int,
	@ActivationStatus_Mobile int,
	@Email_Subs int,
	@SMS_Subs int,
	@Original_Customer_id bigint,
	@Customer_id bigint
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_CustomerRegistrationDetail] SET [Email] = @Email, [Password] = @Password, [Mobile] = @Mobile, [Country] = @Country, [Reg_Date] = @Reg_Date, [Last_Login] = @Last_Login, [Error_count] = @Error_count, [Current_Status] = @Current_Status, [Profile_Image] = @Profile_Image, [Full_Name] = @Full_Name, [DOB] = @DOB, [ActivationStatus_Mail] = @ActivationStatus_Mail, [ActivationStatus_Mobile] = @ActivationStatus_Mobile, [Email_Subs] = @Email_Subs, [SMS_Subs] = @SMS_Subs WHERE (([Customer_id] = @Original_Customer_id));
	
SELECT Customer_id, Email, Password, Mobile, Country, Reg_Date, Last_Login, Error_count, Current_Status, Profile_Image, Full_Name, DOB, ActivationStatus_Mail, ActivationStatus_Mobile, Email_Subs, SMS_Subs FROM Photo_CustomerRegistrationDetail WHERE (Customer_id = @Customer_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_CustomerRegistrationDetailNewSelectCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_CustomerRegistrationDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Customer_id, Email, Password, Mobile, Country, Reg_Date, Last_Login, Error_count, Current_Status, Profile_Image, Full_Name, DOB, ActivationStatus_Mail, 
                         ActivationStatus_Mobile, Email_Subs, SMS_Subs
FROM            Photo_CustomerRegistrationDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_CustomerRegistrationDetailNewInsertCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_CustomerRegistrationDetailNewInsertCommand]
(
	@Email nvarchar(50),
	@Password nvarchar(50),
	@Mobile bigint,
	@Country int,
	@Reg_Date datetime,
	@Last_Login datetime,
	@Error_count int,
	@Current_Status int,
	@Profile_Image nvarchar(50),
	@Full_Name nvarchar(50),
	@DOB datetime,
	@ActivationStatus_Mail int,
	@ActivationStatus_Mobile int,
	@Email_Subs int,
	@SMS_Subs int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_CustomerRegistrationDetail] ([Email], [Password], [Mobile], [Country], [Reg_Date], [Last_Login], [Error_count], [Current_Status], [Profile_Image], [Full_Name], [DOB], [ActivationStatus_Mail], [ActivationStatus_Mobile], [Email_Subs], [SMS_Subs]) VALUES (@Email, @Password, @Mobile, @Country, @Reg_Date, @Last_Login, @Error_count, @Current_Status, @Profile_Image, @Full_Name, @DOB, @ActivationStatus_Mail, @ActivationStatus_Mobile, @Email_Subs, @SMS_Subs);
	
SELECT Customer_id, Email, Password, Mobile, Country, Reg_Date, Last_Login, Error_count, Current_Status, Profile_Image, Full_Name, DOB, ActivationStatus_Mail, ActivationStatus_Mobile, Email_Subs, SMS_Subs FROM Photo_CustomerRegistrationDetail WHERE (Customer_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_CustomerRegistrationDetailNewDeleteCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_CustomerRegistrationDetailNewDeleteCommand]
(
	@Original_Customer_id bigint
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_CustomerRegistrationDetail] WHERE (([Customer_id] = @Original_Customer_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Customer_StatusNewUpdateCommand]    Script Date: 06/22/2012 18:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Customer_StatusNewUpdateCommand]
(
	@Status_name nvarchar(50),
	@Original_Status_id int,
	@Status_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_Customer_Status] SET [Status_name] = @Status_name WHERE (([Status_id] = @Original_Status_id));
	
SELECT Status_id, Status_name FROM Photo_Customer_Status WHERE (Status_id = @Status_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Customer_StatusNewSelectCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Customer_StatusNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_Customer_Status
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Customer_StatusNewInsertCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Customer_StatusNewInsertCommand]
(
	@Status_name nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_Customer_Status] ([Status_name]) VALUES (@Status_name);
	
SELECT Status_id, Status_name FROM Photo_Customer_Status WHERE (Status_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Customer_StatusNewDeleteCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Customer_StatusNewDeleteCommand]
(
	@Original_Status_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_Customer_Status] WHERE (([Status_id] = @Original_Status_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Change_Password_logNewUpdateCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Change_Password_logNewUpdateCommand]
(
	@New_Password nvarchar(50),
	@Old_Password nvarchar(50),
	@Date_of_change datetime,
	@FkCustomer_id bigint,
	@Original_Change_pwd_id int,
	@Change_pwd_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_Change_Password_log] SET [New_Password] = @New_Password, [Old_Password] = @Old_Password, [Date_of_change] = @Date_of_change, [FkCustomer_id] = @FkCustomer_id WHERE (([Change_pwd_id] = @Original_Change_pwd_id));
	
SELECT Change_pwd_id, New_Password, Old_Password, Date_of_change, FkCustomer_id FROM Photo_Change_Password_log WHERE (Change_pwd_id = @Change_pwd_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Change_Password_logNewSelectCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Change_Password_logNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_Change_Password_log
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Change_Password_logNewInsertCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Change_Password_logNewInsertCommand]
(
	@New_Password nvarchar(50),
	@Old_Password nvarchar(50),
	@Date_of_change datetime,
	@FkCustomer_id bigint
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_Change_Password_log] ([New_Password], [Old_Password], [Date_of_change], [FkCustomer_id]) VALUES (@New_Password, @Old_Password, @Date_of_change, @FkCustomer_id);
	
SELECT Change_pwd_id, New_Password, Old_Password, Date_of_change, FkCustomer_id FROM Photo_Change_Password_log WHERE (Change_pwd_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Change_Password_logNewDeleteCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Change_Password_logNewDeleteCommand]
(
	@Original_Change_pwd_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_Change_Password_log] WHERE (([Change_pwd_id] = @Original_Change_pwd_id))
GO
/****** Object:  Table [dbo].[Photo_RemarksDetail]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_RemarksDetail](
	[Remark_id] [int] IDENTITY(1,1) NOT NULL,
	[Remarks_Detail] [nvarchar](500) NULL,
	[FkOrder_id] [bigint] NULL,
 CONSTRAINT [PK_Photo_RemarksDetail] PRIMARY KEY CLUSTERED 
(
	[Remark_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_PhysicalCopyDetail]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_PhysicalCopyDetail](
	[Physical_id] [int] IDENTITY(1,1) NOT NULL,
	[PhysicalCopy_Type] [nvarchar](500) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Ordered_Date] [datetime] NULL,
	[Delivered_Date] [datetime] NULL,
	[FkOrder_id] [bigint] NULL,
	[Shipping_tax] [decimal](18, 2) NULL,
	[Tax] [decimal](18, 2) NULL,
	[FkBilling_Address] [bigint] NULL,
	[FkShipping_Address] [bigint] NULL,
	[Physical_Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Photo_PhysicalCopyDetail] PRIMARY KEY CLUSTERED 
(
	[Physical_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Promo_codeDetailNewUpdateCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Promo_codeDetailNewUpdateCommand]
(
	@Code nvarchar(50),
	@Promo_Discount decimal(18, 2),
	@FkCustomer_id bigint,
	@Original_Promo_code_id int,
	@Promo_code_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_Promo_codeDetail] SET [Code] = @Code, [Promo_Discount] = @Promo_Discount, [FkCustomer_id] = @FkCustomer_id WHERE (([Promo_code_id] = @Original_Promo_code_id));
	
SELECT Promo_code_id, Code, Promo_Discount, FkCustomer_id FROM Photo_Promo_codeDetail WHERE (Promo_code_id = @Promo_code_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Promo_codeDetailNewSelectCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Promo_codeDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_Promo_codeDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Promo_codeDetailNewInsertCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Promo_codeDetailNewInsertCommand]
(
	@Code nvarchar(50),
	@Promo_Discount decimal(18, 2),
	@FkCustomer_id bigint
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_Promo_codeDetail] ([Code], [Promo_Discount], [FkCustomer_id]) VALUES (@Code, @Promo_Discount, @FkCustomer_id);
	
SELECT Promo_code_id, Code, Promo_Discount, FkCustomer_id FROM Photo_Promo_codeDetail WHERE (Promo_code_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_Promo_codeDetailNewDeleteCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_Promo_codeDetailNewDeleteCommand]
(
	@Original_Promo_code_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_Promo_codeDetail] WHERE (([Promo_code_id] = @Original_Promo_code_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_OrderDetailNewUpdateCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_OrderDetailNewUpdateCommand]
(
	@FkCustomer_id bigint,
	@Image_name nvarchar(50),
	@Input_Image_URL nvarchar(200),
	@Edit_Options nvarchar(100),
	@Complaint_Towards nvarchar(500),
	@FkPlan_id int,
	@Ordered_date datetime,
	@DeliveredDate_SoftCopy datetime,
	@Process_Status nvarchar(100),
	@Total_Amount decimal(18, 2),
	@FkCustomer_Status int,
	@Output_Image_URL nvarchar(200),
	@Original_Order_id bigint,
	@Order_id bigint
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_OrderDetail] SET [FkCustomer_id] = @FkCustomer_id, [Image_name] = @Image_name, [Input_Image_URL] = @Input_Image_URL, [Edit_Options] = @Edit_Options, [Complaint_Towards] = @Complaint_Towards, [FkPlan_id] = @FkPlan_id, [Ordered_date] = @Ordered_date, [DeliveredDate_SoftCopy] = @DeliveredDate_SoftCopy,  [Process_Status] = @Process_Status, [Total_Amount] = @Total_Amount, [FkCustomer_Status] = @FkCustomer_Status, [Output_Image_URL] = @Output_Image_URL WHERE (([Order_id] = @Original_Order_id));
	
SELECT Order_id, FkCustomer_id, Image_name, Input_Image_URL, Edit_Options, Complaint_Towards, FkPlan_id, Ordered_date, DeliveredDate_SoftCopy,  Process_Status, Total_Amount, FkCustomer_Status, Output_Image_URL FROM Photo_OrderDetail WHERE (Order_id = @Order_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_OrderDetailNewSelectCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_OrderDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_OrderDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_OrderDetailNewInsertCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_OrderDetailNewInsertCommand]
(
	@FkCustomer_id bigint,
	@Image_name nvarchar(50),
	@Input_Image_URL nvarchar(200),
	@Edit_Options nvarchar(100),
	@Complaint_Towards nvarchar(500),
	@FkPlan_id int,
	@Ordered_date datetime,
	@DeliveredDate_SoftCopy datetime,
	@Process_Status nvarchar(100),
	@Total_Amount decimal(18, 2),
	@FkCustomer_Status int,
	@Output_Image_URL nvarchar(200)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_OrderDetail] ([FkCustomer_id], [Image_name], [Input_Image_URL], [Edit_Options], [Complaint_Towards], [FkPlan_id], [Ordered_date], [DeliveredDate_SoftCopy],[Process_Status], [Total_Amount], [FkCustomer_Status], [Output_Image_URL]) VALUES (@FkCustomer_id, @Image_name, @Input_Image_URL, @Edit_Options, @Complaint_Towards, @FkPlan_id, @Ordered_date, @DeliveredDate_SoftCopy,  @Process_Status, @Total_Amount, @FkCustomer_Status, @Output_Image_URL);
	
SELECT Order_id, FkCustomer_id, Image_name, Input_Image_URL, Edit_Options, Complaint_Towards, FkPlan_id, Ordered_date, DeliveredDate_SoftCopy, Process_Status, Total_Amount, FkCustomer_Status, Output_Image_URL FROM Photo_OrderDetail WHERE (Order_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_OrderDetailNewDeleteCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_OrderDetailNewDeleteCommand]
(
	@Original_Order_id bigint
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_OrderDetail] WHERE (([Order_id] = @Original_Order_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_SubCatagoryDetailNewUpdateCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_SubCatagoryDetailNewUpdateCommand]
(
	@Category_name nvarchar(100),
	@FkPlan_id int,
	@Original_SubCategory_id int,
	@SubCategory_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_SubCatagoryDetail] SET [Category_name] = @Category_name, [FkPlan_id] = @FkPlan_id WHERE (([SubCategory_id] = @Original_SubCategory_id));
	
SELECT SubCategory_id, Category_name, FkPlan_id FROM Photo_SubCatagoryDetail WHERE (SubCategory_id = @SubCategory_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_SubCatagoryDetailNewSelectCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_SubCatagoryDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_SubCatagoryDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_SubCatagoryDetailNewInsertCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_SubCatagoryDetailNewInsertCommand]
(
	@Category_name nvarchar(100),
	@FkPlan_id int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_SubCatagoryDetail] ([Category_name], [FkPlan_id]) VALUES (@Category_name, @FkPlan_id);
	
SELECT SubCategory_id, Category_name, FkPlan_id FROM Photo_SubCatagoryDetail WHERE (SubCategory_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_SubCatagoryDetailNewDeleteCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_SubCatagoryDetailNewDeleteCommand]
(
	@Original_SubCategory_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_SubCatagoryDetail] WHERE (([SubCategory_id] = @Original_SubCategory_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_RemarksDetailNewUpdateCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_RemarksDetailNewUpdateCommand]
(
	@Remarks_Detail nvarchar(500),
	@FkOrder_id bigint,
	@Original_Remark_id int,
	@Remark_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_RemarksDetail] SET [Remarks_Detail] = @Remarks_Detail, [FkOrder_id] = @FkOrder_id WHERE (([Remark_id] = @Original_Remark_id));
	
SELECT Remark_id, Remarks_Detail, FkOrder_id FROM Photo_RemarksDetail WHERE (Remark_id = @Remark_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_RemarksDetailNewSelectCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_RemarksDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_RemarksDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_RemarksDetailNewInsertCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_RemarksDetailNewInsertCommand]
(
	@Remarks_Detail nvarchar(500),
	@FkOrder_id bigint
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_RemarksDetail] ([Remarks_Detail], [FkOrder_id]) VALUES (@Remarks_Detail, @FkOrder_id);
	
SELECT Remark_id, Remarks_Detail, FkOrder_id FROM Photo_RemarksDetail WHERE (Remark_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_RemarksDetailNewDeleteCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_RemarksDetailNewDeleteCommand]
(
	@Original_Remark_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_RemarksDetail] WHERE (([Remark_id] = @Original_Remark_id))
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_PhysicalCopyDetailNewUpdateCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_PhysicalCopyDetailNewUpdateCommand]
(
	@PhysicalCopy_Type nvarchar(500),
	@Quantity nvarchar(50),
	@Ordered_Date datetime,
	@Delivered_Date datetime,
	@FkOrder_id bigint,
	@Shipping_tax decimal(18, 2),
	@Tax decimal(18, 2),
	@FkBilling_Address bigint,
	@FkShipping_Address bigint,
	@Physical_Amount decimal(18, 2),
	@Original_Physical_id int,
	@Physical_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Photo_PhysicalCopyDetail] SET [PhysicalCopy_Type] = @PhysicalCopy_Type, [Quantity] = @Quantity, [Ordered_Date] = @Ordered_Date, [Delivered_Date] = @Delivered_Date, [FkOrder_id] = @FkOrder_id, [Shipping_tax] = @Shipping_tax, [Tax] = @Tax, [FkBilling_Address] = @FkBilling_Address, [FkShipping_Address] = @FkShipping_Address, [Physical_Amount] = @Physical_Amount WHERE (([Physical_id] = @Original_Physical_id));
	
SELECT Physical_id, PhysicalCopy_Type, Quantity, Ordered_Date, Delivered_Date, FkOrder_id, Shipping_tax, Tax, FkBilling_Address, FkShipping_Address, Physical_Amount FROM Photo_PhysicalCopyDetail WHERE (Physical_id = @Physical_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_PhysicalCopyDetailNewSelectCommand]    Script Date: 06/22/2012 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_PhysicalCopyDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
select * from Photo_PhysicalCopyDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_PhysicalCopyDetailNewInsertCommand]    Script Date: 06/22/2012 18:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_PhysicalCopyDetailNewInsertCommand]
(
	@PhysicalCopy_Type nvarchar(500),
	@Quantity nvarchar(50),
	@Ordered_Date datetime,
	@Delivered_Date datetime,
	@FkOrder_id bigint,
	@Shipping_tax decimal(18, 2),
	@Tax decimal(18, 2),
	@FkBilling_Address bigint,
	@FkShipping_Address bigint,
	@Physical_Amount decimal(18, 2)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Photo_PhysicalCopyDetail] ([PhysicalCopy_Type], [Quantity], [Ordered_Date], [Delivered_Date], [FkOrder_id], [Shipping_tax], [Tax], [FkBilling_Address], [FkShipping_Address], [Physical_Amount]) VALUES (@PhysicalCopy_Type, @Quantity, @Ordered_Date, @Delivered_Date, @FkOrder_id, @Shipping_tax, @Tax, @FkBilling_Address, @FkShipping_Address, @Physical_Amount);
	
SELECT Physical_id, PhysicalCopy_Type, Quantity, Ordered_Date, Delivered_Date, FkOrder_id, Shipping_tax, Tax, FkBilling_Address, FkShipping_Address, Physical_Amount FROM Photo_PhysicalCopyDetail WHERE (Physical_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Photo_PhysicalCopyDetailNewDeleteCommand]    Script Date: 06/22/2012 18:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Photo_PhysicalCopyDetailNewDeleteCommand]
(
	@Original_Physical_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Photo_PhysicalCopyDetail] WHERE (([Physical_id] = @Original_Physical_id))
GO
/****** Object:  ForeignKey [FK_Photo_Change_Password_log_Photo_CustomerRegistrationDetail]    Script Date: 06/22/2012 18:58:34 ******/
ALTER TABLE [dbo].[Photo_Change_Password_log]  WITH CHECK ADD  CONSTRAINT [FK_Photo_Change_Password_log_Photo_CustomerRegistrationDetail] FOREIGN KEY([FkCustomer_id])
REFERENCES [dbo].[Photo_CustomerRegistrationDetail] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_Change_Password_log] CHECK CONSTRAINT [FK_Photo_Change_Password_log_Photo_CustomerRegistrationDetail]
GO
/****** Object:  ForeignKey [FK_Photo_OrderSummaryDetail_Photo_CustomerRegistrationDetail]    Script Date: 06/22/2012 18:58:34 ******/
ALTER TABLE [dbo].[Photo_OrderSummaryDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_OrderSummaryDetail_Photo_CustomerRegistrationDetail] FOREIGN KEY([fkCustomer_id])
REFERENCES [dbo].[Photo_CustomerRegistrationDetail] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_OrderSummaryDetail] CHECK CONSTRAINT [FK_Photo_OrderSummaryDetail_Photo_CustomerRegistrationDetail]
GO
/****** Object:  ForeignKey [FK_Photo_OrderSummaryDetail_Photo_PlanDetail]    Script Date: 06/22/2012 18:58:34 ******/
ALTER TABLE [dbo].[Photo_OrderSummaryDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_OrderSummaryDetail_Photo_PlanDetail] FOREIGN KEY([fkPlan_id])
REFERENCES [dbo].[Photo_PlanDetail] ([Plan_id])
GO
ALTER TABLE [dbo].[Photo_OrderSummaryDetail] CHECK CONSTRAINT [FK_Photo_OrderSummaryDetail_Photo_PlanDetail]
GO
/****** Object:  ForeignKey [FK_Photo_OrderDetail_Photo_Customer_Status]    Script Date: 06/22/2012 18:58:34 ******/
ALTER TABLE [dbo].[Photo_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_OrderDetail_Photo_Customer_Status] FOREIGN KEY([FkCustomer_Status])
REFERENCES [dbo].[Photo_Customer_Status] ([Status_id])
GO
ALTER TABLE [dbo].[Photo_OrderDetail] CHECK CONSTRAINT [FK_Photo_OrderDetail_Photo_Customer_Status]
GO
/****** Object:  ForeignKey [FK_Photo_OrderDetail_Photo_CustomerRegistrationDetail]    Script Date: 06/22/2012 18:58:34 ******/
ALTER TABLE [dbo].[Photo_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_OrderDetail_Photo_CustomerRegistrationDetail] FOREIGN KEY([FkCustomer_id])
REFERENCES [dbo].[Photo_CustomerRegistrationDetail] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_OrderDetail] CHECK CONSTRAINT [FK_Photo_OrderDetail_Photo_CustomerRegistrationDetail]
GO
/****** Object:  ForeignKey [FK_Photo_OrderDetail_Photo_PlanDetail]    Script Date: 06/22/2012 18:58:34 ******/
ALTER TABLE [dbo].[Photo_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_OrderDetail_Photo_PlanDetail] FOREIGN KEY([FkPlan_id])
REFERENCES [dbo].[Photo_PlanDetail] ([Plan_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_OrderDetail] CHECK CONSTRAINT [FK_Photo_OrderDetail_Photo_PlanDetail]
GO
/****** Object:  ForeignKey [FK_Photo_Promo_codeDetail_Photo_CustomerRegistrationDetail]    Script Date: 06/22/2012 18:58:34 ******/
ALTER TABLE [dbo].[Photo_Promo_codeDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_Promo_codeDetail_Photo_CustomerRegistrationDetail] FOREIGN KEY([FkCustomer_id])
REFERENCES [dbo].[Photo_CustomerRegistrationDetail] ([Customer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_Promo_codeDetail] CHECK CONSTRAINT [FK_Photo_Promo_codeDetail_Photo_CustomerRegistrationDetail]
GO
/****** Object:  ForeignKey [FK_Photo_SubCatagoryDetail_Photo_PlanDetail]    Script Date: 06/22/2012 18:58:34 ******/
ALTER TABLE [dbo].[Photo_SubCatagoryDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_SubCatagoryDetail_Photo_PlanDetail] FOREIGN KEY([FkPlan_id])
REFERENCES [dbo].[Photo_PlanDetail] ([Plan_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_SubCatagoryDetail] CHECK CONSTRAINT [FK_Photo_SubCatagoryDetail_Photo_PlanDetail]
GO
/****** Object:  ForeignKey [FK_Photo_StateDetail_Photo_CountryDetail]    Script Date: 06/22/2012 18:58:34 ******/
ALTER TABLE [dbo].[Photo_StateDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_StateDetail_Photo_CountryDetail] FOREIGN KEY([FkCountry_id])
REFERENCES [dbo].[Photo_CountryDetail] ([Country_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_StateDetail] CHECK CONSTRAINT [FK_Photo_StateDetail_Photo_CountryDetail]
GO
/****** Object:  ForeignKey [FK_Photo_RemarksDetail_Photo_OrderDetail]    Script Date: 06/22/2012 18:58:35 ******/
ALTER TABLE [dbo].[Photo_RemarksDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_RemarksDetail_Photo_OrderDetail] FOREIGN KEY([FkOrder_id])
REFERENCES [dbo].[Photo_OrderDetail] ([Order_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_RemarksDetail] CHECK CONSTRAINT [FK_Photo_RemarksDetail_Photo_OrderDetail]
GO
/****** Object:  ForeignKey [FK_Photo_PhysicalCopyDetail_Photo_Billing_Address]    Script Date: 06/22/2012 18:58:35 ******/
ALTER TABLE [dbo].[Photo_PhysicalCopyDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_PhysicalCopyDetail_Photo_Billing_Address] FOREIGN KEY([FkBilling_Address])
REFERENCES [dbo].[Photo_Billing_Address] ([Billing_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_PhysicalCopyDetail] CHECK CONSTRAINT [FK_Photo_PhysicalCopyDetail_Photo_Billing_Address]
GO
/****** Object:  ForeignKey [FK_Photo_PhysicalCopyDetail_Photo_OrderDetail]    Script Date: 06/22/2012 18:58:35 ******/
ALTER TABLE [dbo].[Photo_PhysicalCopyDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_PhysicalCopyDetail_Photo_OrderDetail] FOREIGN KEY([FkOrder_id])
REFERENCES [dbo].[Photo_OrderDetail] ([Order_id])
GO
ALTER TABLE [dbo].[Photo_PhysicalCopyDetail] CHECK CONSTRAINT [FK_Photo_PhysicalCopyDetail_Photo_OrderDetail]
GO
/****** Object:  ForeignKey [FK_Photo_PhysicalCopyDetail_Photo_Shipping_Address]    Script Date: 06/22/2012 18:58:35 ******/
ALTER TABLE [dbo].[Photo_PhysicalCopyDetail]  WITH CHECK ADD  CONSTRAINT [FK_Photo_PhysicalCopyDetail_Photo_Shipping_Address] FOREIGN KEY([FkShipping_Address])
REFERENCES [dbo].[Photo_Shipping_Address] ([Shipping_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo_PhysicalCopyDetail] CHECK CONSTRAINT [FK_Photo_PhysicalCopyDetail_Photo_Shipping_Address]
GO
