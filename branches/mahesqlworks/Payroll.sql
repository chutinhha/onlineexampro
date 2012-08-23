USE [Payroll]
GO
/****** Object:  Table [dbo].[Payroll_PersonalDetail]    Script Date: 08/14/2012 18:44:38 ******/
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
	[Permanent_Address] [nvarchar](500) NULL,
	[Present_Address] [nvarchar](500) NULL,
	[Photo_Url] [nvarchar](100) NULL,
	[ID_proof_Url] [nvarchar](100) NULL,
	[Address_Proof_url] [nvarchar](100) NULL,
 CONSTRAINT [PK_Payroll_PersonalDetail] PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll_SalaryDetail]    Script Date: 08/14/2012 18:44:38 ******/
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
/****** Object:  Table [dbo].[Payroll_Previous_CompanyDetail]    Script Date: 08/14/2012 18:44:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll_Previous_CompanyDetail](
	[Pre_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pre_Name] [nvarchar](100) NULL,
	[Pre_Address] [nvarchar](500) NULL,
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
/****** Object:  Table [dbo].[Payroll_OurCompanyDetail]    Script Date: 08/14/2012 18:44:38 ******/
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
	[Cur_Designation] [nvarchar](100) NULL,
	[Cur_ResumeUrl] [nvarchar](100) NULL,
	[fkEmployee_ID] [int] NULL,
 CONSTRAINT [PK_Payroll_OurCompanyDetail] PRIMARY KEY CLUSTERED 
(
	[Cur_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll_Attendance]    Script Date: 08/14/2012 18:44:38 ******/
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
/****** Object:  Table [dbo].[Payroll_AdvanceRefund]    Script Date: 08/14/2012 18:44:38 ******/
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
/****** Object:  Table [dbo].[Payroll_AdvanceManagement]    Script Date: 08/14/2012 18:44:38 ******/
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
/****** Object:  ForeignKey [FK_Payroll_AdvanceManagement_Payroll_PersonalDetail]    Script Date: 08/14/2012 18:44:38 ******/
ALTER TABLE [dbo].[Payroll_AdvanceManagement]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_AdvanceManagement_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_AdvanceManagement] CHECK CONSTRAINT [FK_Payroll_AdvanceManagement_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_AdvanceRefund_Payroll_PersonalDetail]    Script Date: 08/14/2012 18:44:38 ******/
ALTER TABLE [dbo].[Payroll_AdvanceRefund]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_AdvanceRefund_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_AdvanceRefund] CHECK CONSTRAINT [FK_Payroll_AdvanceRefund_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_Attendance_Payroll_PersonalDetail]    Script Date: 08/14/2012 18:44:38 ******/
ALTER TABLE [dbo].[Payroll_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_Attendance_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_Attendance] CHECK CONSTRAINT [FK_Payroll_Attendance_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_OurCompanyDetail_Payroll_PersonalDetail]    Script Date: 08/14/2012 18:44:38 ******/
ALTER TABLE [dbo].[Payroll_OurCompanyDetail]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_OurCompanyDetail_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_OurCompanyDetail] CHECK CONSTRAINT [FK_Payroll_OurCompanyDetail_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_Previous_CompanyDetail_Payroll_PersonalDetail]    Script Date: 08/14/2012 18:44:38 ******/
ALTER TABLE [dbo].[Payroll_Previous_CompanyDetail]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_Previous_CompanyDetail_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_id])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_Previous_CompanyDetail] CHECK CONSTRAINT [FK_Payroll_Previous_CompanyDetail_Payroll_PersonalDetail]
GO
/****** Object:  ForeignKey [FK_Payroll_SalaryDetail_Payroll_PersonalDetail]    Script Date: 08/14/2012 18:44:38 ******/
ALTER TABLE [dbo].[Payroll_SalaryDetail]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_SalaryDetail_Payroll_PersonalDetail] FOREIGN KEY([fkEmployee_ID])
REFERENCES [dbo].[Payroll_PersonalDetail] ([Employee_id])
GO
ALTER TABLE [dbo].[Payroll_SalaryDetail] CHECK CONSTRAINT [FK_Payroll_SalaryDetail_Payroll_PersonalDetail]
GO
