USE [Payroll]
GO
/****** Object:  Table [dbo].[Payroll_MaritalStatus]    Script Date: 08/17/2012 17:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll_MaritalStatus](
	[Marital_Id] [int] IDENTITY(1,1) NOT NULL,
	[Marital_Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Payroll_MaritalStatus] PRIMARY KEY CLUSTERED 
(
	[Marital_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll_PersonalDetail]    Script Date: 08/17/2012 17:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll_PersonalDetail](
	[Employee_id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Father_Name] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[Sex] [nvarchar](50) NULL,
	[Marital_Status] [int] NULL,
	[Phone] [bigint] NULL,
	[Mobile] [bigint] NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Permanent_Address] [nvarchar](500) NULL,
	[Present_Address] [nvarchar](500) NULL,
	[Photo_Url] [nvarchar](100) NULL,
	[ID_proof_Url] [nvarchar](100) NULL,
	[Address_Proof_url] [nvarchar](100) NULL,
	[Total_Experience] [nvarchar](50) NULL,
 CONSTRAINT [PK_Payroll_PersonalDetail] PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll_OurCompanyDetail]    Script Date: 08/17/2012 17:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll_OurCompanyDetail](
	[Cur_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cur_JoiningDate] [datetime] NULL,
	[Cur_SalaryOnJoining] [decimal](18, 2) NULL,
	[Cur_Relieving] [datetime] NULL,
	[Cur_Status] [bit] NULL,
	[Cur_CertificateProvided] [nvarchar](100) NULL,
	[Cur_SalaryNow] [decimal](18, 2) NULL,
	[Cur_Insentive] [decimal](18, 2) NULL,
	[Cur_Designation] [nvarchar](100) NULL,
	[Cur_ResumeUrl] [nvarchar](100) NULL,
	[Cur_Command] [nvarchar](500) NULL,
	[fkEmployee_ID] [int] NULL,
 CONSTRAINT [PK_Payroll_OurCompanyDetail] PRIMARY KEY CLUSTERED 
(
	[Cur_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll_Attendance]    Script Date: 08/17/2012 17:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll_Attendance](
	[Attendance_ID] [int] IDENTITY(1,1) NOT NULL,
	[In_Time] [smalldatetime] NULL,
	[Out_Time] [smalldatetime] NULL,
	[Reg_Date] [datetime] NULL,
	[fkEmployee_ID] [int] NULL,
 CONSTRAINT [PK_Payroll_Attendance] PRIMARY KEY CLUSTERED 
(
	[Attendance_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll_AdvanceRefund]    Script Date: 08/17/2012 17:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll_AdvanceRefund](
	[Refund_ID] [int] IDENTITY(1,1) NOT NULL,
	[Refund_Amount] [decimal](18, 2) NULL,
	[Due_Date] [datetime] NULL,
	[fkEmployee_ID] [int] NULL,
 CONSTRAINT [PK_Payroll_AdvanceRefund] PRIMARY KEY CLUSTERED 
(
	[Refund_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll_AdvanceManagement]    Script Date: 08/17/2012 17:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll_AdvanceManagement](
	[Advance_ID] [int] IDENTITY(1,1) NOT NULL,
	[Salary_Advance] [decimal](18, 2) NULL,
	[Refund_Advance] [decimal](18, 2) NULL,
	[Advance_Date] [datetime] NULL,
	[fkEmployee_ID] [int] NULL,
 CONSTRAINT [PK_Payroll_AdvanceManagement] PRIMARY KEY CLUSTERED 
(
	[Advance_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_PersonalDetailNewUpdateCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_PersonalDetailNewUpdateCommand]
(
	@Employee_Code nvarchar(50),
	@First_Name nvarchar(50),
	@Last_Name nvarchar(50),
	@Father_Name nvarchar(50),
	@DOB datetime,
	@Sex nvarchar(50),
	@Marital_Status int,
	@Phone bigint,
	@Mobile bigint,
	@Email nvarchar(50),
	@Password nvarchar(50),
	@Permanent_Address nvarchar(500),
	@Present_Address nvarchar(500),
	@Photo_Url nvarchar(100),
	@ID_proof_Url nvarchar(100),
	@Address_Proof_url nvarchar(100),
	@Total_Experience nvarchar(50),
	@Original_Employee_id int,
	@Employee_id int
)
AS
	SET NOCOUNT OFF;
UPDATE [Payroll_PersonalDetail] SET [Employee_Code] = @Employee_Code, [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Father_Name] = @Father_Name, [DOB] = @DOB, [Sex] = @Sex, [Marital_Status] = @Marital_Status, [Phone] = @Phone, [Mobile] = @Mobile, [Email] = @Email, [Password] = @Password, [Permanent_Address] = @Permanent_Address, [Present_Address] = @Present_Address, [Photo_Url] = @Photo_Url, [ID_proof_Url] = @ID_proof_Url, [Address_Proof_url] = @Address_Proof_url, [Total_Experience] = @Total_Experience WHERE (([Employee_id] = @Original_Employee_id));
	
SELECT Employee_id, Employee_Code, First_Name, Last_Name, Father_Name, DOB, Sex, Marital_Status, Phone, Mobile, Email, Password, Permanent_Address, Present_Address, Photo_Url, ID_proof_Url, Address_Proof_url, Total_Experience FROM Payroll_PersonalDetail WHERE (Employee_id = @Employee_id)
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_PersonalDetailNewSelectCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_PersonalDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Employee_id, Employee_Code, First_Name, Last_Name, Father_Name, DOB, Sex, Marital_Status, Phone, Mobile, Email, Password, Permanent_Address, 
                         Present_Address, Photo_Url, ID_proof_Url, Address_Proof_url, Total_Experience
FROM            Payroll_PersonalDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_PersonalDetailNewInsertCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_PersonalDetailNewInsertCommand]
(
	@Employee_Code nvarchar(50),
	@First_Name nvarchar(50),
	@Last_Name nvarchar(50),
	@Father_Name nvarchar(50),
	@DOB datetime,
	@Sex nvarchar(50),
	@Marital_Status int,
	@Phone bigint,
	@Mobile bigint,
	@Email nvarchar(50),
	@Password nvarchar(50),
	@Permanent_Address nvarchar(500),
	@Present_Address nvarchar(500),
	@Photo_Url nvarchar(100),
	@ID_proof_Url nvarchar(100),
	@Address_Proof_url nvarchar(100),
	@Total_Experience nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Payroll_PersonalDetail] ([Employee_Code], [First_Name], [Last_Name], [Father_Name], [DOB], [Sex], [Marital_Status], [Phone], [Mobile], [Email], [Password], [Permanent_Address], [Present_Address], [Photo_Url], [ID_proof_Url], [Address_Proof_url], [Total_Experience]) VALUES (@Employee_Code, @First_Name, @Last_Name, @Father_Name, @DOB, @Sex, @Marital_Status, @Phone, @Mobile, @Email, @Password, @Permanent_Address, @Present_Address, @Photo_Url, @ID_proof_Url, @Address_Proof_url, @Total_Experience);
	
SELECT Employee_id, Employee_Code, First_Name, Last_Name, Father_Name, DOB, Sex, Marital_Status, Phone, Mobile, Email, Password, Permanent_Address, Present_Address, Photo_Url, ID_proof_Url, Address_Proof_url, Total_Experience FROM Payroll_PersonalDetail WHERE (Employee_id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_PersonalDetailNewDeleteCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_PersonalDetailNewDeleteCommand]
(
	@Original_Employee_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Payroll_PersonalDetail] WHERE (([Employee_id] = @Original_Employee_id))
GO
/****** Object:  Table [dbo].[Payroll_SalaryDetail]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll_SalaryDetail](
	[Salary_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pay] [decimal](18, 2) NULL,
	[No_Days] [float] NULL,
	[Insentive] [decimal](18, 2) NULL,
	[Extra_Benifits] [decimal](18, 2) NULL,
	[Gross_Pay] [decimal](18, 2) NULL,
	[Basic] [decimal](18, 2) NULL,
	[HRA] [decimal](18, 2) NULL,
	[Total_Amount] [decimal](18, 2) NULL,
	[NETT] [decimal](18, 2) NULL,
	[SalaryAdvanceBalance] [decimal](18, 2) NULL,
	[AdvanceDeduction] [decimal](18, 2) NULL,
	[PF] [decimal](18, 2) NULL,
	[ESI] [decimal](18, 2) NULL,
	[Deduction_Total] [decimal](18, 2) NULL,
	[SalaryOfMonth] [datetime] NULL,
	[fkEmployee_ID] [int] NULL,
 CONSTRAINT [PK_Payroll_SalaryDetail] PRIMARY KEY CLUSTERED 
(
	[Salary_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll_Previous_CompanyDetail]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll_Previous_CompanyDetail](
	[Pre_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pre_Name] [nvarchar](100) NULL,
	[Pre_Address] [nvarchar](500) NULL,
	[Pre_ContactPerson] [nvarchar](50) NULL,
	[Pre_Mobile] [bigint] NULL,
	[Pre_Phone] [bigint] NULL,
	[Pre_Email] [nvarchar](100) NULL,
	[Pre_Website] [nvarchar](100) NULL,
	[Pre_Salary] [decimal](18, 2) NULL,
	[fkEmployee_id] [int] NULL,
 CONSTRAINT [PK_Payroll_Previous_Company_Detail] PRIMARY KEY CLUSTERED 
(
	[Pre_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_SalaryDetailNewUpdateCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_SalaryDetailNewUpdateCommand]
(
	@Pay decimal(18, 2),
	@No_Days float,
	@Insentive decimal(18, 2),
	@Extra_Benifits decimal(18, 2),
	@Gross_Pay decimal(18, 2),
	@Basic decimal(18, 2),
	@HRA decimal(18, 2),
	@Total_Amount decimal(18, 2),
	@NETT decimal(18, 2),
	@SalaryAdvanceBalance decimal(18, 2),
	@AdvanceDeduction decimal(18, 2),
	@PF decimal(18, 2),
	@ESI decimal(18, 2),
	@Deduction_Total decimal(18, 2),
	@SalaryOfMonth datetime,
	@fkEmployee_ID int,
	@Original_Salary_ID int,
	@Salary_ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [Payroll_SalaryDetail] SET [Pay] = @Pay, [No_Days] = @No_Days, [Insentive] = @Insentive, [Extra_Benifits] = @Extra_Benifits, [Gross_Pay] = @Gross_Pay, [Basic] = @Basic, [HRA] = @HRA, [Total_Amount] = @Total_Amount, [NETT] = @NETT, [SalaryAdvanceBalance] = @SalaryAdvanceBalance, [AdvanceDeduction] = @AdvanceDeduction, [PF] = @PF, [ESI] = @ESI, [Deduction_Total] = @Deduction_Total, [SalaryOfMonth] = @SalaryOfMonth, [fkEmployee_ID] = @fkEmployee_ID WHERE (([Salary_ID] = @Original_Salary_ID));
	
SELECT Salary_ID, Pay, No_Days, Insentive, Extra_Benifits, Gross_Pay, Basic, HRA, Total_Amount, NETT, SalaryAdvanceBalance, AdvanceDeduction, PF, ESI, Deduction_Total, SalaryOfMonth, fkEmployee_ID FROM Payroll_SalaryDetail WHERE (Salary_ID = @Salary_ID)
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_SalaryDetailNewSelectCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_SalaryDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Salary_ID, Pay, No_Days, Insentive, Extra_Benifits, Gross_Pay, Basic, HRA, Total_Amount, NETT, SalaryAdvanceBalance, AdvanceDeduction, PF, ESI, 
                         Deduction_Total, SalaryOfMonth, fkEmployee_ID
FROM            Payroll_SalaryDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_SalaryDetailNewInsertCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_SalaryDetailNewInsertCommand]
(
	@Pay decimal(18, 2),
	@No_Days float,
	@Insentive decimal(18, 2),
	@Extra_Benifits decimal(18, 2),
	@Gross_Pay decimal(18, 2),
	@Basic decimal(18, 2),
	@HRA decimal(18, 2),
	@Total_Amount decimal(18, 2),
	@NETT decimal(18, 2),
	@SalaryAdvanceBalance decimal(18, 2),
	@AdvanceDeduction decimal(18, 2),
	@PF decimal(18, 2),
	@ESI decimal(18, 2),
	@Deduction_Total decimal(18, 2),
	@SalaryOfMonth datetime,
	@fkEmployee_ID int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Payroll_SalaryDetail] ([Pay], [No_Days], [Insentive], [Extra_Benifits], [Gross_Pay], [Basic], [HRA], [Total_Amount], [NETT], [SalaryAdvanceBalance], [AdvanceDeduction], [PF], [ESI], [Deduction_Total], [SalaryOfMonth], [fkEmployee_ID]) VALUES (@Pay, @No_Days, @Insentive, @Extra_Benifits, @Gross_Pay, @Basic, @HRA, @Total_Amount, @NETT, @SalaryAdvanceBalance, @AdvanceDeduction, @PF, @ESI, @Deduction_Total, @SalaryOfMonth, @fkEmployee_ID);
	
SELECT Salary_ID, Pay, No_Days, Insentive, Extra_Benifits, Gross_Pay, Basic, HRA, Total_Amount, NETT, SalaryAdvanceBalance, AdvanceDeduction, PF, ESI, Deduction_Total, SalaryOfMonth, fkEmployee_ID FROM Payroll_SalaryDetail WHERE (Salary_ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_SalaryDetailNewDeleteCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_SalaryDetailNewDeleteCommand]
(
	@Original_Salary_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Payroll_SalaryDetail] WHERE (([Salary_ID] = @Original_Salary_ID))
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_Previous_CompanyDetailNewUpdateCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_Previous_CompanyDetailNewUpdateCommand]
(
	@Pre_Name nvarchar(100),
	@Pre_Address nvarchar(500),
	@Pre_ContactPerson nvarchar(50),
	@Pre_Mobile bigint,
	@Pre_Phone bigint,
	@Pre_Email nvarchar(100),
	@Pre_Website nvarchar(100),
	@Pre_Salary decimal(18, 2),
	@fkEmployee_id int,
	@Original_Pre_ID int,
	@Pre_ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [Payroll_Previous_CompanyDetail] SET [Pre_Name] = @Pre_Name, [Pre_Address] = @Pre_Address, [Pre_ContactPerson] = @Pre_ContactPerson, [Pre_Mobile] = @Pre_Mobile, [Pre_Phone] = @Pre_Phone, [Pre_Email] = @Pre_Email, [Pre_Website] = @Pre_Website, [Pre_Salary] = @Pre_Salary, [fkEmployee_id] = @fkEmployee_id WHERE (([Pre_ID] = @Original_Pre_ID));
	
SELECT Pre_ID, Pre_Name, Pre_Address, Pre_ContactPerson, Pre_Mobile, Pre_Phone, Pre_Email, Pre_Website, Pre_Salary, fkEmployee_id FROM Payroll_Previous_CompanyDetail WHERE (Pre_ID = @Pre_ID)
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_Previous_CompanyDetailNewSelectCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_Previous_CompanyDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Pre_ID, Pre_Name, Pre_Address, Pre_ContactPerson, Pre_Mobile, Pre_Phone, Pre_Email, Pre_Website, Pre_Salary, fkEmployee_id
FROM            Payroll_Previous_CompanyDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_Previous_CompanyDetailNewInsertCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_Previous_CompanyDetailNewInsertCommand]
(
	@Pre_Name nvarchar(100),
	@Pre_Address nvarchar(500),
	@Pre_ContactPerson nvarchar(50),
	@Pre_Mobile bigint,
	@Pre_Phone bigint,
	@Pre_Email nvarchar(100),
	@Pre_Website nvarchar(100),
	@Pre_Salary decimal(18, 2),
	@fkEmployee_id int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Payroll_Previous_CompanyDetail] ([Pre_Name], [Pre_Address], [Pre_ContactPerson], [Pre_Mobile], [Pre_Phone], [Pre_Email], [Pre_Website], [Pre_Salary], [fkEmployee_id]) VALUES (@Pre_Name, @Pre_Address, @Pre_ContactPerson, @Pre_Mobile, @Pre_Phone, @Pre_Email, @Pre_Website, @Pre_Salary, @fkEmployee_id);
	
SELECT Pre_ID, Pre_Name, Pre_Address, Pre_ContactPerson, Pre_Mobile, Pre_Phone, Pre_Email, Pre_Website, Pre_Salary, fkEmployee_id FROM Payroll_Previous_CompanyDetail WHERE (Pre_ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_Previous_CompanyDetailNewDeleteCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_Previous_CompanyDetailNewDeleteCommand]
(
	@Original_Pre_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Payroll_Previous_CompanyDetail] WHERE (([Pre_ID] = @Original_Pre_ID))
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_OurCompanyDetailNewUpdateCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_OurCompanyDetailNewUpdateCommand]
(
	@Cur_JoiningDate datetime,
	@Cur_SalaryOnJoining decimal(18, 2),
	@Cur_Relieving datetime,
	@Cur_Status bit,
	@Cur_CertificateProvided nvarchar(100),
	@Cur_SalaryNow decimal(18, 2),
	@Cur_Insentive decimal(18, 2),
	@Cur_Designation nvarchar(100),
	@Cur_ResumeUrl nvarchar(100),
	@Cur_Command nvarchar(500),
	@fkEmployee_ID int,
	@Original_Cur_ID int,
	@Cur_ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [Payroll_OurCompanyDetail] SET [Cur_JoiningDate] = @Cur_JoiningDate, [Cur_SalaryOnJoining] = @Cur_SalaryOnJoining, [Cur_Relieving] = @Cur_Relieving, [Cur_Status] = @Cur_Status, [Cur_CertificateProvided] = @Cur_CertificateProvided, [Cur_SalaryNow] = @Cur_SalaryNow, [Cur_Insentive] = @Cur_Insentive, [Cur_Designation] = @Cur_Designation, [Cur_ResumeUrl] = @Cur_ResumeUrl, [Cur_Command] = @Cur_Command, [fkEmployee_ID] = @fkEmployee_ID WHERE (([Cur_ID] = @Original_Cur_ID));
	
SELECT Cur_ID, Cur_JoiningDate, Cur_SalaryOnJoining, Cur_Relieving, Cur_Status, Cur_CertificateProvided, Cur_SalaryNow, Cur_Insentive, Cur_Designation, Cur_ResumeUrl, Cur_Command, fkEmployee_ID FROM Payroll_OurCompanyDetail WHERE (Cur_ID = @Cur_ID)
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_OurCompanyDetailNewSelectCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_OurCompanyDetailNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Cur_ID, Cur_JoiningDate, Cur_SalaryOnJoining, Cur_Relieving, Cur_Status, Cur_CertificateProvided, Cur_SalaryNow, Cur_Insentive, Cur_Designation, 
                         Cur_ResumeUrl, Cur_Command, fkEmployee_ID
FROM            Payroll_OurCompanyDetail
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_OurCompanyDetailNewInsertCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_OurCompanyDetailNewInsertCommand]
(
	@Cur_JoiningDate datetime,
	@Cur_SalaryOnJoining decimal(18, 2),
	@Cur_Relieving datetime,
	@Cur_Status bit,
	@Cur_CertificateProvided nvarchar(100),
	@Cur_SalaryNow decimal(18, 2),
	@Cur_Insentive decimal(18, 2),
	@Cur_Designation nvarchar(100),
	@Cur_ResumeUrl nvarchar(100),
	@Cur_Command nvarchar(500),
	@fkEmployee_ID int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Payroll_OurCompanyDetail] ([Cur_JoiningDate], [Cur_SalaryOnJoining], [Cur_Relieving], [Cur_Status], [Cur_CertificateProvided], [Cur_SalaryNow], [Cur_Insentive], [Cur_Designation], [Cur_ResumeUrl], [Cur_Command], [fkEmployee_ID]) VALUES (@Cur_JoiningDate, @Cur_SalaryOnJoining, @Cur_Relieving, @Cur_Status, @Cur_CertificateProvided, @Cur_SalaryNow, @Cur_Insentive, @Cur_Designation, @Cur_ResumeUrl, @Cur_Command, @fkEmployee_ID);
	
SELECT Cur_ID, Cur_JoiningDate, Cur_SalaryOnJoining, Cur_Relieving, Cur_Status, Cur_CertificateProvided, Cur_SalaryNow, Cur_Insentive, Cur_Designation, Cur_ResumeUrl, Cur_Command, fkEmployee_ID FROM Payroll_OurCompanyDetail WHERE (Cur_ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_OurCompanyDetailNewDeleteCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_OurCompanyDetailNewDeleteCommand]
(
	@Original_Cur_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Payroll_OurCompanyDetail] WHERE (([Cur_ID] = @Original_Cur_ID))
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AttendanceNewUpdateCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AttendanceNewUpdateCommand]
(
	@In_Time smalldatetime,
	@Out_Time smalldatetime,
	@Reg_Date datetime,
	@fkEmployee_ID int,
	@Original_Attendance_ID int,
	@Attendance_ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [Payroll_Attendance] SET [In_Time] = @In_Time, [Out_Time] = @Out_Time, [Reg_Date] = @Reg_Date, [fkEmployee_ID] = @fkEmployee_ID WHERE (([Attendance_ID] = @Original_Attendance_ID));
	
SELECT Attendance_ID, In_Time, Out_Time, Reg_Date, fkEmployee_ID FROM Payroll_Attendance WHERE (Attendance_ID = @Attendance_ID)
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AttendanceNewSelectCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AttendanceNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Attendance_ID, In_Time, Out_Time, Reg_Date, fkEmployee_ID
FROM            Payroll_Attendance
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AttendanceNewInsertCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AttendanceNewInsertCommand]
(
	@In_Time smalldatetime,
	@Out_Time smalldatetime,
	@Reg_Date datetime,
	@fkEmployee_ID int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Payroll_Attendance] ([In_Time], [Out_Time], [Reg_Date], [fkEmployee_ID]) VALUES (@In_Time, @Out_Time, @Reg_Date, @fkEmployee_ID);
	
SELECT Attendance_ID, In_Time, Out_Time, Reg_Date, fkEmployee_ID FROM Payroll_Attendance WHERE (Attendance_ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AttendanceNewDeleteCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AttendanceNewDeleteCommand]
(
	@Original_Attendance_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Payroll_Attendance] WHERE (([Attendance_ID] = @Original_Attendance_ID))
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AdvanceRefundNewUpdateCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AdvanceRefundNewUpdateCommand]
(
	@Refund_Amount decimal(18, 2),
	@Due_Date datetime,
	@fkEmployee_ID int,
	@Original_Refund_ID int,
	@Refund_ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [Payroll_AdvanceRefund] SET [Refund_Amount] = @Refund_Amount, [Due_Date] = @Due_Date, [fkEmployee_ID] = @fkEmployee_ID WHERE (([Refund_ID] = @Original_Refund_ID));
	
SELECT Refund_ID, Refund_Amount, Due_Date, fkEmployee_ID FROM Payroll_AdvanceRefund WHERE (Refund_ID = @Refund_ID)
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AdvanceRefundNewSelectCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AdvanceRefundNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Refund_ID, Refund_Amount, Due_Date, fkEmployee_ID
FROM            Payroll_AdvanceRefund
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AdvanceRefundNewInsertCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AdvanceRefundNewInsertCommand]
(
	@Refund_Amount decimal(18, 2),
	@Due_Date datetime,
	@fkEmployee_ID int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Payroll_AdvanceRefund] ([Refund_Amount], [Due_Date], [fkEmployee_ID]) VALUES (@Refund_Amount, @Due_Date, @fkEmployee_ID);
	
SELECT Refund_ID, Refund_Amount, Due_Date, fkEmployee_ID FROM Payroll_AdvanceRefund WHERE (Refund_ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AdvanceRefundNewDeleteCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AdvanceRefundNewDeleteCommand]
(
	@Original_Refund_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Payroll_AdvanceRefund] WHERE (([Refund_ID] = @Original_Refund_ID))
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AdvanceManagementNewUpdateCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AdvanceManagementNewUpdateCommand]
(
	@Salary_Advance decimal(18, 2),
	@Refund_Advance decimal(18, 2),
	@Advance_Date datetime,
	@fkEmployee_ID int,
	@Original_Advance_ID int,
	@Advance_ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [Payroll_AdvanceManagement] SET [Salary_Advance] = @Salary_Advance, [Refund_Advance] = @Refund_Advance, [Advance_Date] = @Advance_Date, [fkEmployee_ID] = @fkEmployee_ID WHERE (([Advance_ID] = @Original_Advance_ID));
	
SELECT Advance_ID, Salary_Advance, Refund_Advance, Advance_Date, fkEmployee_ID FROM Payroll_AdvanceManagement WHERE (Advance_ID = @Advance_ID)
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AdvanceManagementNewSelectCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AdvanceManagementNewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT        Advance_ID, Salary_Advance, Refund_Advance, Advance_Date, fkEmployee_ID
FROM            Payroll_AdvanceManagement
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AdvanceManagementNewInsertCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AdvanceManagementNewInsertCommand]
(
	@Salary_Advance decimal(18, 2),
	@Refund_Advance decimal(18, 2),
	@Advance_Date datetime,
	@fkEmployee_ID int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Payroll_AdvanceManagement] ([Salary_Advance], [Refund_Advance], [Advance_Date], [fkEmployee_ID]) VALUES (@Salary_Advance, @Refund_Advance, @Advance_Date, @fkEmployee_ID);
	
SELECT Advance_ID, Salary_Advance, Refund_Advance, Advance_Date, fkEmployee_ID FROM Payroll_AdvanceManagement WHERE (Advance_ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_Payroll_AdvanceManagementNewDeleteCommand]    Script Date: 08/17/2012 17:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Payroll_AdvanceManagementNewDeleteCommand]
(
	@Original_Advance_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Payroll_AdvanceManagement] WHERE (([Advance_ID] = @Original_Advance_ID))
GO
/****** Object:  ForeignKey [FK_Payroll_PersonalDetail_Payroll_MaritalStatus]    Script Date: 08/17/2012 17:55:44 ******/
ALTER TABLE [dbo].[Payroll_PersonalDetail]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_PersonalDetail_Payroll_MaritalStatus] FOREIGN KEY([Marital_Status])
REFERENCES [dbo].[Payroll_MaritalStatus] ([Marital_Id])
GO
ALTER TABLE [dbo].[Payroll_PersonalDetail] CHECK CONSTRAINT [FK_Payroll_PersonalDetail_Payroll_MaritalStatus]
GO
/****** Object:  ForeignKey [FK_Payroll_OurCompanyDetail_Payroll_PersonalDetail]    Script Date: 08/17/2012 17:55:44 ******/
ALTER TABLE [dbo].[Payroll_OurCompanyDetail]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_OurCompanyDetail_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_OurCompanyDetail] CHECK CONSTRAINT [FK_Payroll_OurCompanyDetail_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_Attendance_Payroll_PersonalDetail]    Script Date: 08/17/2012 17:55:44 ******/
ALTER TABLE [dbo].[Payroll_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_Attendance_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_Attendance] CHECK CONSTRAINT [FK_Payroll_Attendance_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_AdvanceRefund_Payroll_PersonalDetail]    Script Date: 08/17/2012 17:55:44 ******/
ALTER TABLE [dbo].[Payroll_AdvanceRefund]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_AdvanceRefund_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_AdvanceRefund] CHECK CONSTRAINT [FK_Payroll_AdvanceRefund_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_AdvanceManagement_Payroll_PersonalDetail]    Script Date: 08/17/2012 17:55:44 ******/
ALTER TABLE [dbo].[Payroll_AdvanceManagement]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_AdvanceManagement_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_AdvanceManagement] CHECK CONSTRAINT [FK_Payroll_AdvanceManagement_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_SalaryDetail_Payroll_PersonalDetail]    Script Date: 08/17/2012 17:55:47 ******/
ALTER TABLE [dbo].[Payroll_SalaryDetail]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_SalaryDetail_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_SalaryDetail] CHECK CONSTRAINT [FK_Payroll_SalaryDetail_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_Previous_CompanyDetail_Payroll_PersonalDetail]    Script Date: 08/17/2012 17:55:47 ******/
ALTER TABLE [dbo].[Payroll_Previous_CompanyDetail]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_Previous_CompanyDetail_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_id])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_Previous_CompanyDetail] CHECK CONSTRAINT [FK_Payroll_Previous_CompanyDetail_Payroll_PersonalDetail]
GO
