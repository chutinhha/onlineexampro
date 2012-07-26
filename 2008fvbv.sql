USE [CS_HEATCRAFT_TAC]
GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 07/26/2012 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Split] 
(
@pvcSearchString VARCHAR(8000),
@pvcSeparator VARCHAR(5) 
)

RETURNS @strtable TABLE (strval NVARCHAR(MAX))

AS

BEGIN
DECLARE
@tmpStr VARCHAR(8000),
@intSeparatorLength INT

SET @intSeparatorLength = LEN(@pvcSeparator)

SET @tmpStr = @pvcSearchString
WHILE 1=1
BEGIN
INSERT INTO @strtable VALUES ( SUBSTRING(@tmpStr, 0 ,CHARINDEX(@pvcSeparator,@tmpStr)))
SET @tmpStr = SUBSTRING(@tmpStr,CHARINDEX(@pvcSeparator,@tmpStr)+LEN(@pvcSeparator),8000)
IF CHARINDEX(@pvcSeparator,@tmpStr) < 1
BREAK
END

RETURN 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ReplaceSpecialChars]    Script Date: 07/26/2012 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ReplaceSpecialChars] (@inpStr VARCHAR(512),@repChar CHAR(1))  
RETURNS VARCHAR(512)  
BEGIN  
    DECLARE @retStr VARCHAR(512)  
    SET @retStr = ''  
    IF(LEN(@inpStr) > 0)  
    BEGIN  
        DECLARE @l INT  
        SET @l = LEN(@inpStr)  
        DECLARE @p INT  
        SET @p = 1  
        WHILE @p <= @l  
        BEGIN  
            DECLARE @c INT  
            SET @c = ASCII(SUBSTRING(@inpStr, @p, 1))  
            IF @c BETWEEN 48 AND 57 OR @c BETWEEN 65 AND 90 OR @c BETWEEN 97 AND 122  
                SET @retStr = @retStr + CHAR(@c)  
            ELSE  
                SET @retStr = @retStr + @repChar  
                SET @p = @p + 1  
        END  
    END  
RETURN @retStr  
END
GO
/****** Object:  Table [dbo].[HC_TEMPLATE]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HC_TEMPLATE](
	[PK] [decimal](18, 0) NULL,
	[SUBCATEGORY_ID] [varchar](max) NULL,
	[PRODUCT_ID] [decimal](18, 0) NULL,
	[DEFROST_TYPE] [varchar](max) NULL,
	[MRT] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HC_HEATCRAFT_TEST]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HC_HEATCRAFT_TEST](
	[CID] [int] NOT NULL,
	[CATEGORY_ID] [varchar](max) NULL,
	[CATALOG_ID] [varchar](max) NULL,
	[BSM] [varchar](max) NULL,
	[BCM] [varchar](max) NULL,
	[DEFROST_TYPE] [varchar](max) NULL,
	[PRODUCT_ID] [int] NULL,
	[MRT] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HC_HEATCRAFT]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HC_HEATCRAFT](
	[CID] [int] NOT NULL,
	[CATEGORY_ID] [varchar](max) NULL,
	[BSM] [varchar](max) NULL,
	[BCM] [varchar](max) NULL,
	[DEFROST_TYPE] [varchar](max) NULL,
	[PRODUCT_ID] [int] NULL,
	[MRT] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VIEW_LOOKUP_SUBFAMILY]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIEW_LOOKUP_SUBFAMILY](
	[PRODUCT_ID] [int] NULL,
	[Lookup Key] [nvarchar](max) NULL,
	[Application] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIEW_LOOKUP]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIEW_LOOKUP](
	[PRODUCT_ID] [int] NULL,
	[Compressor Type] [nvarchar](max) NULL,
	[Voltage] [nvarchar](max) NULL,
	[Refrigerant Type] [nvarchar](max) NULL,
	[Lookup Key] [nvarchar](max) NULL,
	[Ambient Temperature °F] [nvarchar](max) NULL,
	[Reference Model] [nvarchar](max) NULL,
	[Application] [nvarchar](max) NULL,
	[Suction Temp. °F] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIEW_CATALOGSTUDIO5_ReadonlyAttribute]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIEW_CATALOGSTUDIO5_ReadonlyAttribute](
	[role_id] [int] NOT NULL,
	[role_name] [nvarchar](255) NULL,
	[attribute_name] [nvarchar](100) NOT NULL,
	[attribute_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIEW_CATALOGSTUDIO5_FAMILYPRODUCTSTREE]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIEW_CATALOGSTUDIO5_FAMILYPRODUCTSTREE](
	[catalog_id] [int] NOT NULL,
	[category_id] [nvarchar](50) NOT NULL,
	[Category_Name] [nvarchar](500) NOT NULL,
	[category_MD] [datetime] NOT NULL,
	[sc1_id] [nvarchar](50) NULL,
	[sc1_Name] [nvarchar](500) NULL,
	[sc1_MD] [datetime] NULL,
	[sc2_id] [nvarchar](50) NULL,
	[sc2_Name] [nvarchar](500) NULL,
	[sc2_MD] [datetime] NULL,
	[sc3_id] [nvarchar](50) NULL,
	[sc3_Name] [nvarchar](500) NULL,
	[sc3_MD] [datetime] NULL,
	[sc4_id] [nvarchar](50) NULL,
	[sc4_Name] [nvarchar](500) NULL,
	[sc4_MD] [datetime] NULL,
	[FAMILY_ID] [int] NOT NULL,
	[FAMILY_NAME] [nvarchar](400) NULL,
	[FAMILY_SORT] [int] NOT NULL,
	[FAMILY_MD] [datetime] NOT NULL,
	[SUBFAMILY_ID] [int] NULL,
	[SUBFAMILY_NAME] [nvarchar](400) NULL,
	[SUBFAMILY_MD] [datetime] NULL,
	[SUBFAMILY_SORT] [int] NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[PRODUCT_SORT] [int] NOT NULL,
	[CATNO] [nvarchar](max) NULL,
	[PRODUCT_MD] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIEW_CATALOGSTUDIO5_CATEGORYTREE]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIEW_CATALOGSTUDIO5_CATEGORYTREE](
	[CATALOG_ID] [int] NOT NULL,
	[category_id] [nvarchar](50) NOT NULL,
	[Category_Name] [nvarchar](500) NOT NULL,
	[category_MD] [datetime] NOT NULL,
	[sc1_id] [nvarchar](50) NULL,
	[sc1_Name] [nvarchar](500) NULL,
	[sc1_MD] [datetime] NULL,
	[sc2_id] [nvarchar](50) NULL,
	[sc2_Name] [nvarchar](500) NULL,
	[sc2_MD] [datetime] NULL,
	[sc3_id] [nvarchar](50) NULL,
	[sc3_Name] [nvarchar](500) NULL,
	[sc3_MD] [datetime] NULL,
	[sc4_id] [nvarchar](50) NULL,
	[sc4_Name] [nvarchar](500) NULL,
	[sc4_MD] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMPNIH123]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMPNIH123](
	[CATALOG_ID] [int] NULL,
	[CATALOG_NAME] [nvarchar](100) NULL,
	[CATEGORY_ID] [nvarchar](500) NULL,
	[CATEGORY_NAME] [nvarchar](500) NULL,
	[SUBCATID_L1] [nvarchar](50) NULL,
	[SUBCATNAME_L1] [nvarchar](500) NULL,
	[SUBCATID_L2] [nvarchar](50) NULL,
	[SUBCATNAME_L2] [nvarchar](500) NULL,
	[SUBCATID_L3] [nvarchar](50) NULL,
	[SUBCATNAME_L3] [nvarchar](500) NULL,
	[SUBCATID_L4] [nvarchar](50) NULL,
	[SUBCATNAME_L4] [nvarchar](500) NULL,
	[FAMILY_ID] [int] NULL,
	[FAMILY_NAME] [nvarchar](400) NULL,
	[SUBFAMILY_ID] [int] NULL,
	[SUBFAMILY_NAME] [nvarchar](max) NULL,
	[PRODUCT_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMPNIH]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMPNIH](
	[CATALOG_ID] [int] NULL,
	[CATALOG_NAME] [nvarchar](100) NULL,
	[CATEGORY_ID] [nvarchar](500) NULL,
	[CATEGORY_NAME] [nvarchar](500) NULL,
	[SUBCATID_L1] [nvarchar](50) NULL,
	[SUBCATNAME_L1] [nvarchar](500) NULL,
	[SUBCATID_L2] [nvarchar](50) NULL,
	[SUBCATNAME_L2] [nvarchar](500) NULL,
	[SUBCATID_L3] [nvarchar](50) NULL,
	[SUBCATNAME_L3] [nvarchar](500) NULL,
	[SUBCATID_L4] [nvarchar](50) NULL,
	[SUBCATNAME_L4] [nvarchar](500) NULL,
	[FAMILY_ID] [int] NULL,
	[FAMILY_NAME] [nvarchar](400) NULL,
	[SUBFAMILY_ID] [int] NULL,
	[SUBFAMILY_NAME] [nvarchar](max) NULL,
	[PRODUCT_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMPHEATCRAFT]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMPHEATCRAFT](
	[CATALOG_ID] [int] NULL,
	[CATALOG_NAME] [nvarchar](100) NULL,
	[CATEGORY_ID] [nvarchar](500) NULL,
	[CATEGORY_NAME] [nvarchar](500) NULL,
	[SUBCATID_L1] [nvarchar](50) NULL,
	[SUBCATNAME_L1] [nvarchar](500) NULL,
	[SUBCATID_L2] [nvarchar](50) NULL,
	[SUBCATNAME_L2] [nvarchar](500) NULL,
	[SUBCATID_L3] [nvarchar](50) NULL,
	[SUBCATNAME_L3] [nvarchar](500) NULL,
	[SUBCATID_L4] [nvarchar](50) NULL,
	[SUBCATNAME_L4] [nvarchar](500) NULL,
	[FAMILY_ID] [int] NULL,
	[FAMILY_NAME] [nvarchar](400) NULL,
	[SUBFAMILY_ID] [int] NULL,
	[SUBFAMILY_NAME] [nvarchar](max) NULL,
	[PRODUCT_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_TABLE_ATTRIBUTES]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_TABLE_ATTRIBUTES](
	[Catalog_id] [int] NOT NULL,
	[Category_id] [nvarchar](50) NOT NULL,
	[Attribute_id] [int] NOT NULL,
	[sort_order] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_STORE_OPTIONS]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_STORE_OPTIONS](
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_USER] [int] NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [int] NOT NULL,
	[OPTION_NAME] [nvarchar](50) NOT NULL,
	[OPTION_VALUE] [nvarchar](max) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_SHIP_FAMILY_GROUP]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_SHIP_FAMILY_GROUP](
	[FAMILY_ID] [int] NOT NULL,
	[GROUPED_ATTRIBUTES] [nvarchar](100) NULL,
	[ATTRIBUTE_ID] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_SEARCH_TABLE_FIELDS]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_SEARCH_TABLE_FIELDS](
	[CATALOG_ID] [int] NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_SEARCH_RANGE]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_SEARCH_RANGE](
	[RANGE_ID] [int] NOT NULL,
	[RANGE_NAME] [nvarchar](100) NULL,
	[RANGE_START] [decimal](19, 6) NULL,
	[RANGE_END] [decimal](19, 6) NULL,
	[ATTRIBUTE_ID] [int] NULL,
	[SORT_ORDER] [int] NULL,
	[CATEGORY_ID] [nvarchar](100) NOT NULL,
	[IS_RANGE] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_SEARCH_PROD_LIST]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_SEARCH_PROD_LIST](
	[PRODUCT_ID] [int] NOT NULL,
	[USER_SESSION_ID] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PRODUCT_SPECIFICATION_GROUP_FAMILY]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PRODUCT_SPECIFICATION_GROUP_FAMILY](
	[RECORD_ID] [int] NOT NULL,
	[FAMILY_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PRODUCT_SPECIFICATION_ATTRIBUTES]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PRODUCT_SPECIFICATION_ATTRIBUTES](
	[CATEGORY_ID] [nvarchar](50) NOT NULL,
	[GROUP_ID] [nvarchar](50) NOT NULL,
	[GROUP_NAME] [nvarchar](max) NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL,
	[SORT_ORDER] [int] NOT NULL,
	[Style] [nchar](500) NULL,
	[Type] [nchar](500) NULL,
	[Category] [nchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PRODUCT_SHIP_HOTGAS_FAMILY]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PRODUCT_SHIP_HOTGAS_FAMILY](
	[FAMILY_ID] [int] NULL,
	[RELATED_FAMILY] [nvarchar](500) NULL,
	[LINK_FAMILY_ID] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PRODUCT_SHIP_FAMILY]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PRODUCT_SHIP_FAMILY](
	[FAMILY_ID] [int] NOT NULL,
	[RELATED_FAMILY] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PRODUCT_SELECTION_ATTRIBUTES]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PRODUCT_SELECTION_ATTRIBUTES](
	[CATALOG_ID] [int] NOT NULL,
	[CATEGORY_ID] [nvarchar](50) NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL,
	[SORT_ORDER] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PRODUCT_LOOKUP]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PRODUCT_LOOKUP](
	[CATALOG_ID] [int] NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[SUBPRODUCT_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PRODUCT_FACTORY_FAMILY]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PRODUCT_FACTORY_FAMILY](
	[FAMILY_ID] [int] NOT NULL,
	[RELATED_FAMILY_ID] [nvarchar](500) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PRODUCT_FACTORY_ATTRIBUTES]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PRODUCT_FACTORY_ATTRIBUTES](
	[ATTRIBUTE_ID] [int] NOT NULL,
	[SORT_ORDER] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PDF_PRODUCT_LOOKUP]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PDF_PRODUCT_LOOKUP](
	[CATALOG_ID] [int] NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[SUBPRODUCT_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_PDF_PRODUCT_ATTRIBUTE]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_PDF_PRODUCT_ATTRIBUTE](
	[CATEGORY_ID] [nvarchar](500) NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL,
	[GROUP_ID] [nvarchar](50) NOT NULL,
	[SORT_ORDER] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_MORE_PRODUCT]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_MORE_PRODUCT](
	[CATEGORY_ID] [nvarchar](100) NOT NULL,
	[FAMILY_TYPE] [nvarchar](50) NOT NULL,
	[FAMILY_ATTRIBUTE_ID] [nvarchar](max) NULL,
	[PRODUCT_ATTRIBUTE_ID] [nvarchar](max) NULL,
	[RELATED_FAMILY] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_LITERATURE_FILTER]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_LITERATURE_FILTER](
	[Family_id] [int] NOT NULL,
	[Attribute_id] [int] NOT NULL,
	[Category_id] [nvarchar](50) NOT NULL,
	[Sort_order] [int] NOT NULL,
	[group_attribute_id] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_INVENTORY]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_INVENTORY](
	[PRODUCT_ID] [int] NOT NULL,
	[QTY_AVAIL] [int] NOT NULL,
	[MIN_ORD_QTY] [int] NULL,
	[PRODUCT_STATUS] [nvarchar](20) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_USER] [int] NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [int] NOT NULL,
	[IS_SHIPPING] [bit] NOT NULL,
	[PROD_SHIP_COST] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBWC_CATALOG_SCRIPTING_KEYS]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBWC_CATALOG_SCRIPTING_KEYS](
	[FAMILY_ID] [int] NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL,
	[ATTRIBUTE_NAME] [nvarchar](500) NOT NULL,
	[CATEGORY_ID] [nvarchar](500) NOT NULL,
	[FAMILY_TYPE] [nvarchar](100) NOT NULL,
	[PRODUCT_CHECK] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBW_PACKAGE]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBW_PACKAGE](
	[RECORD_ID] [uniqueidentifier] NOT NULL,
	[PACKAGE_NAME] [nvarchar](50) NULL,
	[SKIN_NAME] [nvarchar](50) NULL,
	[SKIN_SQL] [ntext] NULL,
	[SKIN_SQL_PARAM] [nvarchar](1000) NULL,
	[GRID_COLS] [int] NULL,
	[GRID_ROWS] [int] NULL,
	[IS_ROOT] [bit] NULL,
	[PROCESS_ORDER] [int] NULL,
	[SKIN_BODY_ATTRIBUTE] [nvarchar](100) NULL,
	[LIST_SKIN_NAME] [nvarchar](100) NULL,
	[LIST_SKIN_SQL] [nvarchar](max) NULL,
	[LIST_SKIN_SQL_TYPE] [nvarchar](50) NULL,
	[LIST_SKIN_SQL_PARAM] [nvarchar](max) NULL,
	[SKIN_SQL_TYPE] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB2WS_SYNCDATA]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB2WS_SYNCDATA](
	[PACKET_ID] [int] NOT NULL,
	[SESSION_ID] [nvarchar](50) NOT NULL,
	[XML_PACKET] [xml] NULL,
	[SESSION_STATUS] [nvarchar](50) NULL,
	[SYNC_RESULT] [xml] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB2WS_SESSION]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB2WS_SESSION](
	[SESSION_ID] [nvarchar](50) NOT NULL,
	[SESSION_DATETIME] [datetime] NOT NULL,
	[SESSION_STATUS] [nchar](10) NULL,
	[SYNC_RESULT] [xml] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_USER_ROLE]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_USER_ROLE](
	[TB_USER_ID] [nvarchar](100) NOT NULL,
	[ROLE_ID] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_USER]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_USER](
	[TB_USER_ID] [nvarchar](100) NOT NULL,
	[STATUS] [nvarchar](10) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_UOM_CONV_TABLE]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_UOM_CONV_TABLE](
	[CONV_FACTOR] [nvarchar](50) NULL,
	[SOURCE_UOM] [nvarchar](50) NOT NULL,
	[TARGET_UOM] [nvarchar](50) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_UOM]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_UOM](
	[UOM] [nvarchar](50) NOT NULL,
	[UOM_DESCRIPTION] [nvarchar](100) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TEMPLATE]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TEMPLATE](
	[TEMPLATE_ID] [int] NOT NULL,
	[TEMPLATE_NAME] [nvarchar](50) NULL,
	[TEMPLATE_FILE] [nvarchar](100) NULL,
	[TEMPLATE_PATH] [nvarchar](500) NULL,
	[TEMPLATE_THUMBNAIL] [nvarchar](100) NULL,
	[TEMPLATE_DESCRIPTION] [nvarchar](500) NULL,
	[TEMPLATE_TYPE] [nvarchar](4) NULL,
	[TEMPLATE_PARAMETERS] [nvarchar](max) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TASK]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TASK](
	[TASK_ID] [int] NOT NULL,
	[TASK_TITLE] [nvarchar](150) NULL,
	[TASK_START_DATE] [datetime] NOT NULL,
	[TASK_DUE_DATE] [datetime] NOT NULL,
	[TASK_DETAILS] [nvarchar](1000) NULL,
	[TASK_ASSIGNED_TO] [nvarchar](150) NULL,
	[TASK_STATUS] [nvarchar](50) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_SUPPLIER]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_SUPPLIER](
	[SUPPLIER_COMPANY_NAME] [nvarchar](255) NULL,
	[ADDRESS_LINE_1] [nvarchar](100) NULL,
	[ADDRESS_LINE_2] [nvarchar](100) NULL,
	[ADDRESS_LINE_3] [nvarchar](100) NULL,
	[CITY] [nvarchar](100) NULL,
	[STATE] [nvarchar](100) NULL,
	[ZIP] [nvarchar](100) NULL,
	[COUNTRY] [nvarchar](100) NULL,
	[PHONE_1] [nvarchar](100) NULL,
	[FAX] [nvarchar](100) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[URL] [nvarchar](100) NULL,
	[LOGO_IMAGE_FILE] [nvarchar](500) NULL,
	[LOGO_IMAGE_TYPE] [nvarchar](10) NULL,
	[SUPPLIER_NAME] [nvarchar](100) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_SUBFAMILY]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_SUBFAMILY](
	[FAMILY_ID] [int] NOT NULL,
	[SUBFAMILY_ID] [int] NOT NULL,
	[SORT_ORDER] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_STATE]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_STATE](
	[STATE_CODE] [nvarchar](100) NOT NULL,
	[STATE] [nvarchar](100) NULL,
	[COUNTRY_CODE] [nvarchar](100) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ROLE_FUNCTIONS]    Script Date: 07/26/2012 17:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ROLE_FUNCTIONS](
	[FUNCTION_ID] [int] NOT NULL,
	[ROLE_ID] [int] NOT NULL,
	[ACTION_VIEW] [bit] NOT NULL,
	[ACTION_MODIFY] [bit] NOT NULL,
	[ACTION_ADD] [bit] NOT NULL,
	[ACTION_REMOVE] [bit] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ROLE]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ROLE](
	[ROLE_ID] [int] NOT NULL,
	[ROLE_NAME] [nvarchar](255) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_REPORTS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_REPORTS](
	[REPORT_NAME] [nvarchar](100) NOT NULL,
	[SQL_QUERY] [nvarchar](max) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_READONLY_ATTRIBUTES]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_READONLY_ATTRIBUTES](
	[ROLE_ID] [int] NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PROJECT_SECTIONS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PROJECT_SECTIONS](
	[RECORD_ID] [int] NOT NULL,
	[FILE_NO] [int] NOT NULL,
	[TEMPLATE_FILE_NAME] [nvarchar](500) NULL,
	[TEMPLATE_FILE_PATH] [nvarchar](500) NULL,
	[TEMPLATE_FILE_TYPE] [nvarchar](10) NULL,
	[PAGE_FILE_NAME] [nvarchar](500) NULL,
	[PAGE_FILE_PATH] [nvarchar](500) NULL,
	[PAGE_FILE_TYPE] [nvarchar](10) NULL,
	[NOTES] [nvarchar](1000) NULL,
	[XML_FILE_NAME] [nvarchar](500) NULL,
	[PROJECT_ID] [int] NOT NULL,
	[XSD_FILE_NAME] [nvarchar](500) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PROJECT_SECTION_DETAILS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PROJECT_SECTION_DETAILS](
	[FAMILY_ID] [int] NOT NULL,
	[SORT_ORDER] [int] NULL,
	[RECORD_ID] [int] NOT NULL,
	[SECTION_NAME] [nvarchar](50) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PROJECT]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PROJECT](
	[PROJECT_ID] [int] NOT NULL,
	[PROJECT_NAME] [nvarchar](50) NOT NULL,
	[COMMENTS] [nvarchar](500) NULL,
	[CATALOG_ID] [int] NOT NULL,
	[WEBCAT_CONFIG] [nvarchar](max) NULL,
	[CDCAT_CONFIG] [nvarchar](max) NULL,
	[EXPORT_RULES] [nvarchar](max) NULL,
	[IMPORT_RULES] [nvarchar](max) NULL,
	[PROJECT_TYPE] [tinyint] NOT NULL,
	[ODP_CONFIG] [nvarchar](max) NULL,
	[XPRESSCATALOG_CONFIG] [nvarchar](max) NULL,
	[MARKETINGCAMP_CONFIG] [nvarchar](max) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PRODUCT_KIT]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PRODUCT_KIT](
	[PRODUCT_ID] [int] NOT NULL,
	[KIT_PRODUCT_ID] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PRODUCT]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PRODUCT](
	[PRODUCT_ID] [int] NOT NULL,
	[SINGLE_OR_KIT] [bit] NOT NULL,
	[STATUS] [nvarchar](50) NULL,
	[CATEGORY_ID] [nvarchar](50) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PROD_SPECS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PROD_SPECS](
	[STRING_VALUE] [nvarchar](max) NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL,
	[NUMERIC_VALUE] [decimal](19, 6) NULL,
	[OBJECT_TYPE] [nvarchar](50) NULL,
	[OBJECT_NAME] [nvarchar](500) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PROD_FAMILY_ATTR_LIST]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PROD_FAMILY_ATTR_LIST](
	[ATTRIBUTE_ID] [int] NOT NULL,
	[SORT_ORDER] [int] NOT NULL,
	[FAMILY_ID] [int] NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PROD_FAMILY]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PROD_FAMILY](
	[SORT_ORDER] [int] NOT NULL,
	[FAMILY_ID] [int] NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[PUBLISH] [bit] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PICKLIST]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PICKLIST](
	[PICKLIST_DATA] [nvarchar](max) NULL,
	[PICKLIST_NAME] [nvarchar](50) NOT NULL,
	[PICKLIST_DATA_TYPE] [nvarchar](50) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PARTS_KEY]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PARTS_KEY](
	[ATTRIBUTE_ID] [int] NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[FAMILY_ID] [int] NOT NULL,
	[ATTRIBUTE_VALUE] [nvarchar](max) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_OPTIONS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_OPTIONS](
	[TB_OPTION_ID] [int] NOT NULL,
	[OPTION_KEY] [nvarchar](500) NOT NULL,
	[OPTION_VALUE] [nvarchar](4000) NULL,
	[OPTION_GROUP] [nvarchar](50) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_GLYPHS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_GLYPHS](
	[GLYPH_ID] [int] NOT NULL,
	[GLYPH] [nvarchar](10) NOT NULL,
	[GLYPH_ALTERNATE] [nvarchar](10) NULL,
	[KEY_STROKE] [nvarchar](50) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_FUNCTION]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_FUNCTION](
	[FUNCTION_ID] [int] NOT NULL,
	[FUNCTION_NAME] [nvarchar](255) NULL,
	[DEFAULT_ACTION_VIEW] [bit] NOT NULL,
	[DEFAULT_ACTION_MODIFY] [bit] NOT NULL,
	[DEFAULT_ACTION_ADD] [bit] NOT NULL,
	[DEFAULT_ACTION_REMOVE] [bit] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_FAMILY_TABLE_STRUCTURE]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_FAMILY_TABLE_STRUCTURE](
	[CATALOG_ID] [int] NOT NULL,
	[FAMILY_ID] [int] NOT NULL,
	[FAMILY_TABLE_STRUCTURE] [nvarchar](max) NULL,
	[STRUCTURE_NAME] [nvarchar](500) NOT NULL,
	[IS_DEFAULT] [bit] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_FAMILY_SPECS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_FAMILY_SPECS](
	[STRING_VALUE] [nvarchar](max) NULL,
	[FAMILY_ID] [int] NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL,
	[NUMERIC_VALUE] [decimal](19, 6) NULL,
	[OBJECT_TYPE] [nvarchar](50) NULL,
	[OBJECT_NAME] [nvarchar](500) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_FAMILY]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_FAMILY](
	[FAMILY_ID] [int] NOT NULL,
	[FAMILY_NAME] [nvarchar](400) NULL,
	[FOOT_NOTES] [nvarchar](1000) NULL,
	[PARENT_FAMILY_ID] [int] NULL,
	[ROOT_FAMILY] [tinyint] NOT NULL,
	[STATUS] [nvarchar](50) NULL,
	[PRODUCT_TABLE_STRUCTURE] [nvarchar](max) NULL,
	[DISPLAY_TABLE_HEADER] [bit] NULL,
	[CATEGORY_ID] [nvarchar](50) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUSTOMER]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUSTOMER](
	[CUSTOMER_ID] [int] NOT NULL,
	[CUSTOMER_FNAME] [nvarchar](150) NULL,
	[CUSTOMER_MNAME] [nvarchar](150) NULL,
	[CUSTOMER_LNAME] [nvarchar](150) NULL,
	[CUSTOMER_PREFIX] [nvarchar](50) NULL,
	[CUSTOMER_SUFFIX] [nvarchar](50) NULL,
	[CUSTOMER_CODE] [nvarchar](30) NULL,
	[CUSTOMER_DONT_CALL] [bit] NOT NULL,
	[CUSTOMER_DONT_CALL_FLAG_DATE] [datetime] NULL,
	[OCCUPATION] [nvarchar](150) NULL,
	[CUSTOM_NUM_FIELD_1] [decimal](19, 4) NULL,
	[CUSTOM_NUM_FIELD_2] [decimal](19, 4) NULL,
	[CUSTOM_NUM_FIELD_3] [decimal](19, 4) NULL,
	[CUSTOMER_SUSPEND_CALLING] [bit] NOT NULL,
	[CUSTOMER_DONT_MAIL] [bit] NOT NULL,
	[CUSTOMER_DONT_MAIL_TILL_DATE] [datetime] NULL,
	[CUSTOM_TEXT_FIELD_1] [nvarchar](255) NULL,
	[CUSTOM_TEXT_FIELD_2] [nvarchar](255) NULL,
	[CUSTOM_TEXT_FIELD_3] [nvarchar](255) NULL,
	[CUSTOM_TEXT_FIELD_4] [nvarchar](255) NULL,
	[INCEPTION_DATE] [datetime] NULL,
	[ADDR1] [nvarchar](150) NULL,
	[ADDR2] [nvarchar](150) NULL,
	[ADDR3] [nvarchar](150) NULL,
	[CITY] [nvarchar](50) NULL,
	[STATE_CODE] [nvarchar](100) NULL,
	[ZIP] [nvarchar](20) NULL,
	[HOME_PHONE] [nvarchar](20) NULL,
	[WORK_PHONE] [nvarchar](20) NULL,
	[MOBILE_PHONE] [nvarchar](20) NULL,
	[FAX] [nvarchar](20) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[URL] [nvarchar](255) NULL,
	[NOTES] [nvarchar](255) NULL,
	[CALL_NUMBER] [nvarchar](20) NULL,
	[COUNTRY_CODE] [nvarchar](100) NULL,
	[TIME_ZONE_ID] [int] NULL,
	[PROVINCE] [nvarchar](50) NULL,
	[CUSTOM_NUM_FIELD_4] [decimal](19, 4) NULL,
	[CUSTOM_NUM_FIELD_5] [decimal](19, 4) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUSTOM_TAGS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUSTOM_TAGS](
	[TAG] [nvarchar](5) NOT NULL,
	[TAG_NAME] [nvarchar](100) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_COUNTRY]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_COUNTRY](
	[COUNTRY_CODE] [nvarchar](100) NOT NULL,
	[COUNTRY] [nvarchar](100) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CATEGORY]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CATEGORY](
	[CATEGORY_ID] [nvarchar](50) NOT NULL,
	[CATEGORY_NAME] [nvarchar](500) NOT NULL,
	[PARENT_CATEGORY] [nvarchar](50) NOT NULL,
	[SHORT_DESC] [nvarchar](500) NULL,
	[IMAGE_FILE] [nvarchar](500) NULL,
	[IMAGE_TYPE] [nvarchar](10) NULL,
	[IMAGE_NAME] [nvarchar](255) NULL,
	[IMAGE_NAME2] [nvarchar](255) NULL,
	[IMAGE_FILE2] [nvarchar](500) NULL,
	[IMAGE_TYPE2] [nvarchar](10) NULL,
	[CUSTOM_NUM_FIELD1] [decimal](19, 4) NULL,
	[CUSTOM_NUM_FIELD2] [decimal](19, 4) NULL,
	[CUSTOM_NUM_FIELD3] [decimal](19, 4) NULL,
	[CUSTOM_TEXT_FIELD1] [nvarchar](500) NULL,
	[CUSTOM_TEXT_FIELD2] [nvarchar](500) NULL,
	[CUSTOM_TEXT_FIELD3] [nvarchar](500) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CATALOG_USER]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CATALOG_USER](
	[TB_USER_ID] [nvarchar](100) NOT NULL,
	[CATALOG_ID] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CATALOG_SECTIONS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CATALOG_SECTIONS](
	[CATALOG_ID] [int] NOT NULL,
	[CATEGORY_ID] [nvarchar](50) NOT NULL,
	[SORT_ORDER] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CATALOG_PRODUCT]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CATALOG_PRODUCT](
	[PRODUCT_ID] [int] NOT NULL,
	[CATALOG_ID] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CATALOG_FAMILY]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CATALOG_FAMILY](
	[CATALOG_ID] [int] NOT NULL,
	[FAMILY_ID] [int] NOT NULL,
	[SORT_ORDER] [int] NOT NULL,
	[CATEGORY_ID] [nvarchar](50) NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CATALOG_ATTRIBUTES]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CATALOG_ATTRIBUTES](
	[CATALOG_ID] [int] NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CATALOG]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CATALOG](
	[CATALOG_ID] [int] NOT NULL,
	[CATALOG_NAME] [nvarchar](100) NOT NULL,
	[VERSION] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](500) NULL,
	[FAMILY_FILTERS] [nvarchar](max) NULL,
	[PRODUCT_FILTERS] [nvarchar](max) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CAMPAIGN_RUN]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CAMPAIGN_RUN](
	[CUSTOMER_ID] [int] NOT NULL,
	[PROJECT_ID] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CAMPAIGN_DETAILS]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CAMPAIGN_DETAILS](
	[CUSTOMER_ID] [int] NOT NULL,
	[PROJECT_ID] [int] NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[SORT_ORDER] [int] NOT NULL,
	[FAMILY_ID] [int] NOT NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ATTRIBUTE]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ATTRIBUTE](
	[ATTRIBUTE_NAME] [nvarchar](100) NOT NULL,
	[ATTRIBUTE_TYPE] [tinyint] NOT NULL,
	[ATTRIBUTE_ID] [int] NOT NULL,
	[CREATE_BY_DEFAULT] [bit] NOT NULL,
	[VALUE_REQUIRED] [bit] NOT NULL,
	[STYLE_NAME] [nvarchar](100) NULL,
	[STYLE_FORMAT] [nvarchar](1000) NULL,
	[DEFAULT_VALUE] [nvarchar](max) NULL,
	[PUBLISH2PRINT] [bit] NOT NULL,
	[PUBLISH2WEB] [bit] NOT NULL,
	[PUBLISH2CDROM] [bit] NOT NULL,
	[PUBLISH2ODP] [bit] NOT NULL,
	[USE_PICKLIST] [bit] NOT NULL,
	[ATTRIBUTE_DATATYPE] [nvarchar](50) NOT NULL,
	[ATTRIBUTE_DATAFORMAT] [nvarchar](max) NULL,
	[ATTRIBUTE_DATARULE] [nvarchar](max) NULL,
	[UOM] [nvarchar](50) NULL,
	[IS_CALCULATED] [bit] NOT NULL,
	[ATTRIBUTE_CALC_FORMULA] [nvarchar](max) NULL,
	[PICKLIST_NAME] [nvarchar](50) NULL,
	[CREATED_USER] [nvarchar](100) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[MODIFIED_USER] [nvarchar](100) NOT NULL,
	[MODIFIED_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 07/26/2012 17:39:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[Supplier Details]    Script Date: 07/26/2012 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Supplier Details](@catalog_id int)
returns table
as
return (
SELECT	DISTINCT TB_CATALOG_FAMILY.CATALOG_ID,TB_PROD_FAMILY.FAMILY_ID,
SUPPLIER_NAME,SUPPLIER_COMPANY_NAME,ADDRESS_LINE_1,ADDRESS_LINE_2,ADDRESS_LINE_3,CITY,STATE,ZIP,COUNTRY,PHONE_1,
FAX,EMAIL,URL,LOGO_IMAGE_FILE,LOGO_IMAGE_TYPE,TB_SUPPLIER.CREATED_USER,
TB_SUPPLIER.CREATED_DATE,TB_SUPPLIER.MODIFIED_USER,TB_SUPPLIER.MODIFIED_DATE
FROM	TB_CATALOG_FAMILY, TB_PROD_FAMILY, TB_CATALOG_PRODUCT, TB_PROD_SPECS,TB_SUPPLIER           
WHERE	TB_CATALOG_FAMILY.FAMILY_ID = TB_PROD_FAMILY.FAMILY_ID AND 		
TB_PROD_FAMILY.PRODUCT_ID =  TB_CATALOG_PRODUCT.PRODUCT_ID AND
TB_CATALOG_FAMILY.CATALOG_ID=@CATALOG_ID AND 		
TB_PROD_SPECS.ATTRIBUTE_ID = 3 AND TB_PROD_SPECS.PRODUCT_ID = TB_CATALOG_PRODUCT.PRODUCT_ID  AND    
      TB_CATALOG_FAMILY.CATALOG_ID=TB_CATALOG_PRODUCT.CATALOG_ID AND TB_PROD_FAMILY.PUBLISH=1 AND
TB_PROD_SPECS.STRING_VALUE=TB_SUPPLIER.SUPPLIER_NAME )
GO
/****** Object:  StoredProcedure [dbo].[STP_TBWC_SEEPDF]    Script Date: 07/26/2012 17:40:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_TBWC_SEEPDF](@PROJECT_ID INT=0,@OPTION NVARCHAR(10),@ATTRIBUTE_NAME NVARCHAR(100)='',@ATTRIBUTE_ID INT=0)
AS 
BEGIN
IF @OPTION='XC'
BEGIN
SELECT XPRESSCATALOG_CONFIG FROM TB_PROJECT WHERE PROJECT_TYPE = 3 AND PROJECT_ID =@PROJECT_ID
END
ELSE IF @OPTION='PA'
BEGIN
SELECT * FROM PRODATTR
END
ELSE IF @OPTION='AN'
BEGIN
SELECT STYLE_FORMAT FROM TB_ATTRIBUTE WHERE ATTRIBUTE_NAME =@ATTRIBUTE_NAME
END
ELSE IF @OPTION='PAE'
BEGIN
SELECT [NSN #] AS [Item No],[Product description] AS [Description],CONVERT(nvarchar,QTY) AS QTY,[UI] AS [Unit Of Issue],[Price] As [List Price],isNULL([Disc Price],'') as [Disc Price],'$' + Price_applied AS [Estimated Price] from PRODATTR UNION ALL SELECT '','Sub Total','','','','','$' + CONVERT(varchar,SUM(CONVERT(decimal(10,2),price_applied))) from PRODATTR UNION ALL SELECT '','SurCharge','','','','','$' + CONVERT(varchar,CONVERT(decimal(10,2),SUM(CONVERT(decimal(10,2),price_applied)) * 0.32)) from PRODATTR UNION ALL SELECT '','Total','','','','','$' + CONVERT(varchar,SUM(CONVERT(decimal(10,2),price_applied)) + CONVERT(decimal(10,2),SUM(CONVERT(decimal(10,2),price_applied)) * 0.32)) from dbo.PRODATTR
END
ELSE IF @OPTION='ADR'
BEGIN
SELECT ATTRIBUTE_DATARULE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID
END
ELSE IF @OPTION='ADN'
BEGIN
SELECT ATTRIBUTE_NAME FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID
END
END
GO
/****** Object:  StoredProcedure [dbo].[STP_MASTER_KEYWORD_SEARCH]    Script Date: 07/26/2012 17:40:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_MASTER_KEYWORD_SEARCH] (@SEARCHSTR NVARCHAR(MAX),@CATALOG_ID INT)
AS
BEGIN
set @SEARCHSTR = '%' + @SEARCHSTR + '%'
select distinct attribute_id from tb_prod_specs WITH (NOLOCK) where attribute_id in(select distinct attribute_id from tbwc_search_table_fields WITH (NOLOCK) where catalog_id<>@CATALOG_ID) and string_value like @SEARCHSTR and product_id in(
select distinct product_id from tbwc_product_lookup WITH (NOLOCK))

END
GO
/****** Object:  StoredProcedure [dbo].[STP_KEYWORD_SEARCH]    Script Date: 07/26/2012 17:40:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_KEYWORD_SEARCH] (@SEARCHSTR NVARCHAR(MAX),@CATALOG_ID INT,@SessionID nvarchar(max),@REC_PER_PG INT,@PG_NO INT,@CATEGORYID NVARCHAR(100))
AS
BEGIN
DECLARE @PRODCOUNT INT
CREATE TABLE #TEMP_GETPRODUCT
(
 ROWNUM INT IDENTITY,
 PRODUCT_ID INT
)
CREATE INDEX #TMPGETPRODIDX ON #TEMP_GETPRODUCT(PRODUCT_ID)
set @SEARCHSTR = '%' + @SEARCHSTR + '%'
SET @PRODCOUNT=(select count(distinct product_id) from tb_prod_specs WITH (NOLOCK) where attribute_id in(select distinct attribute_id from tbwc_search_table_fields WITH (NOLOCK) where catalog_id=@CATALOG_ID) and string_value like @SEARCHSTR and product_id in(
select distinct pl.product_id from tbwc_product_lookup pl WITH (NOLOCK),tb_prod_family pf WITH (NOLOCK),tb_catalog_family cf WITH (NOLOCK) where
cf.family_id=pf.family_id and pf.product_id=pl.product_id and pl.catalog_id=@CATALOG_ID and cf.catalog_id=@CATALOG_ID)
)
IF (@PRODCOUNT>0)
BEGIN
delete TBWC_SEARCH_PROD_LIST where USER_SESSION_ID=@SessionID
IF @CATEGORYID='0'
insert into TBWC_SEARCH_PROD_LIST 
select distinct product_id,@SessionID from tb_prod_specs WITH (NOLOCK) where attribute_id in(166,167,168,169,170,171,172,173,747,49,50,51,52) and string_value like @SEARCHSTR and product_id in(
select distinct pl.product_id from tbwc_product_lookup pl WITH (NOLOCK),tb_prod_family pf WITH (NOLOCK),tb_catalog_family cf WITH (NOLOCK) where
cf.family_id=pf.family_id and pf.product_id=pl.product_id and pl.catalog_id=@CATALOG_ID and cf.catalog_id=@CATALOG_ID
and cf.CATEGORY_ID not in('HC042','HC040','HC039')) 
union
select distinct product_id,@SessionID from tb_prod_specs WITH (NOLOCK) where attribute_id in(166,167,168,169,170,171,172,173,747) and string_value like @SEARCHSTR and product_id in(
select distinct pl.product_id from tbwc_product_lookup pl WITH (NOLOCK),tb_prod_family pf WITH (NOLOCK),tb_catalog_family cf WITH (NOLOCK) where
cf.family_id=pf.family_id and pf.product_id=pl.product_id and pl.catalog_id=@CATALOG_ID and cf.catalog_id=@CATALOG_ID
and cf.CATEGORY_ID in('HC042','HC040','HC039')) 
ELSE 
if @CATEGORYID='HC042' or @CATEGORYID='HC040'or @CATEGORYID='HC039'
begin
select distinct product_id,@SessionID from tb_prod_specs WITH (NOLOCK) where attribute_id in(166,167,168,169,170,171,172,173,747) and string_value like @SEARCHSTR and product_id in(
select distinct pl.product_id from tbwc_product_lookup pl WITH (NOLOCK),tb_prod_family pf WITH (NOLOCK),tb_catalog_family cf WITH (NOLOCK) where
cf.family_id=pf.family_id and pf.product_id=pl.product_id and pl.catalog_id=@CATALOG_ID and cf.catalog_id=@CATALOG_ID and cf.CATEGORY_ID=@CATEGORYID)
end
else
begin
insert into TBWC_SEARCH_PROD_LIST select distinct product_id,@SessionID from tb_prod_specs WITH (NOLOCK) where attribute_id in(166,167,168,169,170,171,172,173,747,49,50,51,52) and string_value like @SEARCHSTR and product_id in(
select distinct pl.product_id from tbwc_product_lookup pl WITH (NOLOCK),tb_prod_family pf WITH (NOLOCK),tb_catalog_family cf WITH (NOLOCK) where
cf.family_id=pf.family_id and pf.product_id=pl.product_id and pl.catalog_id=@CATALOG_ID and cf.catalog_id=@CATALOG_ID and cf.CATEGORY_ID=@CATEGORYID )
end

insert into #TEMP_GETPRODUCT SELECT distinct product_id from TBWC_SEARCH_PROD_LIST WITH (NOLOCK) where USER_SESSION_ID=@SessionID 
SELECT DISTINCT PRODUCT_ID FROM #TEMP_GETPRODUCT T WITH(NOLOCK) WHERE T.ROWNUM>=((@REC_PER_PG*(@PG_NO-1))+1) AND T.ROWNUM<=(@REC_PER_PG*(@PG_NO))
select distinct category_id from tb_catalog_family cf WITH (NOLOCK),tb_prod_family pf WITH (NOLOCK) where cf.family_id=pf.family_id and cf.catalog_id=@CATALOG_ID  and pf.product_id in(SELECT DISTINCT PRODUCT_ID FROM #TEMP_GETPRODUCT WITH (NOLOCK))
select count(*) from #TEMP_GETPRODUCT
END
ELSE
BEGIN
delete TBWC_SEARCH_PROD_LIST where USER_SESSION_ID=@SessionID
SELECT '0','NULL'AS SEARCH_TYPE
END
END
GO
/****** Object:  StoredProcedure [dbo].[STP_GET_RANGE_FILTER1]    Script Date: 07/26/2012 17:40:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[STP_GET_RANGE_FILTER1](@CATEGORY_ID NVARCHAR(50),@SESSION NVARCHAR(MAX))	
AS
BEGIN
DECLARE @RANGE_ID INT	
DECLARE @RANGE_NAME NVARCHAR(100)	
DECLARE @RANGE_START DECIMAL(19,6)	
DECLARE @RANGE_END DECIMAL(19,6)	
DECLARE @ATTRIBUTE_ID INT 
DECLARE @SORT_ORDER INT	
DECLARE @CAT_ID NVARCHAR(100)	
DECLARE @IS_RANGE BIT
DECLARE @RCOUNT INT

CREATE TABLE #TBWC_GET_RANGE(RANGEVALUE decimal(19,6),ATTRIBUTE_ID INT)
CREATE INDEX #IDXTBWC_GET_RANGE ON #TBWC_GET_RANGE(ATTRIBUTE_ID)
CREATE TABLE #TBWC_GET_RANGE_FILTER(RANGE_ID INT,RANGE_NAME NVARCHAR(100),RANGE_START DECIMAL(19,6),RANGE_END DECIMAL(19,6),ATTRIBUTE_ID INT,SORT_ORDER INT,CAT_ID NVARCHAR(100),IS_RANGE BIT)
CREATE INDEX #IDXTBWC_GET_RANGE_FILTER ON #TBWC_GET_RANGE_FILTER(ATTRIBUTE_ID)

INSERT INTO #TBWC_GET_RANGE(RANGEVALUE,ATTRIBUTE_ID)
		SELECT REPLACE(TPS.STRING_VALUE,',','') AS RANGEVALUE,TPS.ATTRIBUTE_ID FROM TB_PROD_SPECS TPS WITH (NOLOCK),TB_ATTRIBUTE TA WITH (NOLOCK) 
			WHERE (PRODUCT_ID IN
			(SELECT PRODUCT_ID FROM TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION) 
			OR PRODUCT_ID IN
			(SELECT DISTINCT SUBPRODUCT_ID FROM TBWC_PRODUCT_LOOKUP PL WITH (NOLOCK),TBWC_SEARCH_PROD_LIST SP WITH (NOLOCK) 
			WHERE SP.PRODUCT_ID=PL.PRODUCT_ID AND SP.USER_SESSION_ID=@SESSION)) 
			AND TA.ATTRIBUTE_ID IN
			(SELECT DISTINCT ATTRIBUTE_ID FROM TBWC_SEARCH_RANGE WITH (NOLOCK) WHERE CATEGORY_ID=@CATEGORY_ID AND IS_RANGE=1 AND SORT_ORDER>0) 
			AND TPS.ATTRIBUTE_ID=TA.ATTRIBUTE_ID AND TPS.STRING_VALUE<>'-' AND TA.ATTRIBUTE_DATATYPE LIKE 'Text%'
			UNION ALL
			SELECT TPS.NUMERIC_VALUE AS RANGEVALUE,TPS.ATTRIBUTE_ID FROM TB_PROD_SPECS TPS WITH (NOLOCK),TB_ATTRIBUTE TA WITH (NOLOCK) 
			WHERE (PRODUCT_ID IN
			(SELECT PRODUCT_ID FROM TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION) 
			OR PRODUCT_ID IN
			(SELECT DISTINCT SUBPRODUCT_ID FROM TBWC_PRODUCT_LOOKUP PL WITH (NOLOCK),TBWC_SEARCH_PROD_LIST SP WITH (NOLOCK) 
			WHERE SP.PRODUCT_ID=PL.PRODUCT_ID AND SP.USER_SESSION_ID=@SESSION)) 
			AND TA.ATTRIBUTE_ID IN
			(SELECT DISTINCT ATTRIBUTE_ID FROM TBWC_SEARCH_RANGE WITH (NOLOCK) WHERE CATEGORY_ID=@CATEGORY_ID AND IS_RANGE=1 AND SORT_ORDER>0) 
			AND TPS.ATTRIBUTE_ID=TA.ATTRIBUTE_ID AND TA.ATTRIBUTE_DATATYPE LIKE 'Number%'
			ORDER BY TPS.ATTRIBUTE_ID	
				
		DECLARE CURRANGEDATA CURSOR FOR
		SELECT DISTINCT * FROM TBWC_SEARCH_RANGE WITH (NOLOCK) WHERE CATEGORY_ID=@CATEGORY_ID AND IS_RANGE=1 AND SORT_ORDER>0 ORDER BY ATTRIBUTE_ID
		OPEN CURRANGEDATA
		FETCH NEXT FROM CURRANGEDATA INTO @RANGE_ID,@RANGE_NAME,@RANGE_START,@RANGE_END,@ATTRIBUTE_ID,@SORT_ORDER,@CAT_ID,@IS_RANGE
		WHILE @@FETCH_STATUS=0
		BEGIN		
			SELECT @RCOUNT=COUNT(RANGEVALUE) FROM #TBWC_GET_RANGE 
			WHERE	ATTRIBUTE_ID=@ATTRIBUTE_ID  AND 
					((ISNULL(@RANGE_END,-1)<>-1 AND RANGEVALUE>=@RANGE_START AND RANGEVALUE<@RANGE_END) 
					OR (ISNULL(@RANGE_END,-1)=-1 AND RANGEVALUE >= @RANGE_START ))
			IF @RCOUNT>0
			BEGIN			    
				INSERT INTO #TBWC_GET_RANGE_FILTER(RANGE_ID,RANGE_NAME,RANGE_START,RANGE_END,ATTRIBUTE_ID,SORT_ORDER,CAT_ID,IS_RANGE) VALUES(@RANGE_ID,@RANGE_NAME,@RANGE_START,@RANGE_END,@ATTRIBUTE_ID,@SORT_ORDER,@CAT_ID,@IS_RANGE)
			END	
			FETCH NEXT FROM CURRANGEDATA INTO @RANGE_ID,@RANGE_NAME,@RANGE_START,@RANGE_END,@ATTRIBUTE_ID,@SORT_ORDER,@CAT_ID,@IS_RANGE
		END
		CLOSE CURRANGEDATA
		DEALLOCATE CURRANGEDATA

		SELECT * FROM TBWC_SEARCH_RANGE WHERE CATEGORY_ID=@CATEGORY_ID AND SORT_ORDER >0 AND IS_RANGE=0
		UNION
		SELECT * FROM #TBWC_GET_RANGE_FILTER
		
		DROP TABLE #TBWC_GET_RANGE
		DROP TABLE #TBWC_GET_RANGE_FILTER			
		
END
GO
/****** Object:  StoredProcedure [dbo].[STP_GET_RANGE_FILTER]    Script Date: 07/26/2012 17:40:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[STP_GET_RANGE_FILTER](@CATEGORY_ID NVARCHAR(50),@SESSION NVARCHAR(MAX))	
AS
BEGIN
CREATE TABLE #TBWC_GET_RANGE_FILTER(MAXVAL decimal(19,6),MINVAL decimal(19,6),ATTRIBUTE_ID INT)
CREATE INDEX #IDXTBWC_GET_RANGE_FILTER ON #TBWC_GET_RANGE_FILTER(ATTRIBUTE_ID)

INSERT INTO #TBWC_GET_RANGE_FILTER(MAXVAL,MINVAL,ATTRIBUTE_ID)
	SELECT  MAX(CASE WHEN TA.ATTRIBUTE_DATATYPE LIKE 'Text%' THEN REPLACE(TPS.STRING_VALUE,',','') WHEN TA.ATTRIBUTE_DATATYPE LIKE 'Number%' THEN TPS.NUMERIC_VALUE END) AS MAXVAL,MIN(CASE WHEN TA.ATTRIBUTE_DATATYPE LIKE 'Text%' THEN REPLACE(TPS.STRING_VALUE,',','') WHEN TA.ATTRIBUTE_DATATYPE LIKE 'Number%' THEN TPS.NUMERIC_VALUE END) AS MINVAL,TPS.ATTRIBUTE_ID FROM TB_PROD_SPECS TPS WITH (NOLOCK),TB_ATTRIBUTE TA WITH (NOLOCK) 
			WHERE (PRODUCT_ID IN
			(SELECT PRODUCT_ID FROM TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION) 
			OR PRODUCT_ID IN
			(SELECT DISTINCT SUBPRODUCT_ID FROM TBWC_PRODUCT_LOOKUP PL WITH (NOLOCK),TBWC_SEARCH_PROD_LIST SP WITH (NOLOCK) 
			WHERE SP.PRODUCT_ID=PL.PRODUCT_ID AND SP.USER_SESSION_ID=@SESSION)) 
			AND TA.ATTRIBUTE_ID IN
			(SELECT DISTINCT ATTRIBUTE_ID FROM TBWC_SEARCH_RANGE WITH (NOLOCK) WHERE CATEGORY_ID=@CATEGORY_ID AND IS_RANGE=1 AND SORT_ORDER>0) 
			AND TPS.ATTRIBUTE_ID=TA.ATTRIBUTE_ID AND TPS.STRING_VALUE<>'-'
			GROUP BY TPS.ATTRIBUTE_ID ORDER BY TPS.ATTRIBUTE_ID	
			
	
	

	
	
	SELECT * FROM TBWC_SEARCH_RANGE WHERE 
		CATEGORY_ID=@CATEGORY_ID AND SORT_ORDER >0 AND IS_RANGE=0
		UNION
	SELECT TSR.* FROM TBWC_SEARCH_RANGE TSR,#TBWC_GET_RANGE_FILTER TRF WHERE 
		TSR.CATEGORY_ID=@CATEGORY_ID AND TSR.SORT_ORDER >0  AND TSR.IS_RANGE=1
		AND( 
		(ISNULL(TSR.RANGE_END,-1) = -1 AND TSR.RANGE_START<=TRF.MINVAL AND TSR.RANGE_START<=TRF.MAXVAL) 
		OR (ISNULL(TSR.RANGE_END,-1) <> -1 AND TSR.RANGE_START<=TRF.MINVAL AND TSR.RANGE_END >= TRF.MINVAL AND TSR.RANGE_END <= TRF.MAXVAL)
		OR (ISNULL(TSR.RANGE_END,-1) <> -1 AND TSR.RANGE_START >= TRF.MINVAL AND TSR.RANGE_END <= TRF.MAXVAL)
		OR (ISNULL(TSR.RANGE_END,-1) =  -1 AND TSR.RANGE_START >= TRF.MINVAL AND TSR.RANGE_START <= TRF.MAXVAL)
		OR( ISNULL(TSR.RANGE_END,-1)<>-1 AND TSR.RANGE_START >= TRF.MINVAL AND TSR.RANGE_END > TRF.MAXVAL AND TSR.RANGE_START <= TRF.MAXVAL)
		)
		AND TSR.ATTRIBUTE_ID=TRF.ATTRIBUTE_ID	
		
		
		
		DROP TABLE #TBWC_GET_RANGE_FILTER			
		
END
GO
/****** Object:  StoredProcedure [dbo].[STP_GET_PRODUCTS_filter]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_GET_PRODUCTS_filter] (@attribute_id int,@rangevalue1 nvarchar(max),@rangevalue2 nvarchar(max),@family_id nvarchar(max),@Is_Range int,@SESSION nvarchar(max),@category_id nvarchar(100)='')
as
begin
CREATE TABLE #tempprodid
(
 ROWNUM INT IDENTITY,
 PRODUCT_ID INT
)

CREATE INDEX #IDX_TEMPPRODID ON #tempprodid(PRODUCT_ID)

declare @attribute_type nvarchar(500)
declare @sqlstr nvarchar(max)

--if(@attribute_name IS NOT NULL)
--begin
set @attribute_type=(select ATTRIBUTE_DATATYPE from tb_attribute WITH (NOLOCK) where ATTRIBUTE_ID=@attribute_id)
if(@Is_Range=1)
begin
    if(@rangevalue2!='Over' and @rangevalue2!='')
    begin
          if(SUBSTRING(@attribute_type,1,1)='T')
          begin          
          	if(@attribute_id=362)
          		begin
          			insert into #tempprodid select product_id from tb_prod_specs WITH (NOLOCK) where product_id in(select product_id from TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION)
					and attribute_id=@attribute_id and STRING_VALUE not like '%-%' and convert(decimal(19,6),replace(REPLACE(STRING_VALUE,' ',''),'-','0')) >=convert(decimal,@rangevalue1) and convert(decimal(19,6),replace(REPLACE(STRING_VALUE,' ',''),'-','0'))<=convert(decimal,@rangevalue2)
					
					insert into #tempprodid select distinct product_id from tbwc_product_lookup WITH (NOLOCK) where subproduct_id in(select product_id from tb_prod_specs WITH (NOLOCK) where product_id in
					(select distinct subproduct_id from tbwc_product_lookup LU WITH (NOLOCK),TBWC_SEARCH_PROD_LIST PL WITH (NOLOCK) where pl.product_id=lu.product_id and pl.USER_SESSION_ID=@SESSION)  
					and  attribute_id=@attribute_id and STRING_VALUE not like '%-%' and convert(decimal(19,6),replace(REPLACE(STRING_VALUE,' ',''),'-','0')) >=convert(decimal,@rangevalue1) and convert(decimal(19,6),replace(REPLACE(STRING_VALUE,' ',''),'-','0')) <=convert(decimal,@rangevalue2)) 
				end				
				else
				begin
					insert into #tempprodid select product_id from tb_prod_specs WITH (NOLOCK) where product_id in(select product_id from TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION)
					and attribute_id=@attribute_id and STRING_VALUE not like '%-%' and convert(decimal(19,6),replace(replace(STRING_VALUE,',',''),'-','0')) >=convert(decimal,@rangevalue1) and convert(decimal(19,6),replace(replace(STRING_VALUE,',',''),'-','0'))<=convert(decimal,@rangevalue2)
					
					insert into #tempprodid select distinct product_id from tbwc_product_lookup WITH (NOLOCK) where subproduct_id in(select product_id from tb_prod_specs WITH (NOLOCK) where product_id in
					(select distinct subproduct_id from tbwc_product_lookup LU WITH (NOLOCK),TBWC_SEARCH_PROD_LIST PL WITH (NOLOCK) where pl.product_id=lu.product_id and pl.USER_SESSION_ID=@SESSION)  
					and  attribute_id=@attribute_id and STRING_VALUE not like '%-%' and convert(decimal(19,6),replace(replace(STRING_VALUE,',',''),'-','0')) >=convert(decimal,@rangevalue1) and convert(decimal(19,6),replace(replace(STRING_VALUE,',',''),'-','0'))<=convert(decimal,@rangevalue2)) 
					
					
				end
			
          end
          else
          begin      
			insert into #tempprodid select product_id from tb_prod_specs WITH (NOLOCK) where product_id in(select product_id from TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION)
			and attribute_id=@attribute_id and numeric_value>=@rangevalue1 and numeric_value<=@rangevalue2
			
			insert into #tempprodid select distinct product_id from tbwc_product_lookup WITH (NOLOCK) where subproduct_id in(select product_id from tb_prod_specs WITH (NOLOCK) where product_id in
			(select distinct subproduct_id from tbwc_product_lookup LU WITH (NOLOCK),TBWC_SEARCH_PROD_LIST PL WITH (NOLOCK) where pl.product_id=lu.product_id and pl.USER_SESSION_ID=@SESSION)  
			and  attribute_id=@attribute_id and numeric_value>=@rangevalue1 and numeric_value<=@rangevalue2)   
			end
    end
    else     
    begin
    if(SUBSTRING(@attribute_type,1,1)='T')
          begin
			if(@attribute_id=362)
          		begin
					insert into #tempprodid select product_id from tb_prod_specs WITH (NOLOCK) where product_id in(select product_id from TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION)
					and attribute_id=@attribute_id and STRING_VALUE not like '%-%' and convert(decimal(19,6),replace(REPLACE(STRING_VALUE,' ',''),'-','0')) >=convert(decimal,@rangevalue1)

					insert into #tempprodid select distinct product_id from tbwc_product_lookup WITH (NOLOCK) where subproduct_id in(select product_id from tb_prod_specs WITH (NOLOCK) where product_id in
					(select distinct subproduct_id from tbwc_product_lookup LU WITH (NOLOCK),TBWC_SEARCH_PROD_LIST PL WITH (NOLOCK) where pl.product_id=lu.product_id and pl.USER_SESSION_ID=@SESSION)  
					and  attribute_id=@attribute_id and STRING_VALUE not like '%-%' and convert(decimal(19,6),replace(REPLACE(STRING_VALUE,' ',''),'-','0'))>= convert(decimal,@rangevalue1))
				end
				else
				begin
					insert into #tempprodid select product_id from tb_prod_specs WITH (NOLOCK) where product_id in(select product_id from TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION)
					and attribute_id=@attribute_id and STRING_VALUE not like '%-%' and convert(decimal(19,6),replace(replace(STRING_VALUE,',',''),'-','0')) >=convert(decimal,@rangevalue1)

					insert into #tempprodid select distinct product_id from tbwc_product_lookup WITH (NOLOCK) where subproduct_id in(select product_id from tb_prod_specs WITH (NOLOCK) where product_id in
					(select distinct subproduct_id from tbwc_product_lookup LU WITH (NOLOCK),TBWC_SEARCH_PROD_LIST PL WITH (NOLOCK) where pl.product_id=lu.product_id and pl.USER_SESSION_ID=@SESSION)  
					and  attribute_id=@attribute_id and STRING_VALUE not like '%-%' and convert(decimal(19,6),replace(replace(STRING_VALUE,',',''),'-','0')) >=convert(decimal,@rangevalue1))
				end	
          end
          else
          begin
			insert into #tempprodid select product_id from tb_prod_specs WITH (NOLOCK) where product_id in(select product_id from TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION)
			and attribute_id=@attribute_id and numeric_value>@rangevalue1 

			insert into #tempprodid select distinct product_id from tbwc_product_lookup WITH (NOLOCK) where subproduct_id in(select product_id from tb_prod_specs WITH (NOLOCK) where product_id in
			(select distinct subproduct_id from tbwc_product_lookup LU WITH (NOLOCK),TBWC_SEARCH_PROD_LIST PL WITH (NOLOCK) where pl.product_id=lu.product_id and pl.USER_SESSION_ID=@SESSION)  
			and  attribute_id=@attribute_id and numeric_value>@rangevalue1)
			end
    end
end
else
begin

		insert into #tempprodid select product_id from tb_prod_specs WITH (NOLOCK) where product_id in(select product_id from TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION)
		and attribute_id=@attribute_id and string_value=@rangevalue1

	if @category_id='HC045' and @attribute_id=176
	begin
		insert into #tempprodid select distinct product_id from tb_prod_specs WITH (NOLOCK) where product_id in(
		select distinct product_id from tbwc_product_lookup WITH (NOLOCK) where subproduct_id 
		in(select distinct SUBPRODUCT_ID from tbwc_product_lookup LU WITH (NOLOCK),TBWC_SEARCH_PROD_LIST PL 
		WITH (NOLOCK) where pl.product_id=lu.product_id and pl.USER_SESSION_ID=@SESSION))
		and  attribute_id=@attribute_id and string_value=@rangevalue1
	end
	else
	begin
		insert into #tempprodid select distinct product_id from tbwc_product_lookup WITH (NOLOCK) where subproduct_id in(select product_id from tb_prod_specs WITH (NOLOCK) where product_id in
			(select distinct subproduct_id from tbwc_product_lookup LU WITH (NOLOCK),TBWC_SEARCH_PROD_LIST PL WITH (NOLOCK) where pl.product_id=lu.product_id and pl.USER_SESSION_ID=@SESSION)  
		and  attribute_id=@attribute_id and string_value=@rangevalue1)
	end
	end

DELETE TBWC_SEARCH_PROD_LIST WHERE USER_SESSION_ID=@SESSION and product_id not in(
select distinct product_id from #tempprodid WITH (NOLOCK)
) 
end
GO
/****** Object:  StoredProcedure [dbo].[STP_GET_PRODUCTS]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_GET_PRODUCTS] (@SESSION NVARCHAR(MAX),@REC_PER_PG INT,@PG_NO INT, @CATALOG_ID INT,@CATEGORYID NVARCHAR(100),@SORT NVARCHAR(MAX),@SORTYPE NVARCHAR(100)) 
AS
BEGIN
CREATE TABLE #TEMP_GETPRODUCT
(
 ROWNUM INT IDENTITY,
 PRODUCT_ID INT
)
CREATE INDEX #TMPGETIDX ON #TEMP_GETPRODUCT(PRODUCT_ID)
CREATE TABLE #TEMP_GETSORTPRODUCT
(
 ROWNUM INT IDENTITY,
 PRODUCT_ID INT
)
CREATE INDEX #TEMPGETIDX ON #TEMP_GETSORTPRODUCT(PRODUCT_ID)
DECLARE @ATTRIBUTE_ID INT
DECLARE @ATTRIBUTETYPE NVARCHAR(100)
DECLARE @SQLSTR NVARCHAR(MAX)
IF(@CATEGORYID='0')
BEGIN
INSERT INTO #TEMP_GETSORTPRODUCT SELECT DISTINCT PRODUCT_ID FROM TBWC_SEARCH_PROD_LIST WITH (NOLOCK) WHERE USER_SESSION_ID=@SESSION
--DELETE FROM TBWC_SEARCH_PROD_LIST WHERE USER_SESSION_ID=@SESSION
END
ELSE
BEGIN
INSERT INTO #TEMP_GETSORTPRODUCT SELECT DISTINCT PL.PRODUCT_ID FROM TBWC_SEARCH_PROD_LIST PL WITH (NOLOCK),TB_PROD_FAMILY PF WITH (NOLOCK),TB_CATALOG_FAMILY CF WITH (NOLOCK) WHERE CF.FAMILY_ID=PF.FAMILY_ID AND PF.PRODUCT_ID=PL.PRODUCT_ID AND CF.CATEGORY_ID=@CATEGORYID AND CF.CATALOG_ID=@CATALOG_ID AND USER_SESSION_ID=@SESSION ORDER BY PL.PRODUCT_ID
--DELETE FROM TBWC_SEARCH_PROD_LIST WHERE USER_SESSION_ID=@SESSION
END 
IF(@SORT='0')
INSERT INTO #TEMP_GETPRODUCT SELECT PRODUCT_ID FROM #TEMP_GETSORTPRODUCT WITH (NOLOCK)
ELSE
BEGIN
SET @ATTRIBUTE_ID=(SELECT ATTRIBUTE_ID FROM TB_ATTRIBUTE WITH (NOLOCK) WHERE ATTRIBUTE_NAME=@SORT)
SET @ATTRIBUTETYPE=(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WITH (NOLOCK) WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID)
SET @ATTRIBUTETYPE = SUBSTRING(@ATTRIBUTETYPE,0,2)
IF (@ATTRIBUTETYPE='N')
SET @SORTYPE='ORDER BY NUMERIC_VALUE '+@SORTYPE
ELSE IF (@ATTRIBUTE_ID!=9 AND @ATTRIBUTE_ID!=901 AND @ATTRIBUTE_ID!=387 AND @ATTRIBUTE_ID!=763 AND @ATTRIBUTE_ID!=362 AND @ATTRIBUTE_ID!=880 AND @ATTRIBUTE_ID!=105 AND @ATTRIBUTE_ID!=852)
SET @SORTYPE='ORDER BY STRING_VALUE '+@SORTYPE
ELSE IF (@ATTRIBUTE_ID=9 OR @ATTRIBUTE_ID!=901 OR @ATTRIBUTE_ID!=387 OR @ATTRIBUTE_ID!=763 OR @ATTRIBUTE_ID!=362 OR @ATTRIBUTE_ID!=880 OR @ATTRIBUTE_ID!=105 OR @ATTRIBUTE_ID!=852)
SET @SORTYPE='ORDER BY CONVERT(DECIMAL,FLOOR(REPLACE(REPLACE(STRING_VALUE,'','',''''),''-'',''0''))) '+@SORTYPE

IF((SELECT COUNT(*) FROM TB_PROD_SPECS WITH (NOLOCK) WHERE PRODUCT_ID IN(SELECT PRODUCT_ID FROM #TEMP_GETSORTPRODUCT WITH (NOLOCK)) AND ATTRIBUTE_ID=@ATTRIBUTE_ID)>0)
BEGIN
SET @SQLSTR=('INSERT INTO #TEMP_GETPRODUCT SELECT PRODUCT_ID FROM TB_PROD_SPECS WITH (NOLOCK) WHERE PRODUCT_ID IN(SELECT PRODUCT_ID FROM #TEMP_GETSORTPRODUCT WITH (NOLOCK)) AND ATTRIBUTE_ID='+CONVERT(NVARCHAR(100),@ATTRIBUTE_ID)+' '+ @SORTYPE)
EXEC (@SQLSTR)
END
ELSE
BEGIN
PRINT 'LOOP2'
SET @SQLSTR=('INSERT INTO #TEMP_GETPRODUCT SELECT TPL.PRODUCT_ID FROM #TEMP_GETSORTPRODUCT SPL WITH (NOLOCK),TBWC_PRODUCT_LOOKUP TPL WITH (NOLOCK),TB_PROD_SPECS TPS WITH (NOLOCK) WHERE  SPL.PRODUCT_ID=TPL.PRODUCT_ID AND TPL.SUBPRODUCT_ID=TPS.PRODUCT_ID AND TPS.ATTRIBUTE_ID='+CONVERT(NVARCHAR(100),@ATTRIBUTE_ID)+' AND TPL.CATALOG_ID='+CONVERT(NVARCHAR(100),@CATALOG_ID)+' ' +@SORTYPE) 
PRINT @SQLSTR
EXEC (@SQLSTR)
END
END
INSERT INTO #TEMP_GETPRODUCT SELECT PRODUCT_ID FROM #TEMP_GETSORTPRODUCT WHERE PRODUCT_ID NOT IN (SELECT PRODUCT_ID FROM #TEMP_GETPRODUCT WITH (NOLOCK))
SELECT DISTINCT PRODUCT_ID,ROWNUM FROM #TEMP_GETPRODUCT T WITH(NOLOCK) WHERE T.ROWNUM>=((@REC_PER_PG*(@PG_NO-1))+1) AND T.ROWNUM<=(@REC_PER_PG*(@PG_NO))
SELECT COUNT(*) AS PROD_COUNT FROM #TEMP_GETPRODUCT WITH (NOLOCK)
SELECT DISTINCT CATEGORY_ID FROM TB_CATALOG_FAMILY CF WITH (NOLOCK),TB_PROD_FAMILY PF WITH (NOLOCK) WHERE CF.FAMILY_ID=PF.FAMILY_ID AND CF.CATALOG_ID=@CATALOG_ID  AND PF.PRODUCT_ID IN(SELECT DISTINCT PRODUCT_ID FROM #TEMP_GETPRODUCT WITH (NOLOCK))

END
GO
/****** Object:  StoredProcedure [dbo].[STP_GET_Filter_Category]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_GET_Filter_Category] (@CATALOG_ID INT,@TYPE nvarchar(50),@sessionid nvarchar(500)) 
AS
BEGIN
create table #tempscat
(
categoryID nvarchar(500),
sort_order int
)

CREATE INDEX #IDX_TEMPSCAT ON #tempscat(CATEGORYID)

if(@TYPE='Type')
begin
insert into #tempscat
select distinct tc.PARENT_CATEGORY,'0' from TBWC_SEARCH_PROD_LIST spl WITH (NOLOCK),TB_PROD_FAMILY pf WITH (NOLOCK),TB_CATALOG_FAMILY cf WITH (NOLOCK),TB_CATALOG_SECTIONS cs WITH (NOLOCK),TB_CATEGORY tc WITH (NOLOCK) 
where spl.PRODUCT_ID=pf.PRODUCT_ID and pf.FAMILY_ID=cf.FAMILY_ID and cf.CATEGORY_ID=cs.CATEGORY_ID and cs.CATEGORY_ID=tc.CATEGORY_ID and spl.USER_SESSION_ID=@sessionid 
and cf.CATALOG_ID=@CATALOG_ID and cs.CATALOG_ID=@CATALOG_ID 

select distinct a.CATEGORY_ID,a.CATEGORY_NAME,cs.sort_order from TB_CATEGORY a WITH (NOLOCK),#tempscat t WITH (NOLOCK),TB_CATALOG_SECTIONS cs WITH (NOLOCK) where t.categoryID=a.CATEGORY_ID and a.CATEGORY_ID=cs.CATEGORY_ID  and cs.CATALOG_ID=@CATALOG_ID order by cs.SORT_ORDER

--select distinct b.CATEGORY_ID,b.CATEGORY_NAME,t.sort_order from TB_CATEGORY a,#tempscat t,TB_CATEGORY b where t.categoryID=a.CATEGORY_ID and a.PARENT_CATEGORY=b.CATEGORY_ID order by t.sort_order
end
else
begin
insert into #tempscat
select distinct cs.CATEGORY_ID,cs.SORT_ORDER from TBWC_SEARCH_PROD_LIST spl WITH (NOLOCK),TB_PROD_FAMILY pf WITH (NOLOCK),TB_CATALOG_FAMILY cf WITH (NOLOCK),TB_CATALOG_SECTIONS cs WITH (NOLOCK) 
where spl.PRODUCT_ID=pf.PRODUCT_ID and pf.FAMILY_ID=cf.FAMILY_ID and cf.CATEGORY_ID=cs.CATEGORY_ID and spl.USER_SESSION_ID=@sessionid 
and cf.CATALOG_ID=@CATALOG_ID and cs.CATALOG_ID=@CATALOG_ID order by cs.SORT_ORDER

select distinct a.CATEGORY_ID,a.CATEGORY_NAME,t.sort_order from TB_CATEGORY a WITH (NOLOCK),#tempscat t WITH (NOLOCK) where t.categoryID=a.CATEGORY_ID order by t.sort_order

end
drop table #tempscat
end
GO
/****** Object:  StoredProcedure [dbo].[STP_GET_FACTORY_PRODUCTS]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_GET_FACTORY_PRODUCTS] (@FAMILY_ID INT,@PRODUCT_ID INT,@CATALOG_ID INT,@TYPE BIT) 
AS
BEGIN
create table #tempflatprod
(
 product_id int,
 attr_11 nvarchar(max),
 attr_356 nvarchar(max),
 attr_14 nvarchar(max),
 attr_15 nvarchar(max),
 attr_546 nvarchar(max),
  attr_6 nvarchar(max),
  attr_7 nvarchar(max),
  attr_8 nvarchar(max)
)
CREATE INDEX #IDX_TEMPFLATPROD ON #tempflatprod(product_id)
create table #temp_flats
(
 product_id int,
string_value nvarchar(max),
attribute_id int
)
CREATE INDEX #IDX_TEMP_FLATS on #temp_flats(product_id)

declare @stringv nvarchar(max)
declare @stringmv nvarchar(500)
declare @stringmt nvarchar(500)
declare @brandcheck nvarchar(50)
if(@CATALOG_ID=2)
set @brandcheck='B%'
else if(@CATALOG_ID=3)
set @brandcheck='%L%'
else if(@CATALOG_ID=4)
set @brandcheck='%C%'
else if(@CATALOG_ID=5)
set @brandcheck='%H%'
else if(@CATALOG_ID=8)
set @brandcheck='%M'

insert into #temp_flats SELECT PRODUCT_ID,STRING_VALUE,ATTRIBUTE_ID FROM TB_PROD_SPECS WITH (NOLOCK)  WHERE  PRODUCT_ID IN(SELECT PRODUCT_ID FROM TB_PROD_SPECS WITH (NOLOCK) WHERE PRODUCT_ID IN(SELECT PF.PRODUCT_ID FROM TB_PROD_FAMILY PF WITH (NOLOCK) WHERE  PF.FAMILY_ID=@FAMILY_ID )AND ATTRIBUTE_ID=252 AND STRING_VALUE IN(SELECT STRING_VALUE FROM TB_PROD_SPECS WITH (NOLOCK) WHERE  PRODUCT_ID=@PRODUCT_ID AND ATTRIBUTE_ID=252)) AND ATTRIBUTE_ID IN(SELECT ATTRIBUTE_ID FROM TBWC_PRODUCT_FACTORY_ATTRIBUTES WITH (NOLOCK))

if((select COUNT(*) from  #temp_flats)=0)
insert into #temp_flats SELECT PRODUCT_ID,STRING_VALUE,ATTRIBUTE_ID FROM TB_PROD_SPECS WITH (NOLOCK) WHERE  PRODUCT_ID IN(SELECT PRODUCT_ID FROM TB_PROD_SPECS WITH (NOLOCK) WHERE PRODUCT_ID IN(SELECT PF.PRODUCT_ID FROM TB_PROD_FAMILY PF WITH (NOLOCK) WHERE PF.FAMILY_ID=@FAMILY_ID )AND ATTRIBUTE_ID=267 AND STRING_VALUE IN(SELECT STRING_VALUE FROM TB_PROD_SPECS WITH (NOLOCK) WHERE  PRODUCT_ID=@PRODUCT_ID AND ATTRIBUTE_ID=267)) AND ATTRIBUTE_ID IN(SELECT ATTRIBUTE_ID FROM TBWC_PRODUCT_FACTORY_ATTRIBUTES WITH (NOLOCK))

delete #temp_flats where product_id not in(select distinct pf.PRODUCT_ID from #temp_flats pf WITH (NOLOCK),TB_PROD_SPECS ps WITH (NOLOCK) where pf.PRODUCT_ID=ps.PRODUCT_ID and ps.STRING_VALUE like @brandcheck and ps.attribute_id=546)

IF @TYPE=1
BEGIN 
--
set @stringv =(select top (1) string_value from TB_PROD_SPECS WITH (NOLOCK) where PRODUCT_ID=@PRODUCT_ID and ATTRIBUTE_ID in(Select ATTRIBUTE_ID from TBWC_SEARCH_TABLE_FIELDS WITH (NOLOCK) where CATALOG_ID=@CATALOG_ID))
--


delete #temp_flats where product_id not in(select distinct product_id from #temp_flats WITH (NOLOCK) where string_value =@stringv and ATTRIBUTE_ID in(Select ATTRIBUTE_ID from TBWC_SEARCH_TABLE_FIELDS WITH (NOLOCK) where CATALOG_ID=@CATALOG_ID))
if(@stringv='-')
begin
set @stringv =(select top (1) string_value from TB_PROD_SPECS WITH (NOLOCK) where PRODUCT_ID=@PRODUCT_ID and ATTRIBUTE_ID in(Select ATTRIBUTE_ID from TBWC_SEARCH_TABLE_FIELDS WITH (NOLOCK) where CATALOG_ID=@CATALOG_ID) and STRING_VALUE !=(select top (1) string_value from TB_PROD_SPECS WITH (NOLOCK) where PRODUCT_ID=@PRODUCT_ID and ATTRIBUTE_ID in(Select ATTRIBUTE_ID from TBWC_SEARCH_TABLE_FIELDS WITH (NOLOCK) where CATALOG_ID=@CATALOG_ID)))
delete #temp_flats where product_id not in(select distinct product_id from #temp_flats WITH (NOLOCK) where string_value =@stringv and ATTRIBUTE_ID in(Select ATTRIBUTE_ID from TBWC_SEARCH_TABLE_FIELDS WITH (NOLOCK) where CATALOG_ID=@CATALOG_ID))
end
set @stringmv =(select string_value from TB_PROD_SPECS WITH (NOLOCK) where PRODUCT_ID=@PRODUCT_ID and ATTRIBUTE_ID =176)
if(len(@stringmv)>0)
begin
delete #temp_flats where product_id not in(select distinct ps.PRODUCT_ID from #temp_flats ft WITH (NOLOCK),TB_PROD_SPECS ps WITH (NOLOCK) where ft.product_id=ps.PRODUCT_ID and ps.string_value =@stringmv and ps.ATTRIBUTE_ID =176)
end
set @stringmt =(select string_value from TB_PROD_SPECS WITH (NOLOCK) where PRODUCT_ID=@PRODUCT_ID and ATTRIBUTE_ID =354)
if(len(@stringmt)>0)
begin
delete #temp_flats where product_id not in(select distinct ps.PRODUCT_ID from #temp_flats ft WITH (NOLOCK),TB_PROD_SPECS ps WITH (NOLOCK) where ft.product_id=ps.PRODUCT_ID and ps.string_value =@stringmt and ps.ATTRIBUTE_ID =354)
end
END

declare @productid int 
declare @string_value nvarchar(max)
declare @attribute_id int 	
declare @sqlstr nvarchar(max)
declare  flat_cursor cursor for select f.product_id,f.string_value,f.attribute_id from #temp_flats f WITH (NOLOCK),TBWC_PRODUCT_FACTORY_ATTRIBUTES  fa WITH (NOLOCK) where fa.attribute_id=f.attribute_id and fa.sort_order>0 order by product_id
 OPEN  flat_cursor
FETCH NEXT FROM flat_cursor INTO @productid,@string_value,@attribute_id 
WHILE @@FETCH_STATUS = 0 		
BEGIN	
if((select count(*) from #tempflatprod where product_id=@productid)=0)
insert into #tempflatprod(product_id)values(@productid)
set @sqlstr='update #tempflatprod set attr_'+convert(nvarchar(100),@attribute_id)+'='''+REPLACE(@string_value,'''','''''')+''' where product_id='+convert(nvarchar(100),@productid)
exec(@sqlstr)
FETCH NEXT FROM flat_cursor INTO @productid,@string_value,@attribute_id 	
end
close  flat_cursor
DEALLOCATE flat_cursor 

     select product_id,attr_11,attr_356,attr_14,attr_15,attr_6,attr_7,attr_8 from #tempflatprod WITH (NOLOCK) order by product_id
 
drop table #temp_flats
drop table #tempflatprod
END
GO
/****** Object:  StoredProcedure [dbo].[STP_GET_CATEGORY_PRODUCTS]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_GET_CATEGORY_PRODUCTS] (@CATALOG_ATTRIBUTE NVARCHAR(100),@CATEGORY_ID NVARCHAR(MAX),@CATALOG_ID INT,@REC_PER_PG INT,@PG_NO INT,@family_id nvarchar(max),@SESSION nvarchar(max)) 
AS
BEGIN
declare @attribute_id int
declare @sqlstr nvarchar(max)
CREATE TABLE #TEMP_GETPRODUCT
(
 ROWNUM INT IDENTITY,
 PRODUCT_ID INT
)
CREATE INDEX #IDX_TEMP_GETPRODUCT ON #TEMP_GETPRODUCT(PRODUCT_ID)

CREATE TABLE #temprecords
(
 PRODUCT_ID INT
)

CREATE INDEX #IDX_TEMP_RECORDS ON #TEMPRECORDS(PRODUCT_ID)

exec('INSERT INTO #temprecords SELECT DISTINCT PRODUCT_ID FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID=546 AND STRING_VALUE LIKE '''+ @CATALOG_ATTRIBUTE+''' AND
PRODUCT_ID IN(select distinct pl.PRODUCT_ID from TBWC_CATALOG_SCRIPTING_KEYS sk,TB_CATALOG_FAMILY cf,TB_PROD_FAMILY pf,TBWC_PRODUCT_LOOKUP pl
 where sk.FAMILY_ID=cf.FAMILY_ID and cf.FAMILY_ID =pf.FAMILY_ID and pf.PRODUCT_ID= pl.PRODUCT_ID and cf.CATALOG_ID='+@CATALOG_ID+' and pl.CATALOG_ID='+@CATALOG_ID+' and sk.CATEGORY_ID in ('+@CATEGORY_ID+') and sk.FAMILY_TYPE=''M'')')

insert into #TEMP_GETPRODUCT select distinct product_id from #temprecords

DELETE TBWC_SEARCH_PROD_LIST WHERE USER_SESSION_ID=@SESSION
INSERT INTO TBWC_SEARCH_PROD_LIST SELECT PRODUCT_ID,@SESSION FROM #TEMP_GETPRODUCT WITH(NOLOCK)
SELECT DISTINCT PRODUCT_ID FROM #TEMP_GETPRODUCT T WITH(NOLOCK) WHERE T.ROWNUM>=((@REC_PER_PG*(@PG_NO-1))+1) AND T.ROWNUM<=(@REC_PER_PG*(@PG_NO))
SELECT COUNT(*) AS PROD_COUNT FROM #TEMP_GETPRODUCT
END
--EXEC STP_GET_CATEGORY_PRODUCTS 'B%',N'''HC068''',2,10,1,N'0,286,287,288,289',N'sfun0t30lw14yx5555fr53mr'
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_SubFamilySortOrder]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_SubFamilySortOrder] (@NEWSORTORDER INT ,@subFAMILYID INT , @familyid int  )
AS 
BEGIN /*--START*/
DECLARE  @OLDSORTORDER INT 
DECLARE @TsortOrder int 
 DECLARE @TSUBFAMID INT 
DECLARE @sQL VARCHAR(1000) 

	SET @OLDSORTORDER= (SELECT SORT_ORDER FROM TB_SUBFAMILY  WHERE SUBFAMILY_ID = @subFAMILYID)
	print 'subfamilyid '
		print @OLDSORTORDER
print @NEWSORTORDER
	IF (@OLDSORTORDER <> @NEWSORTORDER)
	BEGIN /*--IF */
		
		IF (@OLDSORTORDER < @NEWSORTORDER)
		BEGIN /*--SORT*/
				print '1st conditon '
			SELECT SORT_ORDER , SUBFAMILY_ID  INTO #TEMP2 FROM TB_SUBFAMILY WHERE SORT_ORDER > @OLDSORTORDER   AND  SORT_ORDER <= @NEWSORTORDER AND  FAMILY_ID = @familyid
			UPDATE TB_SUBFAMILY SET SORT_ORDER = @NEWSORTORDER WHERE SUBFAMILY_ID = @subFAMILYID
			DECLARE  CurSort CURSOR FOR 
			SELECT  SORT_ORDER , SUBFAMILY_ID FROM #TEMP2
			OPEN  CurSort
			FETCH NEXT FROM CurSort INTO @TsortOrder , @TSUBFAMID
			WHILE @@FETCH_STATUS = 0
				BEGIN 
					UPDATE  TB_SUBFAMILY SET SORT_ORDER = SORT_ORDER-1  WHERE SUBFAMILY_ID = @TSUBFAMID
					FETCH NEXT FROM CurSort INTO @TsortOrder, @TSUBFAMID
				END
			CLOSE CurSort
			DEALLOCATE CurSort
		END /*--- SORT  */
		
		ELSE
		BEGIN /*--ELSE*/
			print '2 nd  conditon '
			SELECT SORT_ORDER , SUBFAMILY_ID  INTO #temp3 FROM TB_SUBFAMILY WHERE SORT_ORDER >= @NEWSORTORDER AND SORT_ORDER < @OLDSORTORDER AND   FAMILY_ID = @familyid
			UPDATE TB_SUBFAMILY SET SORT_ORDER = @NEWSORTORDER WHERE SUBFAMILY_ID = @subFAMILYID
			DECLARE  CurSort CURSOR FOR 
			SELECT  SORT_ORDER , SUBFAMILY_ID FROM #temp3
			OPEN CurSort
			FETCH NEXT FROM CurSort INTO @TsortOrder , @TSUBFAMID 
			WHILE @@FETCH_STATUS = 0
				BEGIN 
					UPDATE  TB_SUBFAMILY SET SORT_ORDER = SORT_ORDER+1  WHERE SUBFAMILY_ID = @TSUBFAMID
					FETCH NEXT FROM CurSort INTO @TsortOrder , @TSUBFAMID 
				END
			CLOSE CurSort
			DEALLOCATE CurSort
		END/* --ELSE 	*/
		
	END  /*--IF */

END /*--END */
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_Remove]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_Remove]
@CATALOGID nvarchar(50),
@CATEGORYID NVARCHAR(50), 
@FAMILYID nvarchar(50),
@PRODUCTID NVARCHAR(50),
@ATTRIBUTEID NVARCHAR(50), 
@REFSTR NVARCHAR(50),
@REF_NEW_NAME nvarchar(50),
@REFRMVPMNT_OPTION int,
@REMOPTION INT,
@REFINT INT OUTPUT 
AS 
BEGIN 


/*-----------REMOVAL OF PRODUCT-------------------*/

IF (@REFSTR = 'PRODUCT')
BEGIN

IF EXISTS (SELECT PRODUCT_ID FROM TB_PRODUCT WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT))
BEGIN

/*--------PARTIAL REMOVAL OF PRODUCT--------*/

IF (@REMOPTION = 0) 
BEGIN

DELETE FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID = CAST(@CATALOGID AS INT) AND PRODUCT_ID = CAST(@PRODUCTID AS INT)
/*DELETE FROM TB_PROD_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT) AND PRODUCT_ID = CAST(@PRODUCTID AS INT)

DELETE FROM TB_PARTS_KEY WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT) AND FAMILY_ID = CAST(@FAMILYID AS INT)

CURSOR FOR PROD_FAMILY_SORT


DECLARE @NFAMILYID INT
DECLARE @NPRODUCTID INT
DECLARE @NEW_SORT_ORDER INT
SET @NEW_SORT_ORDER = 1

DECLARE PROD_FAMILY_SORT_CUR CURSOR FOR 

SELECT FAMILY_ID, PRODUCT_ID FROM TB_PROD_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT) ORDER BY SORT_ORDER

OPEN PROD_FAMILY_SORT_CUR 

FETCH NEXT FROM PROD_FAMILY_SORT_CUR INTO @NFAMILYID, @NPRODUCTID

WHILE (@@FETCH_STATUS = 0)

BEGIN

UPDATE TB_PROD_FAMILY SET SORT_ORDER = @NEW_SORT_ORDER WHERE FAMILY_ID = @NFAMILYID AND PRODUCT_ID = @NPRODUCTID 

SET @NEW_SORT_ORDER = @NEW_SORT_ORDER + 1 

FETCH NEXT FROM PROD_FAMILY_SORT_CUR INTO @NFAMILYID, @NPRODUCTID

END

CLOSE PROD_FAMILY_SORT_CUR

DEALLOCATE PROD_FAMILY_SORT_CUR

END OF PROD_FAMILY_SORT_ORDER*/

SET @REFINT = 0
RETURN @REFINT

END /* END OF RPRODUCT_OPTION - 0 */


/*------TO REMOVE PRODUCT COMPLETELY----------*/

IF (@REMOPTION = 1)
BEGIN

IF (@REFRMVPMNT_OPTION = 1)
BEGIN

IF NOT EXISTS (SELECT CATEGORY_ID, PRODUCT_ID FROM TB_PRODUCT WHERE CATEGORY_ID = @REF_NEW_NAME AND PRODUCT_ID = CAST(@PRODUCTID AS INT))
BEGIN

UPDATE TB_PRODUCT SET CATEGORY_ID = @REF_NEW_NAME WHERE CATEGORY_ID =  @CATEGORYID AND PRODUCT_ID = CAST(@PRODUCTID AS INT)
DELETE FROM TB_CATALOG_PRODUCT WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT) AND CATALOG_ID<>1
DELETE FROM TB_PROD_FAMILY WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)
DELETE FROM TB_PROD_SPECS WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)
DELETE FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT) 
DELETE FROM TB_PRODUCT_KIT WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)
DELETE FROM TB_PARTS_KEY WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT) AND FAMILY_ID = CAST(@FAMILYID AS INT)
DELETE FROM TB_CAMPAIGN_DETAILS WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)

SET @REFINT = 0
RETURN @REFINT

END  

END /*END OF RMVPMNT OPTION 1 */

IF (@REFRMVPMNT_OPTION = 0)

BEGIN

DELETE FROM TB_PROD_SPECS WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)
DELETE FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT) 
DELETE FROM TB_PROD_FAMILY WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT) 
DELETE FROM TB_CATALOG_PRODUCT WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)
DELETE FROM TB_PRODUCT_KIT WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)
DELETE FROM TB_PARTS_KEY WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)
DELETE FROM TB_CAMPAIGN_DETAILS WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)

IF NOT EXISTS ((SELECT PRODUCT_ID FROM TB_PROD_SPECS WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)) UNION 
(SELECT PRODUCT_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT))UNION
(SELECT PRODUCT_ID FROM TB_PROD_FAMILY WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT))UNION
(SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT))UNION
(SELECT PRODUCT_ID FROM TB_PRODUCT_KIT WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)) UNION
(SELECT PRODUCT_ID FROM TB_PARTS_KEY WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)) UNION 
(SELECT PRODUCT_ID FROM TB_CAMPAIGN_DETAILS WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)))

BEGIN

DELETE FROM TB_PRODUCT WHERE PRODUCT_ID = CAST(@PRODUCTID AS INT)

SET @REFINT = 0
RETURN @REFINT

END 
END /* END OF RMVPMNT OPTION 0 */



END /* END OF OPTION 1 */


END /* END OF PRODUCT EXISTENCE */ 

ELSE
SET @REFINT = -1000
RETURN @REFINT

END /*END OF PRODUCT*/

/*--------------- FOR FAMILY REMOVAL------------------*/

IF (@REFSTR = 'FAMILY')
BEGIN

IF EXISTS (SELECT FAMILY_ID FROM TB_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT))
BEGIN


/*--------FOR PARTIAL REMOVAL OF FAMILY-------------*/
IF (@REMOPTION = 0)
BEGIN

DELETE FROM TB_CATALOG_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT) AND CATALOG_ID = CAST(@CATALOGID AS INT)
DELETE FROM TB_FAMILY_TABLE_STRUCTURE WHERE FAMILY_ID = CAST(@FAMILYID AS INT) AND CATALOG_ID = CAST(@CATALOGID AS INT)
/*DELETE FROM TB_SUBFAMILY WHERE SUBFAMILY_ID = CAST(@FAMILYID AS INT)
UPDATE TB_FAMILY SET PARENT_FAMILY_ID = 0 WHERE FAMILY_ID = CAST(@FAMILYID AS INT)
UPDATE TB_FAMILY SET ROOT_FAMILY = 1 WHERE FAMILY_ID = CAST(@FAMILYID AS INT)*/

IF NOT EXISTS (SELECT CP.CATALOG_ID, CP.PRODUCT_ID FROM TB_CATALOG C, TB_CATALOG_PRODUCT CP, TB_FAMILY F, TB_PROD_FAMILY PF 
WHERE F.FAMILY_ID = CAST(@FAMILYID AS INT) AND
F.FAMILY_ID = PF.FAMILY_ID AND
CP.CATALOG_ID <> @CATALOGID AND 
CP.PRODUCT_ID = PF.PRODUCT_ID AND 
C.CATALOG_ID = CP.CATALOG_ID AND
C.CATALOG_ID <> 1)

BEGIN

DECLARE @REFPRODFAMILYID INT
DECLARE @REFCATALOGID INT
DECLARE @PROD_CNT INT
DECLARE @PRD INT
SET @PRD = 0

DECLARE PRODFAMILY_CURSOR CURSOR FOR (SELECT CP.CATALOG_ID, CP.PRODUCT_ID FROM TB_CATALOG C, TB_CATALOG_PRODUCT CP, TB_FAMILY F, TB_PROD_FAMILY PF 
WHERE F.FAMILY_ID = CAST(@FAMILYID AS INT) AND
F.FAMILY_ID = PF.FAMILY_ID AND
CP.CATALOG_ID = @CATALOGID AND 
CP.PRODUCT_ID = PF.PRODUCT_ID AND 
C.CATALOG_ID = CP.CATALOG_ID AND
C.CATALOG_ID <> 1)

OPEN PRODFAMILY_CURSOR

FETCH NEXT FROM PRODFAMILY_CURSOR INTO @REFCATALOGID, @REFPRODFAMILYID

WHILE (@@FETCH_STATUS = 0)
BEGIN

SET @PROD_CNT = (SELECT COUNT (FAMILY_ID) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @REFCATALOGID AND FAMILY_ID IN (SELECT FAMILY_ID FROM TB_PROD_FAMILY WHERE PRODUCT_ID = @REFPRODFAMILYID ))

IF (@PROD_CNT > 1)
BEGIN

SET @PRD = @PRD + 1

END /*END OF CATALOG_PRODUCT REMOVAL*/


FETCH NEXT FROM PRODFAMILY_CURSOR INTO @REFCATALOGID, @REFPRODFAMILYID

END /* END OF PROD_FAMILY_REMOVAL CURSOR*/ 

CLOSE PRODFAMILY_CURSOR
DEALLOCATE PRODFAMILY_CURSOR

IF (@PRD = 1)
BEGIN
DELETE FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID = @REFCATALOGID AND PRODUCT_ID = @REFPRODFAMILYID AND CATALOG_ID <> 1
END

SET @REFINT = 0
RETURN @REFINT

END /*END OF PROD_FAMILY REMOVAL */



END /* END OF FAMILY OPTION 0 */

/*-----TO REMOVE FAMILY COMPLETELY-----------*/

IF (@REMOPTION = 1)
BEGIN

IF (@REFRMVPMNT_OPTION = 1)
BEGIN

IF NOT EXISTS (SELECT CATEGORY_ID, FAMILY_ID FROM TB_FAMILY WHERE CATEGORY_ID =  @REF_NEW_NAME AND FAMILY_ID = CAST(@FAMILYID AS INT))
BEGIN

UPDATE TB_FAMILY SET CATEGORY_ID = @REF_NEW_NAME WHERE CATEGORY_ID = @CATEGORYID AND FAMILY_ID = CAST(@FAMILYID AS INT)
UPDATE TB_CATALOG_FAMILY SET CATEGORY_ID = @REF_NEW_NAME WHERE CATEGORY_ID = @CATEGORYID AND FAMILY_ID = CAST(@FAMILYID AS INT) AND CATALOG_ID = 1
DELETE FROM TB_SUBFAMILY WHERE SUBFAMILY_ID = CAST(@FAMILYID AS INT)
DELETE FROM TB_CATALOG_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT) AND CATALOG_ID <> 1
DELETE FROM TB_FAMILY_TABLE_STRUCTURE WHERE FAMILY_ID = CAST(@FAMILYID AS INT) AND CATALOG_ID <> 1
DELETE FROM TB_FAMILY_SPECS WHERE FAMILY_ID = CAST(@FAMILYID AS INT) 
DELETE FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = CAST(@FAMILYID AS INT) 
DELETE FROM TB_PARTS_KEY WHERE FAMILY_ID = CAST(@FAMILYID AS INT)
DELETE FROM TB_PROJECT_SECTION_DETAILS WHERE FAMILY_ID = CAST(@FAMILYID AS INT)

SET @REFINT = 0
RETURN @REFINT

END 

END /*-----END OF RMVPNTOPTION 1 ------*/

IF (@REFRMVPMNT_OPTION = 0)
BEGIN

DELETE FROM TB_SUBFAMILY WHERE SUBFAMILY_ID = CAST(@FAMILYID AS INT)
DELETE FROM TB_FAMILY_SPECS WHERE FAMILY_ID = CAST(@FAMILYID AS INT) 
DELETE FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = CAST(@FAMILYID AS INT) 
DELETE FROM TB_PROD_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT)
DELETE FROM TB_PARTS_KEY WHERE FAMILY_ID = CAST(@FAMILYID AS INT)
DELETE FROM TB_PROJECT_SECTION_DETAILS WHERE FAMILY_ID = CAST(@FAMILYID AS INT)
DELETE FROM TB_CATALOG_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT)
DELETE FROM TB_FAMILY_TABLE_STRUCTURE WHERE FAMILY_ID = CAST(@FAMILYID AS INT)
UPDATE TB_FAMILY SET PARENT_FAMILY_ID = 0 WHERE PARENT_FAMILY_ID = CAST(@FAMILYID AS INT)

IF NOT EXISTS ((SELECT FAMILY_ID FROM TB_SUBFAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT))UNION
(SELECT FAMILY_ID FROM TB_FAMILY_SPECS WHERE FAMILY_ID = CAST(@FAMILYID AS INT))UNION
(SELECT FAMILY_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = CAST(@FAMILYID AS INT))UNION
(SELECT FAMILY_ID FROM TB_PROD_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT))UNION
(SELECT FAMILY_ID FROM TB_CATALOG_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT))UNION
(SELECT FAMILY_ID FROM TB_FAMILY_TABLE_STRUCTURE WHERE FAMILY_ID=CAST(@FAMILYID AS INT))UNION
(SELECT FAMILY_ID FROM TB_PARTS_KEY WHERE FAMILY_ID = CAST(@FAMILYID AS INT))UNION
(SELECT FAMILY_ID FROM TB_PROJECT_SECTION_DETAILS WHERE FAMILY_ID = CAST(@FAMILYID AS INT)))
BEGIN

DELETE FROM TB_FAMILY WHERE FAMILY_ID = CAST(@FAMILYID AS INT)

SET @REFINT = 0
RETURN @REFINT

END  


END /* END OF  OPTION RMVPMNT OPTION O */

END /* END OF OPTION 1 */

END /* END OF FAMILY EXISTENCE */

ELSE
SET @REFINT = -1000
RETURN @REFINT

END /* END OF FAMILY OPTION */


/*-------REMOVAL OF CATEGORY-----------*/

IF (@REFSTR = 'CATEGORY')
BEGIN
IF EXISTS (SELECT CATEGORY_ID FROM TB_CATEGORY WHERE CATEGORY_ID = @CATEGORYID)
BEGIN

/*----FOR PARTIAL REMOVAL OF CATEGORY--------*/

IF (@REMOPTION = 0)
BEGIN

DELETE FROM TB_CATALOG_SECTIONS WHERE CATEGORY_ID = @CATEGORYID AND CATALOG_ID = CAST(@CATALOGID AS INT)
DELETE FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID = @CATEGORYID AND CATALOG_ID = CAST(@CATALOGID AS INT)
SET @REFINT = 0
RETURN @REFINT

END /* END OF OPTION 0 */

IF (@REMOPTION = 1)
BEGIN

IF (@REFRMVPMNT_OPTION = 1)
BEGIN

IF NOT EXISTS ((SELECT CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATEGORY_ID = @CATEGORYID AND CATALOG_ID = 1) UNION 
(SELECT CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID = @CATEGORYID AND CATALOG_ID = 1))
BEGIN

SET @REFINT = 0
RETURN @REFINT

END /*END OF UPDATE*/

UPDATE TB_CATEGORY SET PARENT_CATEGORY = @REF_NEW_NAME WHERE CATEGORY_ID = @CATEGORYID
DELETE FROM TB_CATALOG_SECTIONS WHERE CATEGORY_ID = @CATEGORYID AND CATALOG_ID <> 1

SET @REFINT = 0
RETURN @REFINT


END /*-----END OF RMVPNTOPTION 1 ------*/

IF (@REFRMVPMNT_OPTION = 0)
BEGIN

DELETE FROM TB_CATALOG_SECTIONS WHERE CATEGORY_ID = @CATEGORYID
DELETE FROM TB_FAMILY WHERE CATEGORY_ID = @CATEGORYID
DELETE FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID = @CATEGORYID
UPDATE TB_PRODUCT SET CATEGORY_ID=F.CATEGORY_ID FROM TB_FAMILY F,TB_PROD_FAMILY PF WHERE TB_PRODUCT.CATEGORY_ID=@CATEGORYID AND TB_PRODUCT.PRODUCT_ID=PF.PRODUCT_ID AND F.FAMILY_ID=PF.FAMILY_ID
DELETE FROM TB_PRODUCT WHERE CATEGORY_ID = @CATEGORYID

IF NOT EXISTS ((SELECT CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATEGORY_ID = @CATEGORYID) UNION
(SELECT CATEGORY_ID FROM TB_FAMILY WHERE CATEGORY_ID = @CATEGORYID) UNION 
(SELECT CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID = @CATEGORYID) UNION
(SELECT CATEGORY_ID FROM TB_PRODUCT WHERE CATEGORY_ID = @CATEGORYID))

BEGIN

DELETE FROM TB_CATEGORY WHERE CATEGORY_ID = @CATEGORYID
SET @REFINT = 0
RETURN @REFINT

END 
END /* END OF RMVPMNT OPTION 0 */

END /* END OF OPTION 1 */

END /* END OF CATEGORY EXISTENCE */ 

ELSE
SET @REFINT = -1000
RETURN @REFINT

END /* END OF CATEGORY OPTION */

/*-------REMOVAL OF ATTRIBUTE---------*/

IF (@REFSTR = 'ATTRIBUTE')
BEGIN

IF EXISTS (SELECT ATTRIBUTE_ID FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT))
BEGIN

/*------FOR PARTIAL REMOVAL OF ATTRIBUTE----------*/

IF (@REMOPTION = 0)
BEGIN

IF EXISTS (SELECT ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT) AND CATALOG_ID = CAST(@CATALOGID AS INT))

BEGIN

DELETE FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT) AND CATALOG_ID = CAST(@CATALOGID AS INT)


SET @REFINT = 0
RETURN @REFINT

END 

END /* END OF OPTION 0 */

/*------FOR COMPLETE REMOVAL OF ATTRIBUTE--------*/

IF (@REMOPTION = 1)
BEGIN

DELETE FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT) 
DELETE FROM TB_FAMILY_SPECS WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT)
DELETE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT)
DELETE FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT) 
DELETE FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT)
DELETE FROM TB_READONLY_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT)

IF NOT EXISTS ((SELECT ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT)) UNION
(SELECT ATTRIBUTE_ID FROM TB_FAMILY_SPECS WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT))UNION 
(SELECT ATTRIBUTE_ID FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT))UNION
(SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT))UNION
(SELECT ATTRIBUTE_ID FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT))UNION
(SELECT ATTRIBUTE_ID FROM TB_READONLY_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT)))
BEGIN

DELETE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = CAST(@ATTRIBUTEID AS INT)
SET @REFINT = 0
RETURN @REFINT

END /* END OF OPTION 1 TB_ATTRIBUTE */

END /* END OT OPTION 1 */

END /* END OF ATTRIBUTE EXISTENCE */

ELSE
SET @REFINT = -1000
RETURN @REFINT

END /* END OF ATTRIBUTE OPTION  */

/*CATALOG REMOVAL OPTION */
IF (@REFSTR = 'CATALOG')
BEGIN
IF EXISTS ((SELECT CATALOG_ID FROM TB_CATALOG WHERE CATALOG_ID = CAST(@CATALOGID AS INT) AND CATALOG_ID <> 1)UNION
(SELECT CATALOG_ID FROM TB_PROJECT WHERE CATALOG_ID = CAST(@CATALOGID AS INT) AND CATALOG_ID <> 1))

BEGIN
IF (@REMOPTION = 0)

BEGIN

DELETE FROM TB_PROJECT WHERE CATALOG_ID = CAST(@CATALOGID AS INT)
DELETE FROM TB_CATALOG WHERE CATALOG_ID = CAST(@CATALOGID AS INT)

SET @REFINT = 0
RETURN @REFINT

END /*END OF CATALOG RMVOPTION 0*/

IF (@REMOPTION = 1)
BEGIN

IF NOT EXISTS ((SELECT CATALOG_ID FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID <> CAST(@CATALOGID AS INT) AND CATALOG_ID <> 1) UNION
(SELECT CATALOG_ID FROM TB_CATALOG_FAMILY WHERE CATALOG_ID <> CAST(@CATALOGID AS INT) AND CATALOG_ID <> 1) UNION
(SELECT CATALOG_ID FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID <> CAST(@CATALOGID AS INT) AND CATALOG_ID <> 1) UNION
(SELECT CATALOG_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID <> CAST(@CATALOGID AS INT) AND CATALOG_ID <> 1))

BEGIN

DELETE FROM TB_PROJECT
DELETE FROM TB_CATALOG
DELETE FROM TB_CATEGORY
DELETE FROM TB_FAMILY
DELETE FROM TB_PRODUCT
DELETE FROM TB_ATTRIBUTE 

SET @REFINT = 0
RETURN @REFINT

END  /*END OF ASSOCIATIONS EXISTENCE IN OTHER CATALOGS*/

ELSE

SET @REFINT = -100
RETURN @REFINT


END /*END OF RMVOPTION 1*/

END /*END OF CATALOG EXISTEVNCE OPTION*/
END /*END OF CATALOG REMOVAL OPTION*/

ELSE
SET @REFINT = -1000
RETURN @REFINT

END /*END OF STP_CATALOGSTUDIO5_REMOVE*/
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_RemovalSelect]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_RemovalSelect]
@CATALOG_ID nvarchar(50),
@CATEID NVARCHAR(50),
@REFSTR NVARCHAR(10),
@RMVTYPE int,
@RC int OUTPUT
AS

BEGIN

IF (@REFSTR = 'PRODUCT')
BEGIN
IF EXISTS ((SELECT PRODUCT_ID FROM TB_PRODUCT WHERE PRODUCT_ID = CAST(@CATEID AS INT)) INTERSECT 
(SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE PRODUCT_ID = CAST(@CATEID AS INT) AND CATALOG_ID <> 1))

BEGIN
IF EXISTS ((SELECT PRODUCT_ID FROM TB_PROD_SPECS WHERE PRODUCT_ID = CAST(@CATEID AS INT)) UNION 
(SELECT PRODUCT_ID FROM TB_PRODUCT_KIT WHERE PRODUCT_ID = CAST(@CATEID AS INT)) UNION
(SELECT PRODUCT_ID FROM TB_PROD_FAMILY WHERE PRODUCT_ID = CAST(@CATEID AS INT))UNION
(SELECT PRODUCT_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID = CAST(@CATEID AS INT))UNION
(SELECT PRODUCT_ID FROM TB_PARTS_KEY WHERE PRODUCT_ID = CAST(@CATEID AS INT)) UNION 
(SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE PRODUCT_ID = CAST(@CATEID AS INT)))
BEGIN

SELECT 0 AS [Select], C.CATALOG_NAME AS [Catalog], CG.CATEGORY_NAME AS [Category] , 
F.FAMILY_NAME AS [Family], C.CATALOG_ID, CG.CATEGORY_ID, F.FAMILY_ID, P.PRODUCT_ID FROM
 TB_FAMILY F, TB_PRODUCT P, TB_PROD_FAMILY PF, TB_CATALOG C, TB_CATEGORY CG, 
TB_CATALOG_SECTIONS CS, TB_PROD_SPECS PS, TB_CATALOG_FAMILY CF WHERE 
CF.CATALOG_ID = C.CATALOG_ID AND
CF.FAMILY_ID = F.FAMILY_ID AND
C.CATALOG_ID = CS.CATALOG_ID AND
CS.CATEGORY_ID = CG.CATEGORY_ID AND
F.CATEGORY_ID = CG.CATEGORY_ID AND
F.FAMILY_ID = PF.FAMILY_ID AND 
P.PRODUCT_ID = PF.PRODUCT_ID AND
PS.PRODUCT_ID = P.PRODUCT_ID AND
PS.ATTRIBUTE_ID = 1 AND
P.PRODUCT_ID = @CATEID AND 
C.CATALOG_ID <> CAST(@RMVTYPE AS INT) AND 
C.CATALOG_ID <> 1 ORDER BY C.CATALOG_NAME



SET @RC = @@ROWCOUNT
RETURN @RC

END

ELSE
SET @RC = -100
RETURN @RC

END

ELSE IF EXISTS ((SELECT PRODUCT_ID FROM TB_PRODUCT WHERE PRODUCT_ID = CAST(@CATEID AS INT)) INTERSECT 
(SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE PRODUCT_ID = CAST(@CATEID AS INT) AND CATALOG_ID = 1))

BEGIN

SELECT 0 AS [Select], C.CATALOG_NAME AS [Catalog], CG.CATEGORY_NAME AS [Category] , 
F.FAMILY_NAME AS [Family], C.CATALOG_ID, CG.CATEGORY_ID, F.FAMILY_ID, P.PRODUCT_ID FROM
 TB_FAMILY F, TB_PRODUCT P, TB_PROD_FAMILY PF, TB_CATALOG C, TB_CATEGORY CG, 
TB_CATALOG_SECTIONS CS, TB_PROD_SPECS PS WHERE 
C.CATALOG_ID = CS.CATALOG_ID AND
CS.CATEGORY_ID = CG.CATEGORY_ID AND
F.CATEGORY_ID = CG.CATEGORY_ID AND
F.FAMILY_ID = PF.FAMILY_ID AND 
P.PRODUCT_ID = PF.PRODUCT_ID AND
PS.PRODUCT_ID = P.PRODUCT_ID AND
PS.ATTRIBUTE_ID = 1 AND
P.PRODUCT_ID = @CATEID AND 
C.CATALOG_ID = 1 ORDER BY C.CATALOG_NAME

SET @RC = @@ROWCOUNT

END /*END OF MASTER CATALOG EXISTENCE*/



ELSE
SET @RC = -1000
RETURN @RC

END

IF (@REFSTR = 'FAMILY')
BEGIN
IF EXISTS ((SELECT FAMILY_ID FROM TB_FAMILY WHERE FAMILY_ID = CAST(@CATEID AS INT)) INTERSECT
(SELECT FAMILY_ID FROM TB_CATALOG_FAMILY WHERE FAMILY_ID = CAST(@CATEID AS INT) AND CATALOG_ID <> 1))

BEGIN
IF EXISTS((SELECT FAMILY_ID FROM TB_SUBFAMILY)UNION
(SELECT FAMILY_ID FROM TB_FAMILY_SPECS WHERE FAMILY_ID = CAST(@CATEID AS INT)) UNION
(SELECT FAMILY_ID FROM TB_CATALOG_FAMILY WHERE FAMILY_ID = CAST(@CATEID AS INT)) UNION
(SELECT FAMILY_ID FROM TB_PROD_FAMILY WHERE FAMILY_ID = CAST(@CATEID AS INT)))
BEGIN

SELECT 0 AS [Select], C.CATALOG_NAME AS [Catalog], C.CATALOG_ID, CG.CATEGORY_ID, F.FAMILY_ID FROM TB_FAMILY F, TB_CATALOG C, TB_CATEGORY CG, TB_CATALOG_SECTIONS CS, TB_CATALOG_FAMILY CF WHERE 
C.CATALOG_ID = CS.CATALOG_ID AND 
C.CATALOG_ID  = CF.CATALOG_ID AND
CS.CATEGORY_ID = CG.CATEGORY_ID AND
F.CATEGORY_ID = CG.CATEGORY_ID AND
CG.CATEGORY_ID = CF.CATEGORY_ID AND
F.FAMILY_ID = CF.FAMILY_ID AND
F.FAMILY_ID = CAST(@CATEID AS INT) AND 
C.CATALOG_ID <> CAST(@RMVTYPE AS INT) AND 
C.CATALOG_ID <> 1  ORDER BY C.CATALOG_NAME


SET @RC = @@ROWCOUNT

 
END

ELSE
SET @RC = -100
END

ELSE IF EXISTS ((SELECT FAMILY_ID FROM TB_FAMILY WHERE FAMILY_ID = CAST(@CATEID AS INT)) INTERSECT
(SELECT FAMILY_ID FROM TB_CATALOG_FAMILY WHERE FAMILY_ID = CAST(@CATEID AS INT) AND CATALOG_ID = 1))

BEGIN

SELECT 0 AS [Select], C.CATALOG_NAME AS [Catalog], C.CATALOG_ID, CG.CATEGORY_ID, F.FAMILY_ID FROM TB_FAMILY F, TB_CATALOG C, TB_CATEGORY CG, TB_CATALOG_SECTIONS CS, TB_CATALOG_FAMILY CF WHERE 
C.CATALOG_ID = CS.CATALOG_ID AND 
C.CATALOG_ID  = CF.CATALOG_ID AND
CS.CATEGORY_ID = CG.CATEGORY_ID AND
F.CATEGORY_ID = CG.CATEGORY_ID AND
CG.CATEGORY_ID = CF.CATEGORY_ID AND
F.FAMILY_ID = CF.FAMILY_ID AND
F.FAMILY_ID = CAST(@CATEID AS INT) AND 
C.CATALOG_ID = 1  ORDER BY C.CATALOG_NAME

SET @RC = @@ROWCOUNT

END /*END OF MASTER CATALOG EXISTENCE*/

ELSE
SET @RC = -1000


END

IF (@REFSTR = 'CATEGORY')
BEGIN
IF EXISTS ((SELECT CATEGORY_ID FROM TB_CATEGORY WHERE CATEGORY_ID = @CATEID) INTERSECT 
(SELECT CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATEGORY_ID = @CATEID AND CATALOG_ID <> 1))

BEGIN
IF EXISTS ((SELECT CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATEGORY_ID = @CATEID) UNION
(SELECT CATEGORY_ID FROM TB_FAMILY WHERE CATEGORY_ID = @CATEID) UNION 
(SELECT CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID = @CATEID) UNION
(SELECT CATEGORY_ID FROM TB_PRODUCT WHERE CATEGORY_ID = @CATEID))

BEGIN

SELECT 0  AS [Select],C.CATALOG_NAME AS [Catalog], C.CATALOG_ID, CG.CATEGORY_ID FROM TB_CATEGORY CG, TB_CATALOG C, TB_CATALOG_SECTIONS CS WHERE 
C.CATALOG_ID = CS.CATALOG_ID AND 
CS.CATEGORY_ID = CG.CATEGORY_ID AND
CS.CATEGORY_ID =  @CATEID AND 
C.CATALOG_ID <> CAST(@RMVTYPE AS INT) AND 
C.CATALOG_ID <> 1

SET @RC = @@ROWCOUNT

END

ELSE

SET @RC = -100

END

ELSE IF EXISTS ((SELECT CATEGORY_ID FROM TB_CATEGORY WHERE CATEGORY_ID = @CATEID) INTERSECT 
(SELECT CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATEGORY_ID = @CATEID AND CATALOG_ID = 1))

BEGIN

SELECT 0  AS [Select],C.CATALOG_NAME AS [Catalog], C.CATALOG_ID, CG.CATEGORY_ID FROM TB_CATEGORY CG, TB_CATALOG C, TB_CATALOG_SECTIONS CS WHERE 
C.CATALOG_ID = CS.CATALOG_ID AND 
CS.CATEGORY_ID = CG.CATEGORY_ID AND
CS.CATEGORY_ID =  @CATEID AND 
C.CATALOG_ID = 1

SET @RC = @@ROWCOUNT

END

ELSE 
SET @RC = -1000

END

IF (@REFSTR = 'ATTRIBUTE')


BEGIN
IF EXISTS ((SELECT ATTRIBUTE_ID FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT)) INTERSECT 
(SELECT ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT) AND CATALOG_ID <> 1))
BEGIN
IF EXISTS ((SELECT ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT)) UNION
(SELECT ATTRIBUTE_ID FROM TB_FAMILY_SPECS WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT))UNION 
(SELECT ATTRIBUTE_ID FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT))UNION
(SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT))UNION
(SELECT ATTRIBUTE_ID FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT))UNION
(SELECT ATTRIBUTE_ID FROM TB_READONLY_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT)))

BEGIN

SELECT 0 AS [Select], C.CATALOG_NAME AS [Catalog], CA.CATALOG_ID, CA.ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES CA, TB_ATTRIBUTE A, TB_CATALOG C WHERE CA.ATTRIBUTE_ID = CAST(@CATEID AS INT) AND
A.ATTRIBUTE_ID = CA.ATTRIBUTE_ID AND
CA.CATALOG_ID = C.CATALOG_ID AND 
C.CATALOG_ID <> CAST(@RMVTYPE AS INT) AND 
C.CATALOG_ID <> 1


SET @RC = @@ROWCOUNT

END

ELSE
SET @RC = -100

END

ELSE IF EXISTS ((SELECT ATTRIBUTE_ID FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT)) INTERSECT 
(SELECT ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID = CAST(@CATEID AS INT) AND CATALOG_ID = 1))

BEGIN

SELECT 0 AS [Select], C.CATALOG_NAME AS [Catalog], CA.CATALOG_ID, CA.ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES CA, TB_ATTRIBUTE A, TB_CATALOG C WHERE CA.ATTRIBUTE_ID = CAST(@CATEID AS INT) AND
A.ATTRIBUTE_ID = CA.ATTRIBUTE_ID AND
CA.CATALOG_ID = C.CATALOG_ID AND 
C.CATALOG_ID = 1

SET @RC = @@ROWCOUNT

END

ELSE 
SET @RC = -1000

END /* END OF ATTRIBUTE */

IF (@REFSTR = 'CATALOG')

BEGIN

IF EXISTS (SELECT CATALOG_ID FROM TB_CATALOG WHERE CATALOG_ID = CAST(@CATEID AS INT))

BEGIN

IF (@RMVTYPE = 0)
BEGIN

SELECT CATALOG_ID FROM TB_CATALOG WHERE CATALOG_ID = CAST(@CATEID AS INT)
 
END


END

END /*END OF CATALOG REFERENCE*/

END /*END OF STP_CATALOGSTUDIO5_REMOVALSELECT*/
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_RecentlyModifiedProducts]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_RecentlyModifiedProducts] (@CATGID INT, @PRODTYPE INT)
AS
BEGIN

CREATE TABLE #TEMPPROD
(
EDIT INT,
PREVIEW INT,
PRODUCT_ID INT,
STRING_VALUE NVARCHAR(MAX),
MODIFIED_DATE DATETIME,
MODIFIED_USER NVARCHAR(100)
)

DECLARE @PID INT
DECLARE @SETDATE DATETIME
DECLARE @SETUSER NVARCHAR(MAX)
IF(@PRODTYPE=1)
BEGIN
DECLARE CUR_LATEST_PROD CURSOR FOR
SELECT DISTINCT (PF.PRODUCT_ID) FROM TB_CATALOG_FAMILY CF,TB_PROD_FAMILY PF,TB_PROD_SPECS PS WHERE CF.CATALOG_ID=@CATGID AND CF.FAMILY_ID=PF.FAMILY_ID AND PF.PRODUCT_ID=PS.PRODUCT_ID
END
ELSE IF(@PRODTYPE=2)
BEGIN
DECLARE CUR_LATEST_PROD CURSOR FOR
SELECT DISTINCT (PF.PRODUCT_ID) FROM TB_CATALOG_FAMILY CF,TB_PROD_FAMILY PF,TB_PROD_SPECS PS WHERE CF.CATALOG_ID=@CATGID AND CF.FAMILY_ID=PF.FAMILY_ID AND PF.PRODUCT_ID=PS.PRODUCT_ID AND (CONVERT (VARCHAR, GETDATE() - 6, 101) = CONVERT (VARCHAR, PS.MODIFIED_DATE, 101) OR 
CONVERT (VARCHAR, GETDATE() - 5, 101) = CONVERT (VARCHAR, PS.MODIFIED_DATE, 101) OR 
CONVERT (VARCHAR, GETDATE() - 4, 101) = CONVERT (VARCHAR, PS.MODIFIED_DATE, 101) OR 
CONVERT (VARCHAR, GETDATE() - 3, 101) = CONVERT (VARCHAR, PS.MODIFIED_DATE, 101) OR 
CONVERT (VARCHAR, GETDATE() - 2, 101) = CONVERT (VARCHAR, PS.MODIFIED_DATE, 101) OR 
CONVERT (VARCHAR, GETDATE() - 1, 101) = CONVERT (VARCHAR, PS.MODIFIED_DATE, 101) OR 
CONVERT (VARCHAR, GETDATE(), 101) = CONVERT (VARCHAR, PS.MODIFIED_DATE, 101)) 
END
ELSE IF(@PRODTYPE=4)
BEGIN
DECLARE CUR_LATEST_PROD CURSOR FOR
SELECT DISTINCT (PF.PRODUCT_ID) FROM TB_CATALOG_FAMILY CF,TB_PROD_FAMILY PF,TB_PROD_SPECS PS WHERE CF.CATALOG_ID=@CATGID AND CF.FAMILY_ID=PF.FAMILY_ID AND PF.PRODUCT_ID=PS.PRODUCT_ID  AND CONVERT (VARCHAR, GETDATE(), 101) = CONVERT (VARCHAR, PF.MODIFIED_DATE, 101) 

END
ELSE
BEGIN
DECLARE CUR_LATEST_PROD CURSOR FOR
SELECT DISTINCT (PF.PRODUCT_ID) FROM TB_CATALOG_FAMILY CF,TB_PROD_FAMILY PF,TB_PROD_SPECS PS WHERE CF.CATALOG_ID=@CATGID AND CF.FAMILY_ID=PF.FAMILY_ID AND PF.PRODUCT_ID=PS.PRODUCT_ID AND CONVERT (VARCHAR, GETDATE()-1, 101) = CONVERT (VARCHAR, PS.MODIFIED_DATE, 101) 
END
OPEN CUR_LATEST_PROD
FETCH NEXT FROM CUR_LATEST_PROD INTO @PID
WHILE @@FETCH_STATUS=0
BEGIN

SET @SETDATE=(SELECT MAX(MODIFIED_DATE) FROM TB_PROD_SPECS WHERE PRODUCT_ID=@PID)
SET @SETUSER=(SELECT DISTINCT MODIFIED_USER FROM TB_PROD_SPECS WHERE PRODUCT_ID=@PID AND MODIFIED_DATE=@SETDATE)
INSERT INTO  #TEMPPROD (PRODUCT_ID,STRING_VALUE,MODIFIED_DATE,MODIFIED_USER) 
SELECT DISTINCT PRODUCT_ID,STRING_VALUE,@SETDATE,@SETUSER FROM TB_PROD_SPECS WHERE 
PRODUCT_ID=@PID AND ATTRIBUTE_ID=1

FETCH NEXT FROM CUR_LATEST_PROD INTO @PID
END 
CLOSE CUR_LATEST_PROD 
DEALLOCATE CUR_LATEST_PROD 

SELECT EDIT,PREVIEW,PRODUCT_ID,STRING_VALUE,MODIFIED_DATE,MODIFIED_USER FROM #TEMPPROD ORDER BY MODIFIED_DATE DESC

END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_RecentlyModifiedFamilies]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_RecentlyModifiedFamilies] 
(@CATALOG_ID INT,@INDEX INT) AS 
BEGIN  
CREATE TABLE #TEMPLATEST
( EDIT INT,
PREVIEW INT,FAMILY_ID INT, FAMILY_NAME NVARCHAR(400), MODIFIED_USER NVARCHAR(100), MODIFIED_DATE DATETIME ) 
DECLARE @FAMILY_ID INT 
IF(@INDEX=4) 
BEGIN
DECLARE CUR_CATALOG_FAMILY CURSOR FOR 
SELECT DISTINCT TFS.FAMILY_ID FROM TB_FAMILY_SPECS TFS,TB_CATALOG_FAMILY TCF WHERE TCF.FAMILY_ID=TFS.FAMILY_ID
AND TCF.CATALOG_ID=@CATALOG_ID AND (CONVERT (VARCHAR, TFS.MODIFIED_DATE, 101) = CONVERT (VARCHAR, GETDATE(), 101))
UNION
SELECT DISTINCT TF.FAMILY_ID FROM TB_FAMILY TF,TB_CATALOG_FAMILY TCF WHERE TCF.FAMILY_ID=TF.FAMILY_ID
AND TCF.CATALOG_ID=@CATALOG_ID AND (CONVERT (VARCHAR, TF.MODIFIED_DATE, 101) = CONVERT (VARCHAR, GETDATE(), 101))
OPEN CUR_CATALOG_FAMILY FETCH NEXT FROM CUR_CATALOG_FAMILY INTO @FAMILY_ID 
WHILE @@FETCH_STATUS=0 
BEGIN 
IF((SELECT MAX(MODIFIED_DATE) FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@FAMILY_ID)> 
(SELECT MODIFIED_DATE FROM TB_FAMILY WHERE FAMILY_ID=@FAMILY_ID) ) 
BEGIN 
   INSERT INTO #TEMPLATEST SELECT DISTINCT NULL,NULL,B.FAMILY_ID,B.FAMILY_NAME,A.MODIFIED_USER,A.MODIFIED_DATE FROM 
	TB_FAMILY_SPECS A,TB_FAMILY B WHERE A.FAMILY_ID=@FAMILY_ID AND B.FAMILY_ID=A.FAMILY_ID AND A.MODIFIED_DATE = 
  (SELECT MAX(MODIFIED_DATE) FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@FAMILY_ID) 
END 
ELSE 
BEGIN 
   INSERT INTO #TEMPLATEST SELECT DISTINCT NULL,NULL,FAMILY_ID,FAMILY_NAME,MODIFIED_USER,MODIFIED_DATE FROM TB_FAMILY 
   WHERE FAMILY_ID=@FAMILY_ID END  FETCH NEXT FROM CUR_CATALOG_FAMILY INTO @FAMILY_ID 
END 
CLOSE CUR_CATALOG_FAMILY 
DEALLOCATE CUR_CATALOG_FAMILY
SELECT EDIT,PREVIEW,FAMILY_ID, FAMILY_NAME, MODIFIED_DATE, MODIFIED_USER   FROM #TEMPLATEST 
END
ELSE IF(@INDEX=3) 
BEGIN
DECLARE CUR_CATALOG_FAMILY CURSOR FOR 
SELECT DISTINCT TFS.FAMILY_ID FROM TB_FAMILY_SPECS TFS,TB_CATALOG_FAMILY TCF WHERE TCF.FAMILY_ID=TFS.FAMILY_ID
AND TCF.CATALOG_ID=@CATALOG_ID AND (CONVERT (VARCHAR, TFS.MODIFIED_DATE, 101) = CONVERT (VARCHAR, GETDATE()-1, 101))
UNION
SELECT DISTINCT TF.FAMILY_ID FROM TB_FAMILY TF,TB_CATALOG_FAMILY TCF WHERE TCF.FAMILY_ID=TF.FAMILY_ID
AND TCF.CATALOG_ID=@CATALOG_ID AND (CONVERT (VARCHAR, TF.MODIFIED_DATE, 101) = CONVERT (VARCHAR, GETDATE()-1, 101))
OPEN CUR_CATALOG_FAMILY FETCH NEXT FROM CUR_CATALOG_FAMILY INTO @FAMILY_ID 
WHILE @@FETCH_STATUS=0 
BEGIN 
IF((SELECT MAX(MODIFIED_DATE) FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@FAMILY_ID)> 
(SELECT MODIFIED_DATE FROM TB_FAMILY WHERE FAMILY_ID=@FAMILY_ID) ) 
BEGIN 
   INSERT INTO #TEMPLATEST SELECT DISTINCT NULL,NULL,B.FAMILY_ID,B.FAMILY_NAME,A.MODIFIED_USER,A.MODIFIED_DATE FROM
   TB_FAMILY_SPECS A,TB_FAMILY B WHERE A.FAMILY_ID=@FAMILY_ID AND B.FAMILY_ID=A.FAMILY_ID AND A.MODIFIED_DATE = 
   (SELECT MAX(MODIFIED_DATE) FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@FAMILY_ID) 
END 
ELSE 
BEGIN 
   INSERT INTO #TEMPLATEST SELECT DISTINCT NULL,NULL,FAMILY_ID,FAMILY_NAME,MODIFIED_USER,MODIFIED_DATE FROM TB_FAMILY 
   WHERE FAMILY_ID=@FAMILY_ID END  FETCH NEXT FROM CUR_CATALOG_FAMILY INTO @FAMILY_ID 
END 
CLOSE CUR_CATALOG_FAMILY 
DEALLOCATE CUR_CATALOG_FAMILY
SELECT EDIT,PREVIEW,FAMILY_ID, FAMILY_NAME, MODIFIED_DATE, MODIFIED_USER   FROM #TEMPLATEST 
END
ELSE
BEGIN
DECLARE CUR_CATALOG_FAMILY CURSOR FOR 
SELECT FAMILY_ID FROM TB_CATALOG_FAMILY WHERE CATALOG_ID=@CATALOG_ID 
OPEN CUR_CATALOG_FAMILY FETCH NEXT FROM CUR_CATALOG_FAMILY INTO @FAMILY_ID 
WHILE @@FETCH_STATUS=0 
BEGIN 
IF((SELECT MAX(MODIFIED_DATE) FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@FAMILY_ID)> 
(SELECT MODIFIED_DATE FROM TB_FAMILY WHERE FAMILY_ID=@FAMILY_ID) ) 
BEGIN 
   INSERT INTO #TEMPLATEST SELECT DISTINCT NULL,NULL,B.FAMILY_ID,B.FAMILY_NAME,A.MODIFIED_USER,A.MODIFIED_DATE FROM
   TB_FAMILY_SPECS A,TB_FAMILY B WHERE A.FAMILY_ID=@FAMILY_ID AND B.FAMILY_ID=A.FAMILY_ID AND A.MODIFIED_DATE = 
   (SELECT MAX(MODIFIED_DATE) FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@FAMILY_ID) 
END 
ELSE 
BEGIN 
   INSERT INTO #TEMPLATEST SELECT DISTINCT NULL,NULL,FAMILY_ID,FAMILY_NAME,MODIFIED_USER,MODIFIED_DATE FROM TB_FAMILY 
   WHERE FAMILY_ID=@FAMILY_ID END  FETCH NEXT FROM CUR_CATALOG_FAMILY INTO @FAMILY_ID 
END 
CLOSE CUR_CATALOG_FAMILY 
DEALLOCATE CUR_CATALOG_FAMILY  
IF(@INDEX=1) 
BEGIN   
   SELECT EDIT,PREVIEW,FAMILY_ID, FAMILY_NAME, MODIFIED_DATE, MODIFIED_USER   FROM #TEMPLATEST ORDER BY MODIFIED_DATE DESC 
END  
ELSE IF(@INDEX=2) 
BEGIN   
  SELECT EDIT,PREVIEW,FAMILY_ID, FAMILY_NAME, MODIFIED_DATE, MODIFIED_USER   FROM #TEMPLATEST  WHERE 
  (CONVERT (VARCHAR, GETDATE() - 6, 101) = CONVERT (VARCHAR, MODIFIED_DATE, 101) OR
   CONVERT (VARCHAR, GETDATE() - 5, 101) = CONVERT (VARCHAR, MODIFIED_DATE, 101) OR 
   CONVERT (VARCHAR, GETDATE() - 4, 101) = CONVERT (VARCHAR, MODIFIED_DATE, 101) OR 
   CONVERT (VARCHAR, GETDATE() - 3, 101) = CONVERT (VARCHAR, MODIFIED_DATE, 101) OR 
   CONVERT (VARCHAR, GETDATE() - 2, 101) = CONVERT (VARCHAR, MODIFIED_DATE, 101) OR 
   CONVERT (VARCHAR, GETDATE() - 1, 101) = CONVERT (VARCHAR, MODIFIED_DATE, 101) OR 
   CONVERT (VARCHAR, GETDATE(), 101) = CONVERT (VARCHAR, MODIFIED_DATE, 101)) ORDER BY MODIFIED_DATE DESC 
END 
END
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_ProductTableXml]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_ProductTableXml] ( @CATALOG_ID INT , @FAMILY_ID INT , @FILTERKEY NVARCHAR(max), @CONTINUECALCULATEDCols int)
AS
BEGIN  
 
DECLARE  @PRODUCT_ID  INT , @ATTRIBUTE_ID INT , @ATTRIBUTE_NAME NVARCHAR(2000)  
DECLARE  @ATTRTYPE INT , @ATTRIBUTE_VALUE NVARCHAR(4000) , @SORT_ORDER INT 
DECLARE  @cnt INT 
DECLARE  @ATTRIBUTESTYLE NVARCHAR(MAX)
DECLARE  @attrIDs NVARCHAR(MAX) 
DECLARE  @attrTypes NVARCHAR(MAX) 
DECLARE  @attrStyles NVARCHAR(MAX)
DECLARE  @ISATTRIBUTECALCFORMULA NVARCHAR(4000) 
DECLARE  @CHECKPRODUCTCOUNT INT 
DECLARE  @SQL NVARCHAR(MAX)
DECLARE  @GRANULARTYPE NVARCHAR(MAX)
DECLARE  @CALCColumn nvarchar(1000)
DECLARE  @Pid INT 
DECLARE  @CALCFORMULA NVARCHAR(4000)
DECLARE  @CALCOLid INT , @ISCALCULATED INT
			 
IF ((len(rtrim(@FILTERKEY)) > 0))
begin
CREATE TABLE #temp (prodid  int)
SET @sql = 'insert into #temp ' + @FILTERKEY
EXEC (@sql)
print @filterkey 


end 
			SELECT tp.product_id AS PRODUCT_ID  , 
		    tpf.SORT_ORDER  AS SORT_ORDER  INTO #FOREDITOR  
		    FROM  TB_PRODUCT  tp , TB_PROD_FAMILY tpf , TB_CATALOG_PRODUCT TCP   WHERE 1=2 
			 
		IF ((len(rtrim(@FILTERKEY)) > 0))
		BEGIN  
				INSERT  into #FOREDITOR 
				SELECT   TP.PRODUCT_ID AS PRODUCT_ID  , 
				 TPF.SORT_ORDER  AS SORT_ORDER  
				 FROM  TB_PRODUCT  TP , TB_PROD_FAMILY TPF , TB_CATALOG_PRODUCT TCP   WHERE  TPF.PRODUCT_ID = TP.PRODUCT_ID and 
				 TP.PRODUCT_ID IN (select * from #temp ) AND 
				 TPF.FAMILY_ID = @FAMILY_ID  AND TCP.CATALOG_ID = @CATALOG_ID AND TCP.PRODUCT_ID = TP.PRODUCT_ID 
				


		END 
		ELSE 
		 BEGIN 
			INSERT INTO #FOREDITOR
			SELECT TP.PRODUCT_ID AS PRODUCT_ID  , TPF.SORT_ORDER AS SORT_ORDER  
			FROM  TB_PRODUCT  TP , TB_PROD_FAMILY TPF , TB_CATALOG_PRODUCT TCP   WHERE  TPF.PRODUCT_ID = TP.PRODUCT_ID and 
			TPF.FAMILY_ID =  @FAMILY_ID  AND TCP.CATALOG_ID= @CATALOG_ID AND  TCP.PRODUCT_ID = TP.PRODUCT_ID 
		END 

/*------------------------------------------ATTRIBUTES IN LIST ----------------------------------------------------------*/
				
		DECLARE   CURSOR_ATTRIBUTES  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME  , TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER  
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTES TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TCA.ATTRIBUTE_ID = TA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID  
		AND TA.PUBLISH2PRINT= 1
		ORDER BY TPFL.SORT_ORDER ASC 
		
		OPEN CURSOR_ATTRIBUTES   
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		WHILE @@FETCH_STATUS = 0
		BEGIN 
			SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
			print @ATTRIBUTE_NAME
					SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
					set @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , '[', '[[')
					SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , ']', ']]')
					IF ( @ATTRTYPE= 1)
						BEGIN 
							SET  @GRANULARTYPE =(SELECT 	ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
							SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
							IF (@GRANULARTYPE='N')
							BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] money  ' 
								EXEC(@SQL)
								PRINT @SQL 
							END 
							ELSE
							BEGIN
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
							    EXEC(@SQL)
							END
						END 
						 						
						IF (@ATTRTYPE = 3 )
						BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + ']  NVARCHAR(MAX) '  
								EXEC(@SQL)
						
						END 
						IF (@ATTRTYPE = 4 )
						BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + ']  money '  
								EXEC(@SQL)
									
						END 
						IF (@ATTRTYPE = 6 )
						BEGIN 
								 SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
							     EXEC(@SQL)
						
			END


			
			DECLARE  CURSORPRODUCT CURSOR FOR 
			SELECT  DISTINCT PRODUCT_ID FROM #FOREDITOR  
			OPEN 		CURSORPRODUCT
			FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
			WHILE @@FETCH_STATUS = 0
			BEGIN 
				IF ( @ATTRTYPE=1)
				BEGIN 
					SET  @GRANULARTYPE =(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
					SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
					IF (@GRANULARTYPE='N')
					BEGIN 
						SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
						PRINT @ATTRIBUTE_VALUE 
						SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
						PRINT @SQL
						EXEC(@SQL)
					END 
					ELSE
					BEGIN 
							SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
							print @ATTRIBUTE_VALUE
							SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' +  '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							print @SQL
							EXEC(@SQL)
					END 
				END 
				IF ( @ATTRTYPE=6)
				BEGIN
					SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  ATTRIBUTE_VALUE  FROM TB_PARTS_KEY  WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID =@FAMILY_ID), '''', '''''')
					SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
					EXEC(@SQL)
				END 
				IF ( @ATTRTYPE=4)
				BEGIN
					SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
					SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
					print @SQL
					EXEC(@SQL)
				END 
				IF ( @ATTRTYPE=3)
				BEGIN
					/*--SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  ATTRIBUTE_VALUE  FROM TB_PARTS_KEY  WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID =@FAMILY_ID), '''', '''''')*/
						SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
					SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
					EXEC(@SQL)
				END 
				FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
				END
				CLOSE CURSORPRODUCT
				DEALLOCATE CURSORPRODUCT
				
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		END 
		CLOSE CURSOR_ATTRIBUTES 
		DEALLOCATE CURSOR_ATTRIBUTES
		
IF (@CONTINUECALCULATEDCols=1)
BEGIN 
	print 'calc cols '
			DECLARE CUR_AID CURSOR FOR
			SELECT ATTRIBUTE_ID  FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID IN 
			( SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID AND  IS_CALCULATED=1 
			AND ATTRIBUTE_CALC_FORMULA <> '')
			OPEN CUR_AID
			FETCH NEXT FROM  CUR_AID INTO @CALCOLid 
			WHILE @@FETCH_STATUS = 0
			BEGIN 
						SET @CALCFORMULA = (SELECT ATTRIBUTE_CALC_FORMULA FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @CALCOLid)
						SET @CALCColumn=(SELECT ATTRIBUTE_NAME FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@CALCOLid)
						DECLARE  CUR_CALCLUATED CURSOR FOR
						SELECT PRODUCT_ID FROM #FOREDITOR 
						OPEN CUR_CALCLUATED
						FETCH NEXT FROM CUR_CALCLUATED INTO @Pid
						WHILE @@FETCH_STATUS = 0
						BEGIN 
							SELECT  @SQL= ' UPDATE #FOREDITOR SET [' + @CALCColumn + ']' + '=' + ' ( SELECT (' + @CALCFORMULA + ' )  FROM #FOREDITOR WHERE PRODUCT_ID = '+ CONVERT(NVARCHAR, @Pid) + ') WHERE PRODUCT_ID = '+ CONVERT(NVARCHAR, @Pid) 
							EXEC (@SQL)
							PRINT @SQL 
							FETCH NEXT FROM CUR_CALCLUATED INTO @Pid
						END
						CLOSE CUR_CALCLUATED
						DEALLOCATE CUR_CALCLUATED
		FETCH NEXT FROM  CUR_AID INTO @CALCOLid 
		END 
		CLOSE CUR_AID
		DEALLOCATE CUR_AID
print 'calc cols end '
	END 	

		SELECT  @cnt = count(*) FROM  #FOREDITOR
		IF (@cnt > 0)
		BEGIN
		SELECT * FROM #FOREDITOR ORDER BY SORT_ORDER
			SET  @cnt = 0 
		END 

		set @attrIDs = ''
		set @attrTypes= ''
		set @attrStyles = '' 
		SET @CALCFORMULA= ''

			
		CREATE TABLE  #FOREDITOR_EXTENDEDPROPERTIES (EDITOR  NVARCHAR(1000) , CATALOG_ID int , FAMILY_ID int , PRODUCT_ID  int , Sort int , Available  bit )
		DECLARE    CURSOR_ATTRIBUTES_INLIST  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME, TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER , ta.style_name ,  TA.IS_CALCULATED 
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTES TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TCA.ATTRIBUTE_ID = TA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID  
		AND TA.PUBLISH2PRINT= 1
		ORDER BY TPFL.SORT_ORDER ASC 

		OPEN CURSOR_ATTRIBUTES_INLIST   
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER ,@ATTRIBUTESTYLE  , @ISCALCULATED 
		WHILE @@FETCH_STATUS = 0
		BEGIN	
			SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
			set @attrIDs =  @attrIDS +  ''''  + CONVERT(Nvarchar(200), @ATTRIBUTE_ID) +  '''' + ','
			set @attrTypes = @attrTypes +  ''''  + CONVERT(Nvarchar(200), @ATTRTYPE)  +  ''''   + ','
			SET @attrStyles = @attrStyles + '''' + isnull(@ATTRIBUTESTYLE,'') + '''' + ','
		    SELECT  @SQL = 'ALTER TABLE #FOREDITOR_EXTENDEDPROPERTIES  ADD [' + @ATTRIBUTE_NAME  + ']  NVARCHAR(4000) '  
			EXEC(@SQL)
												
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER, @ATTRIBUTESTYLE, @ISCALCULATED 
		END 
			set @attrIDs = substring(@attrIDs , 0 ,len(@attrIDs))
		    set @attrTypes = substring(@attrTypes , 0 , len(@attrTypes))
			set @attrStyles = substring(@attrStyles , 0 , len(@attrStyles))
			
		IF (LEN(rtrim(@attrIDs)) > 0)
		BEGIN 	
			SELECT  @SQL= ' insert into #FOREDITOR_EXTENDEDPROPERTIES values  (''FOREDITOR'', 0 , 0 ,0, 0 ,0, '  + @attrIDs + ')'
			print @SQL
			EXEC (@SQL)
			SELECT @SQL= ' insert into #FOREDITOR_EXTENDEDPROPERTIES values  (''FOREDITOR'', 0 , 0 ,0, 0 , 0, '+ @attrTypes + ')' 
			EXEC (@SQL)
			SELECT @SQL= ' insert into #FOREDITOR_EXTENDEDPROPERTIES values  (''FOREDITOR'', 0 , 0 ,0, 0 ,0, '+ @attrStyles + ')'
			EXEC (@SQL)
		END  
		CLOSE CURSOR_ATTRIBUTES_INLIST 
		DEALLOCATE CURSOR_ATTRIBUTES_INLIST
		
		SELECT  @cnt = count(*) from #FOREDITOR_EXTENDEDPROPERTIES
		IF (@cnt > 0 )
			BEGIN
				SELECT   * FROM #FOREDITOR_EXTENDEDPROPERTIES
			END 
		ELSE 
			BEGIN
				PRINT  ' count Is less for Extended Properties '
			END 

END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_ProductTablePreview]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_ProductTablePreview]( @CATALOG_ID INT , @FAMILY_ID INT)
AS
BEGIN 
DECLARE @OPTIONVALUE NVARCHAR(4000),  @OPTIONKEY NVARCHAR(500)  
DECLARE @PRODUCT_ID  INT , @ATTRIBUTE_ID INT , @ATTRIBUTE_NAME NVARCHAR(2000)  
DECLARE @ATTRTYPE INT , @ATTRIBUTE_VALUE NVARCHAR(4000) , @SORT_ORDER INT 
SET @OPTIONVALUE = (SELECT OPTION_VALUE FROM TB_OPTIONS  WHERE OPTION_GROUP ='PRODUCT_FILTER')
SET @OPTIONKEY=(SELECT OPTION_KEY FROM TB_OPTIONS WHERE OPTION_GROUP='PRODUCT_FILTER')
DECLARE @cnt INT 



DECLARE  @attrIDs NVARCHAR(MAX) 
DECLARE  @attrTypes NVARCHAR(MAX) 
DECLARE  @attrStyles NVARCHAR(MAX)
DECLARE @ISATTRIBUTECALCFORMULA NVARCHAR(4000) 
DECLARE @CHECKPRODUCTCOUNT INT 
DECLARE  @SQL NVARCHAR(MAX)
 DECLARE @ATTRIBUTESTYLE NVARCHAR(MAX)
DECLARE @CALCColumn nvarchar(1000)
DECLARE @Pid INT 
DECLARE @CALCFORMULA NVARCHAR(4000)
DECLARE  @CALCOLid INT , @ISCALCULATED INT
DECLARE @GRANULARTYPE NVARCHAR(MAX)

			SELECT tp.product_id AS PRODUCT_ID  , 
		    tpf.SORT_ORDER  AS SORT_ORDER  INTO #FOREDITOR  
		    FROM  TB_PRODUCT  tp , TB_PROD_FAMILY tpf , TB_CATALOG_PRODUCT TCP   WHERE 1=2 
			 
		IF ((len(rtrim(@OPTIONVALUE)) > 0))
		BEGIN /*-- FILTER */
				INSERT  into #FOREDITOR 
				SELECT   TP.PRODUCT_ID AS PRODUCT_ID  , 
				 TPF.SORT_ORDER  AS SORT_ORDER  
				 FROM  TB_PRODUCT  TP , TB_PROD_FAMILY TPF , TB_CATALOG_PRODUCT TCP   WHERE  TPF.PRODUCT_ID = TP.PRODUCT_ID and 
				 TP.PRODUCT_ID IN ( SELECT PRODUCT_ID FROM TB_PROD_SPECS WHERE string_value  =  @OPTIONVALUE AND ATTRIBUTE_ID = @OPTIONKEY ) AND 
				 TPF.FAMILY_ID = @FAMILY_ID  AND TCP.CATALOG_ID = @CATALOG_ID AND TCP.PRODUCT_ID = TP.PRODUCT_ID 
				
		END /*---FILTER */
		ELSE /*-- WITHOUT FILTER */
		 BEGIN 
			INSERT INTO #FOREDITOR
			SELECT TP.PRODUCT_ID AS PRODUCT_ID  , TPF.SORT_ORDER AS SORT_ORDER  
			FROM  TB_PRODUCT  TP , TB_PROD_FAMILY TPF , TB_CATALOG_PRODUCT TCP   WHERE  TPF.PRODUCT_ID = TP.PRODUCT_ID and 
			TPF.FAMILY_ID =  @FAMILY_ID  AND TCP.CATALOG_ID= @CATALOG_ID AND  TCP.PRODUCT_ID = TP.PRODUCT_ID 
		END 

/*------------------------------------------ATTRIBUTES IN LIST ----------------------------------------------------------*/
				
		DECLARE   CURSOR_ATTRIBUTES  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME, TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER  
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTES TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TCA.ATTRIBUTE_ID = TA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID  
		AND TA.PUBLISH2PRINT= 1
		ORDER BY TPFL.SORT_ORDER ASC 
		
		OPEN CURSOR_ATTRIBUTES   
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		WHILE @@FETCH_STATUS = 0
		BEGIN 
			SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
			IF ( @ATTRTYPE= 1)
						BEGIN 
							SET  @GRANULARTYPE =(SELECT 	ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
							SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
							IF (@GRANULARTYPE='N')
							BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] money  ' 
								EXEC(@SQL)
								PRINT @SQL 
							END 
							ELSE
							BEGIN
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
							    EXEC(@SQL)
							END
						END 
						 						
						IF (@ATTRTYPE = 3 )
						BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + ']  NVARCHAR(MAX) '  
								EXEC(@SQL)
						
						END 
						IF (@ATTRTYPE = 4 )
						BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + ']  money '  
								EXEC(@SQL)
									
						END 
						IF (@ATTRTYPE = 6 )
						BEGIN 
								 SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
							     EXEC(@SQL)
						
			END
		/*---type checking for filling values */
			
			DECLARE  CURSORPRODUCT CURSOR FOR 
			SELECT  DISTINCT PRODUCT_ID FROM #FOREDITOR  
			OPEN 		CURSORPRODUCT
			FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
			WHILE @@FETCH_STATUS = 0
			BEGIN 
				IF ( @ATTRTYPE=1)
				BEGIN 
					SET  @GRANULARTYPE =(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
					SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
					IF (@GRANULARTYPE='N')
					BEGIN 
						SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
						PRINT @ATTRIBUTE_VALUE 
						SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( NVARCHAR , @PRODUCT_ID  )  
						PRINT @SQL
						EXEC(@SQL)
					END 
					ELSE
					BEGIN 
							SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
							SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( NVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 
				END 
				IF ( @ATTRTYPE=6)
				BEGIN
					SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  ATTRIBUTE_VALUE  FROM TB_PARTS_KEY  WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID =@FAMILY_ID), '''', '''''')
					SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( NVARCHAR , @PRODUCT_ID  )  
					EXEC(@SQL)
				END 
				IF ( @ATTRTYPE=4)
				BEGIN
					SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
					SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( NVARCHAR , @PRODUCT_ID  )  
					EXEC(@SQL)
				END 
				IF ( @ATTRTYPE=3)
				BEGIN
						SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
					SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( NVARCHAR , @PRODUCT_ID  )  
					EXEC(@SQL)
				END 				
				FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
				END
				CLOSE CURSORPRODUCT
				DEALLOCATE CURSORPRODUCT
				
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		END 
		CLOSE CURSOR_ATTRIBUTES 
		DEALLOCATE CURSOR_ATTRIBUTES
		
/*-----calculated columns */
			DECLARE CUR_AID CURSOR FOR
			SELECT ATTRIBUTE_ID  FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID IN 
			( SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID AND  IS_CALCULATED=1 
			AND ATTRIBUTE_CALC_FORMULA <> '')
			OPEN CUR_AID
			FETCH NEXT FROM  CUR_AID INTO @CALCOLid 
			WHILE @@FETCH_STATUS = 0
			BEGIN 
						SET @CALCFORMULA = (SELECT ATTRIBUTE_CALC_FORMULA FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @CALCOLid)
						SET @CALCColumn=(SELECT ATTRIBUTE_NAME FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@CALCOLid)
						DECLARE  CUR_CALCLUATED CURSOR FOR
						SELECT PRODUCT_ID FROM #FOREDITOR 
						OPEN CUR_CALCLUATED
						FETCH NEXT FROM CUR_CALCLUATED INTO @Pid
						WHILE @@FETCH_STATUS = 0
						BEGIN 
							SELECT  @SQL= ' UPDATE #FOREDITOR SET [' + @CALCColumn + ']' + '=' + ' ( SELECT (' + @CALCFORMULA + ' )  FROM #FOREDITOR WHERE PRODUCT_ID = '+ CONVERT(NVARCHAR, @Pid) + ') WHERE PRODUCT_ID = '+ CONVERT(NVARCHAR, @Pid) 
							EXEC (@SQL)
							PRINT @SQL 
							FETCH NEXT FROM CUR_CALCLUATED INTO @Pid
						END
						CLOSE CUR_CALCLUATED
						DEALLOCATE CUR_CALCLUATED
		FETCH NEXT FROM  CUR_AID INTO @CALCOLid 
		END 
		CLOSE CUR_AID
		DEALLOCATE CUR_AID
		
/*-----calculated columns */
		
		SELECT  @cnt = count(*) FROM  #FOREDITOR
		IF (@cnt > 0)
		BEGIN
		SELECT * FROM #FOREDITOR ORDER BY SORT_ORDER
			SET  @cnt = 0 
		END 

/*-------FOREDITOR EXTEDED PROPERTIES */
		set @attrIDs = ''
		set @attrTypes= ''
		set @attrStyles = '' 
		SET @CALCFORMULA= ''

			
		CREATE TABLE  #FOREDITOR_EXTENDEDPROPERTIES (EDITOR  NVARCHAR(1000) , CATALOG_ID int , FAMILY_ID int , PRODUCT_ID  int , Sort int , Available  bit )
		DECLARE    CURSOR_ATTRIBUTES_INLIST  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME, TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER , ta.style_name ,  TA.IS_CALCULATED 
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTES TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TCA.ATTRIBUTE_ID = TA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID  
		AND TA.PUBLISH2PRINT= 1
		ORDER BY TPFL.SORT_ORDER ASC 

		OPEN CURSOR_ATTRIBUTES_INLIST   
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER ,@ATTRIBUTESTYLE  , @ISCALCULATED 
		WHILE @@FETCH_STATUS = 0
		BEGIN	
			set @attrIDs =  @attrIDS +  ''''  + CONVERT(NVARCHAR(200), @ATTRIBUTE_ID) +  '''' + ','
			set @attrTypes = @attrTypes +  ''''  + CONVERT(NVARCHAR(200), @ATTRTYPE)  +  ''''   + ','
			set @attrStyles = @attrStyles + '''' + @ATTRIBUTESTYLE + '''' + ','
		    SELECT  @SQL = 'ALTER TABLE #FOREDITOR_EXTENDEDPROPERTIES  ADD [' + @ATTRIBUTE_NAME  + ']  NVARCHAR(4000) '  
			EXEC(@SQL)
												
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER, @ATTRIBUTESTYLE, @ISCALCULATED 
		END 
/*---INSERT START */
			set @attrIDs = substring(@attrIDs , 0 ,len(@attrIDs))
		    set @attrTypes = substring(@attrTypes , 0 , len(@attrTypes))
			set @attrStyles = substring(@attrStyles , 0 , len(@attrStyles))
			
		IF (LEN(rtrim(@attrIDs)) > 0)
		BEGIN 	
			SELECT  @SQL= ' insert into #FOREDITOR_EXTENDEDPROPERTIES values  (''FOREDITOR'', 0 , 0 ,0, 0 ,0, '  + @attrIDs + ')'
			print @SQL
			EXEC (@SQL)
			SELECT @SQL= ' insert into #FOREDITOR_EXTENDEDPROPERTIES values  (''FOREDITOR'', 0 , 0 ,0, 0 , 0, '+ @attrTypes + ')' 
			EXEC (@SQL)
			SELECT @SQL= ' insert into #FOREDITOR_EXTENDEDPROPERTIES values  (''FOREDITOR'', 0 , 0 ,0, 0 ,0, '+ @attrStyles + ')'
			EXEC (@SQL)
		END  
		/*---INSERT END */
		CLOSE CURSOR_ATTRIBUTES_INLIST 
		DEALLOCATE CURSOR_ATTRIBUTES_INLIST

		
		SELECT  @cnt = count(*) from #FOREDITOR_EXTENDEDPROPERTIES
		IF (@cnt > 0 )
			BEGIN
				SELECT   * FROM #FOREDITOR_EXTENDEDPROPERTIES
			END 
		ELSE 
			BEGIN
				PRINT  ' count Is less for Extended Properties '
			END 

END /*--PROCEDURE*/
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_ProductTable]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[STP_CATALOGSTUDIO5_ProductTable]( @CATALOG_ID INT , @FAMILY_ID INT , @TMODE  nVARCHAR(100),@ROWATTRIBUTES  NVARCHAR(MAX) , @COLUMNATTRIBUTES NVARCHAR(MAX), @GROUPATTRIBUTES NVARCHAR(MAX), @CONTINUECALCULATEDCols int)
AS
BEGIN  


DECLARE @PRODUCT_ID  INT , @ATTRIBUTE_ID INT , @ATTRIBUTE_NAME NVARCHAR(2000)  
DECLARE @ATTRTYPE INT , @ATTRIBUTE_VALUE NVARCHAR(MAX) , @SORT_ORDER INT 
DECLARE  @ATTRIBUTESTYLE NVARCHAR(2000)
DECLARE @OPTIONVALUE NVARCHAR(MAX),  @OPTIONKEY NVARCHAR(500)  


DECLARE  @attrIDs NVARCHAR(MAX) 
DECLARE  @attrTypes NVARCHAR(MAX) 
DECLARE  @attrStyles NVARCHAR(MAX)
DECLARE @ISATTRIBUTECALCFORMULA NVARCHAR(4000) 
DECLARE @CHECKPRODUCTCOUNT INT 
DECLARE  @SQL NVARCHAR(MAX)

DECLARE @CALCColumn nvarchar(1000)
DECLARE @Pid INT 
DECLARE @CALCFORMULA NVARCHAR(4000)
DECLARE  @CALCOLid INT , @ISCALCULATED INT
DECLARE @GRANULARTYPE NVARCHAR(MAX)


SET @OPTIONVALUE = (SELECT OPTION_VALUE FROM TB_OPTIONS  WHERE OPTION_GROUP ='PRODUCT_FILTER')
SET @OPTIONKEY=(SELECT OPTION_KEY FROM TB_OPTIONS WHERE OPTION_GROUP='PRODUCT_FILTER')

IF ((UPPER(@TMODE)='FOREDITOR'))
BEGIN  /*--for editor */
	SELECT IDENTITY (INT , 1, 1) as RECORD_ID ,  @CATALOG_ID as CATALOG_ID ,  @FAMILY_ID AS FAMILY_ID ,  TP.PRODUCT_ID  AS PRODUCT_ID  , 
	TPF.SORT_ORDER  AS Sort    INTO #FOREDITOR 
	FROM  TB_PRODUCT  TP , TB_PROD_FAMILY TPF   WHERE  1=2

		IF ((len(rtrim(@OPTIONVALUE)) > 0))
		BEGIN /*-- FILTER */
		
				INSERT INTO  #FOREDITOR 
				SELECT @CATALOG_ID AS CATALOG_ID , @FAMILY_ID AS FAMILY_ID , TPF.PRODUCT_ID, TPF.SORT_ORDER AS Sort 
				FROM TB_PRODUCT TP, TB_PROD_FAMILY TPF WHERE TPF.FAMILY_ID =@FAMILY_ID AND TPF.PRODUCT_ID = TP.PRODUCT_ID AND 
				TP.PRODUCT_ID IN ( SELECT PRODUCT_ID FROM TB_PROD_SPECS WHERE string_value   =  @OPTIONVALUE AND ATTRIBUTE_ID = @OPTIONKEY )
			
				
		END /*---FILTER */
		ELSE /*-- WITHOUT FILTER */
			 BEGIN 
				INSERT INTO #FOREDITOR
				SELECT @CATALOG_ID AS CATALOG_ID , @FAMILY_ID AS FAMILY_ID , TPF.PRODUCT_ID, TPF.SORT_ORDER AS Sort 
				FROM TB_PRODUCT TP, TB_PROD_FAMILY TPF WHERE TPF.FAMILY_ID =@FAMILY_ID AND TPF.PRODUCT_ID = TP.PRODUCT_ID  
			 END 
ALTER  TABLE  #FOREDITOR ADD Publish  BIT NOT NULL 
DEFAULT 0 

/*------------------------------------------ATTRIBUTES IN LIST ----------------------------------------------------------*/
				
		DECLARE    CURSOR_ATTRIBUTES  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME, TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER 
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTES TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TCA.ATTRIBUTE_ID = TA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID  
		ORDER BY TPFL.SORT_ORDER ASC 
			

		OPEN CURSOR_ATTRIBUTES   
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		WHILE @@FETCH_STATUS = 0
		BEGIN 
			        SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
					print @ATTRIBUTE_NAME
					SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME, '''', '''''')
print @ATTRIBUTE_NAME
					set @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , '[', '[[')
					SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , ']', ']]')
					IF ( @ATTRTYPE= 1)
						BEGIN 
							SET  @GRANULARTYPE =(SELECT 	ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
							SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
							IF (@GRANULARTYPE='N')
							BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] money  ' 
								EXEC(@SQL)
								PRINT @SQL 
							END 
							ELSE
							BEGIN
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
							    EXEC(@SQL)
							END
						END 
						 						
						IF (@ATTRTYPE = 3 )
						BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + ']  NVARCHAR(MAX) '  
								EXEC(@SQL)
						
						END 
						IF (@ATTRTYPE = 4 )
						BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + ']  money '  
								EXEC(@SQL)
									
						END 
						IF (@ATTRTYPE = 6 )
						BEGIN 
								 SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
							     EXEC(@SQL)
						
			END
			
			
		/*---type checking for filling values */
			
			DECLARE  CURSORPRODUCT CURSOR FOR 
			SELECT  DISTINCT PRODUCT_ID FROM #FOREDITOR  
			OPEN 		CURSORPRODUCT
			FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
			WHILE @@FETCH_STATUS = 0
			BEGIN 
				IF ( @ATTRTYPE=1)
				BEGIN 
					SET  @GRANULARTYPE =(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
					SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
					IF (@GRANULARTYPE='N')
					BEGIN 
						SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
						PRINT @ATTRIBUTE_VALUE 
						SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
						PRINT @SQL
						EXEC(@SQL)
					END 
					ELSE
					BEGIN 
							SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
							print @ATTRIBUTE_VALUE
							SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' +  '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							print @SQL
							EXEC(@SQL)
					END 
				END 
				IF ( @ATTRTYPE=6)
				BEGIN
					SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  ATTRIBUTE_VALUE  FROM TB_PARTS_KEY  WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID =@FAMILY_ID), '''', '''''')
					SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' + '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
					EXEC(@SQL)
				END 
				IF ( @ATTRTYPE=4)
				BEGIN
					SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
					SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
					print @SQL
					EXEC(@SQL)
				END 
				IF ( @ATTRTYPE=3)
				BEGIN
					/*--SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  ATTRIBUTE_VALUE  FROM TB_PARTS_KEY  WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID =@FAMILY_ID), '''', '''''')*/
						SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
					SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
					EXEC(@SQL)
				END 
				FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
				END
				CLOSE CURSORPRODUCT
				DEALLOCATE CURSORPRODUCT
				
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		END 
		CLOSE CURSOR_ATTRIBUTES 
		DEALLOCATE CURSOR_ATTRIBUTES 
/*----------------------------------------------ATTRIBUTES IN LIST  ------------------------------------------------
-------------------------------------OTHER ATTRIBUTES  FOR PRODUCTS -----------------------------------------------------------------------------------------*/

	DECLARE    CURSOR_ATTRIBUTES  CURSOR  for 
	SELECT DISTINCT   TA.ATTRIBUTE_NAME , TA.ATTRIBUTE_ID  , TA.ATTRIBUTE_TYPE  FROM TB_ATTRIBUTE TA  , TB_CATALOG_ATTRIBUTES TCA WHERE TA.ATTRIBUTE_ID IN 
	( SELECT DISTINCT TPS.ATTRIBUTE_ID FROM TB_PROD_SPECS  TPS  , TB_CATALOG_ATTRIBUTES tca WHERE TPS.PRODUCT_ID IN ( SELECT TPF.PRODUCT_ID FROM TB_PROD_FAMILY TPF	 WHERE TPF.FAMILY_ID= @FAMILY_ID AND TPF.PUBLISH=1) AND 
	TCA.ATTRIBUTE_ID = TPS.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID UNION ( SELECT DISTINCT ATTRIBUTE_ID FROM TB_PARTS_KEY WHERE FAMILY_ID = @FAMILY_ID  )) 
	AND TA.ATTRIBUTE_ID NOT IN ( SELECT DISTINCT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID  ) 
	ORDER BY TA.ATTRIBUTE_ID ASC 

		OPEN CURSOR_ATTRIBUTES   
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE 
		WHILE @@FETCH_STATUS = 0
		BEGIN 
			
					SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
					SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME, '''', '''''')
					set @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , '[', '[[')
					SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , ']', ']]')
		                IF ( @ATTRTYPE= 1)
						BEGIN 
							SET  @GRANULARTYPE =(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
							SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
							
							IF (@GRANULARTYPE='N')
							BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] money  ' 
								EXEC(@SQL)
							END 
							ELSE
							BEGIN
									 SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
							         EXEC(@SQL)
							END
						END 
						 
						
						IF (@ATTRTYPE = 3 )
						BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + ']  NVARCHAR(MAX) '  
								EXEC(@SQL)
						
						END 
						IF (@ATTRTYPE = 4 )
						BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + ']  money '  
								EXEC(@SQL)
									
						END 
						IF (@ATTRTYPE = 6 )
						BEGIN 
								 SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
							      EXEC(@SQL)

						END
						
		/*---type checking for filling values */
			
			DECLARE  CURSORPRODUCT CURSOR FOR 
			SELECT  DISTINCT PRODUCT_ID FROM #FOREDITOR  
			OPEN 		CURSORPRODUCT
			FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
			WHILE @@FETCH_STATUS=0
			BEGIN 
				IF ( @ATTRTYPE=1)
				BEGIN 
					SET  @GRANULARTYPE =(SELECT 	ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
					SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
					IF (@GRANULARTYPE='N')
					BEGIN 
							SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
							SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 
					ELSE
					BEGIN 
							SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
							SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' +  '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 

				END 
					 IF ( @ATTRTYPE=6)
					BEGIN
						SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  ATTRIBUTE_VALUE  FROM TB_PARTS_KEY  WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID= @FAMILY_ID), '''', '''''')
						SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' + '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
						EXEC(@SQL)
					END 
					IF ( @ATTRTYPE=4)
					BEGIN
						SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
						SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
						EXEC(@SQL)
					END 
						
					IF ( @ATTRTYPE=3)
					BEGIN
SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
							SELECT  @SQL ='UPDATE  #FOREDITOR SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 

				FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
				END
				CLOSE CURSORPRODUCT
				DEALLOCATE CURSORPRODUCT
				
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE 
		END 
		CLOSE CURSOR_ATTRIBUTES 
		DEALLOCATE CURSOR_ATTRIBUTES

/*-----calculated columns */
IF (@CONTINUECALCULATEDCols=1)
BEGIN 
print 'calc column start'
	DECLARE CUR_AID CURSOR FOR
	SELECT ATTRIBUTE_ID  FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID IN 
	( SELECT DISTINCT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID) AND  IS_CALCULATED=1 
	AND ATTRIBUTE_CALC_FORMULA <> ''
	OPEN CUR_AID
	FETCH NEXT FROM  CUR_AID INTO @CALCOLid 
		print ';calc col id'
print @family_id 
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		print 'stasrt'
				SET @CALCFORMULA = (SELECT ATTRIBUTE_CALC_FORMULA FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @CALCOLid)
				PRINT @CALCFORMULA 
				SET @CALCColumn=(SELECT ATTRIBUTE_NAME FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@CALCOLid)
				DECLARE  CUR_CALCLUATED CURSOR FOR
				SELECT PRODUCT_ID FROM #FOREDITOR 
				OPEN CUR_CALCLUATED
				FETCH NEXT FROM CUR_CALCLUATED INTO @Pid
				WHILE @@FETCH_STATUS = 0
				BEGIN 
					SELECT  @SQL= ' UPDATE #FOREDITOR SET [' + @CALCColumn + ']' + '=' + ' ( SELECT (' + @CALCFORMULA + ' )  FROM #FOREDITOR WHERE PRODUCT_ID = '+ CONVERT(nVARCHAR, @Pid) + ') WHERE PRODUCT_ID = '+ CONVERT(nVARCHAR, @Pid) 
					PRINT @SQL 
					EXEC (@SQL)
					PRINT @SQL 
					FETCH NEXT FROM CUR_CALCLUATED INTO @Pid
				END
				CLOSE CUR_CALCLUATED
				DEALLOCATE CUR_CALCLUATED
FETCH NEXT FROM  CUR_AID INTO @CALCOLid 
print 'end calc'
END 
CLOSE CUR_AID
DEALLOCATE CUR_AID
END 

/*-----calculated columns */

/*---for default attributes */

SELECT @CHECKPRODUCTCOUNT = count(*) FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID AND TB_PROD_FAMILY.PUBLISH=1
IF (@CHECKPRODUCTCOUNT <=0)
BEGIN
DECLARE    CURSOR_ATTRIBUTES  CURSOR  for 
SELECT DISTINCT TA.ATTRIBUTE_NAME , TA.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE FROM TB_ATTRIBUTE TA, TB_CATALOG_ATTRIBUTES TCA  WHERE TA.CREATE_BY_DEFAULT = 1 AND TA.ATTRIBUTE_ID = TCA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID 
AND TA.ATTRIBUTE_ID NOT IN ( SELECT DISTINCT ATTRIBUTE_ID FROM TB_PROD_fAMILY_aTTR_LIST WHERE FAMILY_ID = @FAMILY_ID )AND TA.ATTRIBUTE_TYPE<=5
AND TA.ATTRIBUTE_ID NOT IN (SELECT DISTINCT TPS.ATTRIBUTE_ID FROM TB_PROD_SPECS  TPS  , TB_CATALOG_ATTRIBUTES tca WHERE TPS.PRODUCT_ID IN ( SELECT TPF.PRODUCT_ID FROM TB_PROD_FAMILY TPF WHERE TPF.FAMILY_ID= @FAMILY_ID AND TPF.PUBLISH=1) )
ORDER BY TA.ATTRIBUTE_ID ASC 

		OPEN CURSOR_ATTRIBUTES   
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE 
		WHILE @@FETCH_STATUS = 0
		BEGIN 
			PRINT @ATTRIBUTE_NAME
			SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
			SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME, '''', '''''')
			set @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , '[', '[[')
			SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , ']', ']]')
			IF ( @ATTRTYPE= 1)
			BEGIN 
							SET  @GRANULARTYPE =(SELECT 	ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
							SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
							
							IF (@GRANULARTYPE='N')
							BEGIN 
								SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] money  ' 
								EXEC(@SQL)
							END 
							ELSE
							BEGIN
									 SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
							         EXEC(@SQL)
							END
			END 
			ELSE
			BEGIN 
					 SELECT  @SQL = 'ALTER TABLE #FOREDITOR ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
				      EXEC(@SQL)
			END 
				
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE 
		END 
		CLOSE CURSOR_ATTRIBUTES 
		DEALLOCATE CURSOR_ATTRIBUTES
END 
/*---- for default attributes */

		DECLARE  @cnt INT 
		SELECT * FROM #FOREDITOR ORDER BY Sort

/*----------FOREDITOR EXTEDED PROPERTIES */
		set @attrIDs = ''
		set @attrTypes= ''
		set @attrStyles = '' 
		SET @CALCFORMULA= ''

			
		CREATE TABLE  #FOREDITOR_EXTENDEDPROPERTIES (EDITOR  NVARCHAR(1000) , CATALOG_ID int , FAMILY_ID int , PRODUCT_ID  int , Sort int , Available  bit )
		DECLARE    CURSOR_ATTRIBUTES_INLIST  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME, TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER , ta.style_name ,  TA.IS_CALCULATED 
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTES TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TCA.ATTRIBUTE_ID = TA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID  
		ORDER BY TPFL.SORT_ORDER ASC 

		OPEN CURSOR_ATTRIBUTES_INLIST   
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER ,@ATTRIBUTESTYLE  , @ISCALCULATED 
		WHILE @@FETCH_STATUS = 0
		BEGIN	
			SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME, '''', '''''')
			set @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , '[', '[[')
			SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , ']', ']]')
			set @attrIDs =  @attrIDS +  ''''  + CONVERT(nvarchar(200), @ATTRIBUTE_ID) +  '''' + ','
			set @attrTypes = @attrTypes +  ''''  + CONVERT(nvarchar(200), @ATTRTYPE)  +  ''''   + ','
			set @attrStyles = @attrStyles + '''' + @ATTRIBUTESTYLE + '''' + ','
		    SELECT  @SQL = 'ALTER TABLE #FOREDITOR_EXTENDEDPROPERTIES  ADD [' + @ATTRIBUTE_NAME  + ']  NVARCHAR(4000) '  
			EXEC(@SQL)
												
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER, @ATTRIBUTESTYLE, @ISCALCULATED 
		END 
		CLOSE CURSOR_ATTRIBUTES_INLIST 
		DEALLOCATE CURSOR_ATTRIBUTES_INLIST

/*-------ATTRIBUTES NOT IN LIST */

	DECLARE    CURSOR_ATTRIBUTESNOTINLIST  CURSOR  for 
	SELECT DISTINCT   TA.ATTRIBUTE_NAME , TA.ATTRIBUTE_ID  , TA.ATTRIBUTE_TYPE ,  ta.style_name  FROM TB_ATTRIBUTE TA  , TB_CATALOG_ATTRIBUTES TCA WHERE TA.ATTRIBUTE_ID IN 
	( SELECT DISTINCT TPS.ATTRIBUTE_ID FROM TB_PROD_SPECS  TPS  , TB_CATALOG_ATTRIBUTES tca WHERE TPS.PRODUCT_ID IN ( SELECT TPF.PRODUCT_ID FROM TB_PROD_FAMILY TPF	 WHERE TPF.FAMILY_ID= @FAMILY_ID AND TPF.PUBLISH=1 ) AND 
	TCA.ATTRIBUTE_ID = TPS.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID UNION ( SELECT DISTINCT ATTRIBUTE_ID FROM TB_PARTS_KEY WHERE FAMILY_ID = @FAMILY_ID  )) 
	AND TA.ATTRIBUTE_ID NOT IN ( SELECT DISTINCT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID  ) 
	ORDER BY TA.ATTRIBUTE_ID ASC 

		OPEN CURSOR_ATTRIBUTESNOTINLIST   
		FETCH NEXT FROM CURSOR_ATTRIBUTESNOTINLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @ATTRIBUTESTYLE
		WHILE @@FETCH_STATUS = 0
		BEGIN 
					SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME, '''', '''''')
					set @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , '[', '[[')
					SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , ']', ']]')
						SELECT  @SQL = 'ALTER TABLE #FOREDITOR_EXTENDEDPROPERTIES  ADD [' + @ATTRIBUTE_NAME  + ']  nVARCHAR(4000) '  
						set @attrIDs =  @attrIDS +  ''''  + CONVERT(nvarchar(200), @ATTRIBUTE_ID) +  '''' + ','
						set @attrTypes = @attrTypes +  ''''  + CONVERT(nvarchar(200), @ATTRTYPE)  +  ''''   + ','
						set @attrStyles = @attrStyles + '''' + @ATTRIBUTESTYLE + '''' + ','
						EXEC(@SQL)
							
		FETCH NEXT FROM CURSOR_ATTRIBUTESNOTINLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @ATTRIBUTESTYLE
		END 
		
		CLOSE CURSOR_ATTRIBUTESNOTINLIST 
		DEALLOCATE CURSOR_ATTRIBUTESNOTINLIST

/*----ATTRIBUTES NOT N LIST */

/*--default attributes */
		DECLARE    CURSOR_DEFAULTATTRIBUTES  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME , TA.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE, TA.STYLE_NAME  FROM TB_ATTRIBUTE TA, TB_CATALOG_ATTRIBUTES TCA  WHERE TA.CREATE_BY_DEFAULT = 1 AND TA.ATTRIBUTE_ID = TCA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID 
		AND TA.ATTRIBUTE_ID NOT IN ( SELECT DISTINCT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID )AND TA.ATTRIBUTE_TYPE<=5
		AND TA.ATTRIBUTE_ID NOT IN (SELECT DISTINCT TPS.ATTRIBUTE_ID FROM TB_PROD_SPECS  TPS  , TB_CATALOG_ATTRIBUTES tca WHERE TPS.PRODUCT_ID IN ( SELECT TPF.PRODUCT_ID FROM TB_PROD_FAMILY TPF WHERE TPF.FAMILY_ID= @FAMILY_ID AND TPF.PUBLISH=1 ) )
		ORDER BY TA.ATTRIBUTE_ID ASC 

		OPEN CURSOR_DEFAULTATTRIBUTES   
		FETCH NEXT FROM CURSOR_DEFAULTATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE  ,@ATTRIBUTESTYLE 
		WHILE @@FETCH_STATUS = 0
		BEGIN	
					SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME, '''', '''''')
					set @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , '[', '[[')
					SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , ']', ']]')
			set @attrIDs =  @attrIDS +  ''''  + CONVERT(nvarchar(200), @ATTRIBUTE_ID) +  '''' + ','
			set @attrTypes = @attrTypes +  ''''  + CONVERT(nvarchar(200), @ATTRTYPE)  +  ''''   + ','
			set @attrStyles = @attrStyles + '''' + @ATTRIBUTESTYLE + '''' + ','
		    SELECT  @SQL = 'ALTER TABLE #FOREDITOR_EXTENDEDPROPERTIES  ADD [' + @ATTRIBUTE_NAME  + ']  NVARCHAR(4000) '  
			EXEC(@SQL)
			PRINT 'DEFAULT EXTENDED PROPERTIES '
												
		FETCH NEXT FROM CURSOR_DEFAULTATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE ,  @ATTRIBUTESTYLE
		END 
		/*---INSERT START */
			set @attrIDs = substring(@attrIDs , 0 ,len(@attrIDs))
		    set @attrTypes = substring(@attrTypes , 0 , len(@attrTypes))
			set @attrStyles = substring(@attrStyles , 0 , len(@attrStyles))
			
		IF (LEN(rtrim(@attrIDs)) > 0)
		BEGIN 	
			SELECT  @SQL= ' insert into #FOREDITOR_EXTENDEDPROPERTIES values  (''FOREDITOR'', 0 , 0 ,0, 0 ,0, '  + @attrIDs + ')'
			print @SQL
			EXEC (@SQL)
			SELECT @SQL= ' insert into #FOREDITOR_EXTENDEDPROPERTIES values  (''FOREDITOR'', 0 , 0 ,0, 0 , 0, '+ @attrTypes + ')' 
			EXEC (@SQL)
			SELECT @SQL= ' insert into #FOREDITOR_EXTENDEDPROPERTIES values  (''FOREDITOR'', 0 , 0 ,0, 0 ,0, '+ @attrStyles + ')'
			EXEC (@SQL)
		END  
		/*---INSERT END */
		CLOSE CURSOR_DEFAULTATTRIBUTES 
		DEALLOCATE CURSOR_DEFAULTATTRIBUTES
/*--- default attributes */



/*-------------- FOR EDITOR EXTENDED PROEPERTIES END*/

		SELECT  @cnt = count(*) FROM  #FOREDITOR_EXTENDEDPROPERTIES
		IF (@cnt > 0)
		BEGIN
		SELECT * FROM #FOREDITOR_EXTENDEDPROPERTIES 
			SET  @cnt = 0 
		END 
END /*---IF  EDITOR*/

/*----FOR PIVOT */

IF ((UPPER(@TMODE)='FORPIVOT'))
	BEGIN /*----PIVOT	*/
			SELECT IDENTITY (int,1,1)as RECORD_ID , @CATALOG_ID AS CATALOG_ID ,  @FAMILY_ID AS FAMILY_ID , tp.product_id AS PRODUCT_ID  , 
		    tpf.SORT_ORDER  AS SORT_ORDER  INTO #FORPIVOT  
		    FROM  TB_PRODUCT  tp , TB_PROD_FAMILY tpf , TB_CATALOG_PRODUCT TCP   WHERE 1=2 
			 
		IF ((len(rtrim(@OPTIONVALUE)) > 0))
		BEGIN /*-- FILTER */
				INSERT  into #FORPIVOT 
				SELECT  @FAMILY_ID AS FAMILY_ID , @CATALOG_ID AS CATALOG_ID ,  TP.PRODUCT_ID AS PRODUCT_ID  , 
				 TPF.SORT_ORDER  AS SORT_ORDER  
				 FROM  TB_PRODUCT  TP , TB_PROD_FAMILY TPF , TB_CATALOG_PRODUCT TCP   WHERE  TPF.PRODUCT_ID = TP.PRODUCT_ID and TPF.PUBLISH=1 AND 
				 TP.PRODUCT_ID IN ( SELECT PRODUCT_ID FROM TB_PROD_SPECS WHERE string_value  =  @OPTIONVALUE AND ATTRIBUTE_ID = @OPTIONKEY ) AND 
				 TPF.FAMILY_ID = @FAMILY_ID  AND TCP.CATALOG_ID = @CATALOG_ID AND TCP.PRODUCT_ID = TP.PRODUCT_ID 
				
		END /*-- FILTER */
		ELSE /*-- WITHOUT FILTER */
		 BEGIN 
			INSERT INTO #FORPIVOT
			SELECT @FAMILY_ID AS FAMILY_ID , @CATALOG_ID AS CATALOG_ID,  TP.PRODUCT_ID AS PRODUCT_ID  , TPF.SORT_ORDER AS SORT_ORDER  
			FROM  TB_PRODUCT  TP , TB_PROD_FAMILY TPF , TB_CATALOG_PRODUCT TCP   WHERE  TPF.PRODUCT_ID = TP.PRODUCT_ID and 
			TPF.FAMILY_ID =  @FAMILY_ID  AND TCP.CATALOG_ID= @CATALOG_ID AND  TCP.PRODUCT_ID = TP.PRODUCT_ID AND TPF.PUBLISH=1
		END 

/*------------------------------------------ATTRIBUTES IN LIST ----------------------------------------------------------*/
				
		DECLARE   CURSOR_ATTRIBUTES  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME, TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER 
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTES TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TCA.ATTRIBUTE_ID = TA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID  
		ORDER BY TPFL.SORT_ORDER ASC 
		
		OPEN CURSOR_ATTRIBUTES   
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		WHILE @@FETCH_STATUS = 0
		BEGIN 
			SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
		    SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME, '''', '''''')
			set @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , '[', '[[')
			SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , ']', ']]')
			
			SELECT  @SQL = 'ALTER TABLE #FORPIVOT ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
			EXEC(@SQL)

		
		/*---type checking for filling values */
			
			DECLARE  CURSORPRODUCT CURSOR FOR 
			SELECT  DISTINCT PRODUCT_ID FROM #FORPIVOT  
			OPEN 		CURSORPRODUCT
			FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
			WHILE @@FETCH_STATUS=0
			BEGIN 
				IF ( @ATTRTYPE=1)
				BEGIN 
					SET  @GRANULARTYPE =(SELECT 	ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
					SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
					IF (@GRANULARTYPE='N')
					BEGIN 
							SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
							SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 
					ELSE
					BEGIN 
							SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
							SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' +  '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 

				END 
					 IF ( @ATTRTYPE=6)
					BEGIN
						SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  ATTRIBUTE_VALUE  FROM TB_PARTS_KEY  WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID= @FAMILY_ID), '''', '''''')
						SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' +  '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
						EXEC(@SQL)
					END 
					IF ( @ATTRTYPE=4)
					BEGIN
						SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
						SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
						EXEC(@SQL)
					END 
						
					IF ( @ATTRTYPE=3)
					BEGIN
SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
							SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 

				FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
				END
				CLOSE CURSORPRODUCT
				DEALLOCATE CURSORPRODUCT
				
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		END 
		CLOSE CURSOR_ATTRIBUTES 
		DEALLOCATE CURSOR_ATTRIBUTES 
		
		SELECT  @cnt = count(*) FROM  #FORPIVOT
		IF (@cnt > 0)
		BEGIN
		SELECT * FROM #FORPIVOT ORDER BY SORT_ORDER
			SET  @cnt = 0 
		END 
/*-------PIVOT EXTENDED PROPERTIES*/
		SET @attrIDs = ''
		SET @attrTypes= ''
		SET @attrStyles = '' 

		CREATE TABLE  #FORPIVOT_EXTENDEDPROPERTIES (FORPIVOT  Nvarchar(1000))
		DECLARE   CURSOR_ATTRIBUTES_INLIST  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME, TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER , TA.STYLE_NAME 
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTEs  TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TA.ATTRIBUTE_ID = TCA.ATTRIBUTE_ID AND TCA.CATALOG_ID= @CATALOG_ID 
		ORDER BY TPFL.SORT_ORDER ASC 
	
		OPEN CURSOR_ATTRIBUTES_INLIST   
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER , @ATTRIBUTESTYLE
		WHILE @@FETCH_STATUS = 0
		BEGIN 
		    SET @attrIDs =  @attrIDS +  '''' + CONVERT(nvarchar(200), @ATTRIBUTE_ID) +  '''' + ','
			SET @attrTypes = @attrTypes +  ''''  + CONVERT(nvarchar(200), @ATTRTYPE)  +  ''''   + ','
			SET @attrStyles = @attrStyles + '''' + isnull(@ATTRIBUTESTYLE,'') + '''' + ','
			SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
		    SELECT  @SQL = 'ALTER TABLE #FORPIVOT_EXTENDEDPROPERTIES  ADD [' + @ATTRIBUTE_NAME  + ']  nvarchar(4000) '  
			PRINT @attrStyles
			PRINT @ATTRIBUTESTYLE
			EXEC(@SQL)
			
														
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER, @ATTRIBUTESTYLE
		END 

			SET @attrIDs = substring(@attrIDs , 0 ,len(@attrIDs))
			SET @attrTypes = substring(@attrTypes , 0 , len(@attrTypes))
			SET @attrStyles = substring(@attrStyles , 0 , len(@attrStyles))
		    PRINT @attrStyles

		IF (LEN(rtrim(@attrIDs)) > 0)
		BEGIN 
			SELECT @SQL= ' INSERT  INTO #FORPIVOT_EXTENDEDPROPERTIES values  (''FORPIVOT'','+ @attrIDs + ')'
			EXEC (@SQL)
			
			SELECT  @SQL= ' INSERT  INTO #FORPIVOT_EXTENDEDPROPERTIES values  (''FORPIVOT'','+ @attrTypes + ')'
			EXEC (@SQL)
		
	     	SELECT  @SQL= ' INSERT INTO  #FORPIVOT_EXTENDEDPROPERTIES values  (''FORPIVOT'','+ @attrStyles + ')'
			EXEC (@SQL)
		END   
		ELSE 
		BEGIN 
			PRINT 'LEN OF ATTRIBUTE_ID IS LESS 0 ' 
			END 
		CLOSE CURSOR_ATTRIBUTES_INLIST 
		DEALLOCATE CURSOR_ATTRIBUTES_INLIST
	
		SELECT  @cnt = count(*) from #FORPIVOT_EXTENDEDPROPERTIES
		IF (@cnt > 0 )
		BEGIN
			SELECT   * FROM #FORPIVOT_EXTENDEDPROPERTIES
		END 
		ELSE 
			BEGIN
				PRINT  ' count Is less for Extended Properties '
			END 

	/*-- END PIVOT EXTENDED PROPERTIES */
	

END /*---PIVOT */

END /*--PROCEDURE*/


/*---Run for Pivot */
IF (UPPER(@TMODE)='FORPIVOT')
BEGIN 

/*---ROW attributecount */
 DECLARE  @index INT
 DECLARE  @rowFieldCount INT
 DECLARE  @startIndex INT
 DECLARE  @temp nVARCHAR(max) 
 DECLARE  @rowFields nVARCHAR(max)
 
 IF EXISTS (SELECT name FROM sysobjects WHERE  name = N'#rowFieldTable' AND type = 'T')
 DROP table #rowFieldTable

 CREATE  table #rowFieldTable(attribute_name nVARCHAR(1000))
 SET @rowFields = @ROWATTRIBUTES
 SET @index = 0
 SET @startIndex = 0
 SET @rowFieldCount = 0
  while @index < len(@rowFields)
  begin
    	SET @temp = substring(@rowFields,@index,1)
	SET @index = @index + 1
	IF(@temp = ',')
		BEGIN 
			SET @rowFieldCount = @rowFieldCount+1 
			insert INTo #rowFieldTable values(substring(@rowFields,@startIndex,@index-1))
			SET @startIndex = 0
			SET @rowFields = substring(@rowFields,@index,len(@rowFields)+1)
			SET @index = 0
		END 
   END   

	INSERT  INTO #rowFieldTable values(@rowFields)
	SELECT  * FROM  #rowFieldTable
		

IF (len(@ROWATTRIBUTES) >0 )
BEGIN  
	 SET @rowFieldCount=  @rowFieldCount+1
END  

/*--COLUMN */
 DECLARE  @columnFieldCount INT
 DECLARE  @colFields nVARCHAR(max)
 
 IF EXISTS (SELECT name FROM sysobjects WHERE  name = N'#columnFieldTable' AND type = 'T')
 DROP TABLE #columnFieldTable

 CREATE  TABLE  #columnFieldTable(attribute_name nVARCHAR(max))
 SET @colFields = @COLUMNATTRIBUTES
 SET @index = 0
 SET @startIndex = 0
 SET @columnFieldCount = 0
  while @index < len(@colFields)
  BEGIN 
    	SET @temp = substring(@colFields,@index,1)
	SET @index = @index + 1
	IF (@temp = ',')
		BEGIN 
			SET @columnFieldCount = @columnFieldCount+1 
			INSERT  INTO #columnFieldTable VALUES (substring(@colFields,@startIndex,@index-1))
			SET @startIndex = 0
			SET @colFields = substring(@colFields,@index,len(@colFields)+1)
			SET @index = 0
		END 
 END   
		INSERT  INTO #columnFieldTable values(@colFields)
         SELECT * FROM #columnFieldTable

IF (len(@COLUMNATTRIBUTES) > 0 )
BEGIN  
   SET @columnFieldCount = @columnFieldCount + 1
END 
 

/*----ROW ATTRIBUTE COUNT */
DECLARE  @rowattributecnt  INT 
 SELECT  @SQL = ' select distinct attribute_name from tb_attribute ta, tb_prod_Family_attr_list tpfl 
		         where tpfl.attribute_id = ta.attribute_id
 		         and tpfl.family_id =  ' + CONVERT(nVARCHAR(100),@FAMILY_ID)  + '
		         and ta.attribute_name  in  (select attribute_name from #rowFieldTable )'
PRINT  @SQL
EXEC  (@SQL)
SET  @rowattributecnt = @@rowcount

/*----COLUMN ATTRIBUTE COUNT */
DECLARE  @columnttributecnt  INT 
 SELECT  @SQL = ' select distinct attribute_name from tb_attribute ta, tb_prod_Family_attr_list tpfl 
		         where tpfl.attribute_id = ta.attribute_id
 		         and tpfl.family_id =  ' + convert(nVARCHAR(100),@FAMILY_ID)  + '
 		         and ta.attribute_name  in  (select attribute_name from #columnFieldTable)'
PRINT @SQL
EXEC  (@SQL)
SET @columnttributecnt = @@rowcount



/*--Construct Row Select Fields*/
SET @temp = ''
DECLARE  @rowSelectFields nVARCHAR(max)
SET @rowSelectFields = ''
	DECLARE   rowattributes CURSOR FOR 
	SELECT  attribute_name  FROM  #rowFieldTable
	OPEN  rowattributes
	FETCH NEXT  FROM  rowattributes INTO @temp
	WHILE  @@fetch_status =0 
    BEGIN  
		IF (len(@rowSelectFields) > 0)
		BEGIN 
		   SET @rowSelectFields = @rowSelectFields +','+ '[' + @temp + ']'
		END 
		ELSE 
		BEGIN 
			SET  @rowSelectFields = @rowSelectFields + '[' + @temp + ']'
		END
		FETCH  NEXT  from rowattributes INTo @temp
     END 
CLOSE  rowattributes 
DEALLOCATE  rowattributes 

/*--Construct Column Select Fields*/
SET @temp = ''
DECLARE  @columnSelectFields nVARCHAR(max)
SET @columnSelectFields = ''
	DECLARE   colattributes cursor for 
	SELECT  attribute_name FROM  #columnFieldTable 
	OPEN  colattributes
	FETCH NEXT  FROM  colattributes INTO @temp
		WHILE  @@fetch_status =0 
    		  BEGIN  
		IF  (len(@columnSelectFields) > 0)
		BEGIN 
			SET @columnSelectFields = @columnSelectFields + ',' + '[' + @temp + ']' 
		END
		ELSE
		BEGIN 
			SET @columnSelectFields = @columnSelectFields + '[' + @temp + ']'
		END
	FETCH  NEXT  FROM  colattributes INTo @temp
      END 
CLOSE  colattributes 
DEALLOCATE colattributes 

END  /*-- End Run for Pivot */

IF (UPPER(@TMODE)='FORPIVOT') BEGIN  	

IF (@rowFieldCount=@rowattributecnt  and @rowFieldCount !=0 ) 
BEGIN 	 			
SELECT @SQL =  ' SELECT ' + @rowSelectFields +  ' , MIN(sort_order) AS SORT_ORDER FROM   #FORPIVOT   GROUP BY ' + @rowSelectFields +' ORDER BY  SORT_ORDER , '  + @rowSelectFields + '' 			
EXEC (@SQL) 	
END
IF (@columnFieldCount= @columnttributecnt and  @columnFieldCount !=0) 
BEGIN		
SELECT @SQL =  ' SELECT  ' + @columnSelectFields + ' , min(sort_order) AS SORT_ORDER FROM  #FORPIVOT  GROUP BY ' + @columnSelectFields + ' ORDER BY  SORT_ORDER ,  ' + @columnSelectFields + '' 			
EXEC (@SQL) 
END
IF ((len(@GROUPATTRIBUTES)) > 2)		
BEGIN	
SELECT @SQL =  ' SELECT  ' + @GROUPATTRIBUTES + ' , min(sort_order) AS SORT_ORDER FROM  #FORPIVOT  GROUP BY ' + @GROUPATTRIBUTES + ' ORDER BY  SORT_ORDER ,  ' + @GROUPATTRIBUTES + '' 			
EXEC (@SQL) 
END
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_ProductSortOrder]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_ProductSortOrder] (@PRODUCTID INT , @NEWSORTORDER INT ,@FAMILYID INT )
AS 
BEGIN /*--START*/
DECLARE  @OLDSORTORDER INT 
DECLARE @TprodId int 
DECLARE @TsortOrder int 
DECLARE @sQL NVARCHAR(1000) 

SET @OLDSORTORDER= (SELECT SORT_ORDER FROM TB_PROD_FAMILY  WHERE PRODUCT_ID = @PRODUCTID AND FAMILY_ID = @FAMILYID)
	IF (@OLDSORTORDER <> @NEWSORTORDER)
	BEGIN /*--IF */
		
		IF (@OLDSORTORDER < @NEWSORTORDER)
		BEGIN /*--SORT*/

		SELECT SORT_ORDER , PRODUCT_ID , FAMILY_ID  INTO #TEMP2  FROM TB_PROD_FAMILY WHERE SORT_ORDER > @OLDSORTORDER AND  SORT_ORDER <= @NEWSORTORDER AND FAMILY_ID = @FAMILYID
		    UPDATE  TB_PROD_FAMILY  SET SORT_ORDER  = @NEWSORTORDER  WHERE PRODUCT_ID = @PRODUCTID AND FAMILY_ID = @FAMILYID
			DECLARE  CurSort CURSOR FOR 
			SELECT  SORT_ORDER, PRODUCT_ID  FROM #TEMP2
			OPEN  CurSort
			FETCH NEXT FROM CurSort INTO @TsortOrder,  @TprodId 
			WHILE @@FETCH_STATUS = 0
				BEGIN 
					UPDATE  TB_PROD_FAMILY SET SORT_ORDER = SORT_ORDER-1  WHERE PRODUCT_ID = @TprodId AND FAMILY_ID = @FAMILYID
					FETCH NEXT FROM CurSort INTO @TsortOrder,  @TprodId 
				END
			CLOSE CurSort
			DEALLOCATE CurSort
		END /*--SORT*/
		
		ELSE
		BEGIN /*--ELSE*/
			
			SELECT SORT_ORDER , PRODUCT_ID , FAMILY_ID  INTO #TEMP3  FROM TB_PROD_FAMILY    WHERE SORT_ORDER >= @NEWSORTORDER AND PRODUCT_ID <> @PRODUCTID AND  SORT_ORDER < @OLDSORTORDER AND FAMILY_ID = @FAMILYID
			UPDATE  TB_PROD_FAMILY  SET sort_order = @NEWSORTORDER  WHERE PRODUCT_ID = @PRODUCTID  AND FAMILY_ID = @FAMILYID
			DECLARE  CurSort CURSOR FOR 
			SELECT  SORT_ORDER , PRODUCT_ID FROM #temp3
			OPEN CurSort
			FETCH NEXT FROM CurSort INTO @TsortOrder,  @TprodId 
			WHILE @@FETCH_STATUS = 0
				BEGIN 
					UPDATE  TB_PROD_FAMILY  SET SORT_ORDER = SORT_ORDER +1  WHERE  PRODUCT_ID = @TprodId  AND FAMILY_ID = @FAMILYID
					FETCH NEXT FROM CurSort INTO @TsortOrder,  @TprodId 
				END
			CLOSE CurSort
			DEALLOCATE CurSort

		END /*--ELSE 	*/
		
	END  /*--IF */

END /*--END */
SELECT * FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILYID
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_ProductSort]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_ProductSort] 
@ATTRID1 INT,@ATTRID2 INT,@ATTRID3 INT,@ATTRID4 INT,@ATTRID5 INT, 
@SORT1 NVARCHAR(50),@SORT2 NVARCHAR(50),@SORT3 NVARCHAR(50),@SORT4 NVARCHAR(50),@SORT5 NVARCHAR(50), 
@CATEGORYID NVARCHAR(50),@CATALOGID INT   AS
BEGIN 
DECLARE @STRQRY VARCHAR(4000) 
DECLARE @SORT INT 
DECLARE @TPRODID INT 
DECLARE @COUNT INT 
DECLARE @COUNTS INT  
DECLARE @FAMILYID INT 
DECLARE @ATTRTYPE1 NVARCHAR(50) 
DECLARE @ATTRTYPE2 NVARCHAR(50) 
DECLARE @ATTRTYPE3 NVARCHAR(50) 
DECLARE @ATTRTYPE4 NVARCHAR(50) 
DECLARE @ATTRTYPE5 NVARCHAR(50)   

DECLARE @ATTRTYPES1 INT 
DECLARE @ATTRTYPES2 INT 
DECLARE @ATTRTYPES3 INT 
DECLARE @ATTRTYPES4 INT 
DECLARE @ATTRTYPES5 INT   

IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_PROD_FAMILY') 
BEGIN 
  DROP TABLE TEMP_PROD_FAMILY   
END  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_PROFAMILY') 
BEGIN 
  DROP TABLE TEMP_PROFAMILY   
END  

SET @COUNTS=(SELECT COUNT(FAMILY_ID) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID=@CATALOGID AND CATEGORY_ID=@CATEGORYID)   
DECLARE FAMILYCUR CURSOR FOR 
  SELECT FAMILY_ID FROM TB_CATALOG_FAMILY WHERE CATALOG_ID=@CATALOGID AND CATEGORY_ID=@CATEGORYID
OPEN FAMILYCUR FETCH NEXT FROM FAMILYCUR INTO @FAMILYID   

WHILE(@@FETCH_STATUS = 0) 
BEGIN    
  SELECT PF.PRODUCT_ID,CF.FAMILY_ID INTO TEMP_PROFAMILY FROM TB_CATALOG_FAMILY CF,TB_PROD_FAMILY PF WHERE CF.CATALOG_ID=@CATALOGID  AND CF.FAMILY_ID=@FAMILYID AND CF.FAMILY_ID=PF.FAMILY_ID  

  SET @STRQRY='SELECT IDENTITY(INT,1,1) AS SORT_ORDER,CONVERT(INT,TP.PRODUCT_ID)AS PRODUCT_ID '  

IF(@ATTRID1>0) 
BEGIN 
 SET @ATTRTYPE1=(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID1)
 SET @ATTRTYPES1=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID1)
 IF(SUBSTRING(@ATTRTYPE1,1,1)='N') 
 BEGIN 
   SET @STRQRY=@STRQRY+',(SELECT NUMERIC_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+ CONVERT(NVARCHAR,@ATTRID1)
   +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS1'
 END 
 ELSE 
 BEGIN 
	IF (@ATTRTYPES1 = 6)
	BEGIN
	SET @STRQRY=@STRQRY+',(SELECT ATTRIBUTE_VALUE FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID ='+ CONVERT(NVARCHAR,@ATTRID1) 
	+' AND PRODUCT_ID = TP.PRODUCT_ID AND FAMILY_ID = ' + CAST(@FAMILYID AS NVARCHAR(MAX)) + ') AS SORTS1'
	END
	ELSE
	BEGIN
  SET @STRQRY=@STRQRY+',(SELECT STRING_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+ CONVERT(NVARCHAR,@ATTRID1) 
  +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS1'  
	END
 END 
 END 

IF(@ATTRID2>0) 
BEGIN 
SET @ATTRTYPE2=(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID2)
SET @ATTRTYPES2=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID2)
IF(SUBSTRING(@ATTRTYPE2,1,1)='N') 
BEGIN 
  SET @STRQRY=@STRQRY+',(SELECT NUMERIC_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+ CONVERT(NVARCHAR,@ATTRID2) 
  +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS2'  
END 
ELSE 
BEGIN 
IF (@ATTRTYPES2 = 6)
	BEGIN
	SET @STRQRY=@STRQRY+',(SELECT ATTRIBUTE_VALUE FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID ='+ CONVERT(NVARCHAR,@ATTRID2) 
	+' AND PRODUCT_ID = TP.PRODUCT_ID AND FAMILY_ID = ' + CAST(@FAMILYID AS NVARCHAR(MAX)) + ') AS SORTS2'
	END
	ELSE
	BEGIN
  SET @STRQRY=@STRQRY+',(SELECT STRING_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+ CONVERT(NVARCHAR,@ATTRID2)
  +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS2'
END
END 
END  

IF(@ATTRID3>0)
 BEGIN 
SET @ATTRTYPE3=(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID3)
SET @ATTRTYPES3=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID3)
IF(SUBSTRING(@ATTRTYPE3,1,1)='N') 
BEGIN 
  SET @STRQRY=@STRQRY+',(SELECT NUMERIC_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+CONVERT(NVARCHAR,@ATTRID3)
  +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS3'
 END 
ELSE 
BEGIN 
IF (@ATTRTYPES3 = 6)
	BEGIN
	SET @STRQRY=@STRQRY+',(SELECT ATTRIBUTE_VALUE FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID ='+ CONVERT(NVARCHAR,@ATTRID3) 
	+' AND PRODUCT_ID = TP.PRODUCT_ID AND FAMILY_ID = ' + CAST(@FAMILYID AS NVARCHAR(MAX)) + ') AS SORTS3'
	END
	ELSE
	BEGIN
  SET @STRQRY=@STRQRY+',(SELECT STRING_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+CONVERT(NVARCHAR,@ATTRID3) 
  +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS3' 
END
END 
END  

IF(@ATTRID4>0) 
BEGIN 
SET @ATTRTYPE4=(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID4)
SET @ATTRTYPES4=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID4)
IF(SUBSTRING(@ATTRTYPE4,1,1)='N') 
BEGIN 
   SET @STRQRY=@STRQRY+',(SELECT NUMERIC_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+CONVERT(NVARCHAR,@ATTRID4) 
   +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS4' 
END 
ELSE 
BEGIN 
IF (@ATTRTYPES4 = 6)
	BEGIN
	SET @STRQRY=@STRQRY+',(SELECT ATTRIBUTE_VALUE FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID ='+ CONVERT(NVARCHAR,@ATTRID4) 
	+' AND PRODUCT_ID = TP.PRODUCT_ID AND FAMILY_ID = ' + CAST(@FAMILYID AS NVARCHAR(MAX)) + ') AS SORTS4'
	END
	ELSE
	BEGIN
  SET @STRQRY=@STRQRY+',(SELECT STRING_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+CONVERT(NVARCHAR,@ATTRID4) 
  +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS4' 
END
END 
END  

IF(@ATTRID5>0) 
BEGIN 
SET @ATTRTYPE5=(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID5)
SET @ATTRTYPES5=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRID5)
IF(SUBSTRING(@ATTRTYPE5,1,1)='N') 
BEGIN 
   SET @STRQRY=@STRQRY+',(SELECT NUMERIC_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID = '+CONVERT(NVARCHAR,@ATTRID5)
   +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS5' 
END 
ELSE
 BEGIN 
IF (@ATTRTYPES5 = 6)
	BEGIN
	SET @STRQRY=@STRQRY+',(SELECT ATTRIBUTE_VALUE FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID ='+ CONVERT(NVARCHAR,@ATTRID5) 
	+' AND PRODUCT_ID = TP.PRODUCT_ID AND FAMILY_ID = ' + CAST(@FAMILYID AS NVARCHAR(MAX)) + ') AS SORTS5'
	END
	ELSE
	BEGIN
  SET @STRQRY=@STRQRY+',(SELECT STRING_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID = '+CONVERT(NVARCHAR,@ATTRID5)
  +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORTS5' 
END
END 
END   
  
  SET @STRQRY=@STRQRY+' INTO TEMP_PROD_FAMILY FROM TB_PRODUCT TP WHERE TP.PRODUCT_ID IN (SELECT PF.PRODUCT_ID 
  FROM TEMP_PROFAMILY PF ) ORDER BY' 

IF(@ATTRID1>0) 
BEGIN  
  SET @STRQRY=@STRQRY+' SORTS1 '+@SORT1 
END  
IF(@ATTRID2>0) 
BEGIN 
  SET @STRQRY=@STRQRY+' , SORTS2 '+@SORT2 
END  
IF(@ATTRID3>0) 
BEGIN 
SET @STRQRY=@STRQRY+' , SORTS3 '+@SORT3 
END  
IF(@ATTRID4>0) 
BEGIN 
SET @STRQRY=@STRQRY+' , SORTS4 '+@SORT4 
END  
IF(@ATTRID5>0) 
BEGIN 
SET @STRQRY=@STRQRY+' , SORTS5 '+@SORT5 
END    

IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_PROD_FAMILY') 
BEGIN 
  DROP TABLE TEMP_PROD_FAMILY   
END 
EXEC (@STRQRY)   
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_PROFAMILY') 
BEGIN DROP TABLE TEMP_PROFAMILY   
END 

  UPDATE TB_PROD_FAMILY SET SORT_ORDER=TMP.SORT_ORDER FROM TEMP_PROD_FAMILY TMP WHERE TB_PROD_FAMILY.FAMILY_ID=
  @FAMILYID AND TB_PROD_FAMILY.PRODUCT_ID=TMP.PRODUCT_ID   FETCH NEXT FROM FAMILYCUR INTO @FAMILYID  
END 
CLOSE FAMILYCUR DEALLOCATE FAMILYCUR  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_PROD_FAMILY') 
BEGIN 
DROP TABLE TEMP_PROD_FAMILY   
END 
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_PROFAMILY') 
BEGIN 
DROP TABLE TEMP_PROFAMILY   
END 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_ProductId]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_ProductId]
@SETTING_VAL BIT, 
@CATALOG_ID INT,
@FAMILY_ID INT, 
@CAT_ITEM_NUMBER NVARCHAR(MAX),
@REF_NUMBER INT output 

AS
BEGIN

DECLARE @REF_CATEGORY_ID NVARCHAR(50)
DECLARE @REF_PRODUCT_ID INT
DECLARE @REF_SORT_ORDER INT
DECLARE @REF_PROD_FAMILY_SORT_ORDER INT
DECLARE @CUR_ATTRIBUTEID INT 
DECLARE @CUR_SORTORDER INT 
DECLARE @SPECATTRID INT 
DECLARE @CHECKPRODUCTCOUNT INT 
DECLARE @DEFAULTATTRIBUTEID INT 
DECLARE @DEFAULTATTRIBUTEVALUE NVARCHAR(MAX) 
DECLARE @DEFAULTATTRVALUE  NVARCHAR(MAX)
DECLARE @REFATTRIBUTETYPE INT 
DECLARE @ATTRIBUTE_TYPE INT 
DECLARE @ATTR_SORTORDER INT 

SET @REF_CATEGORY_ID = (SELECT CATEGORY_ID FROM TB_FAMILY WHERE FAMILY_ID = @FAMILY_ID) 

IF (@SETTING_VAL = 0)
BEGIN
IF NOT EXISTS (SELECT STRING_VALUE FROM TB_PROD_SPECS WHERE STRING_VALUE =@CAT_ITEM_NUMBER)
BEGIN
	INSERT INTO TB_PRODUCT(SINGLE_OR_KIT, CATEGORY_ID, STATUS) VALUES(1, @REF_CATEGORY_ID, 'ACTIVE')
	SET @REF_PRODUCT_ID =@@identity  
END
ELSE
BEGIN
	SET  @REF_NUMBER = -1000
	RETURN @REF_NUMBER
END
END


IF (@SETTING_VAL = 1)
BEGIN
INSERT INTO TB_PRODUCT(SINGLE_OR_KIT, CATEGORY_ID, STATUS) VALUES(1, @REF_CATEGORY_ID, 'ACTIVE')
SET @REF_PRODUCT_ID = @@identity 
END


IF EXISTS(SELECT PRODUCT_ID FROM TB_PRODUCT WHERE PRODUCT_ID = @REF_PRODUCT_ID)
BEGIN
INSERT INTO TB_PROD_SPECS (STRING_VALUE, PRODUCT_ID, ATTRIBUTE_ID)VALUES (@CAT_ITEM_NUMBER, @REF_PRODUCT_ID, 1)
SET @REF_PRODUCT_ID = (SELECT MAX(PRODUCT_ID) FROM TB_PRODUCT)

/*--- spec attributes */
DECLARE   CURSOR_SPECS    CURSOR  FOR   
SELECT  DISTINCT tps.ATTRIBUTE_ID  FROM TB_PROD_SPECS tps WHERE tps.PRODUCT_ID IN ( SELECT DISTINCT PRODUCT_ID FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID ) and tps.attribute_id<>1
OPEN CURSOR_SPECS
FETCH NEXT FROM CURSOR_SPECS  INTO @SPECATTRID
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		SET @REFATTRIBUTETYPE=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @SPECATTRID )
		IF (@REFATTRIBUTETYPE =1)
		BEGIN
			SET @DEFAULTATTRIBUTEVALUE= (SELECT DEFAULT_VALUE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @SPECATTRID)
			INSERT INTO TB_PROD_SPECS (STRING_VALUE, PRODUCT_ID, ATTRIBUTE_ID) VALUES (@DEFAULTATTRIBUTEVALUE, @REF_PRODUCT_ID, @SPECATTRID)
		END 
		IF (@REFATTRIBUTETYPE =4)
		BEGIN 

			SET @DEFAULTATTRVALUE= (SELECT DEFAULT_VALUE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @SPECATTRID)
			IF(LEN( @DEFAULTATTRVALUE) =0)
			BEGIN
				SET @DEFAULTATTRVALUE=NULL
                INSERT INTO TB_PROD_SPECS (NUMERIC_VALUE, PRODUCT_ID, ATTRIBUTE_ID) VALUES (null, @REF_PRODUCT_ID, @SPECATTRID)
			END	
			ELSE
			BEGIN
			    INSERT INTO TB_PROD_SPECS (NUMERIC_VALUE, PRODUCT_ID, ATTRIBUTE_ID) VALUES ((convert(numeric(13,6),@DEFAULTATTRVALUE)), @REF_PRODUCT_ID, @SPECATTRID)
            END
		END 
		IF (@REFATTRIBUTETYPE =3)
		BEGIN
			SET @DEFAULTATTRIBUTEVALUE= (SELECT DEFAULT_VALUE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @SPECATTRID)
			INSERT INTO TB_PROD_SPECS (STRING_VALUE, PRODUCT_ID, ATTRIBUTE_ID) VALUES (@DEFAULTATTRIBUTEVALUE, @REF_PRODUCT_ID, @SPECATTRID)
		END
			
FETCH NEXT FROM CURSOR_SPECS  INTO  @SPECATTRID
END 
CLOSE CURSOR_SPECS 
DEALLOCATE CURSOR_SPECS 
/*--- spec attributes */
/*--- PARTS-KEY---*/
DECLARE   CURSOR_PARTS    CURSOR  FOR   
SELECT  DISTINCT tps.ATTRIBUTE_ID  FROM TB_PARTS_KEY tps WHERE tps.FAMILY_ID=@FAMILY_ID AND tps.PRODUCT_ID IN ( SELECT DISTINCT PRODUCT_ID FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID ) 
OPEN CURSOR_PARTS
FETCH NEXT FROM CURSOR_PARTS  INTO @SPECATTRID
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		SET @REFATTRIBUTETYPE=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @SPECATTRID )
		IF (@REFATTRIBUTETYPE =6)
		BEGIN
			SET @DEFAULTATTRIBUTEVALUE= (SELECT DEFAULT_VALUE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @SPECATTRID)
			INSERT INTO TB_PARTS_KEY (ATTRIBUTE_VALUE, FAMILY_ID,PRODUCT_ID, ATTRIBUTE_ID) VALUES (@DEFAULTATTRIBUTEVALUE, @FAMILY_ID,@REF_PRODUCT_ID, @SPECATTRID)
		END 		
			
FETCH NEXT FROM CURSOR_PARTS  INTO  @SPECATTRID
END 
CLOSE CURSOR_PARTS 
DEALLOCATE CURSOR_PARTS 
/*--- PARTS-KEY---*/

/*---DEFAULT attributes  */
SET @DEFAULTATTRIBUTEVALUE=''
SELECT @CHECKPRODUCTCOUNT = count(*) FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID
IF (@CHECKPRODUCTCOUNT <=0)
BEGIN
	SET @REF_PRODUCT_ID = (SELECT MAX(PRODUCT_ID) FROM TB_PRODUCT)
	DECLARE   CURSOR_DEFAULTATTRIBUTES     CURSOR  FOR   
	SELECT DISTINCT TA.ATTRIBUTE_ID,	TA.DEFAULT_VALUE  FROM TB_ATTRIBUTE TA, TB_CATALOG_ATTRIBUTES TCA  WHERE TA.CREATE_BY_DEFAULT = 1 AND TA.ATTRIBUTE_ID = TCA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID 
	AND TA.ATTRIBUTE_ID NOT IN ( SELECT DISTINCT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID )AND TA.ATTRIBUTE_TYPE<=6
	AND TA.ATTRIBUTE_ID NOT IN (SELECT DISTINCT TPS.ATTRIBUTE_ID FROM TB_PROD_SPECS  TPS  , TB_CATALOG_ATTRIBUTES tca WHERE TPS.PRODUCT_ID IN ( SELECT TPF.PRODUCT_ID FROM TB_PROD_FAMILY TPF WHERE TPF.FAMILY_ID= @FAMILY_ID ) )
    AND TA.ATTRIBUTE_ID NOT IN (SELECT DISTINCT TPK.ATTRIBUTE_ID FROM TB_PARTS_KEY  TPK  , TB_CATALOG_ATTRIBUTES tca WHERE TPK.FAMILY_ID=@FAMILY_ID AND TPK.PRODUCT_ID IN ( SELECT TPF.PRODUCT_ID FROM TB_PROD_FAMILY TPF WHERE TPF.FAMILY_ID= @FAMILY_ID ) )
    AND TA.ATTRIBUTE_ID <>1
	ORDER BY TA.ATTRIBUTE_ID ASC 
	OPEN CURSOR_DEFAULTATTRIBUTES
	FETCH NEXT FROM CURSOR_DEFAULTATTRIBUTES  INTO @DEFAULTATTRIBUTEID ,@DEFAULTATTRIBUTEVALUE 
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		
		SET @REFATTRIBUTETYPE=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @DEFAULTATTRIBUTEID )
		SET @DEFAULTATTRIBUTEVALUE= (SELECT DEFAULT_VALUE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @DEFAULTATTRIBUTEID)
		IF (@REFATTRIBUTETYPE =1)
		BEGIN
			INSERT INTO TB_PROD_SPECS (STRING_VALUE, PRODUCT_ID, ATTRIBUTE_ID) VALUES (@DEFAULTATTRIBUTEVALUE, @REF_PRODUCT_ID, @DEFAULTATTRIBUTEID)
		END 
		IF (@REFATTRIBUTETYPE =4)
		BEGIN 
		
			IF(LEN( @DEFAULTATTRIBUTEVALUE) =0)
			BEGIN				
                INSERT INTO TB_PROD_SPECS (NUMERIC_VALUE, PRODUCT_ID, ATTRIBUTE_ID) VALUES (null, @REF_PRODUCT_ID, @DEFAULTATTRIBUTEID)
			END	
			ELSE
			BEGIN
			    INSERT INTO TB_PROD_SPECS (NUMERIC_VALUE, PRODUCT_ID, ATTRIBUTE_ID) VALUES ((convert(numeric(13,6),@DEFAULTATTRIBUTEVALUE)), @REF_PRODUCT_ID, @DEFAULTATTRIBUTEID)
            END
		END 
		IF (@REFATTRIBUTETYPE =3)
		BEGIN
		
			INSERT INTO TB_PROD_SPECS (STRING_VALUE, PRODUCT_ID, ATTRIBUTE_ID) VALUES (@DEFAULTATTRIBUTEVALUE, @REF_PRODUCT_ID, @DEFAULTATTRIBUTEID)
		END 
		IF (@REFATTRIBUTETYPE =6)
		BEGIN
			INSERT INTO TB_PARTS_KEY (ATTRIBUTE_VALUE, FAMILY_ID,PRODUCT_ID, ATTRIBUTE_ID) VALUES (@DEFAULTATTRIBUTEVALUE, @FAMILY_ID,@REF_PRODUCT_ID, @DEFAULTATTRIBUTEID)
		END 

	FETCH NEXT FROM CURSOR_DEFAULTATTRIBUTES  INTO @DEFAULTATTRIBUTEID, @DEFAULTATTRIBUTEVALUE
	END 
	CLOSE CURSOR_DEFAULTATTRIBUTES 
	DEALLOCATE CURSOR_DEFAULTATTRIBUTES 
END
/*---DEFAULT attributes */

SET @REF_PRODUCT_ID = (SELECT MAX(PRODUCT_ID) FROM TB_PRODUCT)
SET @REF_SORT_ORDER = (SELECT COUNT(FAMILY_ID) FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID)+1

INSERT INTO TB_PROD_FAMILY (FAMILY_ID, PRODUCT_ID, SORT_ORDER) VALUES(@FAMILY_ID, @REF_PRODUCT_ID, @REF_SORT_ORDER)

if (@catalog_id <> 1)
begin 
INSERT INTO TB_CATALOG_PRODUCT (CATALOG_ID, PRODUCT_ID)VALUES(@CATALOG_ID, @REF_PRODUCT_ID)
end 

SET @REF_PROD_FAMILY_SORT_ORDER = (SELECT MAX(SORT_ORDER)FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID)

/*--Attributes list  LIST */
DECLARE   CURSOR_ATTRIBUTELIST    CURSOR  FOR   
SELECT DISTINCT ATTRIBUTE_ID , SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID  AND ATTRIBUTE_ID <>1 
OPEN CURSOR_ATTRIBUTELIST
FETCH NEXT FROM CURSOR_ATTRIBUTELIST  INTO @CUR_ATTRIBUTEID, @CUR_SORTORDER 
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		INSERT INTO TB_PROD_FAMILY_ATTR_LIST(ATTRIBUTE_ID, SORT_ORDER, FAMILY_ID, PRODUCT_ID)VALUES (@CUR_ATTRIBUTEID, @CUR_SORTORDER ,@FAMILY_ID, @REF_PRODUCT_ID )
	FETCH NEXT FROM CURSOR_ATTRIBUTELIST  INTO @CUR_ATTRIBUTEID, @CUR_SORTORDER 
	END 
	CLOSE CURSOR_ATTRIBUTELIST 
	DEALLOCATE CURSOR_ATTRIBUTELIST 
SET  @REF_NUMBER = @REF_PRODUCT_ID
END /*---if */
/*--ATTRibutes  LIST             */
IF((SELECT DISTINCT count(SORT_ORDER) FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID AND ATTRIBUTE_ID=1) >0)
BEGIN
SET @ATTR_SORTORDER = (SELECT DISTINCT SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @FAMILY_ID AND ATTRIBUTE_ID=1)
END
ELSE
BEGIN
SET @ATTR_SORTORDER = 1

END

INSERT INTO TB_PROD_FAMILY_ATTR_LIST  (ATTRIBUTE_ID, SORT_ORDER , FAMILY_ID , PRODUCT_ID) VALUES (1, @ATTR_SORTORDER, @FAMILY_ID, @REF_PRODUCT_ID)

SET  @REF_NUMBER = @REF_PRODUCT_ID
RETURN @REF_NUMBER
END/*--procedure  end */
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_ProductAttributeSortOrder]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_ProductAttributeSortOrder] @FAMILY_ID INT   
AS  
DECLARE @ATTRIBUTE_ID INT  
DECLARE @SORT_ORDER INT
DECLARE @COUNT INT  
BEGIN  
SET @COUNT=1
DECLARE  CURSORSORT CURSOR FOR   
SELECT ATTRIBUTE_ID,MIN(SORT_ORDER) SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID=@FAMILY_ID GROUP BY ATTRIBUTE_ID ORDER BY MIN(SORT_ORDER)  
OPEN CURSORSORT  
FETCH NEXT FROM CURSORSORT INTO @ATTRIBUTE_ID,@SORT_ORDER   
WHILE @@FETCH_STATUS = 0  
 BEGIN   
 UPDATE TB_PROD_FAMILY_ATTR_LIST SET SORT_ORDER= @COUNT WHERE FAMILY_ID=@FAMILY_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID  
	SET @COUNT =@COUNT+1
 FETCH NEXT FROM CURSORSORT INTO @ATTRIBUTE_ID,@SORT_ORDER  
 END  
CLOSE CURSORSORT  
DEALLOCATE CURSORSORT  
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_PowerSearchProduct]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_PowerSearchProduct]	
	@QRYPARAM NVARCHAR(1000),
	@CATALOG_ID INT = 0,
	@USE_WILDCARDS BIT = 0,
	@SEARCHTBL NVARCHAR(3) = 'PRD',
	@CATID INT = 0,
	@ATTRVAL NVARCHAR(100),
    @ATTRVALUE NVARCHAR(100)
	
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @SEARCHSTR NVARCHAR(1000)

	IF (@USE_WILDCARDS = 1)
	BEGIN
		SET @SEARCHSTR = @QRYPARAM
	END
	ELSE
	BEGIN
		SET @SEARCHSTR = '%' + @QRYPARAM + '%'
	END

	IF (@ATTRVAL = 'All')
	BEGIN
		SET @ATTRVALUE = '%'
	END
	ELSE
	BEGIN
		SET @ATTRVALUE = @ATTRVAL
	END	
	IF (@SEARCHTBL = 'SPC')
	BEGIN
		SELECT		TB_CATALOG.CATALOG_ID, TB_CATALOG.CATALOG_NAME, TB_CATEGORY.CATEGORY_ID, TB_CATEGORY.CATEGORY_NAME, TB_FAMILY.FAMILY_ID, 
                      TB_PROD_FAMILY.PRODUCT_ID, TB_ATTRIBUTE.ATTRIBUTE_ID, TB_ATTRIBUTE.ATTRIBUTE_NAME, 
                      TB_PROD_SPECS.STRING_VALUE, TB_ATTRIBUTE.ATTRIBUTE_TYPE, TB_PROD_SPECS.NUMERIC_VALUE, TB_PROD_SPECS.OBJECT_NAME, TB_PROD_SPECS.OBJECT_TYPE,
					TB_PROD_SPECS.CREATED_USER, TB_PROD_SPECS.CREATED_DATE, TB_PROD_SPECS.MODIFIED_USER, TB_PROD_SPECS.MODIFIED_DATE
		FROM		TB_ATTRIBUTE INNER JOIN
                      TB_CATALOG_ATTRIBUTES ON TB_ATTRIBUTE.ATTRIBUTE_ID = TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID INNER JOIN
                      TB_CATALOG ON TB_CATALOG_ATTRIBUTES.CATALOG_ID = TB_CATALOG.CATALOG_ID INNER JOIN
                      TB_CATALOG_FAMILY ON TB_CATALOG.CATALOG_ID = TB_CATALOG_FAMILY.CATALOG_ID INNER JOIN
                      TB_CATALOG_PRODUCT ON TB_CATALOG.CATALOG_ID = TB_CATALOG_PRODUCT.CATALOG_ID INNER JOIN
                      TB_CATALOG_SECTIONS ON TB_CATALOG.CATALOG_ID = TB_CATALOG_SECTIONS.CATALOG_ID INNER JOIN
                      TB_CATEGORY ON TB_CATALOG_FAMILY.CATEGORY_ID = TB_CATEGORY.CATEGORY_ID AND 
                      TB_CATALOG_SECTIONS.CATEGORY_ID = TB_CATEGORY.CATEGORY_ID INNER JOIN
                      TB_FAMILY ON TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY.FAMILY_ID AND 
                      TB_CATEGORY.CATEGORY_ID = TB_FAMILY.CATEGORY_ID INNER JOIN
                      TB_PROD_FAMILY ON TB_FAMILY.FAMILY_ID = TB_PROD_FAMILY.FAMILY_ID INNER JOIN                      
                      TB_PROD_SPECS ON TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_SPECS.ATTRIBUTE_ID INNER JOIN
                      TB_PRODUCT ON TB_CATALOG_PRODUCT.PRODUCT_ID = TB_PRODUCT.PRODUCT_ID AND 
                      TB_PROD_FAMILY.PRODUCT_ID = TB_PRODUCT.PRODUCT_ID AND 
                      TB_PROD_SPECS.PRODUCT_ID = TB_PRODUCT.PRODUCT_ID
		WHERE		(TB_CATALOG.CATALOG_ID = @CATID)  AND
					(UPPER(TB_PROD_SPECS.STRING_VALUE) LIKE @SEARCHSTR OR
					 UPPER(TB_PROD_SPECS.[OBJECT_NAME]) LIKE @SEARCHSTR OR
					 UPPER(TB_PROD_SPECS.[OBJECT_TYPE]) LIKE @SEARCHSTR) AND
					TB_ATTRIBUTE.ATTRIBUTE_NAME LIKE @ATTRVALUE
	END	

IF (@SEARCHTBL = 'ITM')
	BEGIN
		SELECT		TB_CATALOG.CATALOG_ID, TB_CATALOG.CATALOG_NAME, TB_CATEGORY.CATEGORY_ID, TB_CATEGORY.CATEGORY_NAME, TB_FAMILY.FAMILY_ID, 
                      TB_PROD_FAMILY.PRODUCT_ID, TB_ATTRIBUTE.ATTRIBUTE_ID, TB_ATTRIBUTE.ATTRIBUTE_NAME, 
                      TB_PROD_SPECS.STRING_VALUE, TB_ATTRIBUTE.ATTRIBUTE_TYPE, TB_PROD_SPECS.NUMERIC_VALUE, TB_PROD_SPECS.OBJECT_NAME, TB_PROD_SPECS.OBJECT_TYPE,
					TB_PROD_SPECS.CREATED_USER, TB_PROD_SPECS.CREATED_DATE, TB_PROD_SPECS.MODIFIED_USER, TB_PROD_SPECS.MODIFIED_DATE
		FROM		TB_ATTRIBUTE INNER JOIN
                      TB_CATALOG_ATTRIBUTES ON TB_ATTRIBUTE.ATTRIBUTE_ID = TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID INNER JOIN
                      TB_CATALOG ON TB_CATALOG_ATTRIBUTES.CATALOG_ID = TB_CATALOG.CATALOG_ID INNER JOIN
                      TB_CATALOG_FAMILY ON TB_CATALOG.CATALOG_ID = TB_CATALOG_FAMILY.CATALOG_ID INNER JOIN
                      TB_CATALOG_PRODUCT ON TB_CATALOG.CATALOG_ID = TB_CATALOG_PRODUCT.CATALOG_ID INNER JOIN
                      TB_CATALOG_SECTIONS ON TB_CATALOG.CATALOG_ID = TB_CATALOG_SECTIONS.CATALOG_ID INNER JOIN
                      TB_CATEGORY ON TB_CATALOG_FAMILY.CATEGORY_ID = TB_CATEGORY.CATEGORY_ID AND 
                      TB_CATALOG_SECTIONS.CATEGORY_ID = TB_CATEGORY.CATEGORY_ID INNER JOIN
                      TB_FAMILY ON TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY.FAMILY_ID AND 
                      TB_CATEGORY.CATEGORY_ID = TB_FAMILY.CATEGORY_ID INNER JOIN
                      TB_PROD_FAMILY ON TB_FAMILY.FAMILY_ID = TB_PROD_FAMILY.FAMILY_ID INNER JOIN
                      TB_PROD_SPECS ON TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_SPECS.ATTRIBUTE_ID INNER JOIN
                      TB_PRODUCT ON TB_CATALOG_PRODUCT.PRODUCT_ID = TB_PRODUCT.PRODUCT_ID AND 
                      TB_PROD_FAMILY.PRODUCT_ID = TB_PRODUCT.PRODUCT_ID AND 
                      TB_PROD_SPECS.PRODUCT_ID = TB_PRODUCT.PRODUCT_ID
		WHERE		(TB_CATALOG.CATALOG_ID = @CATID)  AND
					(UPPER(TB_PROD_SPECS.STRING_VALUE) LIKE @SEARCHSTR OR
					 UPPER(TB_PROD_SPECS.[OBJECT_NAME]) LIKE @SEARCHSTR OR
					 UPPER(TB_PROD_SPECS.[OBJECT_TYPE]) LIKE @SEARCHSTR) AND
					(TB_ATTRIBUTE.ATTRIBUTE_ID=1)
	END	
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_PowerSearchFamily]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_PowerSearchFamily]	
	@QRYPARAM NVARCHAR(1000),
	@CATALOG_ID INT = 0,
	@USE_WILDCARDS BIT = 0,
	@SEARCHTBL NVARCHAR(3) = 'FAM',
	@CATID INT = 0,
	@ATTRVAL NVARCHAR(100),
    @ATTRVALUE NVARCHAR(100)
													
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @SEARCHSTR NVARCHAR(1000)

	IF (@USE_WILDCARDS = 1)
	BEGIN
		SET @SEARCHSTR = @QRYPARAM
	END
	ELSE
	BEGIN
		SET @SEARCHSTR = '%' + @QRYPARAM + '%'
	END

	IF (@ATTRVAL = 'All')
	BEGIN
		SET @ATTRVALUE = '%'
	END
	ELSE
	BEGIN
		SET @ATTRVALUE = @ATTRVAL
	END	

	IF (@SEARCHTBL = 'FAM')
	BEGIN
		SELECT	TF.CATALOG_ID, TCN.CATALOG_NAME, C.CATEGORY_ID, C.CATEGORY_NAME, F.FAMILY_ID, F.FAMILY_NAME, F.STATUS, NULL AS ATTRIBUTE_ID, NULL AS ATTRIBUTE_NAME, NULL AS STRING_VALUE, NULL AS ATTRIBUTE_TYPE, NULL AS NUMERIC_VALUE, NULL AS [OBJECT_NAME], NULL AS OBJECT_TYPE, F.CREATED_USER, F.CREATED_DATE, F.MODIFIED_USER, F.MODIFIED_DATE
		FROM	TB_FAMILY F, TB_CATEGORY C, TB_CATALOG_FAMILY TF, TB_CATALOG TCN
		WHERE	F.CATEGORY_ID = C.CATEGORY_ID AND
			TF.CATALOG_ID=@CATID AND
			TF.CATALOG_ID= TCN.CATALOG_ID AND 
			TF.FAMILY_ID=F.FAMILY_ID AND
			(UPPER(FAMILY_NAME) LIKE @SEARCHSTR OR
			UPPER(FOOT_NOTES) LIKE @SEARCHSTR)
		ORDER BY C.CATEGORY_ID, F.FAMILY_NAME
	END

	IF (@SEARCHTBL = 'STU')
	BEGIN		
		SELECT	TF.CATALOG_ID, TCN.CATALOG_NAME, C.CATEGORY_ID, C.CATEGORY_NAME, F.FAMILY_ID, F.FAMILY_NAME, F.STATUS, NULL AS ATTRIBUTE_ID, NULL AS ATTRIBUTE_NAME, NULL AS STRING_VALUE, NULL AS ATTRIBUTE_TYPE, NULL AS NUMERIC_VALUE, NULL AS [OBJECT_NAME], NULL AS OBJECT_TYPE, F.CREATED_USER, F.CREATED_DATE, F.MODIFIED_USER, F.MODIFIED_DATE
		FROM	TB_FAMILY F, TB_CATEGORY C, TB_CATALOG_FAMILY TF, TB_CATALOG TCN
		WHERE	F.CATEGORY_ID = C.CATEGORY_ID AND
			TF.CATALOG_ID=@CATID AND
			TF.CATALOG_ID= TCN.CATALOG_ID AND
			TF.FAMILY_ID=F.FAMILY_ID AND
			(UPPER(STATUS) LIKE @SEARCHSTR)
		ORDER BY C.CATEGORY_ID, F.FAMILY_NAME
	END

	IF (@SEARCHTBL = 'SPC')
	BEGIN
		SELECT	TF.CATALOG_ID, TCN.CATALOG_NAME, C.CATEGORY_ID, C.CATEGORY_NAME, F.FAMILY_ID, F.FAMILY_NAME, F.STATUS, A.ATTRIBUTE_ID, A.ATTRIBUTE_NAME, S.STRING_VALUE, A.ATTRIBUTE_TYPE, NUMERIC_VALUE, [OBJECT_NAME], OBJECT_TYPE, S.CREATED_USER, S.CREATED_DATE, S.MODIFIED_USER, S.MODIFIED_DATE
		FROM	TB_FAMILY F, TB_CATEGORY C, TB_FAMILY_SPECS S, TB_ATTRIBUTE A, TB_CATALOG_FAMILY TF, TB_CATALOG TCN
		WHERE	F.CATEGORY_ID = C.CATEGORY_ID AND
			F.FAMILY_ID = S.FAMILY_ID AND
			TF.CATALOG_ID=@CATID AND 
			TF.CATALOG_ID= TCN.CATALOG_ID AND 
			TF.FAMILY_ID=F.FAMILY_ID AND
			S.ATTRIBUTE_ID = A.ATTRIBUTE_ID AND
			(S.STRING_VALUE LIKE @SEARCHSTR OR
			 S.[OBJECT_NAME] LIKE @SEARCHSTR OR
			 S.[OBJECT_TYPE] LIKE @SEARCHSTR) AND
			 A.ATTRIBUTE_NAME LIKE @ATTRVALUE
		ORDER BY C.CATEGORY_ID, F.FAMILY_NAME
	END
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_PowerSearchCategory]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_PowerSearchCategory]	
	@QRYPARAM NVARCHAR(1000),
	@CATALOG_ID INT = 0,
	@USE_WILDCARDS BIT = 0,
	@CATID INT = 0											
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @SEARCHSTR NVARCHAR(1000)

	IF (@USE_WILDCARDS = 1)
	BEGIN
		SET @SEARCHSTR = @QRYPARAM
	END
	ELSE
	BEGIN
		SET @SEARCHSTR = '%' + @QRYPARAM + '%'
	END

	SELECT	TS.CATALOG_ID,TCN.CATALOG_NAME, C.* 
	FROM	TB_CATEGORY C, TB_CATALOG_SECTIONS TS, TB_CATALOG TCN
	WHERE	(UPPER(C.CATEGORY_NAME) LIKE @SEARCHSTR OR
				UPPER(C.CATEGORY_ID) LIKE @SEARCHSTR OR
				UPPER(C.SHORT_DESC) LIKE  @SEARCHSTR OR
				UPPER(C.IMAGE_FILE) LIKE @SEARCHSTR OR
				UPPER(C.IMAGE_TYPE) LIKE @SEARCHSTR OR
				UPPER(C.IMAGE_NAME) LIKE @SEARCHSTR OR
				UPPER(C.IMAGE_FILE2) LIKE @SEARCHSTR OR
				UPPER(C.IMAGE_TYPE2) LIKE @SEARCHSTR OR
				UPPER(C.IMAGE_NAME2) LIKE @SEARCHSTR OR
				UPPER(C.CUSTOM_TEXT_FIELD1)LIKE @SEARCHSTR OR
				UPPER(C.CUSTOM_TEXT_FIELD2)LIKE @SEARCHSTR OR
				UPPER(C.CUSTOM_TEXT_FIELD3)LIKE @SEARCHSTR ) AND
				TS.CATALOG_ID=@CATID AND
				TCN.CATALOG_ID = TS.CATALOG_ID AND
				TS.CATEGORY_ID=C.CATEGORY_ID
ORDER BY C.CATEGORY_NAME ASC

END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_PivotTable]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_PivotTable]( @CATALOG_ID INT , @FAMILY_ID INT , @TMODE  nVARCHAR(100), @ROWATTRIBUTES  NVARCHAR(MAX) , @COLUMNATTRIBUTES NVARCHAR(MAX), @CONTINUECALCULATEDCols int)
AS
BEGIN  

DECLARE @PRODUCT_ID  INT , @ATTRIBUTE_ID INT , @ATTRIBUTE_NAME NVARCHAR(2000)  
DECLARE @ATTRTYPE INT , @ATTRIBUTE_VALUE NVARCHAR(MAX) , @SORT_ORDER INT 
DECLARE  @ATTRIBUTESTYLE NVARCHAR(2000)
DECLARE @OPTIONVALUE NVARCHAR(MAX),  @OPTIONKEY NVARCHAR(500)  


DECLARE  @attrIDs NVARCHAR(MAX) 
DECLARE  @attrTypes NVARCHAR(MAX) 
DECLARE  @attrStyles NVARCHAR(MAX)
DECLARE @ISATTRIBUTECALCFORMULA NVARCHAR(4000) 
DECLARE @CHECKPRODUCTCOUNT INT 
DECLARE  @SQL NVARCHAR(MAX)

DECLARE @CALCColumn nvarchar(1000)
DECLARE @Pid INT 
DECLARE @CALCFORMULA NVARCHAR(4000)
DECLARE  @CALCOLid INT , @ISCALCULATED INT
DECLARE @GRANULARTYPE NVARCHAR(MAX)
 declare @cnt int 
/*----FOR PIVOT */

IF ((UPPER(@TMODE)='FORPIVOT'))
	BEGIN /*----PIVOT	*/
			SELECT IDENTITY (int,1,1)as RECORD_ID , @CATALOG_ID AS CATALOG_ID ,  @FAMILY_ID AS FAMILY_ID , tp.product_id AS PRODUCT_ID  , 
		    tpf.SORT_ORDER  AS SORT_ORDER  INTO #FORPIVOT  
		    FROM  TB_PRODUCT  tp , TB_PROD_FAMILY tpf , TB_CATALOG_PRODUCT TCP   WHERE 1=2 
			 
		IF ((len(rtrim(@OPTIONVALUE)) > 0))
		BEGIN /*-- FILTER */
				INSERT  into #FORPIVOT 
				SELECT  @FAMILY_ID AS FAMILY_ID , @CATALOG_ID AS CATALOG_ID ,  TP.PRODUCT_ID AS PRODUCT_ID  , 
				 TPF.SORT_ORDER  AS SORT_ORDER  
				 FROM  TB_PRODUCT  TP , TB_PROD_FAMILY TPF , TB_CATALOG_PRODUCT TCP   WHERE  TPF.PRODUCT_ID = TP.PRODUCT_ID and 
				 TP.PRODUCT_ID IN ( SELECT PRODUCT_ID FROM TB_PROD_SPECS WHERE string_value  =  @OPTIONVALUE AND ATTRIBUTE_ID = @OPTIONKEY ) AND 
				 TPF.FAMILY_ID = @FAMILY_ID  AND TCP.CATALOG_ID = @CATALOG_ID AND TCP.PRODUCT_ID = TP.PRODUCT_ID 
				
		END /*-- FILTER */
		ELSE /*-- WITHOUT FILTER */
		 BEGIN 
			INSERT INTO #FORPIVOT
			SELECT @FAMILY_ID AS FAMILY_ID , @CATALOG_ID AS CATALOG_ID,  TP.PRODUCT_ID AS PRODUCT_ID  , TPF.SORT_ORDER AS SORT_ORDER  
			FROM  TB_PRODUCT  TP , TB_PROD_FAMILY TPF , TB_CATALOG_PRODUCT TCP   WHERE  TPF.PRODUCT_ID = TP.PRODUCT_ID and 
			TPF.FAMILY_ID =  @FAMILY_ID  AND TCP.CATALOG_ID= @CATALOG_ID AND  TCP.PRODUCT_ID = TP.PRODUCT_ID 
		END 

/*------------------------------------------ATTRIBUTES IN LIST ----------------------------------------------------------*/
				
		DECLARE   CURSOR_ATTRIBUTES  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME, TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER 
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTES TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TCA.ATTRIBUTE_ID = TA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID  
		ORDER BY TPFL.SORT_ORDER ASC 
		
		OPEN CURSOR_ATTRIBUTES   
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		WHILE @@FETCH_STATUS = 0
		BEGIN 
			SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
		    SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME, '''', '''''')
			set @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , '[', '[[')
			SET @ATTRIBUTE_NAME = REPLACE(@ATTRIBUTE_NAME , ']', ']]')
			
			SELECT  @SQL = 'ALTER TABLE #FORPIVOT ADD [' + @ATTRIBUTE_NAME  + '] NVARCHAR(MAX) ' 
			EXEC(@SQL)

		
		/*---type checking for filling values */
			
			DECLARE  CURSORPRODUCT CURSOR FOR 
			SELECT  DISTINCT PRODUCT_ID FROM #FORPIVOT  
			OPEN 		CURSORPRODUCT
			FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
			WHILE @@FETCH_STATUS=0
			BEGIN 
				IF ( @ATTRTYPE=1)
				BEGIN 
					SET  @GRANULARTYPE =(SELECT 	ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID =@ATTRIBUTE_ID )
					SET @GRANULARTYPE = substring(@GRANULARTYPE,0,2)
					IF (@GRANULARTYPE='N')
					BEGIN 
							SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
							SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 
					ELSE
					BEGIN 
							SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
							SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' +  '''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 

				END 
					 IF ( @ATTRTYPE=6)
					BEGIN
						SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  ATTRIBUTE_VALUE  FROM TB_PARTS_KEY  WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID= @FAMILY_ID), '''', '''''')
						SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=N' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
						EXEC(@SQL)
					END 
					IF ( @ATTRTYPE=4)
					BEGIN
						SET @ATTRIBUTE_VALUE = (SELECT NUMERIC_VALUE  FROM TB_PROD_SPECS  WHERE PRODUCT_ID = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID )
						SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
						EXEC(@SQL)
					END 
						
					IF ( @ATTRTYPE=3)
					BEGIN
SET @ATTRIBUTE_VALUE =REPLACE((SELECT DISTINCT  STRING_VALUE  FROM TB_PROD_SPECS WHERE PRODUCT_ID =@PRODUCT_ID  and ATTRIBUTE_ID = @ATTRIBUTE_ID), '''', '''''')
							SELECT  @SQL ='UPDATE  #FORPIVOT SET  [' + @ATTRIBUTE_NAME  + ']'  + '=' +  ' ''' + @ATTRIBUTE_VALUE + '''  WHERE PRODUCT_ID =' + CONVERT( nVARCHAR , @PRODUCT_ID  )  
							EXEC(@SQL)
					END 

				FETCH NEXT FROM CURSORPRODUCT INTO @PRODUCT_ID 
				END
				CLOSE CURSORPRODUCT
				DEALLOCATE CURSORPRODUCT
				
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER
		END 
		CLOSE CURSOR_ATTRIBUTES 
		DEALLOCATE CURSOR_ATTRIBUTES 
		
		SELECT  @cnt = count(*) FROM  #FORPIVOT
		IF (@cnt > 0)
		BEGIN
		SELECT * FROM #FORPIVOT ORDER BY SORT_ORDER
			SET  @cnt = 0 
		END 
/*-------PIVOT EXTENDED PROPERTIES*/
		SET @attrIDs = ''
		SET @attrTypes= ''
		SET @attrStyles = '' 

		CREATE TABLE  #FORPIVOT_EXTENDEDPROPERTIES (FORPIVOT  Nvarchar(1000))
		DECLARE   CURSOR_ATTRIBUTES_INLIST  CURSOR  FOR  
		SELECT DISTINCT TA.ATTRIBUTE_NAME, TPFL.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE ,  TPFL.SORT_ORDER , TA.STYLE_NAME 
		FROM TB_PROD_FAMILY_ATTR_LIST  TPFL,   TB_ATTRIBUTE TA , TB_CATALOG_ATTRIBUTEs  TCA  WHERE  TPFL.FAMILY_ID = @FAMILY_ID  
		AND TA.ATTRIBUTE_ID = TPFL.ATTRIBUTE_ID AND TA.ATTRIBUTE_ID = TCA.ATTRIBUTE_ID AND TCA.CATALOG_ID= @CATALOG_ID 
		ORDER BY TPFL.SORT_ORDER ASC 
	
		OPEN CURSOR_ATTRIBUTES_INLIST   
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER , @ATTRIBUTESTYLE
		WHILE @@FETCH_STATUS = 0
		BEGIN 
		    SET @attrIDs =  @attrIDS +  '''' + CONVERT(nvarchar(200), @ATTRIBUTE_ID) +  '''' + ','
			SET @attrTypes = @attrTypes +  ''''  + CONVERT(nvarchar(200), @ATTRTYPE)  +  ''''   + ','
			SET @attrStyles = @attrStyles + '''' + isnull(@ATTRIBUTESTYLE,'') + '''' + ','
			SET @ATTRIBUTE_NAME = RTRIM(LTRIM(@ATTRIBUTE_NAME))
		    SELECT  @SQL = 'ALTER TABLE #FORPIVOT_EXTENDEDPROPERTIES  ADD [' + @ATTRIBUTE_NAME  + ']  nvarchar(4000) '  
			PRINT @attrStyles
			PRINT @ATTRIBUTESTYLE
			EXEC(@SQL)
			
														
		FETCH NEXT FROM CURSOR_ATTRIBUTES_INLIST  INTO @ATTRIBUTE_NAME,  @ATTRIBUTE_ID, @ATTRTYPE , @SORT_ORDER, @ATTRIBUTESTYLE
		END 

			SET @attrIDs = substring(@attrIDs , 0 ,len(@attrIDs))
			SET @attrTypes = substring(@attrTypes , 0 , len(@attrTypes))
			SET @attrStyles = substring(@attrStyles , 0 , len(@attrStyles))
		    PRINT @attrStyles

		IF (LEN(rtrim(@attrIDs)) > 0)
		BEGIN 
			SELECT @SQL= ' INSERT  INTO #FORPIVOT_EXTENDEDPROPERTIES values  (''FORPIVOT'','+ @attrIDs + ')'
			EXEC (@SQL)
			
			SELECT  @SQL= ' INSERT  INTO #FORPIVOT_EXTENDEDPROPERTIES values  (''FORPIVOT'','+ @attrTypes + ')'
			EXEC (@SQL)
		
	     	SELECT  @SQL= ' INSERT INTO  #FORPIVOT_EXTENDEDPROPERTIES values  (''FORPIVOT'','+ @attrStyles + ')'
			EXEC (@SQL)
		END   
		ELSE 
		BEGIN 
			PRINT 'LEN OF ATTRIBUTE_ID IS LESS 0 ' 
			END 
		CLOSE CURSOR_ATTRIBUTES_INLIST 
		DEALLOCATE CURSOR_ATTRIBUTES_INLIST
	
		SELECT  @cnt = count(*) from #FORPIVOT_EXTENDEDPROPERTIES
		IF (@cnt > 0 )
		BEGIN
			SELECT   * FROM #FORPIVOT_EXTENDEDPROPERTIES
		END 
		ELSE 
			BEGIN
				PRINT  ' count Is less for Extended Properties '
			END 

	/*-- END PIVOT EXTENDED PROPERTIES */
	

END /*---PIVOT */

END /*--PROCEDURE*/


/*---Run for Pivot */
IF (UPPER(@TMODE)='FORPIVOT')
BEGIN 

/*---ROW attributecount */
 DECLARE  @index INT
 DECLARE  @rowFieldCount INT
 DECLARE  @startIndex INT
 DECLARE  @temp nVARCHAR(max) 
 DECLARE  @rowFields nVARCHAR(max)
 
 IF EXISTS (SELECT name FROM sysobjects WHERE  name = N'#rowFieldTable' AND type = 'T')
 DROP table #rowFieldTable

 CREATE  table #rowFieldTable(attribute_name nVARCHAR(1000))
 SET @rowFields = @ROWATTRIBUTES
 SET @index = 0
 SET @startIndex = 0
 SET @rowFieldCount = 0
  while @index < len(@rowFields)
  begin
    	SET @temp = substring(@rowFields,@index,1)
	SET @index = @index + 1
	IF(@temp = ',')
		BEGIN 
			SET @rowFieldCount = @rowFieldCount+1 
			insert INTo #rowFieldTable values(substring(@rowFields,@startIndex,@index-1))
			SET @startIndex = 0
			SET @rowFields = substring(@rowFields,@index,len(@rowFields)+1)
			SET @index = 0
		END 
   END   

	INSERT  INTO #rowFieldTable values(@rowFields)
	SELECT  * FROM  #rowFieldTable
		

IF (len(@ROWATTRIBUTES) >0 )
BEGIN  
	 SET @rowFieldCount=  @rowFieldCount+1
END  

/*--COLUMN */
 DECLARE  @columnFieldCount INT
 DECLARE  @colFields nVARCHAR(max)
 
 IF EXISTS (SELECT name FROM sysobjects WHERE  name = N'#columnFieldTable' AND type = 'T')
 DROP TABLE #columnFieldTable

 CREATE  TABLE  #columnFieldTable(attribute_name nVARCHAR(max))
 SET @colFields = @COLUMNATTRIBUTES
 SET @index = 0
 SET @startIndex = 0
 SET @columnFieldCount = 0
  while @index < len(@colFields)
  BEGIN 
    	SET @temp = substring(@colFields,@index,1)
	SET @index = @index + 1
	IF (@temp = ',')
		BEGIN 
			SET @columnFieldCount = @columnFieldCount+1 
			INSERT  INTO #columnFieldTable VALUES (substring(@colFields,@startIndex,@index-1))
			SET @startIndex = 0
			SET @colFields = substring(@colFields,@index,len(@colFields)+1)
			SET @index = 0
		END 
 END   
		INSERT  INTO #columnFieldTable values(@colFields)
         SELECT * FROM #columnFieldTable

IF (len(@COLUMNATTRIBUTES) > 0 )
BEGIN  
   SET @columnFieldCount = @columnFieldCount + 1
END 
 

/*----ROW ATTRIBUTE COUNT */
DECLARE  @rowattributecnt  INT 
 SELECT  @SQL = ' select distinct attribute_name from tb_attribute ta, tb_prod_Family_attr_list tpfl 
		         where tpfl.attribute_id = ta.attribute_id
 		         and tpfl.family_id =  ' + CONVERT(nVARCHAR(100),@FAMILY_ID)  + '
		         and ta.attribute_name  in  (select attribute_name from #rowFieldTable )'
PRINT  @SQL
EXEC  (@SQL)
SET  @rowattributecnt = @@rowcount

/*----COLUMN ATTRIBUTE COUNT */
DECLARE  @columnttributecnt  INT 
 SELECT  @SQL = ' select distinct attribute_name from tb_attribute ta, tb_prod_Family_attr_list tpfl 
		         where tpfl.attribute_id = ta.attribute_id
 		         and tpfl.family_id =  ' + convert(nVARCHAR(100),@FAMILY_ID)  + '
 		         and ta.attribute_name  in  (select attribute_name from #columnFieldTable)'
PRINT @SQL
EXEC  (@SQL)
SET @columnttributecnt = @@rowcount



/*--Construct Row Select Fields*/
SET @temp = ''
DECLARE  @rowSelectFields nVARCHAR(max)
SET @rowSelectFields = ''
	DECLARE   rowattributes CURSOR FOR 
	SELECT  attribute_name  FROM  #rowFieldTable
	OPEN  rowattributes
	FETCH NEXT  FROM  rowattributes INTO @temp
	WHILE  @@fetch_status =0 
    BEGIN  
		IF (len(@rowSelectFields) > 0)
		BEGIN 
		   SET @rowSelectFields = @rowSelectFields +','+ '[' + @temp + ']'
		END 
		ELSE 
		BEGIN 
			SET  @rowSelectFields = @rowSelectFields + '[' + @temp + ']'
		END
		FETCH  NEXT  from rowattributes INTo @temp
     END 
CLOSE  rowattributes 
DEALLOCATE  rowattributes 

/*--Construct Column Select Fields*/
SET @temp = ''
DECLARE  @columnSelectFields nVARCHAR(max)
SET @columnSelectFields = ''
	DECLARE   colattributes cursor for 
	SELECT  attribute_name FROM  #columnFieldTable 
	OPEN  colattributes
	FETCH NEXT  FROM  colattributes INTO @temp
		WHILE  @@fetch_status =0 
    		  BEGIN  
		IF  (len(@columnSelectFields) > 0)
		BEGIN 
			SET @columnSelectFields = @columnSelectFields + ',' + '[' + @temp + ']' 
		END
		ELSE
		BEGIN 
			SET @columnSelectFields = @columnSelectFields + '[' + @temp + ']'
		END
	FETCH  NEXT  FROM  colattributes INTo @temp
      END 
CLOSE  colattributes 
DEALLOCATE colattributes 

END  /*-- End Run for Pivot */

IF (UPPER(@TMODE)='FORPIVOT')
BEGIN 
	IF (@rowFieldCount=@rowattributecnt  AND @columnFieldCount= @columnttributecnt and @rowFieldCount !=0 and  @columnFieldCount !=0)
	BEGIN 	
			SELECT @SQL =  ' SELECT ' + @rowSelectFields +  ' , MIN(sort_order) AS SORT_ORDER FROM   #FORPIVOT   GROUP BY ' + @rowSelectFields +' ORDER BY  SORT_ORDER , '  + @rowSelectFields + ''
			EXEC (@SQL)
			SELECT @SQL =  ' SELECT  ' + @columnSelectFields + ' , min(sort_order) AS SORT_ORDER FROM  #FORPIVOT  GROUP BY ' + @columnSelectFields + ' ORDER BY  SORT_ORDER ,  ' + @columnSelectFields + ''
			EXEC (@SQL)
	END 
	ELSE
	    BEGIN 
	    PRINT ' ATTRIBUTE COUNT DIFFERS '
	END 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_NewCatalog]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_NewCatalog] 
@REFCATALOGID INT, 
@CATALOGNAME NVARCHAR(100), 
@VERSION NVARCHAR(50), 
@DESCRIPTION NVARCHAR(500) AS 
BEGIN 
DECLARE @NEWCATALOGID INT  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_CATALOGCATEGORY') 
BEGIN 
  DROP TABLE TEMP_CATALOGCATEGORY  
END   

  SET @NEWCATALOGID=(SELECT MAX(CATALOG_ID) FROM TB_CATALOG) SELECT CATEGORY_ID,SORT_ORDER INTO TEMP_CATALOGCATEGORY   FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID=@REFCATALOGID  

  INSERT INTO TB_CATALOG_SECTIONS (CATALOG_ID,CATEGORY_ID,SORT_ORDER) SELECT  @NEWCATALOGID,CATEGORY_ID,SORT_ORDER     FROM TEMP_CATALOGCATEGORY   
  
  INSERT INTO TB_CATALOG_FAMILY (CATALOG_ID,CATEGORY_ID,FAMILY_ID,SORT_ORDER) SELECT  @NEWCATALOGID,CATEGORY_ID,       FAMILY_ID,SORT_ORDER FROM TB_CATALOG_FAMILY WHERE CATALOG_ID= @REFCATALOGID 
 
  INSERT INTO TB_CATALOG_PRODUCT (CATALOG_ID,PRODUCT_ID) SELECT @NEWCATALOGID,PRODUCT_ID FROM TB_CATALOG_PRODUCT       WHERE CATALOG_ID=@REFCATALOGID  

  INSERT INTO TB_CATALOG_ATTRIBUTES (CATALOG_ID,ATTRIBUTE_ID) SELECT @NEWCATALOGID,ATTRIBUTE_ID FROM                   TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@REFCATALOGID  
  INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,IS_DEFAULT,STRUCTURE_NAME) SELECT @NEWCATALOGID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,IS_DEFAULT,STRUCTURE_NAME FROM TB_FAMILY_TABLE_STRUCTURE WHERE CATALOG_ID=@REFCATALOGID
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_CATALOGCATEGORY') 
BEGIN 
  DROP TABLE TEMP_CATALOGCATEGORY  
END  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_WEBFAMLST]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_WEBFAMLST](@SESS_ID VARCHAR(MAX))
as
DECLARE @PSESS_ID VARCHAR(MAX)='##FF' + @SESS_ID
DECLARE @TSESS_ID VARCHAR(MAX)='##TF' + @SESS_ID
DECLARE @FSESS_ID VARCHAR(MAX)='##FR' + @SESS_ID
DECLARE @CSESS_ID VARCHAR(MAX)='##CR' + @SESS_ID
SET @SESS_ID ='##' + @SESS_ID
DECLARE @STR VARCHAR(MAX)=''
DECLARE @STR2 VARCHAR(MAX)=''
DECLARE @CNME VARCHAR(MAX)=''
DECLARE @CTYP VARCHAR(MAX)=''
DECLARE @QUERY NVARCHAR(MAX)=''
DECLARE @CNT INT=0
DECLARE @CNT2 INT=0
DECLARE @FLG INT=0
DECLARE @CT INT=0
DECLARE @ParmDefinition nvarchar(500);

	BEGIN
		SET @QUERY = 'SELECT DISTINCT(FAMILY_ID),SUBFAMILY_ID INTO '+ @TSESS_ID +' from '+ @SESS_ID+' where FAMILY_ID<>0 order by FAMILY_ID'
		EXEC (@QUERY)

		SET @QUERY = 'select  DISTINCT(ta.ATTRIBUTE_NAME),ATTRIBUTE_DATATYPE INTO '+ @PSESS_ID +' from TB_FAMILY_SPECS tfs,TB_ATTRIBUTE ta
		where tfs.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
		(FAMILY_ID IN (SELECT FAMILY_ID FROM '+ @TSESS_ID+') OR FAMILY_ID IN (SELECT SUBFAMILY_ID FROM '+ @TSESS_ID+'))'
		EXEC (@QUERY)

		SET @QUERY ='SELECT @retvalOUT = COUNT(*) FROM '+ @PSESS_ID
		SET @ParmDefinition = '@retvalOUT int OUTPUT';
		EXEC sp_executesql @QUERY, @ParmDefinition, @retvalOUT=@CNT OUTPUT;

		
		SET @CNME = 'FAMILY_ID VARCHAR(MAX)' + ','+'SUBFAMILY_ID VARCHAR(MAX)' + ','
		SET @QUERY = 'DECLARE REP2 CURSOR FOR SELECT ATTRIBUTE_NAME,ATTRIBUTE_DATATYPE FROM ' + @PSESS_ID
		EXEC sp_executesql @QUERY
		
		
		OPEN REP2
			WHILE (@CNT > @FLG)
				BEGIN
					SET @FLG=@FLG + 1
					FETCH NEXT FROM REP2 INTO @STR,@STR2
					
					IF (ISNUMERIC(SUBSTRING(@STR,1,1))<>1 AND SUBSTRING(@STR,1,1)<>'-')
						BEGIN
							SET @CNME =@CNME + (Select dbo.ReplaceSpecialChars(@STR,'_')) + ' VARCHAR(MAX) NULL' + ','
							SET @CTYP =@CTYP + @STR2 + '.'
						END
					ELSE
						BEGIN
							SET @CNME =@CNME + '_' + (Select dbo.ReplaceSpecialChars(@STR,'_')) + ' VARCHAR(MAX) NULL' + ','
							SET @CTYP =@CTYP + @STR2 + '.'
						END
				END
		CLOSE REP2
		DEALLOCATE REP2
		SET @QUERY = 'DROP TABLE ' + @PSESS_ID
		EXEC (@QUERY)
		-------------------------------------------
		IF OBJECT_ID('tempdb..'+@FSESS_ID) IS NOT NULL
			BEGIN
				SET @QUERY = 'DROP TABLE ' + @FSESS_ID
				EXEC (@QUERY)
				SET @QUERY = 'CREATE TABLE '+ @FSESS_ID +'('+ @CNME + ')'
				EXEC(@QUERY)
			END
		ELSE 
			BEGIN
				SET @QUERY = 'CREATE TABLE '+ @FSESS_ID +'('+ @CNME + ')'
				EXEC(@QUERY)
			END

		SET @QUERY = 'INSERT INTO ' +@FSESS_ID +'(FAMILY_ID,SUBFAMILY_ID) SELECT FAMILY_ID,SUBFAMILY_ID from '+ @TSESS_ID+' WHERE FAMILY_ID<>0 ORDER BY FAMILY_ID'
		EXEC (@QUERY)
		-------------------------
		SET @CNT = (select COUNT(*) from tempdb.sys.columns where object_id = object_id('tempdb..'+@FSESS_ID))
		------------------------------
		
		SET @QUERY = 'SELECT * INTO ' + @CSESS_ID + ' FROM dbo.Split(' + '''' + @CTYP + '''' +','+''''+'.'+'''' +')'
		EXEC (@QUERY)
		
		SET @CTYP = ''
		
		
		SET @QUERY = 'select  ta.ATTRIBUTE_NAME,tfs.STRING_VALUE,tfs.FAMILY_ID,tfs.NUMERIC_VALUE INTO '+ @PSESS_ID+' from TB_FAMILY_SPECS tfs,
		TB_ATTRIBUTE ta	where tfs.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND (FAMILY_ID IN (SELECT FAMILY_ID FROM '+ @TSESS_ID+')
		OR FAMILY_ID IN (SELECT SUBFAMILY_ID FROM '+ @TSESS_ID+'))'
		EXEC (@QUERY)
		
		SET @QUERY = 'DROP TABLE '+ @TSESS_ID
		EXEC (@QUERY)
		
		SET @FLG=0
		DECLARE COL CURSOR FOR 
		select name from tempdb.sys.columns where object_id = object_id('tempdb..'+@FSESS_ID);
		OPEN COL
		FETCH NEXT FROM COL INTO @STR
		FETCH NEXT FROM COL INTO @STR
			WHILE (@CNT >= @FLG)
				BEGIN
					SET @FLG=@FLG + 1
					FETCH NEXT FROM COL INTO @STR
					
						SET @QUERY ='SELECT @retvalOUT=(SELECT TOP(1) strval FROM '+ @CSESS_ID+')'
						SET @ParmDefinition = '@retvalOUT VARCHAR(MAX) OUTPUT';
						EXEC sp_executesql @QUERY, @ParmDefinition, @retvalOUT=@CTYP OUTPUT;
						PRINT @CTYP
						IF (SUBSTRING(@CTYP,1,1)='T')
							BEGIN
								SET @QUERY = 'update '+ @FSESS_ID+' SET ' + @STR + '= F.String_Value from '+ @PSESS_ID+' F
										 where (F.FAMILY_ID ='+ @FSESS_ID+'.FAMILY_ID OR F.FAMILY_ID ='+@FSESS_ID+'.SUBFAMILY_ID) AND '+ @FSESS_ID+'.'+ @STR + ' IS NULL AND F.String_Value <>' + '''' + '''' +
										 ' AND ' + '(Select dbo.ReplaceSpecialChars(F.ATTRIBUTE_NAME,' + '''' + '_' + '''' + '))'+ '=' + '''' + @STR + ''''
								EXEC (@QUERY)
							END
						ELSE
							BEGIN
								SET @QUERY = 'update '+ @FSESS_ID+' SET ' + @STR + '= F.Numeric_Value from '+ @PSESS_ID+' F
								 where (F.FAMILY_ID ='+ @FSESS_ID+'.FAMILY_ID OR F.FAMILY_ID ='+@FSESS_ID+'.SUBFAMILY_ID) AND '+ @FSESS_ID+'.'+ @STR + ' IS NULL' +
								 ' AND ' + '(Select dbo.ReplaceSpecialChars(F.ATTRIBUTE_NAME,' + '''' + '_' + '''' + '))'+ '=' + '''' + @STR + ''''
								EXEC (@QUERY)
							END
							
						SET @QUERY ='DELETE TOP(1) FROM '+ @CSESS_ID
						EXEC (@QUERY)
				END
		CLOSE COL
		DEALLOCATE COL
		
		SET @QUERY = 'DROP TABLE ' + @PSESS_ID
		EXEC (@QUERY)
		
		SET @QUERY = 'DROP TABLE ' + @CSESS_ID
		EXEC (@QUERY)
	END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_NavigatorInsertFamilies]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_NavigatorInsertFamilies](@CATALOG_ID INT ,@PARENT_ID NVARCHAR(20))
AS
BEGIN  
		DECLARE @ITEMCOUNT  INT , @TEMP_FAMILYID NVARCHAR(20) , @SQL NVARCHAR(4000), @TEMP_PARENT_CATEGORY NVARCHAR(20)
			
		IF((SELECT MAX(TB_SUBFAMILY.SORT_ORDER) FROM TB_SUBFAMILY INNER JOIN
			TB_CATALOG_FAMILY ON TB_SUBFAMILY.SUBFAMILY_ID = TB_CATALOG_FAMILY.FAMILY_ID
			WHERE TB_CATALOG_FAMILY.CATALOG_ID = @CATALOG_ID AND TB_SUBFAMILY.SUBFAMILY_ID IN (SELECT SUBFAMILY_ID FROM TB_SUBFAMILY WHERE FAMILY_ID = @PARENT_ID)) IS NULL)
		BEGIN
		SET @ITEMCOUNT = 0
		END
		ELSE
		BEGIN
		SET @ITEMCOUNT = (SELECT MAX(TB_SUBFAMILY.SORT_ORDER) FROM TB_SUBFAMILY INNER JOIN
			TB_CATALOG_FAMILY ON TB_SUBFAMILY.SUBFAMILY_ID = TB_CATALOG_FAMILY.FAMILY_ID
			WHERE TB_CATALOG_FAMILY.CATALOG_ID = @CATALOG_ID AND TB_SUBFAMILY.SUBFAMILY_ID IN (SELECT SUBFAMILY_ID FROM TB_SUBFAMILY WHERE FAMILY_ID = @PARENT_ID))
		END

		DECLARE CURSOR_FAMILYS  CURSOR  FOR  
		SELECT FAMILY_ID,CATEGORY_ID FROM TB_FAMILY WHERE PARENT_FAMILY_ID = @PARENT_ID
		ORDER BY FAMILY_NAME ASC

		OPEN CURSOR_FAMILYS   
		FETCH NEXT FROM CURSOR_FAMILYS INTO @TEMP_FAMILYID, @TEMP_PARENT_CATEGORY
		WHILE @@FETCH_STATUS = 0
		BEGIN 

		SET @ITEMCOUNT = @ITEMCOUNT + 1
				
		IF((SELECT COUNT(FAMILY_ID) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID AND FAMILY_ID = @TEMP_FAMILYID) = 0)
		BEGIN
		INSERT INTO TB_CATALOG_FAMILY(CATALOG_ID,FAMILY_ID,SORT_ORDER,CATEGORY_ID) VALUES(@CATALOG_ID,@TEMP_FAMILYID,@ITEMCOUNT,@TEMP_PARENT_CATEGORY) 
		END 

		IF((SELECT COUNT(*) FROM TB_SUBFAMILY WHERE FAMILY_ID = @PARENT_ID AND SUBFAMILY_ID = @TEMP_FAMILYID)>0)
		BEGIN
			UPDATE TB_SUBFAMILY SET SORT_ORDER = @ITEMCOUNT WHERE FAMILY_ID =@PARENT_ID AND SUBFAMILY_ID = @TEMP_FAMILYID
		END
		ELSE
		BEGIN
			INSERT INTO TB_SUBFAMILY(FAMILY_ID,SUBFAMILY_ID,SORT_ORDER) VALUES(@PARENT_ID,@TEMP_FAMILYID,@ITEMCOUNT)
		END
		
		FETCH NEXT FROM CURSOR_FAMILYS INTO @TEMP_FAMILYID, @TEMP_PARENT_CATEGORY 
		END
				
				CLOSE CURSOR_FAMILYS
				DEALLOCATE CURSOR_FAMILYS
END
GO
/****** Object:  UserDefinedFunction [dbo].[Category]    Script Date: 07/26/2012 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Category](@catalog_id int)
returns table
as
return (select	
		tb_catalog_sections.CATALOG_ID,tb_catalog.CATALOG_NAME,tb_category.CATEGORY_ID,tb_category.CATEGORY_NAME,
		tb_category.PARENT_CATEGORY,TB_CATEGORY.SHORT_DESC,TB_CATEGORY.IMAGE_FILE,TB_CATEGORY.IMAGE_TYPE,
		TB_CATEGORY.IMAGE_NAME,          TB_CATEGORY.IMAGE_NAME2,TB_CATEGORY.IMAGE_FILE2,TB_CATEGORY.IMAGE_TYPE2, 	
		TB_CATALOG_SECTIONS.SORT_ORDER,tb_category.CUSTOM_TEXT_FIELD1,tb_category.CUSTOM_TEXT_FIELD2,
		tb_category.CUSTOM_TEXT_FIELD3, 	
		tb_category.CUSTOM_NUM_FIELD1,tb_category.CUSTOM_NUM_FIELD2,tb_category.CUSTOM_NUM_FIELD3,        
		tb_catalog.CREATED_USER AS CATALOG_CREATED_USER,         tb_catalog.CREATED_DATE AS CATALOG_CREATED_DATE,   
		tb_catalog.MODIFIED_USER AS CATALOG_MODIFIED_USER,    
		tb_category.MODIFIED_DATE AS CATALOG_MODIFIED_DATE, 	
		tb_category.CREATED_USER AS CATEGORY_CREATED_USER,     
		tb_category.CREATED_DATE AS CATEGORY_CREATED_DATE,      
		tb_category.MODIFIED_USER AS CATEGORY_MODIFIED_USER,  
		tb_category.MODIFIED_DATE AS CATEGORY_MODIFIED_DATE 
 from	
		tb_category, tb_catalog_sections,tb_catalog
 where	tb_catalog_sections.category_id = tb_category.category_id and  
		tb_catalog.catalog_id=tb_catalog_sections.catalog_id and tb_catalog.catalog_id=@catalog_id)
GO
/****** Object:  UserDefinedFunction [dbo].[Family]    Script Date: 07/26/2012 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Family](@catalog_id int)
returns table
as
return (
select distinct	 
tb_catalog_family.CATALOG_ID,TB_FAMILY.FAMILY_ID,TB_FAMILY.FAMILY_NAME,TB_FAMILY.FOOT_NOTES,
          TB_FAMILY.PARENT_FAMILY_ID,TB_FAMILY.ROOT_FAMILY,TB_FAMILY.STATUS,tb_family_table_structure.family_table_structure AS PRODUCT_TABLE_STRUCTURE, 
         TB_FAMILY.CATEGORY_ID,TB_CATALOG_FAMILY.SORT_ORDER AS FAMILY_SORT_ORDER, 
		cast(null as int) as SUBFAMILY_SORT_ORDER, 		tb_family.CREATED_USER AS CREATED_USER,   
      tb_family.CREATED_DATE AS CREATED_DATE,         tb_family.MODIFIED_USER AS MODIFIED_USER,  
       tb_family.MODIFIED_DATE AS MODIFIED_DATE  from	tb_catalog_family,tb_family_table_structure,  
       TB_FAMILY where	tb_catalog_family.family_id = tb_family.family_id and tb_family_table_structure.catalog_id=tb_catalog_family.catalog_id and tb_family_table_structure.family_id=tb_catalog_family.family_id and tb_family_table_structure.is_default=1 and parent_family_id=0 and tb_catalog_family.CATALOG_ID=@catalog_id
 union 
select	distinct tb_catalog_family.CATALOG_ID,TB_FAMILY.FAMILY_ID,TB_FAMILY.FAMILY_NAME,TB_FAMILY.FOOT_NOTES,    
      TB_FAMILY.PARENT_FAMILY_ID,TB_FAMILY.ROOT_FAMILY,TB_FAMILY.STATUS,tb_family_table_structure.family_table_structure AS PRODUCT_TABLE_STRUCTURE,  
       TB_FAMILY.CATEGORY_ID,cast(null as int) as FAMILY_SORT_ORDER, 
		tb_subfamily.SORT_ORDER AS SUBFAMILY_SORT_ORDER, 		tb_family.CREATED_USER AS CREATED_USER,    
     tb_family.CREATED_DATE AS CREATED_DATE,         tb_family.MODIFIED_USER AS MODIFIED_USER,     
    tb_family.MODIFIED_DATE AS MODIFIED_DATE  from	tb_catalog_family,tb_family_table_structure,         
  TB_FAMILY LEFT OUTER JOIN TB_SUBFAMILY ON tb_subfamily.SUBFAMILY_ID = TB_FAMILY.FAMILY_ID 
 where	tb_catalog_family.family_id = tb_family.family_id and  tb_family_table_structure.catalog_id=tb_catalog_family.catalog_id and tb_family_table_structure.family_id=tb_catalog_family.family_id and tb_family_table_structure.is_default=1 and parent_family_id<>0 and tb_catalog_family.CATALOG_ID=@catalog_id)
GO
/****** Object:  UserDefinedFunction [dbo].[Family Description]    Script Date: 07/26/2012 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Family Description](@catalog_id int)
returns table
as
return (
SELECT	TB_CATALOG_FAMILY.CATALOG_ID,TB_FAMILY_SPECS.FAMILY_ID,TB_FAMILY_SPECS.ATTRIBUTE_ID,   
      TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,
TB_FAMILY_SPECS.STRING_VALUE,TB_FAMILY_SPECS.NUMERIC_VALUE,        
  (TB_FAMILY_SPECS.OBJECT_NAME),TB_FAMILY_SPECS.OBJECT_TYPE, 	
	TB_FAMILY_SPECS.CREATED_USER AS CREATED_USER,       
  TB_FAMILY_SPECS.CREATED_DATE AS CREATED_DATE,     
    TB_FAMILY_SPECS.MODIFIED_USER AS MODIFIED_USER,     
    TB_FAMILY_SPECS.MODIFIED_DATE AS MODIFIED_DATE       
   FROM	
TB_FAMILY_SPECS, TB_CATALOG_FAMILY, TB_CATALOG_ATTRIBUTES,TB_ATTRIBUTE 
WHERE	
TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY_SPECS.FAMILY_ID AND 		
TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID = TB_FAMILY_SPECS.ATTRIBUTE_ID AND 	
	TB_ATTRIBUTE.ATTRIBUTE_ID=TB_FAMILY_SPECS.ATTRIBUTE_ID AND TB_ATTRIBUTE.PUBLISH2PRINT=1 AND	
TB_CATALOG_FAMILY.CATALOG_ID = TB_CATALOG_ATTRIBUTES.CATALOG_ID and TB_CATALOG_FAMILY.CATALOG_ID=@catalog_id)
GO
/****** Object:  UserDefinedFunction [dbo].[Preview Product Family]    Script Date: 07/26/2012 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Preview Product Family](@catalog_id int,@category_id nvarchar(max))
returns table
as
return (
select	tb_catalog_family.CATALOG_ID,   
tb_prod_family.FAMILY_ID,tb_prod_family.PRODUCT_ID,TB_PROD_SPECS.STRING_VALUE AS CATALOG_ITEM_NUMBER,
 tb_prod_family.SORT_ORDER AS ROW_SORT_ORDER, 		tb_prod_family.CREATED_USER AS CREATED_USER,     
    tb_prod_family.CREATED_DATE AS CREATED_DATE,         tb_prod_family.MODIFIED_USER AS MODIFIED_USER,   
      tb_prod_family.MODIFIED_DATE AS MODIFIED_DATE  		   
from	tb_catalog_family, tb_prod_family, TB_CATALOG_PRODUCT, TB_PROD_SPECS           
where	tb_catalog_family.family_id = tb_prod_family.family_id and 		
tb_prod_family.product_id =  TB_CATALOG_PRODUCT.product_id AND tb_catalog_family.CATALOG_ID=@catalog_id AND 		
TB_PROD_SPECS.ATTRIBUTE_ID = 1 AND TB_PROD_SPECS.PRODUCT_ID = TB_CATALOG_PRODUCT.PRODUCT_ID  AND    
      TB_CATALOG_FAMILY.CATALOG_ID=TB_CATALOG_PRODUCT.CATALOG_ID and tb_prod_family.publish=1 AND
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|'))
)
GO
/****** Object:  UserDefinedFunction [dbo].[Preview Product Attribute]    Script Date: 07/26/2012 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Preview Product Attribute](@catalog_id int,@category_id nvarchar(max))
returns table
as
return (SELECT DISTINCT	
TB_CATALOG_ATTRIBUTES.CATALOG_ID,TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,TB_PROD_SPECS.PRODUCT_ID,TB_PROD_SPECS.ATTRIBUTE_ID,         
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,         
TB_PROD_SPECS.STRING_VALUE,(cast(TB_PROD_SPECS.NUMERIC_VALUE as nvarchar(MAX))) as NUMERIC_VALUE, 		
(TB_PROD_SPECS.OBJECT_NAME),TB_PROD_SPECS.OBJECT_TYPE, 		
TB_PROD_SPECS.CREATED_USER AS CREATED_USER,         
TB_PROD_SPECS.CREATED_DATE AS CREATED_DATE,         
TB_PROD_SPECS.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_SPECS.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER 		 
FROM	
TB_PROD_SPECS, TB_CATALOG_PRODUCT, TB_CATALOG_ATTRIBUTES,TB_ATTRIBUTE TB_ATTRIBUTE,TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY
WHERE	
TB_CATALOG_PRODUCT.PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID 
AND TB_ATTRIBUTE.PUBLISH2PRINT=1 AND TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND	 		
TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID = TB_PROD_SPECS.ATTRIBUTE_ID 
AND         TB_ATTRIBUTE.ATTRIBUTE_ID=TB_PROD_SPECS.ATTRIBUTE_ID  
AND 		TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID=TB_PROD_SPECS.PRODUCT_ID AND  TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID=TB_PROD_SPECS.ATTRIBUTE_ID AND 
TB_CATALOG_PRODUCT.CATALOG_ID = TB_CATALOG_ATTRIBUTES.CATALOG_ID and TB_CATALOG_PRODUCT.CATALOG_ID=@catalog_id
AND
TB_CATALOG_FAMILY.CATALOG_ID=@catalog_id AND TB_CATALOG_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID AND
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|'))

UNION	

SELECT  distinct TB_CATALOG_FAMILY.CATALOG_ID,TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,       
 TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID, TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
NULL as STRING_VALUE,null as NUMERIC_VALUE, 		
null as [OBJECT_NAME],null as OBJECT_TYPE,
TB_PROD_FAMILY_ATTR_LIST.CREATED_USER AS CREATED_USER,         
TB_PROD_FAMILY_ATTR_LIST.CREATED_DATE AS CREATED_DATE,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER 
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PROD_SPECS 
WHERE 
TB_CATALOG_FAMILY.CATALOG_ID = @catalog_id AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_catalog_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND TB_ATTRIBUTE.PUBLISH2PRINT=1 AND 
TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID not in (SELECT ATTRIBUTE_ID FROM TB_PROD_SPECS 
WHERE PRODUCT_ID = TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID) AND 
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|'))

UNION

SELECT  distinct TB_CATALOG_FAMILY.CATALOG_ID,  TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,         
 TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID, TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
NULL as STRING_VALUE,null as NUMERIC_VALUE, 		
null as [OBJECT_NAME],null as OBJECT_TYPE,
TB_PROD_FAMILY_ATTR_LIST.CREATED_USER AS CREATED_USER,         
TB_PROD_FAMILY_ATTR_LIST.CREATED_DATE AS CREATED_DATE,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER 
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PARTS_KEY 
WHERE 
TB_CATALOG_FAMILY.CATALOG_ID = @catalog_id AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_catalog_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND  TB_ATTRIBUTE.PUBLISH2PRINT=1 AND
TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID not in (SELECT ATTRIBUTE_ID FROM TB_PARTS_KEY 
WHERE PRODUCT_ID = TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID) AND 
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|'))
UNION
SELECT DISTINCT	
TB_CATALOG_ATTRIBUTES.CATALOG_ID,TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,TB_PARTS_KEY.PRODUCT_ID,TB_PARTS_KEY.ATTRIBUTE_ID,         
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,         
TB_PARTS_KEY.ATTRIBUTE_VALUE,NULL as NUMERIC_VALUE, 		
NULL AS [OBJECT_NAME],NULL AS [OBJECT_TYPE], 
TB_PARTS_KEY.CREATED_USER AS CREATED_USER,         
TB_PARTS_KEY.CREATED_DATE AS CREATED_DATE,         
TB_PARTS_KEY.MODIFIED_USER AS MODIFIED_USER,         
TB_PARTS_KEY.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER 		 
FROM	
TB_PARTS_KEY, TB_CATALOG_PRODUCT, TB_CATALOG_ATTRIBUTES,TB_ATTRIBUTE TB_ATTRIBUTE ,TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY  
WHERE	
TB_CATALOG_PRODUCT.PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID 
AND TB_ATTRIBUTE.PUBLISH2PRINT=1 AND TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND	 		
TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID = TB_PARTS_KEY.ATTRIBUTE_ID 
AND         TB_ATTRIBUTE.ATTRIBUTE_ID=TB_PARTS_KEY.ATTRIBUTE_ID AND 	
	TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID=TB_PARTS_KEY.PRODUCT_ID AND  TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID=TB_PARTS_KEY.ATTRIBUTE_ID AND  TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=TB_PARTS_KEY.FAMILY_ID AND	
TB_CATALOG_PRODUCT.CATALOG_ID = TB_CATALOG_ATTRIBUTES.CATALOG_ID and TB_CATALOG_PRODUCT.CATALOG_ID=@catalog_id  
AND
TB_CATALOG_FAMILY.CATALOG_ID=@catalog_id AND TB_CATALOG_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID AND
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|'))

UNION
SELECT  distinct TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.FAMILY_ID,            
 TB_PROD_SPECS.PRODUCT_ID, TB_PROD_SPECS.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
STRING_VALUE,NUMERIC_VALUE, 		
[OBJECT_NAME],OBJECT_TYPE,
TB_PROD_SPECS.CREATED_USER AS CREATED_USER,         
TB_PROD_SPECS.CREATED_DATE AS CREATED_DATE,         
TB_PROD_SPECS.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_SPECS.MODIFIED_DATE AS MODIFIED_DATE,NULL AS COLUMN_SORT_ORDER 
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PROD_SPECS 
WHERE 
TB_CATALOG_FAMILY.CATALOG_ID = @catalog_id AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_catalog_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_SPECS.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND 
TB_PROD_SPECS.ATTRIBUTE_ID not in (SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST 
WHERE PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID AND FAMILY_ID=TB_catalog_FAMILY.FAMILY_ID) AND 
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|'))

union
SELECT  distinct TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.FAMILY_ID,            
 TB_PARTS_KEY.PRODUCT_ID, TB_PARTS_KEY.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
TB_PARTS_KEY.ATTRIBUTE_VALUE,NULL as NUMERIC_VALUE, 		
NULL AS [OBJECT_NAME],NULL AS [OBJECT_TYPE], 
TB_PARTS_KEY.CREATED_USER AS CREATED_USER,         
TB_PARTS_KEY.CREATED_DATE AS CREATED_DATE,         
TB_PARTS_KEY.MODIFIED_USER AS MODIFIED_USER,         
TB_PARTS_KEY.MODIFIED_DATE AS MODIFIED_DATE,NULL AS COLUMN_SORT_ORDER 
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PARTS_KEY 
WHERE 
TB_CATALOG_FAMILY.CATALOG_ID =@catalog_id AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_catalog_FAMILY.FAMILY_ID AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=TB_PARTS_KEY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PARTS_KEY.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND 
TB_PARTS_KEY.ATTRIBUTE_ID not in (SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST 
WHERE PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID and FAMILY_ID=TB_PARTS_KEY.FAMILY_ID) AND 
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|'))


)
GO
/****** Object:  UserDefinedFunction [dbo].[Preview Family Description]    Script Date: 07/26/2012 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Preview Family Description](@catalog_id int,@category_id nvarchar(max))
returns table
as
return (
SELECT distinct	TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.FAMILY_ID,TB_FAMILY_SPECS.ATTRIBUTE_ID,   
      TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,
TB_FAMILY_SPECS.STRING_VALUE,TB_FAMILY_SPECS.NUMERIC_VALUE,        
  (TB_FAMILY_SPECS.OBJECT_NAME),TB_FAMILY_SPECS.OBJECT_TYPE, 	
	TB_FAMILY_SPECS.CREATED_USER AS CREATED_USER,       
  TB_FAMILY_SPECS.CREATED_DATE AS CREATED_DATE,     
    TB_FAMILY_SPECS.MODIFIED_USER AS MODIFIED_USER,     
    TB_FAMILY_SPECS.MODIFIED_DATE AS MODIFIED_DATE       
   FROM	
TB_FAMILY_SPECS, TB_CATALOG_FAMILY, TB_ATTRIBUTE , TB_CATALOG_ATTRIBUTES
WHERE	
TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY_SPECS.FAMILY_ID AND 		
TB_ATTRIBUTE.ATTRIBUTE_ID=TB_FAMILY_SPECS.ATTRIBUTE_ID AND TB_ATTRIBUTE.PUBLISH2PRINT=1 AND	 	
TB_CATALOG_FAMILY.CATALOG_ID=@catalog_id
AND
TB_CATALOG_FAMILY.CATALOG_ID=TB_CATALOG_ATTRIBUTES.CATALOG_ID
AND
TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID=TB_ATTRIBUTE.ATTRIBUTE_ID
AND
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|')))
GO
/****** Object:  UserDefinedFunction [dbo].[PRODUCTATTR]    Script Date: 07/26/2012 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[PRODUCTATTR](@CATALOG_ID INT,@FAMILY_ID INT)  
RETURNS TABLE
AS
RETURN (SELECT DISTINCT	
TB_CATALOG_ATTRIBUTES.CATALOG_ID,TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,TB_PROD_SPECS.PRODUCT_ID,TB_PROD_SPECS.ATTRIBUTE_ID,         
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,         
TB_PROD_SPECS.STRING_VALUE,(CAST(TB_PROD_SPECS.NUMERIC_VALUE AS NVARCHAR(MAX))) AS NUMERIC_VALUE, 		
(TB_PROD_SPECS.OBJECT_NAME),TB_PROD_SPECS.OBJECT_TYPE, 		
TB_PROD_SPECS.CREATED_USER AS CREATED_USER,         
TB_PROD_SPECS.CREATED_DATE AS CREATED_DATE,         
TB_PROD_SPECS.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_SPECS.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY.SORT_ORDER AS ROW_SORT_ORDER,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER,TB_PROD_FAMILY.PUBLISH AS PRODUCT_PUBLISH 		 
FROM	
TB_PROD_SPECS, TB_CATALOG_FAMILY, TB_CATALOG_ATTRIBUTES,TB_ATTRIBUTE TB_ATTRIBUTE,TB_PROD_FAMILY_ATTR_LIST,TB_PROD_FAMILY
WHERE	
TB_PROD_FAMILY.FAMILY_ID=@FAMILY_ID AND TB_PROD_FAMILY.PRODUCT_ID=TB_PROD_SPECS.PRODUCT_ID AND 
  TB_PROD_FAMILY.FAMILY_ID=TB_CATALOG_FAMILY.FAMILY_ID AND TB_PROD_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID 
AND  TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND	 		
TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID = TB_PROD_SPECS.ATTRIBUTE_ID 
AND         TB_ATTRIBUTE.ATTRIBUTE_ID=TB_PROD_SPECS.ATTRIBUTE_ID  
AND 		TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID=TB_PROD_SPECS.PRODUCT_ID AND  TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID=TB_PROD_SPECS.ATTRIBUTE_ID AND 
TB_CATALOG_FAMILY.CATALOG_ID = TB_CATALOG_ATTRIBUTES.CATALOG_ID AND TB_CATALOG_FAMILY.CATALOG_ID=@CATALOG_ID
UNION	

SELECT  DISTINCT TB_CATALOG_FAMILY.CATALOG_ID,TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,       
 TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID, TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
NULL AS STRING_VALUE,NULL AS NUMERIC_VALUE, 		
NULL AS [OBJECT_NAME],NULL AS OBJECT_TYPE,
TB_PROD_FAMILY_ATTR_LIST.CREATED_USER AS CREATED_USER,         
TB_PROD_FAMILY_ATTR_LIST.CREATED_DATE AS CREATED_DATE,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY.SORT_ORDER AS ROW_SORT_ORDER,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER,TB_PROD_FAMILY.PUBLISH AS PRODUCT_PUBLISH  
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PROD_SPECS,TB_PROD_FAMILY 
WHERE 
TB_PROD_FAMILY.FAMILY_ID=@FAMILY_ID AND TB_PROD_FAMILY.PRODUCT_ID=TB_PROD_SPECS.PRODUCT_ID AND
TB_CATALOG_FAMILY.CATALOG_ID = @CATALOG_ID AND TB_PROD_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_CATALOG_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND
TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID NOT IN (SELECT ATTRIBUTE_ID FROM TB_PROD_SPECS 
WHERE PRODUCT_ID = TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID)
UNION

SELECT  DISTINCT TB_CATALOG_FAMILY.CATALOG_ID,  TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,         
 TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID, TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
NULL AS STRING_VALUE,NULL AS NUMERIC_VALUE, 		
NULL AS [OBJECT_NAME],NULL AS OBJECT_TYPE,
TB_PROD_FAMILY_ATTR_LIST.CREATED_USER AS CREATED_USER,         
TB_PROD_FAMILY_ATTR_LIST.CREATED_DATE AS CREATED_DATE,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY.SORT_ORDER AS ROW_SORT_ORDER,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER,TB_PROD_FAMILY.PUBLISH AS PRODUCT_PUBLISH  
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PARTS_KEY,TB_PROD_FAMILY 
WHERE 
TB_PROD_FAMILY.FAMILY_ID=@FAMILY_ID AND TB_PROD_FAMILY.PRODUCT_ID=TB_PARTS_KEY.PRODUCT_ID AND
TB_CATALOG_FAMILY.CATALOG_ID = @CATALOG_ID AND TB_PROD_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_CATALOG_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND 
TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID NOT IN (SELECT ATTRIBUTE_ID FROM TB_PARTS_KEY 
WHERE PRODUCT_ID = TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID)
UNION
SELECT DISTINCT	
TB_CATALOG_ATTRIBUTES.CATALOG_ID,TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,TB_PARTS_KEY.PRODUCT_ID,TB_PARTS_KEY.ATTRIBUTE_ID,         
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,         
TB_PARTS_KEY.ATTRIBUTE_VALUE,NULL AS NUMERIC_VALUE, 		
NULL AS [OBJECT_NAME],NULL AS [OBJECT_TYPE], 
TB_PARTS_KEY.CREATED_USER AS CREATED_USER,         
TB_PARTS_KEY.CREATED_DATE AS CREATED_DATE,         
TB_PARTS_KEY.MODIFIED_USER AS MODIFIED_USER,         
TB_PARTS_KEY.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY.SORT_ORDER AS ROW_SORT_ORDER,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER,TB_PROD_FAMILY.PUBLISH AS PRODUCT_PUBLISH  		 
FROM	
TB_PARTS_KEY, TB_CATALOG_FAMILY, TB_CATALOG_ATTRIBUTES,TB_ATTRIBUTE TB_ATTRIBUTE ,TB_PROD_FAMILY_ATTR_LIST,TB_PROD_FAMILY  
WHERE	
TB_PROD_FAMILY.FAMILY_ID=@FAMILY_ID AND TB_PROD_FAMILY.PRODUCT_ID=TB_PARTS_KEY.PRODUCT_ID AND
TB_CATALOG_FAMILY.FAMILY_ID=TB_PROD_FAMILY.FAMILY_ID AND TB_PROD_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID 
AND TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID = TB_PARTS_KEY.ATTRIBUTE_ID 
AND         TB_ATTRIBUTE.ATTRIBUTE_ID=TB_PARTS_KEY.ATTRIBUTE_ID AND 	
	TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID=TB_PARTS_KEY.PRODUCT_ID AND  TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID=TB_PARTS_KEY.ATTRIBUTE_ID AND  TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=TB_PARTS_KEY.FAMILY_ID AND	
TB_CATALOG_FAMILY.CATALOG_ID = TB_CATALOG_ATTRIBUTES.CATALOG_ID AND TB_CATALOG_FAMILY.CATALOG_ID=@CATALOG_ID  
UNION
SELECT  DISTINCT TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.FAMILY_ID,            
 TB_PROD_SPECS.PRODUCT_ID, TB_PROD_SPECS.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
STRING_VALUE,NUMERIC_VALUE, 		
[OBJECT_NAME],OBJECT_TYPE,
TB_PROD_SPECS.CREATED_USER AS CREATED_USER,         
TB_PROD_SPECS.CREATED_DATE AS CREATED_DATE,         
TB_PROD_SPECS.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_SPECS.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY.SORT_ORDER AS ROW_SORT_ORDER,NULL AS COLUMN_SORT_ORDER,TB_PROD_FAMILY.PUBLISH AS PRODUCT_PUBLISH  
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PROD_SPECS,TB_PROD_FAMILY 
WHERE 
TB_PROD_FAMILY.FAMILY_ID=@FAMILY_ID AND TB_PROD_FAMILY.PRODUCT_ID=TB_PROD_SPECS.PRODUCT_ID AND
TB_CATALOG_FAMILY.CATALOG_ID = @CATALOG_ID AND TB_PROD_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_CATALOG_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_SPECS.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND 
TB_PROD_SPECS.ATTRIBUTE_ID NOT IN (SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST 
WHERE PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID AND FAMILY_ID=TB_CATALOG_FAMILY.FAMILY_ID)
UNION
SELECT  DISTINCT TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.FAMILY_ID,            
 TB_PARTS_KEY.PRODUCT_ID, TB_PARTS_KEY.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
TB_PARTS_KEY.ATTRIBUTE_VALUE,NULL AS NUMERIC_VALUE, 		
NULL AS [OBJECT_NAME],NULL AS [OBJECT_TYPE], 
TB_PARTS_KEY.CREATED_USER AS CREATED_USER,         
TB_PARTS_KEY.CREATED_DATE AS CREATED_DATE,         
TB_PARTS_KEY.MODIFIED_USER AS MODIFIED_USER,         
TB_PARTS_KEY.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY.SORT_ORDER AS ROW_SORT_ORDER,NULL AS COLUMN_SORT_ORDER,TB_PROD_FAMILY.PUBLISH AS PRODUCT_PUBLISH  
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PARTS_KEY,TB_PROD_FAMILY 
WHERE 
TB_PROD_FAMILY.FAMILY_ID=@FAMILY_ID AND TB_PROD_FAMILY.PRODUCT_ID=TB_PARTS_KEY.PRODUCT_ID AND
TB_CATALOG_FAMILY.CATALOG_ID =@CATALOG_ID AND TB_PROD_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_CATALOG_FAMILY.FAMILY_ID AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=TB_PARTS_KEY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PARTS_KEY.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND 
TB_PARTS_KEY.ATTRIBUTE_ID NOT IN (SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST 
WHERE PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID AND FAMILY_ID=TB_PARTS_KEY.FAMILY_ID)
UNION
SELECT DISTINCT	
TB_CATALOG_ATTRIBUTES.CATALOG_ID,TB_PROD_FAMILY.FAMILY_ID,TB_PROD_SPECS.PRODUCT_ID,TB_PROD_SPECS.ATTRIBUTE_ID,         
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,         
TB_PROD_SPECS.STRING_VALUE,(CAST(TB_PROD_SPECS.NUMERIC_VALUE AS NVARCHAR(MAX))) AS NUMERIC_VALUE, 		
(TB_PROD_SPECS.OBJECT_NAME),TB_PROD_SPECS.OBJECT_TYPE, 		
TB_PROD_SPECS.CREATED_USER AS CREATED_USER,         
TB_PROD_SPECS.CREATED_DATE AS CREATED_DATE,         
TB_PROD_SPECS.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_SPECS.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY.SORT_ORDER AS ROW_SORT_ORDER,NULL AS COLUMN_SORT_ORDER,TB_PROD_FAMILY.PUBLISH AS PRODUCT_PUBLISH 		 
FROM	
TB_PROD_SPECS, TB_CATALOG_FAMILY, TB_CATALOG_ATTRIBUTES,TB_ATTRIBUTE TB_ATTRIBUTE,TB_PROD_FAMILY
WHERE	
TB_PROD_FAMILY.FAMILY_ID=@FAMILY_ID AND TB_PROD_FAMILY.PRODUCT_ID=TB_PROD_SPECS.PRODUCT_ID AND 
  TB_PROD_FAMILY.FAMILY_ID=TB_CATALOG_FAMILY.FAMILY_ID 
AND  TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND	 		
TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID = TB_PROD_SPECS.ATTRIBUTE_ID 
AND         TB_ATTRIBUTE.ATTRIBUTE_ID=TB_PROD_SPECS.ATTRIBUTE_ID  
 AND 
TB_CATALOG_FAMILY.CATALOG_ID = TB_CATALOG_ATTRIBUTES.CATALOG_ID AND TB_CATALOG_FAMILY.CATALOG_ID=@CATALOG_ID AND
TB_PROD_SPECS.ATTRIBUTE_ID NOT IN (SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=TB_PROD_FAMILY.PRODUCT_ID)
UNION
SELECT DISTINCT	
TB_CATALOG_ATTRIBUTES.CATALOG_ID,TB_PROD_FAMILY.FAMILY_ID,TB_PARTS_KEY.PRODUCT_ID,TB_PARTS_KEY.ATTRIBUTE_ID,         
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,         
TB_PARTS_KEY.ATTRIBUTE_VALUE,NULL AS NUMERIC_VALUE, 		
NULL AS [OBJECT_NAME],NULL AS [OBJECT_TYPE], 
TB_PARTS_KEY.CREATED_USER AS CREATED_USER,         
TB_PARTS_KEY.CREATED_DATE AS CREATED_DATE,         
TB_PARTS_KEY.MODIFIED_USER AS MODIFIED_USER,         
TB_PARTS_KEY.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY.SORT_ORDER AS ROW_SORT_ORDER,NULL AS COLUMN_SORT_ORDER,TB_PROD_FAMILY.PUBLISH AS PRODUCT_PUBLISH  		 
FROM	
TB_PARTS_KEY, TB_CATALOG_FAMILY, TB_CATALOG_ATTRIBUTES,TB_ATTRIBUTE TB_ATTRIBUTE ,TB_PROD_FAMILY  
WHERE	
TB_PROD_FAMILY.FAMILY_ID=@FAMILY_ID AND 
TB_PROD_FAMILY.PRODUCT_ID=TB_PARTS_KEY.PRODUCT_ID AND
TB_CATALOG_FAMILY.FAMILY_ID=TB_PROD_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID = TB_PARTS_KEY.ATTRIBUTE_ID 
AND         TB_ATTRIBUTE.ATTRIBUTE_ID=TB_PARTS_KEY.ATTRIBUTE_ID AND TB_CATALOG_FAMILY.FAMILY_ID=TB_PARTS_KEY.FAMILY_ID AND	 
TB_CATALOG_FAMILY.CATALOG_ID = TB_CATALOG_ATTRIBUTES.CATALOG_ID AND TB_CATALOG_FAMILY.CATALOG_ID=@CATALOG_ID  AND
TB_PARTS_KEY.ATTRIBUTE_ID NOT IN(SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=TB_PROD_FAMILY.PRODUCT_ID)
)
GO
/****** Object:  UserDefinedFunction [dbo].[Product_attr_collection]    Script Date: 07/26/2012 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Product_attr_collection](@CATALOGID INT,@PRODUCT_ID INT,@GROUP_ID VARCHAR(50))
RETURNS TABLE
AS
RETURN 
(
SELECT DISTINCT TP.CATALOG_ID,A.CATEGORY_ID,TPFA.FAMILY_ID,TP.PRODUCT_ID,TPS.STRING_VALUE,TA.ATTRIBUTE_ID,TA.ATTRIBUTE_NAME ,a.sort_order
FROM TB_PRODUCT B,TBWC_PRODUCT_LOOKUP TP,TB_PROD_SPECS TPS,TB_PROD_FAMILY_attr_list TPFA,TBWC_PDF_PRODUCT_ATTRIBUTE A,TB_ATTRIBUTE TA
WHERE B.PRODUCT_ID=TP.PRODUCT_ID AND TP.PRODUCT_ID=TPS.PRODUCT_ID AND TPS.PRODUCT_ID=TPFA.PRODUCT_ID AND 
TPS.ATTRIBUTE_ID=A.ATTRIBUTE_ID AND A.ATTRIBUTE_ID=TA.ATTRIBUTE_ID AND TPFA.ATTRIBUTE_ID=TPS.ATTRIBUTE_ID AND B.CATEGORY_ID=A.CATEGORY_ID
AND A.GROUP_ID=@GROUP_ID AND A.CATEGORY_ID IN (SELECT CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID=@CATALOGID) 
AND B.PRODUCT_ID IN (SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID=@CATALOGID)
--AND TP.PRODUCT_ID IN (SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE PRODUCT_ID=@PRODUCT_ID AND CATALOG_ID=@CATALOGID) 
--AND TPS.ATTRIBUTE_ID IN (SELECT ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@CATALOGID)
AND TP.CATALOG_ID=@CATALOGID AND TP.PRODUCT_ID=@PRODUCT_ID 
union all
SELECT DISTINCT TP.CATALOG_ID,A.CATEGORY_ID,(select distinct family_id from TB_PROD_FAMILY_ATTR_LIST where PRODUCT_ID=@product_id) as family_id,TP.subPRODUCT_ID ,TPS.STRING_VALUE,TA.ATTRIBUTE_ID,TA.ATTRIBUTE_NAME ,a.sort_order
FROM TB_PRODUCT B,TBWC_PRODUCT_LOOKUP TP,TB_PROD_SPECS TPS,TB_PROD_FAMILY_attr_list TPFA,TBWC_PDF_PRODUCT_ATTRIBUTE A,TB_ATTRIBUTE TA
WHERE B.PRODUCT_ID=TP.subPRODUCT_ID AND TP.subPRODUCT_ID=TPS.PRODUCT_ID AND TPS.PRODUCT_ID=TPFA.PRODUCT_ID AND 
TPS.ATTRIBUTE_ID=A.ATTRIBUTE_ID AND A.ATTRIBUTE_ID=TA.ATTRIBUTE_ID AND TPFA.ATTRIBUTE_ID=TPS.ATTRIBUTE_ID AND B.CATEGORY_ID=A.CATEGORY_ID
AND A.GROUP_ID=@GROUP_ID AND A.CATEGORY_ID IN (SELECT CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID=@CATALOGID) --AND B.PRODUCT_ID IN (SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID=@CATALOGID)
--AND TP.PRODUCT_ID IN (SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE PRODUCT_ID=@PRODUCT_ID AND CATALOG_ID=@CATALOGID) 
---AND TPS.ATTRIBUTE_ID IN (SELECT ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@CATALOGID)
AND TP.CATALOG_ID=@CATALOGID AND TP.PRODUCT_ID=@PRODUCT_ID and ta.attribute_id not in (select attribute_id from tb_prod_specs where product_id=@product_id)
and tps.string_value is not null 
union all
SELECT DISTINCT TP.CATALOG_ID,A.CATEGORY_ID,(select distinct family_id from TB_PROD_FAMILY_ATTR_LIST where PRODUCT_ID=@product_id) as family_id,TP.subPRODUCT_ID ,convert(nvarchar(50),TPS.numeric_VALUE),TA.ATTRIBUTE_ID,TA.ATTRIBUTE_NAME,a.sort_order 
FROM TB_PRODUCT B,TBWC_PRODUCT_LOOKUP TP,TB_PROD_SPECS TPS,TB_PROD_FAMILY_ATTR_LIST TPFA,TBWC_PDF_PRODUCT_ATTRIBUTE A,TB_ATTRIBUTE TA
WHERE B.PRODUCT_ID=TP.subPRODUCT_ID AND TP.subPRODUCT_ID=TPS.PRODUCT_ID AND TPS.PRODUCT_ID=TPFA.PRODUCT_ID AND 
TPS.ATTRIBUTE_ID=A.ATTRIBUTE_ID AND A.ATTRIBUTE_ID=TA.ATTRIBUTE_ID AND TPFA.ATTRIBUTE_ID=TPS.ATTRIBUTE_ID AND B.CATEGORY_ID=A.CATEGORY_ID
AND A.GROUP_ID=@GROUP_ID AND A.CATEGORY_ID IN (SELECT CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID=@CATALOGID) AND B.PRODUCT_ID IN (SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID=@CATALOGID)
--AND TP.PRODUCT_ID IN (SELECT PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE PRODUCT_ID=@PRODUCT_ID AND CATALOG_ID=@CATALOGID) 
--AND TPS.ATTRIBUTE_ID IN (SELECT ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@CATALOGID)
AND TP.CATALOG_ID=@CATALOGID AND TP.PRODUCT_ID=@PRODUCT_ID and ta.attribute_id not in (select attribute_id from tb_prod_specs where product_id=@product_id)
and tps.string_value is null 
)
GO
/****** Object:  UserDefinedFunction [dbo].[Product Family]    Script Date: 07/26/2012 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Product Family](@catalog_id int)
returns table
as
return (
select	tb_catalog_family.CATALOG_ID,   
tb_prod_family.FAMILY_ID,tb_prod_family.PRODUCT_ID,TB_PROD_SPECS.STRING_VALUE AS CATALOG_ITEM_NUMBER,
 tb_prod_family.SORT_ORDER AS ROW_SORT_ORDER, 		tb_prod_family.CREATED_USER AS CREATED_USER,     
    tb_prod_family.CREATED_DATE AS CREATED_DATE,         tb_prod_family.MODIFIED_USER AS MODIFIED_USER,   
      tb_prod_family.MODIFIED_DATE AS MODIFIED_DATE  		   
from	tb_catalog_family, tb_prod_family, TB_CATALOG_PRODUCT, TB_PROD_SPECS           
where	tb_catalog_family.family_id = tb_prod_family.family_id and 		
tb_prod_family.product_id =  TB_CATALOG_PRODUCT.product_id AND tb_catalog_family.CATALOG_ID=@catalog_id AND 		
TB_PROD_SPECS.ATTRIBUTE_ID = 1 AND TB_PROD_SPECS.PRODUCT_ID = TB_CATALOG_PRODUCT.PRODUCT_ID  AND    
      TB_CATALOG_FAMILY.CATALOG_ID=TB_CATALOG_PRODUCT.CATALOG_ID and tb_prod_family.publish=1)
GO
/****** Object:  UserDefinedFunction [dbo].[Product Attribute]    Script Date: 07/26/2012 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Product Attribute](@catalog_id int)
returns table
as
return (SELECT DISTINCT	
TB_CATALOG_ATTRIBUTES.CATALOG_ID,TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,TB_PROD_SPECS.PRODUCT_ID,TB_PROD_SPECS.ATTRIBUTE_ID,         
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,         
TB_PROD_SPECS.STRING_VALUE,(cast(TB_PROD_SPECS.NUMERIC_VALUE as nvarchar(MAX))) as NUMERIC_VALUE, 		
(TB_PROD_SPECS.OBJECT_NAME),TB_PROD_SPECS.OBJECT_TYPE, 		
TB_PROD_SPECS.CREATED_USER AS CREATED_USER,         
TB_PROD_SPECS.CREATED_DATE AS CREATED_DATE,         
TB_PROD_SPECS.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_SPECS.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER 		 
FROM	
TB_PROD_SPECS, TB_CATALOG_PRODUCT, TB_CATALOG_ATTRIBUTES,TB_ATTRIBUTE TB_ATTRIBUTE,TB_PROD_FAMILY_ATTR_LIST
WHERE	
TB_CATALOG_PRODUCT.PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID 
AND TB_ATTRIBUTE.PUBLISH2PRINT=1 AND TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND	 		
TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID = TB_PROD_SPECS.ATTRIBUTE_ID 
AND         TB_ATTRIBUTE.ATTRIBUTE_ID=TB_PROD_SPECS.ATTRIBUTE_ID  
AND 		TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID=TB_PROD_SPECS.PRODUCT_ID AND  TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID=TB_PROD_SPECS.ATTRIBUTE_ID AND 
TB_CATALOG_PRODUCT.CATALOG_ID = TB_CATALOG_ATTRIBUTES.CATALOG_ID and TB_CATALOG_PRODUCT.CATALOG_ID=@catalog_id

UNION	

SELECT  distinct TB_CATALOG_FAMILY.CATALOG_ID,TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,       
 TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID, TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
NULL as STRING_VALUE,null as NUMERIC_VALUE, 		
null as [OBJECT_NAME],null as OBJECT_TYPE,
TB_PROD_FAMILY_ATTR_LIST.CREATED_USER AS CREATED_USER,         
TB_PROD_FAMILY_ATTR_LIST.CREATED_DATE AS CREATED_DATE,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER 
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PROD_SPECS 
WHERE 
TB_CATALOG_FAMILY.CATALOG_ID = @catalog_id AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_catalog_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND TB_ATTRIBUTE.PUBLISH2PRINT=1 AND 
TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID not in (SELECT ATTRIBUTE_ID FROM TB_PROD_SPECS 
WHERE PRODUCT_ID = TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID)
UNION

SELECT  distinct TB_CATALOG_FAMILY.CATALOG_ID,  TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,         
 TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID, TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
NULL as STRING_VALUE,null as NUMERIC_VALUE, 		
null as [OBJECT_NAME],null as OBJECT_TYPE,
TB_PROD_FAMILY_ATTR_LIST.CREATED_USER AS CREATED_USER,         
TB_PROD_FAMILY_ATTR_LIST.CREATED_DATE AS CREATED_DATE,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_FAMILY_ATTR_LIST.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER 
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PARTS_KEY 
WHERE 
TB_CATALOG_FAMILY.CATALOG_ID = @catalog_id AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_catalog_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND  TB_ATTRIBUTE.PUBLISH2PRINT=1 AND
TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID not in (SELECT ATTRIBUTE_ID FROM TB_PARTS_KEY 
WHERE PRODUCT_ID = TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID)
UNION
SELECT DISTINCT	
TB_CATALOG_ATTRIBUTES.CATALOG_ID,TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID,TB_PARTS_KEY.PRODUCT_ID,TB_PARTS_KEY.ATTRIBUTE_ID,         
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE,         
TB_PARTS_KEY.ATTRIBUTE_VALUE,NULL as NUMERIC_VALUE, 		
NULL AS [OBJECT_NAME],NULL AS [OBJECT_TYPE], 
TB_PARTS_KEY.CREATED_USER AS CREATED_USER,         
TB_PARTS_KEY.CREATED_DATE AS CREATED_DATE,         
TB_PARTS_KEY.MODIFIED_USER AS MODIFIED_USER,         
TB_PARTS_KEY.MODIFIED_DATE AS MODIFIED_DATE,TB_PROD_FAMILY_ATTR_LIST.SORT_ORDER AS COLUMN_SORT_ORDER 		 
FROM	
TB_PARTS_KEY, TB_CATALOG_PRODUCT, TB_CATALOG_ATTRIBUTES,TB_ATTRIBUTE TB_ATTRIBUTE ,TB_PROD_FAMILY_ATTR_LIST  
WHERE	
TB_CATALOG_PRODUCT.PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID 
AND TB_ATTRIBUTE.PUBLISH2PRINT=1 AND TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND	 		
TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID = TB_PARTS_KEY.ATTRIBUTE_ID 
AND         TB_ATTRIBUTE.ATTRIBUTE_ID=TB_PARTS_KEY.ATTRIBUTE_ID AND 	
	TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID=TB_PARTS_KEY.PRODUCT_ID AND  TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID=TB_PARTS_KEY.ATTRIBUTE_ID AND  TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=TB_PARTS_KEY.FAMILY_ID AND	
TB_CATALOG_PRODUCT.CATALOG_ID = TB_CATALOG_ATTRIBUTES.CATALOG_ID and TB_CATALOG_PRODUCT.CATALOG_ID=@catalog_id  
UNION
SELECT  distinct TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.FAMILY_ID,            
 TB_PROD_SPECS.PRODUCT_ID, TB_PROD_SPECS.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
STRING_VALUE,NUMERIC_VALUE, 		
[OBJECT_NAME],OBJECT_TYPE,
TB_PROD_SPECS.CREATED_USER AS CREATED_USER,         
TB_PROD_SPECS.CREATED_DATE AS CREATED_DATE,         
TB_PROD_SPECS.MODIFIED_USER AS MODIFIED_USER,         
TB_PROD_SPECS.MODIFIED_DATE AS MODIFIED_DATE,NULL AS COLUMN_SORT_ORDER 
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PROD_SPECS 
WHERE 
TB_CATALOG_FAMILY.CATALOG_ID = @catalog_id AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_catalog_FAMILY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PROD_SPECS.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE!=6 AND 
TB_PROD_SPECS.ATTRIBUTE_ID not in (SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST 
WHERE PRODUCT_ID = TB_PROD_SPECS.PRODUCT_ID AND FAMILY_ID=TB_catalog_FAMILY.FAMILY_ID)
union
SELECT  distinct TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.FAMILY_ID,            
 TB_PARTS_KEY.PRODUCT_ID, TB_PARTS_KEY.ATTRIBUTE_ID,
TB_ATTRIBUTE.ATTRIBUTE_NAME,TB_ATTRIBUTE.ATTRIBUTE_TYPE,TB_ATTRIBUTE.ATTRIBUTE_DATATYPE, 
TB_PARTS_KEY.ATTRIBUTE_VALUE,NULL as NUMERIC_VALUE, 		
NULL AS [OBJECT_NAME],NULL AS [OBJECT_TYPE], 
TB_PARTS_KEY.CREATED_USER AS CREATED_USER,         
TB_PARTS_KEY.CREATED_DATE AS CREATED_DATE,         
TB_PARTS_KEY.MODIFIED_USER AS MODIFIED_USER,         
TB_PARTS_KEY.MODIFIED_DATE AS MODIFIED_DATE,NULL AS COLUMN_SORT_ORDER 
FROM            TB_PROD_FAMILY_ATTR_LIST,TB_CATALOG_FAMILY, TB_ATTRIBUTE, TB_PARTS_KEY 
WHERE 
TB_CATALOG_FAMILY.CATALOG_ID =@catalog_id AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID = TB_catalog_FAMILY.FAMILY_ID AND
TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=TB_PARTS_KEY.FAMILY_ID AND
TB_ATTRIBUTE.ATTRIBUTE_ID = TB_PARTS_KEY.ATTRIBUTE_ID AND
TB_PROD_FAMILY_ATTR_LIST.PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID AND TB_ATTRIBUTE.ATTRIBUTE_TYPE=6 AND 
TB_PARTS_KEY.ATTRIBUTE_ID not in (SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST 
WHERE PRODUCT_ID = TB_PARTS_KEY.PRODUCT_ID and FAMILY_ID=TB_PARTS_KEY.FAMILY_ID)

)
GO
/****** Object:  StoredProcedure [dbo].[SP_Del]    Script Date: 07/26/2012 17:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Del]
as
BEGIN
	IF OBJECT_ID('tempdb..##TMP') IS NOT NULL
		BEGIN
			DROP TABLE ##TMP
		END
	DELETE FROM TEMPHEATCRAFT
END
GO
/****** Object:  UserDefinedFunction [dbo].[Preview Family]    Script Date: 07/26/2012 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Preview Family](@catalog_id int,@category_id as nvarchar(max))
returns table
as
return (select	distinct 
tb_catalog_family.CATALOG_ID,TB_FAMILY.FAMILY_ID,TB_FAMILY.FAMILY_NAME,TB_FAMILY.FOOT_NOTES,
          TB_FAMILY.PARENT_FAMILY_ID,TB_FAMILY.ROOT_FAMILY,TB_FAMILY.STATUS,tb_family_table_structure.family_table_structure AS PRODUCT_TABLE_STRUCTURE,
         TB_FAMILY.CATEGORY_ID,TB_CATALOG_FAMILY.SORT_ORDER AS FAMILY_SORT_ORDER, 
		cast(null as int) as SUBFAMILY_SORT_ORDER, 		tb_family.CREATED_USER AS CREATED_USER,   
      tb_family.CREATED_DATE AS CREATED_DATE,         tb_family.MODIFIED_USER AS MODIFIED_USER,  
       tb_family.MODIFIED_DATE AS MODIFIED_DATE  from	tb_catalog_family,tb_family_table_structure,   
       TB_FAMILY where	tb_catalog_family.family_id = tb_family.family_id and tb_family_table_structure.catalog_id=tb_catalog_family.catalog_id and tb_family_table_structure.family_id=tb_catalog_family.family_id and tb_family_table_structure.is_default=1 and parent_family_id=0 and tb_catalog_family.CATALOG_ID=@catalog_id AND
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|'))
 union 
select	distinct tb_catalog_family.CATALOG_ID,TB_FAMILY.FAMILY_ID,TB_FAMILY.FAMILY_NAME,TB_FAMILY.FOOT_NOTES,    
      TB_FAMILY.PARENT_FAMILY_ID,TB_FAMILY.ROOT_FAMILY,TB_FAMILY.STATUS,tb_family_table_structure.family_table_structure AS PRODUCT_TABLE_STRUCTURE,
       TB_FAMILY.CATEGORY_ID,cast(null as int) as FAMILY_SORT_ORDER, 
		tb_subfamily.SORT_ORDER AS SUBFAMILY_SORT_ORDER, 		tb_family.CREATED_USER AS CREATED_USER,    
     tb_family.CREATED_DATE AS CREATED_DATE,         tb_family.MODIFIED_USER AS MODIFIED_USER,     
    tb_family.MODIFIED_DATE AS MODIFIED_DATE  from	tb_catalog_family, tb_family_table_structure,         
  TB_FAMILY LEFT OUTER JOIN TB_SUBFAMILY ON tb_subfamily.SUBFAMILY_ID = TB_FAMILY.FAMILY_ID 
 where	tb_catalog_family.family_id = tb_family.family_id and  tb_family_table_structure.catalog_id=tb_catalog_family.catalog_id and tb_family_table_structure.family_id=tb_catalog_family.family_id and tb_family_table_structure.is_default=1 and parent_family_id<>0 and tb_catalog_family.CATALOG_ID=@catalog_id AND
TB_CATALOG_FAMILY.CATEGORY_ID IN (select * from split(@category_id,'|')))
GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_FAM]    Script Date: 07/26/2012 17:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_REPORT_FAM]
as
DECLARE @FCHK VARCHAR(MAX)=''
DECLARE @PID DECIMAL=0
DECLARE @STR VARCHAR(MAX)=''
DECLARE @STR2 VARCHAR(MAX)=''
DECLARE @VAL VARCHAR(MAX)=''
DECLARE @CNME VARCHAR(MAX)=''
DECLARE @CSPL VARCHAR(MAX)=''
DECLARE @CVAL VARCHAR(MAX)=''
DECLARE @QUERY NVARCHAR(MAX)=''
DECLARE @CNT INT=0
DECLARE @CNT2 INT=0
DECLARE @FLG INT=0
DECLARE @FLG2 INT=0
DECLARE @TFLG INT=0
DECLARE @NUM DECIMAL=0
DECLARE @NUM2 VARCHAR(MAX)=''
DECLARE @FID DECIMAL=0
----------------
--DELETE FROM TEMPHEATCRAFT
--EXEC UPDATE_NEED 'HC073',2
--SELECT * FROM TEMPHEATCRAFT
--------------------
--SET @CNT = (select  COUNT(*) from TB_PROD_SPECS tfs,TEMPHEATCRAFT tn
--where tn.FAMILY_ID=tfs.FAMILY_ID)
-----------------------------------
DECLARE @TPID DECIMAL=0
DECLARE @SPID DECIMAL=0
DECLARE @PSTR VARCHAR(MAX)=''
DECLARE @CT INT=0

-------------------------------------------------------------------------------------
SET @QUERY = 'SELECT DISTINCT(FAMILY_ID) INTO ##TMP from TEMPHEATCRAFT where FAMILY_ID<>0 order by FAMILY_ID'
EXEC (@QUERY)

SET @CT = (SELECT COUNT(DISTINCT SUBFAMILY_ID) FROM TEMPHEATCRAFT WHERE SUBFAMILY_ID<>0)
--PRINT @CT
DECLARE TMP CURSOR FOR
SELECT DISTINCT(SUBFAMILY_ID) AS FAMILY_ID FROM TEMPHEATCRAFT WHERE SUBFAMILY_ID<>0
OPEN TMP
	WHILE (@CT > 0)
		BEGIN
			SET @CT = @CT - 1
			FETCH NEXT FROM TMP INTO @FID
			SET @QUERY = 'INSERT INTO ##TMP VALUES('+ CONVERT(VARCHAR(MAX),@FID) + ')'
			EXEC (@QUERY)
		END
CLOSE TMP
DEALLOCATE TMP
-------------------------------------------------------------
SET @CT = (select COUNT(*) from ##TMP)

DECLARE PROD CURSOR FOR
SELECT FAMILY_ID from ##TMP order by FAMILY_ID
OPEN PROD

WHILE (@CT > 0)
	BEGIN
		SET @CT = @CT - 1
		FETCH NEXT FROM PROD INTO @TPID
		SET @PSTR=@PSTR + CONVERT(VARCHAR(MAX), @TPID) + ','
	END
	SET @PSTR = SUBSTRING(@PSTR,1,LEN(@PSTR)-1)
CLOSE PROD
DEALLOCATE PROD
DROP TABLE ##TMP

------------------------------------------------------------------------------------------
SET @QUERY = 'select  COUNT(*) AS CNT INTO ##TMP_CNT from TB_FAMILY_SPECS tfs,TB_ATTRIBUTE ta
where tfs.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
FAMILY_ID IN (' + @PSTR + ')'
EXEC (@QUERY)
SET @CNT =(SELECT CNT FROM ##TMP_CNT)
DROP TABLE ##TMP_CNT
---------------------------------------------
---------------------------------------------
SET @QUERY = 'select  ta.ATTRIBUTE_NAME,tfs.STRING_VALUE,tfs.FAMILY_ID,tfs.NUMERIC_VALUE INTO ##TMP from TB_FAMILY_SPECS tfs,TB_ATTRIBUTE ta
where tfs.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
FAMILY_ID IN (' + @PSTR + ') ORDER BY tfs.FAMILY_ID,ta.ATTRIBUTE_NAME ASC'
EXEC (@QUERY)
----------------------------------------------------------------------------------
DECLARE REP CURSOR FOR 
SELECT ATTRIBUTE_NAME,STRING_VALUE,FAMILY_ID,NUMERIC_VALUE FROM ##TMP
OPEN REP
	WHILE (@CNT > @FLG)
		BEGIN
			SET @FLG=@FLG + 1
			SET @FLG2=0
			
			FETCH NEXT FROM REP INTO @STR,@VAL,@PID,@NUM
			
			IF (@TFLG=0)
				BEGIN
					SET @TFLG=1
					SET @CNME = 'FAMILY_ID VARCHAR(MAX)'
					SET @CVAL = CONVERT(VARCHAR(MAX), @PID)
					
					IF OBJECT_ID('tempdb..##FTEMP') IS NOT NULL
						BEGIN
							DROP TABLE ##FTEMP
							SET @QUERY = 'CREATE TABLE ##FTEMP('+ @CNME + ')'
							EXEC(@QUERY)
							SET @QUERY = 'INSERT INTO ##FTEMP VALUES(' + @CVAL +')'
							EXEC (@QUERY)
						END
					ELSE
						BEGIN
							SET @QUERY = 'CREATE TABLE ##FTEMP('+ @CNME + ')'
							EXEC(@QUERY)
							SET @QUERY = 'INSERT INTO ##FTEMP VALUES(' + @CVAL +')'
							EXEC (@QUERY)
						END
						SET @CNME=''
						SET @CVAL=''
				END
				
			IF (@FCHK='')
				BEGIN
					SET @FCHK=@PID
				END
			ELSE IF(@FCHK <> CONVERT(VARCHAR(MAX), @PID))
				BEGIN
					SET @CNT2 =(SELECT COUNT(*) FROM dbo.Split( @CSPL,',' ))
					SET @CVAL ='''' + CONVERT(VARCHAR(MAX), @PID) + '''' +','
					WHILE (@CNT2>0)
						BEGIN
							SET @CNT2=@CNT2-1
							SET @CVAL = @CVAL + '''' + '-' + '''' + ','
						END
					SET @CVAL = SUBSTRING(@CVAL,1,LEN(@CVAL)-1)
					SET @QUERY = 'INSERT INTO ##FTEMP VALUES(' + @CVAL +')'
					EXEC (@QUERY)
					SET @FCHK=@PID
				END
			---------------------------------------------	
			DECLARE CHK CURSOR FOR
			SELECT strval FROM dbo.Split( @CSPL,',' )
			OPEN CHK
			WHILE @@FETCH_STATUS=0  	
				BEGIN
					FETCH NEXT FROM CHK INTO @STR2
					IF (@STR2=(Select dbo.ReplaceSpecialChars(@STR,'_')))
						BEGIN
							SET @FLG2=1
							BREAK
						END
				END
			CLOSE CHK
			DEALLOCATE CHK
			--------------------------------------------
			IF (@FLG2=0)
				BEGIN
					set @STR=(Select dbo.ReplaceSpecialChars(@STR,'_'))
					SET @CSPL=@CSPL + @STR + ','
					SET @QUERY='ALTER TABLE ##FTEMP ADD ['+ @STR + ']  VARCHAR(MAX) NULL'
					EXEC(@QUERY)
					SET @VAL=(Select REPLACE(@VAL,',',''))
					IF (@VAL is NULL OR @VAL='')
						BEGIN
							SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
							SET @CVAL = '''' + @NUM2 + ''''
						END
					ELSE
						BEGIN
							SET @CVAL = '''' + @VAL + ''''
						END
					SET @QUERY='UPDATE  ##FTEMP SET [' + @STR + ']=' + @CVAL + ' WHERE FAMILY_ID=' + CONVERT(VARCHAR(MAX),@PID)
					EXEC (@QUERY)
				END
			ELSE IF (@FLG2=1)
				BEGIN
					SET @STR=(Select dbo.ReplaceSpecialChars(@STR,'_'))
					SET @VAL=(Select REPLACE(@VAL,',',''))
					IF (@VAL is NULL OR @VAL='')
						BEGIN
							SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
							SET @CVAL = '''' + @NUM2 + ''''
						END
					ELSE
						BEGIN
							SET @CVAL = '''' + @VAL + ''''
						END
					SET @QUERY='UPDATE  ##FTEMP SET [' + @STR + ']=' + @CVAL + ' WHERE FAMILY_ID=' + CONVERT(VARCHAR(MAX),@PID)
					EXEC (@QUERY)
				END
		END
		CLOSE REP
		DEALLOCATE REP
		DROP TABLE ##TMP
		--SELECT * FROM ##FTEMP
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_FamilySort]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_FamilySort] 
@CATALOGID INT,
@CATEGORYID NVARCHAR(50), 
@PARENTFAMILY INT, 
@SORTMETHOD NVARCHAR(150) AS 
BEGIN  
DECLARE @STRQRY NVARCHAR(4000)  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= '#TEMP_CATALOG_FAMILYS') 
BEGIN 
   DROP TABLE #TEMP_CATALOG_FAMILYS  
END  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_FAMILY') 
BEGIN 
  DROP TABLE TEMP_FAMILY  
END  
    SELECT TCF.FAMILY_ID,TCF.CATEGORY_ID,TCF.CATALOG_ID,TF.FAMILY_NAME INTO #TEMP_CATALOG_FAMILYS  FROM                  TB_CATALOG_FAMILY TCF,TB_FAMILY TF WHERE  TCF.CATALOG_ID=@CATALOGID AND TCF.CATEGORY_ID= @CATEGORYID AND 
    TCF.FAMILY_ID=TF.FAMILY_ID AND TF.PARENT_FAMILY_ID=@PARENTFAMILY 
 
    SET @STRQRY= 'SELECT IDENTITY(INT,1,1) AS SORT_ORDER,T.FAMILY_ID,T.CATEGORY_ID,T.CATALOG_ID,T.FAMILY_NAME INTO       TEMP_FAMILY  FROM #TEMP_CATALOG_FAMILYS T ORDER BY '+  @SORTMETHOD 

    EXEC(@STRQRY) 
IF(@PARENTFAMILY=0) 
BEGIN 
  UPDATE TB_CATALOG_FAMILY SET SORT_ORDER=TCF.SORT_ORDER FROM TEMP_FAMILY TCF WHERE TCF.CATALOG_ID=
  TB_CATALOG_FAMILY.CATALOG_ID AND TCF.CATEGORY_ID=TB_CATALOG_FAMILY.CATEGORY_ID AND TCF.FAMILY_ID=
  TB_CATALOG_FAMILY.FAMILY_ID 
END 
ELSE 
BEGIN 
  UPDATE TB_SUBFAMILY SET SORT_ORDER=TCF.SORT_ORDER FROM TEMP_FAMILY TCF WHERE TB_SUBFAMILY.SUBFAMILY_ID=
  TCF.FAMILY_ID AND TB_SUBFAMILY.FAMILY_ID=@PARENTFAMILY 
END  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= '#TEMP_CATALOG_FAMILYS') 
BEGIN 
  DROP TABLE #TEMP_CATALOG_FAMILYS  
END  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_FAMILY') 
BEGIN 
  DROP TABLE TEMP_FAMILY  
END  
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_FamilyOperation]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_FamilyOperation](@CATALOG_ID INT ,@FAMILY_ID INT,@ATTRIBUTE_ID INT,@ATTRIBUTE_TYPE INT,@ACTION NVARCHAR(20),@VALUE NVARCHAR(max),@OBJECT_NAME NVARCHAR(4000),@OBJECT_TYPE NVARCHAR(40))
AS
BEGIN  

		DECLARE @ITEMCOUNT INT , @TEMP_CATEGORYID NVARCHAR(20) , @SQL NVARCHAR(4000)

		IF ((UPPER(@ACTION)='UPDATE'))
		BEGIN  

		IF(@ATTRIBUTE_TYPE = 7)
		BEGIN
		UPDATE TB_FAMILY_SPECS SET STRING_VALUE = @VALUE WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID = @FAMILY_ID
		END

		IF(@ATTRIBUTE_TYPE = 9)
		BEGIN
			UPDATE TB_FAMILY_SPECS SET STRING_VALUE = @VALUE, [OBJECT_NAME] = @OBJECT_NAME, [OBJECT_TYPE] = @OBJECT_TYPE  WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID = @FAMILY_ID
		END

		IF(@ATTRIBUTE_TYPE = 10)
		BEGIN
			UPDATE TB_FAMILY_SPECS SET [OBJECT_NAME] = @OBJECT_NAME  WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID = @FAMILY_ID
		END

		END

		IF ((UPPER(@ACTION)='CLEAR'))
		BEGIN
			UPDATE TB_FAMILY_SPECS SET STRING_VALUE = '', [OBJECT_NAME] = '', [OBJECT_TYPE] = '' WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID = @FAMILY_ID
		END
		
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_FamilyCustomSort]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_FamilyCustomSort]  
@CATALOGID INT, 
@CATEGORYID NVARCHAR(50), 
@FAMILYID INT, 
@PARENTFAMILYID INT, 
@NEWSORTORDER INT  AS 
BEGIN 
DECLARE @OLDSORTORDER INT 
DECLARE @TSORTORDER INT 
DECLARE @TCATALOGID INT 
DECLARE @TCATEGORYID NVARCHAR(50) 
DECLARE @TFAMILYID INT 
DECLARE @TSORTS INT  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMPCATALOGFAMILY') 
BEGIN 
  DROP TABLE TEMPCATALOGFAMILY  
END   
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMPSORTORDER') 
BEGIN 
  DROP TABLE TEMPSORTORDER  
END  
IF (@PARENTFAMILYID=0) 
BEGIN 
  SET @OLDSORTORDER= (SELECT SORT_ORDER FROM TB_CATALOG_FAMILY  WHERE CATALOG_ID = @CATALOGID AND CATEGORY_ID=
  @CATEGORYID AND FAMILY_ID = @FAMILYID) 
END 
ELSE 
BEGIN 
  SET @OLDSORTORDER= (SELECT SORT_ORDER FROM TB_SUBFAMILY  WHERE FAMILY_ID = @PARENTFAMILYID AND 
  SUBFAMILY_ID=@FAMILYID) END IF (@OLDSORTORDER <> @NEWSORTORDER) 	
BEGIN  		 		
IF (@OLDSORTORDER < @NEWSORTORDER) 		
BEGIN                      
IF (@PARENTFAMILYID=0)             
BEGIN 		       
   SELECT TB_CATALOG_FAMILY.SORT_ORDER , TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.CATEGORY_ID,                 TB_CATALOG_FAMILY.FAMILY_ID  INTO TEMPCATALOGFAMILY FROM   TB_CATALOG_FAMILY INNER JOIN TB_FAMILY ON              TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY.FAMILY_ID AND TB_FAMILY.PARENT_FAMILY_ID = @PARENTFAMILYID 
   AND TB_CATALOG_FAMILY.CATALOG_ID = @CATALOGID AND TB_CATALOG_FAMILY.CATEGORY_ID = 
   @CATEGORYID AND SORT_ORDER > @OLDSORTORDER AND  SORT_ORDER <= @NEWSORTORDER 
   ORDER BY TB_CATALOG_FAMILY.SORT_ORDER                 

   SELECT TB_CATALOG_FAMILY.SORT_ORDER , TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.CATEGORY_ID,
   TB_CATALOG_FAMILY.FAMILY_ID  INTO TEMPSORTORDER FROM   TB_CATALOG_FAMILY INNER JOIN TB_FAMILY ON
   TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY.FAMILY_ID AND TB_FAMILY.PARENT_FAMILY_ID = @PARENTFAMILYID 
   AND TB_CATALOG_FAMILY.CATALOG_ID = @CATALOGID AND TB_CATALOG_FAMILY.CATEGORY_ID = @CATEGORYID AND 
   SORT_ORDER >= @OLDSORTORDER AND  SORT_ORDER < @NEWSORTORDER ORDER BY TB_CATALOG_FAMILY.SORT_ORDER                              

   UPDATE  TB_CATALOG_FAMILY  SET SORT_ORDER  = @NEWSORTORDER  WHERE CATALOG_ID=@CATALOGID AND 
   CATEGORY_ID=@CATEGORYID AND FAMILY_ID = @FAMILYID                                       

END            
ELSE               
BEGIN                               
  SELECT   TS.SORT_ORDER,TF.CATALOG_ID,TF.CATEGORY_ID,TS.SUBFAMILY_ID INTO TEMPCATALOGFAMILY   FROM
  TB_CATALOG_FAMILY TF,TB_SUBFAMILY TS WHERE TF.CATALOG_ID=@CATALOGID AND TS.SUBFAMILY_ID=TF.FAMILY_ID 
  AND TS.FAMILY_ID=@PARENTFAMILYID AND TS.SORT_ORDER >@OLDSORTORDER AND  TS.SORT_ORDER <= @NEWSORTORDER 
  ORDER BY TS.SORT_ORDER                

   SELECT SORT_ORDER INTO TEMPSORTORDER  FROM TB_SUBFAMILY WHERE FAMILY_ID=@PARENTFAMILYID AND 
   SORT_ORDER >= @OLDSORTORDER AND  SORT_ORDER < @NEWSORTORDER ORDER BY SORT_ORDER

   UPDATE TB_SUBFAMILY SET SORT_ORDER=@NEWSORTORDER WHERE TB_SUBFAMILY.SUBFAMILY_ID=@FAMILYID AND 
   TB_SUBFAMILY.FAMILY_ID=@PARENTFAMILYID                          
END                           		             
DECLARE  CURSORT CURSOR FOR  			
SELECT  *   FROM TEMPCATALOGFAMILY 			
OPEN  CURSORT                          
DECLARE CURSORTS CURSOR FOR             
SELECT SORT_ORDER FROM TEMPSORTORDER             
OPEN CURSORTS             
FETCH NEXT FROM CURSORTS INTO @TSORTS 			
FETCH NEXT FROM CURSORT INTO @TSORTORDER,  @TCATALOGID, @TCATEGORYID, @TFAMILYID 			             

WHILE @@FETCH_STATUS = 0 				
BEGIN               
IF (@PARENTFAMILYID=0)             
BEGIN 					
  UPDATE  TB_CATALOG_FAMILY SET SORT_ORDER = @TSORTS  WHERE CATALOG_ID=@TCATALOGID AND 
  CATEGORY_ID=@TCATEGORYID AND FAMILY_ID=@TFAMILYID             
END             
ELSE             
BEGIN                   
  UPDATE TB_SUBFAMILY SET SORT_ORDER=@TSORTS WHERE TB_SUBFAMILY.SUBFAMILY_ID=@TFAMILYID AND 
  TB_SUBFAMILY.FAMILY_ID=@PARENTFAMILYID             
END                     					
FETCH NEXT FROM CURSORT INTO @TSORTORDER,  @TCATALOGID, @TCATEGORYID, @TFAMILYID                     
FETCH NEXT FROM CURSORTS INTO @TSORTS 				
END 			
CLOSE CURSORT 			
DEALLOCATE CURSORT             
CLOSE CURSORTS 			
DEALLOCATE CURSORTS 		
END            
ELSE 		
BEGIN                            
IF (@PARENTFAMILYID=0)             
BEGIN                
	SELECT TB_CATALOG_FAMILY.SORT_ORDER , TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.CATEGORY_ID, 
    TB_CATALOG_FAMILY.FAMILY_ID  INTO TEMPCATALOGFAMILY FROM   TB_CATALOG_FAMILY INNER JOIN  TB_FAMILY 
    ON TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY.FAMILY_ID AND TB_FAMILY.PARENT_FAMILY_ID = @PARENTFAMILYID 
    AND TB_CATALOG_FAMILY.CATALOG_ID = @CATALOGID AND TB_CATALOG_FAMILY.CATEGORY_ID = @CATEGORYID AND 
    SORT_ORDER < @OLDSORTORDER AND  SORT_ORDER >= @NEWSORTORDER ORDER BY TB_CATALOG_FAMILY.SORT_ORDER 		                   
   SELECT TB_CATALOG_FAMILY.SORT_ORDER , TB_CATALOG_FAMILY.CATALOG_ID,TB_CATALOG_FAMILY.CATEGORY_ID,  
    TB_CATALOG_FAMILY.FAMILY_ID  INTO TEMPSORTORDER FROM   TB_CATALOG_FAMILY INNER JOIN TB_FAMILY 
    ON TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY.FAMILY_ID AND TB_FAMILY.PARENT_FAMILY_ID = @PARENTFAMILYID
   AND TB_CATALOG_FAMILY.CATALOG_ID = @CATALOGID AND TB_CATALOG_FAMILY.CATEGORY_ID = @CATEGORYID 
   AND SORT_ORDER <= @OLDSORTORDER AND  SORT_ORDER > @NEWSORTORDER ORDER BY TB_CATALOG_FAMILY.SORT_ORDER 		                      

  UPDATE  TB_CATALOG_FAMILY  SET SORT_ORDER  = @NEWSORTORDER  WHERE CATALOG_ID=@CATALOGID AND CATEGORY_ID=
  @CATEGORYID AND FAMILY_ID = @FAMILYID                
END            
ELSE             
BEGIN              
    SELECT TS.SORT_ORDER,TF.CATALOG_ID,TF.CATEGORY_ID,TS.SUBFAMILY_ID INTO TEMPCATALOGFAMILY FROM
    TB_CATALOG_FAMILY TF,TB_SUBFAMILY TS WHERE TF.CATALOG_ID=@CATALOGID AND TS.SUBFAMILY_ID=TF.FAMILY_ID 
    AND TS.FAMILY_ID=@PARENTFAMILYID AND TS.SORT_ORDER < @OLDSORTORDER AND  TS.SORT_ORDER >= @NEWSORTORDER 
    ORDER BY TS.SORT_ORDER             

    SELECT SORT_ORDER INTO TEMPSORTORDER  FROM TB_SUBFAMILY WHERE FAMILY_ID=@PARENTFAMILYID AND SORT_ORDER <= 
    @OLDSORTORDER AND  SORT_ORDER > @NEWSORTORDER ORDER BY SORT_ORDER                

    UPDATE TB_SUBFAMILY SET SORT_ORDER=@NEWSORTORDER WHERE TB_SUBFAMILY.SUBFAMILY_ID=@FAMILYID AND 
    TB_SUBFAMILY.FAMILY_ID=@PARENTFAMILYID            
END                   			             
DECLARE  CURSORT CURSOR FOR  			
SELECT  *   FROM TEMPCATALOGFAMILY 			
OPEN  CURSORT                          
DECLARE CURSORTS CURSOR FOR             
SELECT SORT_ORDER FROM TEMPSORTORDER             
OPEN CURSORTS              
FETCH NEXT FROM CURSORTS INTO @TSORTS 			
FETCH NEXT FROM CURSORT INTO @TSORTORDER,  @TCATALOGID, @TCATEGORYID, @TFAMILYID 			             

WHILE @@FETCH_STATUS = 0 				
BEGIN              
IF (@PARENTFAMILYID=0)             
BEGIN 					
      UPDATE  TB_CATALOG_FAMILY SET SORT_ORDER = @TSORTS  WHERE CATALOG_ID=@TCATALOGID AND CATEGORY_ID=
      @TCATEGORYID AND FAMILY_ID=@TFAMILYID             
END             
ELSE             
BEGIN                  
    UPDATE TB_SUBFAMILY SET SORT_ORDER=@TSORTS WHERE TB_SUBFAMILY.SUBFAMILY_ID=@TFAMILYID AND 
    TB_SUBFAMILY.FAMILY_ID=@PARENTFAMILYID             
END                      
FETCH NEXT FROM CURSORTS INTO @TSORTS 					
FETCH NEXT FROM CURSORT INTO @TSORTORDER,  @TCATALOGID, @TCATEGORYID, @TFAMILYID 				
END 			
CLOSE CURSORT 			
DEALLOCATE CURSORT             
CLOSE CURSORTS 			
DEALLOCATE CURSORTS      
END  	 		 	
END     

IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMPCATALOGFAMILY') 
BEGIN 
DROP TABLE TEMPCATALOGFAMILY  
END  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMPSORTORDER') 
BEGIN 
DROP TABLE TEMPSORTORDER  
END  
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_FamilyAttrSort]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_FamilyAttrSort]
@CATALOGID INT, 
@PARENTCATEGORY NVARCHAR(50),
@PARENTFAMILY INT, 
@ATTRIBUTEID INT, 
@SORTTYPE INT AS   
BEGIN DECLARE @STRQRY NVARCHAR(4000)   
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_FAMILY_SPECS') 
BEGIN 
  DROP TABLE TEMP_FAMILY_SPECS   
END  
IF(@SORTTYPE=0) 
  BEGIN 
	SELECT IDENTITY(INT,1,1)AS SORT_ORDER,TB_CATALOG_FAMILY.CATALOG_ID, TB_CATALOG_FAMILY.CATEGORY_ID,                   TB_CATALOG_FAMILY.FAMILY_ID,TB_FAMILY_SPECS.STRING_VALUE  INTO TEMP_FAMILY_SPECS FROM TB_CATALOG_FAMILY INNER        JOIN  TB_FAMILY ON TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY.FAMILY_ID LEFT JOIN TB_FAMILY_SPECS ON TB_FAMILY.         FAMILY_ID = TB_FAMILY_SPECS.FAMILY_ID AND TB_FAMILY_SPECS.ATTRIBUTE_ID=@ATTRIBUTEID WHERE TB_CATALOG_FAMILY.         CATALOG_ID =@CATALOGID AND TB_CATALOG_FAMILY.CATEGORY_ID =@PARENTCATEGORY AND TB_FAMILY.PARENT_FAMILY_ID = @PARENTFAMILY  ORDER BY TB_FAMILY_SPECS.STRING_VALUE  
END 
ELSE 
BEGIN
   SELECT IDENTITY(INT,1,1)AS SORT_ORDER,TB_CATALOG_FAMILY.CATALOG_ID, TB_CATALOG_FAMILY.CATEGORY_ID,                   TB_CATALOG_FAMILY.FAMILY_ID,TB_FAMILY_SPECS.STRING_VALUE  INTO TEMP_FAMILY_SPECS FROM TB_CATALOG_FAMILY INNER JOIN    TB_FAMILY ON TB_CATALOG_FAMILY.FAMILY_ID = TB_FAMILY.FAMILY_ID LEFT JOIN TB_FAMILY_SPECS ON TB_FAMILY.FAMILY_ID =    TB_FAMILY_SPECS.FAMILY_ID AND TB_FAMILY_SPECS.ATTRIBUTE_ID=@ATTRIBUTEID WHERE    TB_CATALOG_FAMILY.CATALOG_ID =@CATALOGID AND TB_CATALOG_FAMILY.CATEGORY_ID =@PARENTCATEGORY AND TB_FAMILY.PARENT_FAMILY_ID = @PARENTFAMILY 
   ORDER BY CONVERT(INT,TB_FAMILY_SPECS.STRING_VALUE)  
END   
IF(@PARENTFAMILY=0) 
BEGIN 
  UPDATE TB_CATALOG_FAMILY SET SORT_ORDER=TF.SORT_ORDER FROM TEMP_FAMILY_SPECS TF WHERE TB_CATALOG_FAMILY.CATALOG_ID=  TF.CATALOG_ID AND TB_CATALOG_FAMILY.CATEGORY_ID=TF.CATEGORY_ID AND TB_CATALOG_FAMILY.FAMILY_ID=TF.FAMILY_ID END ELSE 
BEGIN 
  UPDATE TB_SUBFAMILY SET SORT_ORDER=TF.SORT_ORDER FROM TEMP_FAMILY_SPECS TF WHERE TB_SUBFAMILY.SUBFAMILY_ID=
  TF.FAMILY_ID AND TB_SUBFAMILY.FAMILY_ID=@PARENTFAMILY 
END  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_FAMILY_SPECS') 
  BEGIN DROP TABLE TEMP_FAMILY_SPECS   
END  
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_DeleteProductAttributes]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_DeleteProductAttributes] (@ATTRIBUTE_ID int ,@CATALOG_ID int ,@FAMILY_ID int,@PRODUCTID int , @STATUS int)
AS 
BEGIN 
DECLARE @PRODUCT_ID INT 
DECLARE @ATTRIBUTEID INT
DECLARE @SORTCOUNT INT

IF EXISTS(SELECT 1 FROM SYSOBJECTS WHERE NAME='TEMPPRODUCTS' AND TYPE='U')
BEGIN
DROP TABLE TEMPPRODUCTS
END

SELECT DISTINCT PRODUCT_ID INTO TEMPPRODUCTS FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID
IF(@STATUS=1)
BEGIN
DROP TABLE TEMPPRODUCTS
SELECT DISTINCT PRODUCT_ID INTO TEMPPRODUCTS FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID AND PRODUCT_ID=@PRODUCTID 
END

DECLARE   CURSOR_DELETE_ATTRIBUTES   CURSOR  FOR   
SELECT PRODUCT_ID  FROM TEMPPRODUCTS
OPEN CURSOR_DELETE_ATTRIBUTES
FETCH NEXT FROM CURSOR_DELETE_ATTRIBUTES  INTO @PRODUCT_ID 
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		DELETE FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID = @FAMILY_ID
		IF(@STATUS=1)
		BEGIN
			DELETE FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID = @FAMILY_ID
		  	DELETE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID AND PRODUCT_ID = @PRODUCT_ID 		
		DELETE FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID = @FAMILY_ID AND PRODUCT_ID =@PRODUCT_ID 
		END
	FETCH NEXT FROM CURSOR_DELETE_ATTRIBUTES  INTO @PRODUCT_ID 
	END 
	CLOSE CURSOR_DELETE_ATTRIBUTES 
	DEALLOCATE CURSOR_DELETE_ATTRIBUTES 
DROP TABLE TEMPPRODUCTS

SELECT DISTINCT PRODUCT_ID INTO #TEMPATTRIBUTE FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID 
DECLARE CURSOR_PRODUCT_ATTRIBUTES_LIST CURSOR FOR SELECT PRODUCT_ID FROM #TEMPATTRIBUTE 
OPEN CURSOR_PRODUCT_ATTRIBUTES_LIST
FETCH NEXT FROM CURSOR_PRODUCT_ATTRIBUTES_LIST INTO @PRODUCT_ID 
WHILE @@FETCH_STATUS = 0
BEGIN
    SET @SORTCOUNT=0
	DECLARE CURSOR_ATTRIBUTES_LIST CURSOR FOR SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID=@FAMILY_ID AND PRODUCT_ID=@PRODUCT_ID ORDER BY SORT_ORDER
	OPEN CURSOR_ATTRIBUTES_LIST
	FETCH NEXT FROM CURSOR_ATTRIBUTES_LIST INTO @ATTRIBUTEID 
	WHILE @@FETCH_STATUS = 0
	BEGIN 
	SET @SORTCOUNT=@SORTCOUNT+1
	UPDATE TB_PROD_FAMILY_ATTR_LIST SET SORT_ORDER = @SORTCOUNT where  FAMILY_ID = @FAMILY_ID AND ATTRIBUTE_ID = @ATTRIBUTEID AND PRODUCT_ID=@PRODUCT_ID
	FETCH NEXT FROM CURSOR_ATTRIBUTES_LIST INTO @ATTRIBUTEID 
	END
	CLOSE CURSOR_ATTRIBUTES_LIST
	DEALLOCATE CURSOR_ATTRIBUTES_LIST 
FETCH NEXT FROM CURSOR_PRODUCT_ATTRIBUTES_LIST INTO @PRODUCT_ID 
END
CLOSE CURSOR_PRODUCT_ATTRIBUTES_LIST
DEALLOCATE CURSOR_PRODUCT_ATTRIBUTES_LIST 

END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_CustomSort]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_CustomSort] @CATALOGID int  , @FAMILYID INT ,
 @CATEGORYID NVARCHAR(50)  , @ATTRIBUTID NVARCHAR(MAX), @ATTRIBUTESORTTYPE  NVARCHAR(MAX)
as
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_PROD_FAMILY')
BEGIN
DROP TABLE TEMP_PROD_FAMILY  
END

IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'temp_profamily')
BEGIN
DROP TABLE temp_profamily  
END 

declare @attrtype nvarchar(max)
declare  @rowcounter int 

select PF.PRODUCT_ID into temp_profamily from tb_catalog_family cf,tb_prod_family pf where cf.catalog_id=@CATALOGID and cf.family_id=@FAMILYID and cf.family_id=pf.family_id
 
DECLARE  @index INT
 DECLARE  @rowFieldCount INT
 DECLARE  @startIndex INT
 DECLARE  @temp VARCHAR(8000) 
 DECLARE  @rowFields VARCHAR(8000)


 CREATE  table #rowFieldTable(attribute_name NVARCHAR(MAX))
 SET @rowFields = @ATTRIBUTID
 SET @index = 0
 SET @startIndex = 0
 SET @rowFieldCount = 0
  while @index < len(@rowFields)
  begin
    	SET @temp = substring(@rowFields,@index,1)
	SET @index = @index + 1
	IF(@temp = ',')
		BEGIN 
			SET @rowFieldCount = @rowFieldCount+1 
			insert INTo #rowFieldTable values(substring(@rowFields,@startIndex,@index-1))
			SET @startIndex = 0
			SET @rowFields = substring(@rowFields,@index,len(@rowFields)+1)
			SET @index = 0
		END 
   END   

	INSERT  INTO #rowFieldTable values(@rowFields)
	SELECT  * FROM  #rowFieldTable
set @rowcounter =@@rowcount


 CREATE  table #ATTRIBUTESORTTYPE(attribute_name NVARCHAR(MAX))
 SET @rowFields = @ATTRIBUTESORTTYPE
 SET @index = 0
 SET @startIndex = 0
 SET @rowFieldCount = 0
  while @index < len(@rowFields)
  begin
    	SET @temp = substring(@rowFields,@index,1)
	SET @index = @index + 1
	IF(@temp = ',')
		BEGIN 
			SET @rowFieldCount = @rowFieldCount+1 
			insert INTo #ATTRIBUTESORTTYPE values(substring(@rowFields,@startIndex,@index-1))
			SET @startIndex = 0
			SET @rowFields = substring(@rowFields,@index,len(@rowFields)+1)
			SET @index = 0
		END 
   END   

	INSERT  INTO #ATTRIBUTESORTTYPE values(@rowFields)
	SELECT  * FROM  #ATTRIBUTESORTTYPE


 select * from temp_profamily
DECLARE @ITR INT 
DECLARE @STRQRY NVARCHAR(MAX)
SET @ITR= 0 ;
SET @STRQRY='SELECT IDENTITY(INT,1,1) AS SORT_ORDER,CONVERT(INT,TP.PRODUCT_ID)AS PRODUCT_ID '

DECLARE @ATTRSORTID NVARCHAR(MAX)
DECLARE @ATTRTYPES INT
declare cursort  cursor    for 
select ATTRIBUTE_NAME FROM #rowFieldTable 
OPEN cursort    
		FETCH NEXT FROM cursort  INTO @ATTRSORTID 
		WHILE @@FETCH_STATUS = 0
		BEGIN 
				SET @ITR= @ITR+1
                set @attrtype=(select ATTRIBUTE_DATATYPE from tb_attribute where attribute_id= @ATTRSORTID)
				set @ATTRTYPES=(select ATTRIBUTE_TYPE from tb_attribute where attribute_id= @ATTRSORTID)
				print 'attr id '
				print @attrsortid 
				print 'attry type '		
				print @attrtype 
				if(SUBSTRING(@attrtype,1,1)='N')
				BEGIN						
						SET @STRQRY=@STRQRY+',(SELECT NUMERIC_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+ @ATTRSORTID +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORT' + CONVERT (NVARCHAR(MAX) ,@ITR)						
print('1')
				END
				ELSE
				BEGIN
						IF (@ATTRTYPES = 6)
						BEGIN
						SET @STRQRY=@STRQRY+',(SELECT ATTRIBUTE_VALUE FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID ='+ @ATTRSORTID +' AND PRODUCT_ID = TP.PRODUCT_ID AND FAMILY_ID = ' + CAST(@FAMILYID AS NVARCHAR(MAX)) + ') AS SORT' + CONVERT (NVARCHAR(MAX) ,@ITR)
						END
						ELSE
						BEGIN
						SET @STRQRY=@STRQRY+',(SELECT STRING_VALUE FROM TB_PROD_SPECS WHERE ATTRIBUTE_ID ='+ @ATTRSORTID +' AND PRODUCT_ID = TP.PRODUCT_ID) AS SORT' + CONVERT (NVARCHAR(MAX) ,@ITR)
						END
print('2')
				END
				
				
					
			FETCH NEXT FROM cursort  INTO @ATTRSORTID
		END 
		CLOSE cursort 
		DEALLOCATE cursort 


set @ITR= 0
declare @sorttype nvarchar(max)
SET @STRQRY=@STRQRY+' INTO TEMP_PROD_FAMILY 
FROM TB_PRODUCT TP WHERE TP.PRODUCT_ID IN (SELECT PF.PRODUCT_ID FROM temp_profamily PF ) ORDER BY '
declare curASdsc  cursor    for 
select ATTRIBUTE_NAME FROM #ATTRIBUTESORTTYPE 
OPEN curASdsc  
		FETCH NEXT FROM curASdsc  INTO  @sorttype
		WHILE @@FETCH_STATUS = 0
		BEGIN 
			set @ITR= @ITR +1
			SET @STRQRY=@STRQRY + ' SORT' + CONVERT(NVARCHAR(MAX) , @ITR ) + ' ' + @sorttype +','

			print @STRQRY
		FETCH NEXT FROM curASdsc  INTO @sorttype
		END 
		CLOSE curASdsc 
		DEALLOCATE curASdsc 

declare @tempstr varchar(max)
set @tempstr=@STRQRY
set @tempstr=rtrim(ltrim(@tempstr))
set @tempstr = replace(@tempstr , '''', '''''')
set @tempstr= substring(@tempstr,1, (len(@tempstr)-1) )
print @tempstr

exec (@tempstr)

UPDATE TB_PROD_FAMILY SET SORT_ORDER=TMP.SORT_ORDER FROM TEMP_PROD_FAMILY TMP 
WHERE TB_PROD_FAMILY.FAMILY_ID=@FAMILYID AND TB_PROD_FAMILY.PRODUCT_ID=TMP.PRODUCT_ID


IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_PROD_FAMILY')
BEGIN
DROP TABLE TEMP_PROD_FAMILY  
END

IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'temp_profamily')
BEGIN
DROP TABLE temp_profamily  
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_CommonAttributesInsert]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_CommonAttributesInsert] (@OLDFAMILYID INT , @NEWFAMILYID INT , @PRODID INT)
AS
BEGIN 

DECLARE @ATTRIBUTEID INT 
		DECLARE  CURCOMMON  CURSOR FOR 
		SELECT DISTINCT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @NEWFAMILYID 
		AND ATTRIBUTE_ID NOT IN ( SELECT DISTINCT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIST WHERE FAMILY_ID = @OLDFAMILYID)
		OPEN CURCOMMON
			FETCH NEXT FROM CURCOMMON INTO @ATTRIBUTEID
			WHILE @@FETCH_STATUS =0 
			BEGIN 
					INSERT INTO TB_PROD_SPECS (STRING_VALUE , PRODUCT_ID , ATTRIBUTE_ID )  VALUES ('', @PRODID, @ATTRIBUTEID)
			FETCH NEXT FROM CURCOMMON INTO @ATTRIBUTEID 
			END	
			CLOSE CURCOMMON
			DEALLOCATE CURCOMMON 
			
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_CategorySort]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_CategorySort] 
@CATALOGID INT,
@PARENTCATEGORY NVARCHAR(50),
@SORTMETHOD NVARCHAR(150), 
@SORTCOL NVARCHAR(50),
@SORTTYPE INT AS   
BEGIN 
DECLARE @STRQRY NVARCHAR(4000) 
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_CATALOG_SECTION')
BEGIN 
   DROP TABLE TEMP_CATALOG_SECTION  
END  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_CATALOG') 
BEGIN 
  DROP TABLE TEMP_CATALOG   
END 
	SELECT  TCS.CATEGORY_ID , TCS.CATALOG_ID , TC.CATEGORY_NAME INTO TEMP_CATALOG_SECTION FROM TB_CATALOG_SECTIONS	     TCS, TB_CATEGORY TC WHERE TC.CATEGORY_ID = TCS.CATEGORY_ID AND
	CATALOG_ID = @CATALOGID AND TC.PARENT_CATEGORY =  @PARENTCATEGORY  
IF(@SORTTYPE=0) 
BEGIN 
	SET @STRQRY='SELECT IDENTITY(INT,1,1) AS SORT_ORDER,T.CATEGORY_ID , T.CATALOG_ID , T.CATEGORY_NAME INTO              TEMP_CATALOG FROM TEMP_CATALOG_SECTION T ORDER BY ' + @SORTMETHOD +' '+@SORTCOL 
END 
ELSE 
BEGIN  
	SET @STRQRY='SELECT IDENTITY(INT,1,1) AS SORT_ORDER,T.CATEGORY_ID , T.CATALOG_ID , T.CATEGORY_NAME INTO              TEMP_CATALOG FROM TEMP_CATALOG_SECTION T ORDER BY CONVERT(INT,' + @SORTMETHOD +')'+@SORTCOL 
END 
EXEC(@STRQRY)  
    UPDATE TB_CATALOG_SECTIONS SET SORT_ORDER = TMP.SORT_ORDER FROM TEMP_CATALOG TMP WHERE TMP.CATALOG_ID =              TB_CATALOG_SECTIONS.CATALOG_ID AND TMP.CATEGORY_ID = TB_CATALOG_SECTIONS.CATEGORY_ID  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_CATALOG_SECTION') 
	BEGIN DROP TABLE TEMP_CATALOG_SECTION   
END 
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_CATALOG') 
	BEGIN DROP TABLE TEMP_CATALOG   
END 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_CategoryDragDrop]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_CategoryDragDrop]
@CATALOGID int,
@CATEGORYID nvarchar(50),
@RECORDID int,
@FAMILYID int, 
@SECTIONNAME nvarchar(50)

AS
DECLARE @SORTORDER int

SELECT @SORTORDER = ISNULL(MAX(SORT_ORDER),0) + 1 FROM TB_PROJECT_SECTION_DETAILS WHERE RECORD_ID = @RECORDID

INSERT INTO TB_PROJECT_SECTION_DETAILS(FAMILY_ID, SORT_ORDER, RECORD_ID, SECTION_NAME) 
VALUES(@FAMILYID, @SORTORDER, @RECORDID, @SECTIONNAME)

RETURN
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_CategoryCustomSort]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_CategoryCustomSort] 
@CATALOGID INT, 
@CATEGORYID NVARCHAR(50), 
@PARENTCATEGORY NVARCHAR(50), 
@NEWSORTORDER INT  AS 
BEGIN 
DECLARE @OLDSORTORDER INT 
DECLARE @TSORTORDER INT 
DECLARE @TCATALOGID INT 
DECLARE @TCATEGORYID NVARCHAR(50) 
declare @TSORTs int  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_CATALOGSECTION') 
BEGIN 
  DROP TABLE TEMP_CATALOGSECTION  
END

IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMPSORTORDER') 
BEGIN 
  DROP TABLE TEMPSORTORDER  
END  

   SET @OLDSORTORDER= (SELECT SORT_ORDER FROM TB_CATALOG_SECTIONS  WHERE CATALOG_ID = @CATALOGID 
   AND CATEGORY_ID=@CATEGORYID) 
IF (@OLDSORTORDER <> @NEWSORTORDER) 	
BEGIN
IF (@OLDSORTORDER < @NEWSORTORDER)
BEGIN
   SELECT  TB_CATALOG_SECTIONS.SORT_ORDER, TB_CATALOG_SECTIONS.CATALOG_ID, TB_CATALOG_SECTIONS.CATEGORY_ID 
   INTO TEMP_CATALOGSECTION FROM TB_CATALOG_SECTIONS INNER JOIN TB_CATEGORY ON TB_CATALOG_SECTIONS.CATEGORY_ID
    = TB_CATEGORY.CATEGORY_ID AND TB_CATEGORY.PARENT_CATEGORY = @PARENTCATEGORY AND 
   TB_CATALOG_SECTIONS.CATALOG_ID = @CATALOGID AND SORT_ORDER > @OLDSORTORDER AND  
   SORT_ORDER <= @NEWSORTORDER order by sort_order                            

   SELECT  TB_CATALOG_SECTIONS.SORT_ORDER, TB_CATALOG_SECTIONS.CATALOG_ID, TB_CATALOG_SECTIONS.CATEGORY_ID 
   INTO TEMPSORTORDER FROM TB_CATALOG_SECTIONS INNER JOIN TB_CATEGORY ON TB_CATALOG_SECTIONS.CATEGORY_ID =           TB_CATEGORY.CATEGORY_ID AND TB_CATEGORY.PARENT_CATEGORY = @PARENTCATEGORY AND 
   TB_CATALOG_SECTIONS.CATALOG_ID = @CATALOGID AND SORT_ORDER >= @OLDSORTORDER AND
   SORT_ORDER < @NEWSORTORDER order by sort_order                  

   UPDATE  TB_CATALOG_SECTIONS  SET SORT_ORDER  = @NEWSORTORDER  WHERE CATALOG_ID=@CATALOGID AND CATEGORY_ID=
   @CATEGORYID

   DECLARE  CURSORT CURSOR FOR
  	SELECT  SORT_ORDER,CATALOG_ID,CATEGORY_ID FROM TEMP_CATALOGSECTION
   OPEN  CURSORT 
   declare cusorts cursor for
     select sort_order from TEMPSORTORDER
   OPEN  cusorts               
  FETCH NEXT FROM cusorts INTO @TSORTs
  FETCH NEXT FROM CURSORT INTO @TSORTORDER,  @TCATALOGID, @TCATEGORYID		

 WHILE @@FETCH_STATUS = 0 		
BEGIN  					
     UPDATE  TB_CATALOG_SECTIONS SET SORT_ORDER = @TSORTs  WHERE CATALOG_ID=@TCATALOGID AND 
     CATEGORY_ID=@TCATEGORYID 
FETCH NEXT FROM CURSORT INTO @TSORTORDER,  @TCATALOGID, @TCATEGORYID                     
FETCH NEXT FROM cusorts INTO @TSORTs 				
END 			 
CLOSE CURSORT 			 
DEALLOCATE CURSORT              
CLOSE cusorts 			 
DEALLOCATE cusorts  		
END           
ELSE 		
BEGIN               
	SELECT  TB_CATALOG_SECTIONS.SORT_ORDER, TB_CATALOG_SECTIONS.CATALOG_ID, TB_CATALOG_SECTIONS.CATEGORY_ID 
	INTO TEMP_CATALOGSECTION FROM TB_CATALOG_SECTIONS INNER JOIN TB_CATEGORY ON TB_CATALOG_SECTIONS.CATEGORY_ID =     TB_CATEGORY.CATEGORY_ID AND TB_CATEGORY.PARENT_CATEGORY = @PARENTCATEGORY AND TB_CATALOG_SECTIONS.CATALOG_ID =    @CATALOGID AND SORT_ORDER < @OLDSORTORDER AND  SORT_ORDER >= @NEWSORTORDER order by sort_order                           
    SELECT  TB_CATALOG_SECTIONS.SORT_ORDER, TB_CATALOG_SECTIONS.CATALOG_ID, TB_CATALOG_SECTIONS.CATEGORY_ID 
    INTO TEMPSORTORDER FROM TB_CATALOG_SECTIONS INNER JOIN TB_CATEGORY ON TB_CATALOG_SECTIONS.CATEGORY_ID =           TB_CATEGORY.CATEGORY_ID AND TB_CATEGORY.PARENT_CATEGORY = @PARENTCATEGORY AND TB_CATALOG_SECTIONS.CATALOG_ID =    @CATALOGID AND SORT_ORDER <= @OLDSORTORDER AND  SORT_ORDER > @NEWSORTORDER order by sort_order                

    UPDATE  TB_CATALOG_SECTIONS  SET SORT_ORDER  = @NEWSORTORDER  WHERE CATALOG_ID=@CATALOGID AND CATEGORY_ID=
    @CATEGORYID 
DECLARE  CURSORT CURSOR FOR
   SELECT  SORT_ORDER,CATALOG_ID,CATEGORY_ID FROM TEMP_CATALOGSECTION 			  
OPEN  CURSORT                             
declare cusorts cursor for               
select sort_order from TEMPSORTORDER               
OPEN  cusorts                              
FETCH NEXT FROM cusorts INTO @TSORTs 			  
FETCH NEXT FROM CURSORT INTO @TSORTORDER,  @TCATALOGID, @TCATEGORYID		               

WHILE @@FETCH_STATUS = 0 				
BEGIN 
 					
UPDATE  TB_CATALOG_SECTIONS SET SORT_ORDER = @TSORTs  WHERE CATALOG_ID=@TCATALOGID AND CATEGORY_ID=@TCATEGORYID FETCH NEXT FROM CURSORT INTO @TSORTORDER,  @TCATALOGID, @TCATEGORYID                     
FETCH NEXT FROM cusorts INTO @TSORTs 				
END 			 
CLOSE CURSORT 			 
DEALLOCATE CURSORT              
CLOSE cusorts 			 
DEALLOCATE cusorts 		
END        
END   
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMP_CATALOGSECTION') 
BEGIN 
DROP TABLE TEMP_CATALOGSECTION  
END  
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= 'TEMPSORTORDER') 
BEGIN 
DROP TABLE TEMPSORTORDER  
END  
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_AddSecDetail]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_AddSecDetail]
@RecordID int,
@FamilyID int,
@SectionName nvarchar(100)
AS
Declare @Sort_order int
select @Sort_order = isnull(max(sort_order),0) + 1 from tb_project_section_details where record_id = @RecordID
INSERT INTO TB_PROJECT_SECTION_DETAILS(FAMILY_ID, SORT_ORDER, RECORD_ID, SECTION_NAME) 
VALUES(@FamilyID, @Sort_order, @RecordID, @SectionName)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_AddProject]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_AddProject]
@PROJECT_NAME NVARCHAR(50),
@COMMENTS NVARCHAR(500),
@CATALOG_ID INT,
@PROJECT_TYPE INT,
@PROJECT_ID INT OUTPUT
AS
INSERT INTO TB_PROJECT(PROJECT_NAME, COMMENTS, CATALOG_ID, PROJECT_TYPE)
VALUES (@PROJECT_NAME, @COMMENTS, @CATALOG_ID, @PROJECT_TYPE)
SET @PROJECT_ID = @@identity
RETURN
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_AddNewUser]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_AddNewUser] 
 @USERID NVARCHAR(100), 
@STATUS NVARCHAR(10), 
@ROLEID INT 
AS 
BEGIN 
IF NOT EXISTS (SELECT TB_USER_ID FROM TB_USER WHERE TB_USER_ID=@USERID) 
  BEGIN     
   INSERT INTO TB_USER (TB_USER_ID,STATUS) VALUES (@USERID,@STATUS)  
 END 
ELSE    
UPDATE TB_USER SET STATUS=@STATUS WHERE TB_USER_ID=@USERID  
IF NOT EXISTS (SELECT TB_USER_ID FROM TB_USER_ROLE WHERE TB_USER_ID=@USERID) 
   BEGIN         
     INSERT INTO TB_USER_ROLE (TB_USER_ID,ROLE_ID) VALUES (@USERID,@ROLEID)  
  END 
ELSE  
  UPDATE TB_USER_ROLE SET ROLE_ID=@ROLEID WHERE TB_USER_ID=@USERID  
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_AddNewRole]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_AddNewRole]  @ROLENAME NVARCHAR(255)
AS
DECLARE @NEWROLEID INT
BEGIN 
	IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= '#TEMPROLEFUNCTION') 
BEGIN 
	DROP TABLE #TEMPROLEFUNCTION  
END
	INSERT INTO TB_ROLE (ROLE_NAME) VALUES(@ROLENAME) SET @NEWROLEID =(SELECT(ROLE_ID) FROM TB_ROLE WHERE ROLE_NAME=@ROLENAME) 
	SELECT FUNCTION_ID,DEFAULT_ACTION_VIEW,DEFAULT_ACTION_MODIFY,DEFAULT_ACTION_ADD,DEFAULT_ACTION_REMOVE INTO #TEMPROLEFUNCTION FROM TB_FUNCTION
	INSERT INTO TB_ROLE_FUNCTIONS (FUNCTION_ID,ROLE_ID,ACTION_VIEW,ACTION_MODIFY,ACTION_ADD,ACTION_REMOVE) SELECT		FUNCTION_ID,@NEWROLEID ,DEFAULT_ACTION_VIEW,DEFAULT_ACTION_MODIFY,DEFAULT_ACTION_ADD,DEFAULT_ACTION_REMOVE			FROM #TEMPROLEFUNCTION 
IF EXISTS (SELECT [NAME] FROM SYSOBJECTS WHERE TYPE='U' AND [NAME]= '#TEMPROLEFUNCTION') 
	BEGIN DROP TABLE #TEMPROLEFUNCTION  
END 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_AddIdFile]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_AddIdFile]
@ProjectID int,
@Notes nvarchar(1000),
@RecordID int OUTPUT
as
declare @FILE_NO int
SELECT @FILE_NO = isnull(max(file_no),0) +1  from TB_PROJECT_SECTIONS WHERE PROJECT_ID = @ProjectID
if (@FILE_NO = 0)
BEGIN
	SET @FILE_NO = 1
END
INSERT INTO TB_PROJECT_SECTIONS (PROJECT_ID, FILE_NO, NOTES) VALUES(@ProjectID, @FILE_NO, @Notes)
SET @RecordID = @@Identity
RETURN
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOG_SCRIPTING]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOG_SCRIPTING] (@FAMILYID INT,@SUBFAMILYID INT,@CATALOGID INT) AS
BEGIN
DECLARE @ATTRIBUTEID INT
DECLARE @ATTRIBUTENAME NVARCHAR(100)
DECLARE @QUERYSTR1 NVARCHAR(MAX)
DECLARE @QUERYSTR2 NVARCHAR(MAX)
DECLARE @QUERYSTR3 NVARCHAR(MAX)
DECLARE @QUERYSTR4 NVARCHAR(MAX)
DECLARE @BRANDCHECK NVARCHAR(MAX)
DECLARE @BRANDCHECKGET NVARCHAR(MAX)
DECLARE @CATALOGCHK NVARCHAR(4)
 
IF EXISTS (SELECT 1 FROM SYSOBJECTS WHERE NAME = 'VIEW_LOOKUP')
BEGIN
	DROP VIEW VIEW_LOOKUP
END
IF EXISTS (SELECT 1 FROM SYSOBJECTS WHERE NAME = 'VIEW_LOOKUP_SUBFAMILY')
BEGIN
	DROP VIEW VIEW_LOOKUP_SUBFAMILY
END

IF @CATALOGID = 2
BEGIN
SET @CATALOGCHK = 'B%'
END
ELSE IF @CATALOGID = 3
BEGIN
SET @CATALOGCHK = '%L%'
END
ELSE IF @CATALOGID =4                    
BEGIN
SET @CATALOGCHK = '%C%'
END
ELSE IF @CATALOGID= 5
BEGIN
SET @CATALOGCHK = '%H%'
END
ELSE IF @CATALOGID= 8
BEGIN
SET @CATALOGCHK = '%M'
END                  

--SET @BRANDCHECK=',[Brand Check]'
--SET @BRANDCHECKGET=',(select replace(replace(STRING_VALUE,N''<bol>'',''''),N''</bol>'','''') as STRING_VALUE from tb_prod_specs where product_id = tpf.product_id and attribute_id = '+CONVERT(NVARCHAR(MAX),546)+') [Brand Check]'
DECLARE ATTRIBUTECURSOR CURSOR FOR 
SELECT DISTINCT ATTRIBUTE_ID,ATTRIBUTE_NAME FROM TBWC_CATALOG_SCRIPTING_KEYS WHERE FAMILY_ID=@FAMILYID
OPEN ATTRIBUTECURSOR
FETCH NEXT FROM ATTRIBUTECURSOR  INTO @ATTRIBUTEID,@ATTRIBUTENAME 
WHILE @@FETCH_STATUS = 0
BEGIN     
	IF @QUERYSTR1 IS NULL
	BEGIN    
	SET @QUERYSTR1='create view [VIEW_LOOKUP] as SELECT min(product_id) [PRODUCT_ID],['+ @ATTRIBUTENAME+']'
	END
	ELSE    
	SET @QUERYSTR1 +=',['+@ATTRIBUTENAME+']'
	IF @QUERYSTR2 IS NULL		
	SET @QUERYSTR2=' from(select (select replace(replace(STRING_VALUE,N''<bol>'',''''),N''</bol>'','''') as STRING_VALUE from tb_prod_specs where product_id = tpf.product_id and attribute_id = '+CONVERT(NVARCHAR(MAX), @ATTRIBUTEID)+') ['+@ATTRIBUTENAME+']'
	ELSE
	SET @QUERYSTR2 +=', (select replace(replace(STRING_VALUE,N''<bol>'',''''),N''</bol>'','''') as STRING_VALUE from tb_prod_specs where product_id = tpf.product_id and attribute_id = '+CONVERT(NVARCHAR(MAX), @ATTRIBUTEID)+') ['+@ATTRIBUTENAME+']'
	SET @QUERYSTR3=', tpf.product_id from tb_prod_family tpf,TB_CATALOG_FAMILY tcf,tb_prod_specs tps where tcf.FAMILY_ID=tpf.FAMILY_ID and tcf.CATALOG_ID='+CONVERT(NVARCHAR(MAX), @CATALOGID)+' and tpf.FAMILY_ID='+ CONVERT(NVARCHAR(MAX), @FAMILYID)+' and tps.product_id=tpf.product_id and tps.string_value like ''' + @CATALOGCHK +''' and tps.attribute_id=546) as v group by '  
	IF @QUERYSTR4 IS NULL
	SET @QUERYSTR4='['+@ATTRIBUTENAME+']'
	ELSE
	SET @QUERYSTR4 +=',['+@ATTRIBUTENAME+']'
FETCH NEXT FROM ATTRIBUTECURSOR  INTO @ATTRIBUTEID,@ATTRIBUTENAME 
END 
CLOSE ATTRIBUTECURSOR 
DEALLOCATE ATTRIBUTECURSOR
--SET @QUERYSTR1 +=@BRANDCHECK + @QUERYSTR2+ @BRANDCHECKGET + @QUERYSTR3+ @QUERYSTR4 + @BRANDCHECK
SET @QUERYSTR1 += @QUERYSTR2 +  @QUERYSTR3 + @QUERYSTR4 
print @QUERYSTR1
EXEC(@QUERYSTR1)  
SET @QUERYSTR1=NULL
SET @QUERYSTR2=NULL
SET @QUERYSTR3=NULL
SET @QUERYSTR4=NULL
IF((SELECT COUNT(*) FROM TBWC_PRODUCT_SPECIFICATION_GROUP_FAMILY WHERE FAMILY_ID= @SUBFAMILYID)=0)
BEGIN
DECLARE SUBATTRIBUTECURSOR CURSOR FOR 
SELECT DISTINCT ATTRIBUTE_ID,ATTRIBUTE_NAME FROM TBWC_CATALOG_SCRIPTING_KEYS WHERE FAMILY_ID=@SUBFAMILYID
OPEN SUBATTRIBUTECURSOR  
FETCH NEXT FROM SUBATTRIBUTECURSOR  INTO @ATTRIBUTEID,@ATTRIBUTENAME  
WHILE @@FETCH_STATUS = 0
BEGIN     
	IF @QUERYSTR1 IS NULL
	BEGIN    
	SET @QUERYSTR1='create view [VIEW_LOOKUP_SUBFAMILY] as SELECT min(product_id) [PRODUCT_ID],['+ @ATTRIBUTENAME+']'
	END
	ELSE    
	SET @QUERYSTR1 +=',['+@ATTRIBUTENAME+']'
	IF @QUERYSTR2 IS NULL
	SET @QUERYSTR2=' from(select (select replace(replace(STRING_VALUE,N''<bol>'',''''),N''</bol>'','''') as STRING_VALUE from tb_prod_specs where product_id = tpf.product_id and attribute_id = '+CONVERT(NVARCHAR(MAX), @ATTRIBUTEID)+') ['+@ATTRIBUTENAME+']'
	ELSE
	SET @QUERYSTR2 +=', (select replace(replace(STRING_VALUE,N''<bol>'',''''),N''</bol>'','''') as STRING_VALUE from tb_prod_specs where product_id = tpf.product_id and attribute_id = '+CONVERT(NVARCHAR(MAX), @ATTRIBUTEID)+') ['+@ATTRIBUTENAME+']'
	SET @QUERYSTR3=', tpf.product_id from tb_prod_family tpf,TB_CATALOG_FAMILY tcf,tb_prod_specs tps where tcf.FAMILY_ID=tpf.FAMILY_ID and tcf.CATALOG_ID='+CONVERT(NVARCHAR(MAX), @CATALOGID)+' and tpf.FAMILY_ID='+ CONVERT(NVARCHAR(MAX), @SUBFAMILYID)+' and tps.product_id=tpf.product_id and tps.string_value like '''+ @CATALOGCHK +''' and tps.attribute_id=546)  as v1 group by '  
	IF @QUERYSTR4 IS NULL
	SET @QUERYSTR4='['+@ATTRIBUTENAME+']'
	ELSE
	SET @QUERYSTR4 +=',['+@ATTRIBUTENAME+']'
	FETCH NEXT FROM SUBATTRIBUTECURSOR  INTO @ATTRIBUTEID,@ATTRIBUTENAME
	END
CLOSE SUBATTRIBUTECURSOR
DEALLOCATE SUBATTRIBUTECURSOR     
SET @QUERYSTR1 += @QUERYSTR2 + @QUERYSTR3 + @QUERYSTR4 
print @QUERYSTR1
EXEC(@QUERYSTR1)  
SET @QUERYSTR1=NULL
SET @QUERYSTR2=NULL
SET @QUERYSTR3=NULL
SET @QUERYSTR4=NULL  
END
ELSE IF((SELECT COUNT(*) FROM TBWC_PRODUCT_SPECIFICATION_GROUP_FAMILY WHERE FAMILY_ID= @SUBFAMILYID)=1)
BEGIN
DECLARE SUBATTRIBUTECURSOR CURSOR FOR 
SELECT DISTINCT ATTRIBUTE_ID,ATTRIBUTE_NAME FROM TBWC_CATALOG_SCRIPTING_KEYS WHERE FAMILY_ID=@SUBFAMILYID
OPEN SUBATTRIBUTECURSOR  
FETCH NEXT FROM SUBATTRIBUTECURSOR  INTO @ATTRIBUTEID,@ATTRIBUTENAME  
WHILE @@FETCH_STATUS = 0
BEGIN     
	IF @QUERYSTR1 IS NULL
	BEGIN    
	SET @QUERYSTR1='create view [VIEW_LOOKUP_SUBFAMILY] as'
	END
	--ELSE    
	--SET @QUERYSTR1 +=',['+@ATTRIBUTENAME+']'
	IF @QUERYSTR2 IS NULL
	SET @QUERYSTR2=' (select (select replace(replace(STRING_VALUE,N''<bol>'',''''),N''</bol>'','''') as STRING_VALUE from tb_prod_specs where product_id = tpf.product_id and attribute_id = '+CONVERT(NVARCHAR(MAX), @ATTRIBUTEID)+') ['+@ATTRIBUTENAME+']'
	ELSE
	SET @QUERYSTR2 +=', (select replace(replace(STRING_VALUE,N''<bol>'',''''),N''</bol>'','''') as STRING_VALUE from tb_prod_specs where product_id = tpf.product_id and attribute_id = '+CONVERT(NVARCHAR(MAX), @ATTRIBUTEID)+') ['+@ATTRIBUTENAME+']'
	SET @QUERYSTR3=', tpf.product_id from tb_prod_family tpf,TB_CATALOG_FAMILY tcf,tb_prod_specs tps where tcf.FAMILY_ID=tpf.FAMILY_ID and tcf.CATALOG_ID='+CONVERT(NVARCHAR(MAX), @CATALOGID)+' and tpf.FAMILY_ID='+ CONVERT(NVARCHAR(MAX), @SUBFAMILYID)+' and tps.product_id=tpf.product_id and tps.string_value like '''+ @CATALOGCHK + ''' and tps.attribute_id=546)'  
	--IF @QUERYSTR4 IS NULL
	--SET @QUERYSTR4='['+@ATTRIBUTENAME+']'
	--ELSE
	--SET @QUERYSTR4 +=',['+@ATTRIBUTENAME+']'
	FETCH NEXT FROM SUBATTRIBUTECURSOR  INTO @ATTRIBUTEID,@ATTRIBUTENAME
	END
CLOSE SUBATTRIBUTECURSOR
DEALLOCATE SUBATTRIBUTECURSOR     
SET @QUERYSTR1 +=@QUERYSTR2+@QUERYSTR3
print @QUERYSTR1
EXEC(@QUERYSTR1)  
SET @QUERYSTR1=NULL
SET @QUERYSTR2=NULL
SET @QUERYSTR3=NULL
SET @QUERYSTR4=NULL 
END
END
GO
/****** Object:  StoredProcedure [dbo].[STP_2WS_XML_INSERTUPDATE]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_2WS_XML_INSERTUPDATE] 
AS
BEGIN
DECLARE @MyXML XML
DECLARE @PACKET_ID INT
DECLARE @xmlHandle INT 
DECLARE @SESSION_ID NVARCHAR(100)
DECLARE @CATALOG_ID INT 
DECLARE @CATALOG_NAME NVARCHAR(100) 
DECLARE @VERSION  NVARCHAR(50) 
DECLARE @DESCRIPTION  NVARCHAR(500) 
DECLARE @PRODUCTFILTER  NVARCHAR(MAX) 
DECLARE @FAMILYFILTER NVARCHAR(MAX) 
CREATE TABLE #TEMPRESULT(
	[PRODUCT_ID] [int] NULL,
	[CATALOG_ITEM_NO] [nvarchar] (max) NULL,
	[STATUS] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
UPDATE TB2WS_SYNCDATA SET SESSION_STATUS='In Progress' WHERE session_status='Received'
DECLARE XML_CURSOR CURSOR FOR  SELECT XML_PACKET,PACKET_ID,SESSION_ID FROM [TB2WS_SYNCDATA]WHERE session_status='In Progress'
OPEN XML_CURSOR
FETCH NEXT FROM XML_CURSOR INTO @MyXML,@PACKET_ID,@SESSION_ID
WHILE @@FETCH_STATUS = 0
BEGIN	
	DELETE #TEMPRESULT

	EXEC sp_xml_preparedocument @xmlHandle OUTPUT, @MyXML 

	DECLARE CATALOG_CURSOR CURSOR FOR SELECT * FROM OPENXML (@xmlHandle, '//Catalog', 8) WITH 
	( 
	CATALOG_ID INT 'Catalog_Id', 
	CATALOG_NAME nVARCHAR(100) 'Catalog_Name',
	VERSION nVARCHAR(100) 'Catalog_Version',
	DESCRIPTION nVARCHAR(500) 'Catalog_Description',
	PRODUCT_FILTERS nVARCHAR(MAX) 'Product_Filters',
	FAMILY_FILTERS nVARCHAR(MAX) 'Family_Filters'
	)
	OPEN CATALOG_CURSOR
	FETCH NEXT FROM CATALOG_CURSOR INTO @CATALOG_ID, @CATALOG_NAME,@VERSION,@DESCRIPTION,@PRODUCTFILTER,@FAMILYFILTER
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		IF((SELECT COUNT(*) FROM TB_CATALOG WHERE CATALOG_ID=@CATALOG_ID)=0)
		BEGIN
			SET IDENTITY_INSERT TB_CATALOG ON
			INSERT INTO TB_CATALOG(CATALOG_ID,CATALOG_NAME,VERSION,DESCRIPTION,PRODUCT_FILTERS,FAMILY_FILTERS)VALUES(@CATALOG_ID,@CATALOG_NAME,@VERSION,@DESCRIPTION,@PRODUCTFILTER,@FAMILYFILTER)	
			SET IDENTITY_INSERT TB_CATALOG OFF
		END
		ELSE
		BEGIN
			UPDATE TB_CATALOG SET CATALOG_NAME=@CATALOG_NAME,VERSION=@VERSION,DESCRIPTION=@DESCRIPTION,PRODUCT_FILTERS=@PRODUCTFILTER,FAMILY_FILTERS=@FAMILYFILTER WHERE CATALOG_ID=@CATALOG_ID
		END

		FETCH NEXT FROM CATALOG_CURSOR INTO @CATALOG_ID, @CATALOG_NAME,@VERSION,@DESCRIPTION,@PRODUCTFILTER,@FAMILYFILTER 
	END
	CLOSE CATALOG_CURSOR
	DEALLOCATE CATALOG_CURSOR	

DECLARE @CATEGORY_ID NVARCHAR(50) 
DECLARE @CATEGORY_NAME NVARCHAR(500) 
DECLARE @PARENT_CATEGORY  NVARCHAR(500)
DECLARE @SORT INT
DECLARE @CATGEORYLEVEL INT
DECLARE @LEVELCOUNT INT
DECLARE @SUBCAT_L1 NVARCHAR(500)
DECLARE @SUBCATNAME_L1 NVARCHAR(500)
DECLARE @SUBCAT_L2 NVARCHAR(500)
DECLARE @SUBCATNAME_L2 NVARCHAR(500)
DECLARE @SUBCAT_L3 NVARCHAR(500)
DECLARE @SUBCATNAME_L3 NVARCHAR(500)
DECLARE @SUBCAT_L4 NVARCHAR(500) 
DECLARE @SUBCATNAME_L4 NVARCHAR(500)
SET @CATGEORYLEVEL=0
SET @LEVELCOUNT=0
SET @SORT=0
SET @PARENT_CATEGORY='0'
	DECLARE CATEGROY_CURSOR CURSOR FOR select * FROM OPENXML (@xmlHandle, '//Category',8) WITH 
	( 
	 CATEGORY_ID nVARCHAR(500) 'CATEGORY_ID', 
	 CATEGORY_NAME nVARCHAR(500) 'CATEGORY_NAME',
	 SUBCAT_L1 nVARCHAR(500) 'SUBCAT_L1', 
	 SUBCATNAME_L1 nVARCHAR(500) 'SUBCATNAME_L1',
	 SUBCAT_L2 nVARCHAR(500) 'SUBCAT_L2', 
	 SUBCATNAME_L2 nVARCHAR(500) 'SUBCATNAME_L2',
     SUBCAT_L3 nVARCHAR(500) 'SUBCAT_L3', 
	 SUBCATNAME_L3 nVARCHAR(500) 'SUBCATNAME_L3',
	 SUBCAT_L4 nVARCHAR(500) 'SUBCAT_L4', 
	 SUBCATNAME_L4 nVARCHAR(500) 'SUBCATNAME_L4',
     SORT INT 'Sort'
	)
	OPEN CATEGROY_CURSOR
	FETCH NEXT FROM CATEGROY_CURSOR INTO @CATEGORY_ID, @CATEGORY_NAME,@SUBCAT_L1,@SUBCATNAME_L1,@SUBCAT_L2,@SUBCATNAME_L2,@SUBCAT_L3,@SUBCATNAME_L3,@SUBCAT_L4,@SUBCATNAME_L4,@SORT
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF @SUBCAT_L1 IS NULL AND @CATEGORY_ID IS NOT NULL
			SET @CATGEORYLEVEL=1
		ELSE IF  @SUBCAT_L2 IS NULL	
			SET @CATGEORYLEVEL=2
		ELSE IF  @SUBCAT_L3 IS NULL	
			SET @CATGEORYLEVEL=3
		ELSE IF  @SUBCAT_L4 IS NULL	
			SET @CATGEORYLEVEL=4
		ELSE IF  @SUBCAT_L4 IS NOT NULL	
			SET @CATGEORYLEVEL=5

		WHILE  @LEVELCOUNT<@CATGEORYLEVEL
		BEGIN
			IF(@LEVELCOUNT=1)
			BEGIN
				SET @CATEGORY_ID=@SUBCAT_L1
				SET @CATEGORY_NAME=@SUBCATNAME_L1
			END
			ELSE IF(@LEVELCOUNT=2)
			BEGIN
				SET @CATEGORY_ID=@SUBCAT_L2
				SET @CATEGORY_NAME=@SUBCATNAME_L2
			END
			ELSE IF(@LEVELCOUNT=3)
			BEGIN
				SET @CATEGORY_ID=@SUBCAT_L3
				SET @CATEGORY_NAME=@SUBCATNAME_L3
			END
			ELSE IF(@LEVELCOUNT=4)
			BEGIN
				SET @CATEGORY_ID=@SUBCAT_L4
				SET @CATEGORY_NAME=@SUBCATNAME_L4
			END
	
			IF(LEN(@CATEGORY_ID)>0 AND ((SELECT COUNT(*) FROM TB_CATEGORY WHERE CATEGORY_ID=@CATEGORY_ID)=0))
			BEGIN
				INSERT INTO TB_CATEGORY(CATEGORY_ID,CATEGORY_NAME,PARENT_CATEGORY)VALUES(@CATEGORY_ID,@CATEGORY_NAME,@PARENT_CATEGORY)
			END
			ELSE
			BEGIN
				UPDATE TB_CATEGORY SET CATEGORY_NAME=@CATEGORY_NAME,PARENT_CATEGORY=@PARENT_CATEGORY WHERE CATEGORY_ID=@CATEGORY_ID
			END	

			SET @PARENT_CATEGORY=@CATEGORY_ID	
		
			IF ((@SORT IS NULL) OR @SORT<=0 )
			BEGIN
				SET @SORT = ((SELECT MAX(SORT_ORDER) FROM TB_CATALOG_SECTIONS TCS,TB_CATEGORY TC WHERE TCS.CATEGORY_ID=TC.CATEGORY_ID AND TC.PARENT_CATEGORY='0' AND TCS.CATALOG_ID=@CATALOG_ID)+1)
			END	
			IF (@SORT IS NULL)
				SET @SORT =1

			IF((SELECT COUNT(*) FROM TB_CATALOG_SECTIONS WHERE CATEGORY_ID=@CATEGORY_ID AND CATALOG_ID=@CATALOG_ID)=0)
			BEGIN
				INSERT INTO TB_CATALOG_SECTIONS(CATALOG_ID,CATEGORY_ID,SORT_ORDER) VALUES(@CATALOG_ID,@CATEGORY_ID, @SORT)
			END
			ELSE
			BEGIN
				UPDATE TB_CATALOG_SECTIONS SET SORT_ORDER=@SORT WHERE CATALOG_ID=@CATALOG_ID AND CATEGORY_ID=@CATEGORY_ID
			END
			SET @LEVELCOUNT=@LEVELCOUNT+1
		END

	FETCH NEXT FROM CATEGROY_CURSOR INTO @CATEGORY_ID, @CATEGORY_NAME,@SUBCAT_L1,@SUBCATNAME_L1,@SUBCAT_L2,@SUBCATNAME_L2,@SUBCAT_L3,@SUBCATNAME_L3,@SUBCAT_L4,@SUBCATNAME_L4,@SORT
	END
	CLOSE CATEGROY_CURSOR
	DEALLOCATE CATEGROY_CURSOR

DECLARE @FAMILY_NAME NVARCHAR(400)
DECLARE @FAMILY_ID INT
DECLARE @SUBFAMILY_NAME NVARCHAR(400)
DECLARE @SUBFAMILY_ID INT
DECLARE @PARENT_FAMILY INT
DECLARE @ROOT_FAMILY INT
DECLARE @XMLPARSER XML
DECLARE @PRODUCT_ID INT
DECLARE @ROW_SORT INT
DECLARE @PRODUCT_PUBLISH NVARCHAR(10)
DECLARE @CATALOG_ITEM_NO NVARCHAR(MAX)
DECLARE @COLUMN_SORT INT
DECLARE @ATTRIBUTE_PUBLISH NVARCHAR(10)
DECLARE @ATTRIBUTE_TYPE INT
DECLARE @ATTRIBUTE_NAME NVARCHAR(100)
DECLARE @ATTRIBUTE_ID INT
DECLARE @ATTRIBUTE_VALUE NVARCHAR(MAX)
DECLARE @ATTRIBUTE_DATATYPE NVARCHAR(100)
DECLARE @ATTRIBUTE_DATAFORMAT NVARCHAR(100)
DECLARE @PARTSKEYCOUNT INT
DECLARE @PRODUCTSPECCOUNT INT
DECLARE @OBJECT_NAME NVARCHAR(100)
DECLARE @OBJECT_TYPE NVARCHAR(100)
DECLARE @FAMILYSPECCOUNT INT 
DECLARE @FAMILY_SORT INT
DECLARE @SUBFAMILY_SORT INT
DECLARE @FAMILY_TABLE_STRUCTURE NVARCHAR(MAX)
DECLARE @STRUCTURE_NAME NVARCHAR(500)
SET @FAMILY_SORT=0
SET @SUBFAMILY_SORT=0
DECLARE @RESULTXML XML

	DECLARE FAMILY_CURSOR CURSOR FOR select * FROM OPENXML (@xmlHandle, '//FAMILY',8) WITH 
	( 
	 FAMILY_ID nVARCHAR(500) 'FAMILY_NAME/@FAMILY_ID', 
	 FAMILY_NAME nVARCHAR(500) 'FAMILY_NAME',
     FAMILY_SORT INT 'FAMILY_NAME/SORT',
	 SUBFAMILY_ID nVARCHAR(500) 'SUBFAMILY_NAME/@FAMILY_ID', 
	 SUBFAMILY_NAME nVARCHAR(500) 'SUBFAMILY_NAME',
     SUBFAMILY_SORT INT 'SUBFAMILY_NAME/SORT',
     FAMILY_TABLE_STRUCTURE NVARCHAR(MAX) 'FAMILY_TABLE_STRUCTURE',
     STRUCTURE_NAME NVARCHAR(500) 'FAMILY_TABLE_STRUCTURE/@STRUCTURE_NAME'		     		
	)
	OPEN FAMILY_CURSOR
	FETCH NEXT FROM FAMILY_CURSOR INTO @FAMILY_ID,@FAMILY_NAME,@FAMILY_SORT,@SUBFAMILY_ID,@SUBFAMILY_NAME,@SUBFAMILY_SORT,@FAMILY_TABLE_STRUCTURE,@STRUCTURE_NAME
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @ROOT_FAMILY=1
		SET @PARENT_FAMILY=0

		IF (((@FAMILY_SORT IS NULL) OR @FAMILY_SORT<=0 ) AND @PARENT_FAMILY=0)		
			SET @SORT =((SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY TCF,TB_FAMILY TF WHERE TCF.FAMILY_ID=TF.FAMILY_ID AND TF.ROOT_FAMILY=0 AND TCF.CATALOG_ID=@CATALOG_ID AND TCF.CATEGORY_ID=@CATEGORY_ID)+1)		
		IF (@FAMILY_SORT IS NULL)
			SET @FAMILY_SORT =1
		IF ((SELECT COUNT(*) FROM TB_FAMILY WHERE FAMILY_ID=@FAMILY_ID)=0)	
		BEGIN
			SET IDENTITY_INSERT TB_FAMILY ON	
			INSERT INTO TB_FAMILY(FAMILY_ID,FAMILY_NAME,PARENT_FAMILY_ID,ROOT_FAMILY,CATEGORY_ID)VALUES(@FAMILY_ID,@FAMILY_NAME,@PARENT_FAMILY,@ROOT_FAMILY,@CATEGORY_ID)					
			SET IDENTITY_INSERT TB_FAMILY OFF
			IF ((SELECT COUNT(*) FROM TB_FAMILY_TABLE_STRUCTURE WHERE CATALOG_ID=@CATALOG_ID AND FAMILY_ID=@FAMILY_ID)=0)
				INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,IS_DEFAULT,STRUCTURE_NAME)VALUES(@CATALOG_ID,@FAMILY_ID,@FAMILY_TABLE_STRUCTURE,1,@STRUCTURE_NAME)
		END
		ELSE		
			UPDATE TB_FAMILY SET FAMILY_NAME=@FAMILY_NAME,PARENT_FAMILY_ID=@PARENT_FAMILY,ROOT_FAMILY=@ROOT_FAMILY,CATEGORY_ID=@CATEGORY_ID WHERE FAMILY_ID=@FAMILY_ID					

		IF ((SELECT COUNT(*) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID=@CATALOG_ID AND CATEGORY_ID=@CATEGORY_ID AND FAMILY_ID=@FAMILY_ID)=0)
		    INSERT INTO TB_CATALOG_FAMILY (CATALOG_ID,CATEGORY_ID,FAMILY_ID,SORT_ORDER)VALUES(@CATALOG_ID,@CATEGORY_ID,@FAMILY_ID,@FAMILY_SORT)		
		ELSE		
			UPDATE TB_CATALOG_FAMILY SET SORT_ORDER=@FAMILY_SORT WHERE CATALOG_ID=@CATALOG_ID AND CATEGORY_ID=@CATEGORY_ID AND FAMILY_ID=@FAMILY_ID
		SET @PARENT_FAMILY=@FAMILY_ID

		IF(@SUBFAMILY_ID IS NOT NULL)
		BEGIN 	
			SET @ROOT_FAMILY=0
			IF (((@SUBFAMILY_SORT IS NULL) OR @SUBFAMILY_SORT<=0 ) AND @PARENT_FAMILY<>0)		
				SET @SUBFAMILY_SORT =((SELECT MAX(SORT_ORDER) FROM TB_SUBFAMILY WHERE FAMILY_ID=@PARENT_FAMILY)+1)
			IF (@SUBFAMILY_SORT IS NULL)
				SET @SUBFAMILY_SORT =1
		
			IF ((SELECT COUNT(*) FROM TB_FAMILY WHERE FAMILY_ID=@SUBFAMILY_ID)=0)	
			BEGIN
				SET IDENTITY_INSERT TB_FAMILY ON	
				INSERT INTO TB_FAMILY(FAMILY_ID,FAMILY_NAME,PARENT_FAMILY_ID,ROOT_FAMILY,CATEGORY_ID)VALUES(@SUBFAMILY_ID,@SUBFAMILY_NAME,@PARENT_FAMILY,@ROOT_FAMILY,@CATEGORY_ID)					
				SET IDENTITY_INSERT TB_FAMILY OFF
				IF ((SELECT COUNT(*) FROM TB_FAMILY_TABLE_STRUCTURE WHERE CATALOG_ID=@CATALOG_ID AND FAMILY_ID=@FAMILY_ID)=0)
					INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,IS_DEFAULT,STRUCTURE_NAME)VALUES(@CATALOG_ID,@FAMILY_ID,@FAMILY_TABLE_STRUCTURE,1,@STRUCTURE_NAME)
			END
			ELSE		
				UPDATE TB_FAMILY SET FAMILY_NAME=@SUBFAMILY_NAME,PARENT_FAMILY_ID=@PARENT_FAMILY,ROOT_FAMILY=@ROOT_FAMILY,CATEGORY_ID=@CATEGORY_ID WHERE FAMILY_ID=@SUBFAMILY_ID			
			

			IF ((SELECT COUNT(*) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID=@CATALOG_ID AND CATEGORY_ID=@CATEGORY_ID AND FAMILY_ID=@SUBFAMILY_ID)=0)
				INSERT INTO TB_CATALOG_FAMILY (CATALOG_ID,CATEGORY_ID,FAMILY_ID,SORT_ORDER)VALUES(@CATALOG_ID,@CATEGORY_ID,@SUBFAMILY_ID,@SUBFAMILY_SORT)		
			ELSE		
				UPDATE TB_CATALOG_FAMILY SET SORT_ORDER=@SUBFAMILY_SORT WHERE CATALOG_ID=@CATALOG_ID AND CATEGORY_ID=@CATEGORY_ID AND FAMILY_ID=@SUBFAMILY_ID
			

			IF((@PARENT_FAMILY<>0)AND ((SELECT COUNT(*) FROM TB_SUBFAMILY WHERE FAMILY_ID=@PARENT_FAMILY AND SUBFAMILY_ID=@SUBFAMILY_ID)=0))
				INSERT INTO TB_SUBFAMILY (FAMILY_ID,SUBFAMILY_ID,SORT_ORDER)VALUES(@PARENT_FAMILY,@SUBFAMILY_ID,@SUBFAMILY_SORT)
			ELSE IF((@PARENT_FAMILY<>0)AND ((SELECT COUNT(*) FROM TB_SUBFAMILY WHERE FAMILY_ID=@PARENT_FAMILY AND SUBFAMILY_ID=@SUBFAMILY_ID)<>0))
				UPDATE TB_SUBFAMILY SET SORT_ORDER=@SUBFAMILY_SORT WHERE FAMILY_ID=@PARENT_FAMILY AND SUBFAMILY_ID=@SUBFAMILY_ID
			SET @FAMILY_ID=@SUBFAMILY_ID
		END

	FETCH NEXT FROM FAMILY_CURSOR INTO @FAMILY_ID,@FAMILY_NAME,@FAMILY_SORT,@SUBFAMILY_ID,@SUBFAMILY_NAME,@SUBFAMILY_SORT,@FAMILY_TABLE_STRUCTURE,@STRUCTURE_NAME
	END
	CLOSE FAMILY_CURSOR
	DEALLOCATE FAMILY_CURSOR

	DECLARE FAMILYATTRIBUTE_CURSOR CURSOR FOR SELECT 
	tab.col.value('ATTRIBUTE_NAME[1]','NVARCHAR(100)')AS ATTRIBUTE_NAME, 
	tab.col.value('@ATTRIBUTE_ID[1]','NVARCHAR(20)')AS ATTRIBUTE_ID, 
	tab.col.value('ATTRIBUTE_TYPE[1]','VARCHAR(20)')AS ATTRIBUTE_TYPE,
	tab.col.value('ATTRIBUTE_VALUE[1]','VARCHAR(MAX)')AS ATTRIBUTE_VALUE,
	tab.col.value('@PUBLISH[1]','VARCHAR(10)')AS ATTRIBUTE_PUBLISH,
	tab.col.value('@COLUMN_SORT[1]','VARCHAR(10)')AS COLUMN_SORT
	FROM @MyXML.nodes('/tradingbell2ws_productpacket/FAMILY/SPEC') tab(col)
	OPEN FAMILYATTRIBUTE_CURSOR
	FETCH NEXT FROM FAMILYATTRIBUTE_CURSOR INTO @ATTRIBUTE_NAME,@ATTRIBUTE_ID,@ATTRIBUTE_TYPE,@ATTRIBUTE_VALUE,@ATTRIBUTE_PUBLISH,@COLUMN_SORT
	WHILE @@FETCH_STATUS = 0
	BEGIN
	SET @ATTRIBUTE_DATATYPE=NULL

		IF @ATTRIBUTE_ID<>0 AND @ATTRIBUTE_NAME IS NOT NULL
		BEGIN
			IF ((SELECT COUNT(*) FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID)=0)
			BEGIN
					IF @ATTRIBUTE_TYPE>0
					BEGIN						  
								IF @ATTRIBUTE_TYPE=4
								BEGIN
									  SET @ATTRIBUTE_DATATYPE='NUMBER(13,6)'
								END 
								ELSE
								BEGIN
									  SET @ATTRIBUTE_DATATYPE='TEXT(MAX)'
								END
						  		IF @ATTRIBUTE_TYPE=4
								BEGIN
									  SET @ATTRIBUTE_DATAFORMAT=N'^-{0,1}?\d*\.{0,1}\d{0,6}$'
								END 
								ELSE
								BEGIN
									  SET @ATTRIBUTE_DATAFORMAT=N'^[ 0-9a-zA-Z\r\n\x20-\x7E\u0000-\uFFFF]*$'
								END
					SET IDENTITY_INSERT TB_ATTRIBUTE ON
					INSERT INTO TB_ATTRIBUTE(ATTRIBUTE_ID,ATTRIBUTE_NAME,ATTRIBUTE_TYPE,ATTRIBUTE_DATATYPE,ATTRIBUTE_DATAFORMAT,CREATE_BY_DEFAULT,VALUE_REQUIRED,PUBLISH2PRINT,PUBLISH2WEB,PUBLISH2CDROM,PUBLISH2ODP,USE_PICKLIST,IS_CALCULATED)VALUES(@ATTRIBUTE_ID,@ATTRIBUTE_NAME,@ATTRIBUTE_TYPE,@ATTRIBUTE_DATATYPE,@ATTRIBUTE_DATAFORMAT,0,0,1,1,1,1,0,0)	
					SET IDENTITY_INSERT TB_ATTRIBUTE OFF
				END		
			END
		END	
		IF(SELECT COUNT(ATTRIBUTE_ID) FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID AND CATALOG_ID=@CATALOG_ID)=0
		INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID)VALUES(@CATALOG_ID,@ATTRIBUTE_ID)
		
		IF @ATTRIBUTE_TYPE IS NULL
		BEGIN
			SET @ATTRIBUTE_TYPE=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID)
		END 
		IF @ATTRIBUTE_DATATYPE IS NULL
		BEGIN
			SET @ATTRIBUTE_DATATYPE=(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID)
		END

		 IF @ATTRIBUTE_TYPE>6 AND @FAMILY_ID!=0
		  BEGIN

				SET @FAMILYSPECCOUNT=(SELECT COUNT(ATTRIBUTE_ID) FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@FAMILY_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID)
				IF SUBSTRING(@ATTRIBUTE_DATATYPE,1,1)!='N'
				BEGIN
					 IF @FAMILYSPECCOUNT=0
					 BEGIN
					   INSERT INTO TB_FAMILY_SPECS(ATTRIBUTE_ID,FAMILY_ID,STRING_VALUE,OBJECT_TYPE,[OBJECT_NAME])VALUES(@ATTRIBUTE_ID,@FAMILY_ID,@ATTRIBUTE_VALUE,@OBJECT_TYPE,@OBJECT_NAME)       
					 END
					 ELSE IF @FAMILYSPECCOUNT=1
					 BEGIN
					   UPDATE TB_FAMILY_SPECS SET STRING_VALUE=@ATTRIBUTE_VALUE,OBJECT_TYPE=@OBJECT_TYPE,[OBJECT_NAME]=@OBJECT_NAME WHERE FAMILY_ID=@FAMILY_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID
					 END 
				END
				ELSE
				BEGIN
					 IF @FAMILYSPECCOUNT=0
					 BEGIN
					   INSERT INTO TB_FAMILY_SPECS(ATTRIBUTE_ID,FAMILY_ID,NUMERIC_VALUE,OBJECT_TYPE,[OBJECT_NAME])VALUES(@ATTRIBUTE_ID,@FAMILY_ID,CAST(@ATTRIBUTE_VALUE AS DECIMAL(19,6)),@OBJECT_TYPE,@OBJECT_NAME)       
					 END
					 ELSE IF @FAMILYSPECCOUNT=1
					 BEGIN
					   UPDATE TB_FAMILY_SPECS SET NUMERIC_VALUE=CAST(@ATTRIBUTE_VALUE AS DECIMAL(19,6)),OBJECT_TYPE=@OBJECT_TYPE,[OBJECT_NAME]=@OBJECT_NAME WHERE FAMILY_ID=@FAMILY_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID
					 END   
				END 
		  END 
		
	FETCH NEXT FROM FAMILYATTRIBUTE_CURSOR INTO @ATTRIBUTE_NAME,@ATTRIBUTE_ID,@ATTRIBUTE_TYPE,@ATTRIBUTE_VALUE,@ATTRIBUTE_PUBLISH,@COLUMN_SORT
	END
	CLOSE FAMILYATTRIBUTE_CURSOR
	DEALLOCATE FAMILYATTRIBUTE_CURSOR



DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
BEGIN TRY
 BEGIN TRANSACTION

DECLARE PRODUCT_CURSOR CURSOR FOR SELECT Node.query('.')
FROM @MyXML.nodes('/tradingbell2ws_productpacket/PRODUCTS/PRODUCT') TempXML (Node);
OPEN PRODUCT_CURSOR
FETCH NEXT FROM PRODUCT_CURSOR INTO @XMLPARSER
WHILE (@@FETCH_STATUS = 0)
BEGIN
BEGIN TRY
 BEGIN TRANSACTION
SET @PRODUCT_ID=(SELECT tab.col.value('@PRODUCT_ID[1]','NVARCHAR(100)')AS PRODUCT_ID FROM @XMLPARSER.nodes('//PRODUCT') tab(col))
SET @ROW_SORT=(SELECT tab.col.value('@ROW_SORT[1]','NVARCHAR(20)')AS ROW_SORT FROM @XMLPARSER.nodes('//PRODUCT') tab(col))
SET @PRODUCT_PUBLISH=(SELECT tab.col.value('@PUBLISH[1]','VARCHAR(20)')AS PRODUCT_PUBLISH FROM @XMLPARSER.nodes('//PRODUCT') tab(col))
SET @CATALOG_ITEM_NO=(SELECT tab.col.value('CATALOG_ITEM_NO[1]','VARCHAR(MAX)')AS CATALOG_ITEM_NO FROM @XMLPARSER.nodes('//PRODUCT') tab(col))
SET @COLUMN_SORT=(SELECT tab.col.value('@COLUMN_SORT[1]','VARCHAR(MAX)')AS COLUMN_SORT FROM @XMLPARSER.nodes('//CATALOG_ITEM_NO') tab(col)) 
SET @ATTRIBUTE_PUBLISH=(SELECT tab.col.value('@PUBLISH[1]','VARCHAR(MAX)')AS ATTRIBUTE_PUBLISH FROM @XMLPARSER.nodes('//CATALOG_ITEM_NO') tab(col)) 
SET @ATTRIBUTE_TYPE =(SELECT tab.col.value('@ATTRIBUTE_TYPE[1]','VARCHAR(MAX)')AS ATTRIBUTE_TYPE  FROM @XMLPARSER.nodes('//CATALOG_ITEM_NO') tab(col)) 

IF(SELECT COUNT(ATTRIBUTE_ID) FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID=1 AND CATALOG_ID=@CATALOG_ID)=0
	INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID)VALUES(@CATALOG_ID,1)
IF(SELECT COUNT(PRODUCT_ID) FROM TB_PRODUCT WHERE PRODUCT_ID=@PRODUCT_ID)=0
BEGIN
	SET IDENTITY_INSERT TB_PRODUCT ON
	INSERT INTO TB_PRODUCT(PRODUCT_ID,SINGLE_OR_KIT,CATEGORY_ID)VALUES(@PRODUCT_ID,1,@CATEGORY_ID)
    SET IDENTITY_INSERT TB_PRODUCT OFF
    INSERT INTO TB_PROD_SPECS(PRODUCT_ID,STRING_VALUE,ATTRIBUTE_ID)VALUES(@PRODUCT_ID,@CATALOG_ITEM_NO,1)
END
ELSE
BEGIN
	IF LEN(@CATALOG_ITEM_NO)>0
    BEGIN 
		 UPDATE TB_PROD_SPECS SET STRING_VALUE=@CATALOG_ITEM_NO WHERE PRODUCT_ID=@PRODUCT_ID AND ATTRIBUTE_ID=1
    END
END 
IF @PRODUCT_PUBLISH='Y'
   SET @PRODUCT_PUBLISH='1'
ELSE IF @PRODUCT_PUBLISH='N'
   SET @PRODUCT_PUBLISH='0'

IF ((SELECT COUNT(*) FROM TB_PROD_FAMILY WHERE FAMILY_ID=@FAMILY_ID AND PRODUCT_ID=@PRODUCT_ID)=0)
BEGIN           
	INSERT INTO TB_PROD_FAMILY(PRODUCT_ID,FAMILY_ID,SORT_ORDER,PUBLISH)VALUES(@PRODUCT_ID,@FAMILY_ID,@ROW_SORT,CAST(@PRODUCT_PUBLISH AS BIT))						
END
ELSE
BEGIN
	UPDATE TB_PROD_FAMILY SET SORT_ORDER=@ROW_SORT,PUBLISH=CAST(@PRODUCT_PUBLISH AS BIT) WHERE FAMILY_ID=@FAMILY_ID AND PRODUCT_ID=@PRODUCT_ID
END        
IF @PRODUCT_PUBLISH ='1' AND ((SELECT COUNT(*) FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID=@CATALOG_ID AND PRODUCT_ID=@PRODUCT_ID)=0)
	INSERT INTO TB_CATALOG_PRODUCT(CATALOG_ID,PRODUCT_ID)VALUES(@CATALOG_ID,@PRODUCT_ID)
ELSE IF @PRODUCT_PUBLISH ='0' AND ((SELECT COUNT(*) FROM TB_PROD_FAMILY WHERE PRODUCT_ID=@PRODUCT_ID AND PUBLISH=1)=0)
	DELETE TB_CATALOG_PRODUCT WHERE CATALOG_ID=@CATALOG_ID AND PRODUCT_ID=@PRODUCT_ID

IF @ATTRIBUTE_PUBLISH='Y'
BEGIN
	IF @COLUMN_SORT=0
	BEGIN
	SET @COLUMN_SORT=(SELECT MAX(SORT_ORDER) FROM TB_PROD_FAMILY WHERE FAMILY_ID=@FAMILY_ID)
	SET @COLUMN_SORT=(@COLUMN_SORT+1)
	END
    IF (SELECT COUNT(ATTRIBUTE_ID) FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=@PRODUCT_ID AND ATTRIBUTE_ID=1 AND FAMILY_ID=@FAMILY_ID)=0
    BEGIN
		INSERT INTO TB_PROD_FAMILY_ATTR_LIST (PRODUCT_ID,ATTRIBUTE_ID,FAMILY_ID,SORT_ORDER)VALUES(@PRODUCT_ID,1,@FAMILY_ID,@COLUMN_SORT)
    END
    ELSE
    BEGIN 
		UPDATE TB_PROD_FAMILY_ATTR_LIST SET SORT_ORDER=@COLUMN_SORT WHERE PRODUCT_ID=@PRODUCT_ID AND ATTRIBUTE_ID=1 AND FAMILY_ID=@FAMILY_ID
    END 
END
ELSE IF @ATTRIBUTE_PUBLISH='N'
BEGIN
    DELETE TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=@PRODUCT_ID AND ATTRIBUTE_ID=1 AND FAMILY_ID=@FAMILY_ID
END


DECLARE ATTRIBUTE_CURSOR CURSOR FOR SELECT 
tab.col.value('ATTRIBUTE_NAME[1]','NVARCHAR(100)')AS ATTRIBUTE_NAME, 
tab.col.value('@ATTRIBUTE_ID[1]','NVARCHAR(20)')AS ATTRIBUTE_ID, 
tab.col.value('ATTRIBUTE_TYPE[1]','VARCHAR(20)')AS ATTRIBUTE_TYPE,
tab.col.value('ATTRIBUTE_VALUE[1]','VARCHAR(MAX)')AS ATTRIBUTE_VALUE,
tab.col.value('@PUBLISH[1]','VARCHAR(10)')AS ATTRIBUTE_PUBLISH,
tab.col.value('@COLUMN_SORT[1]','VARCHAR(10)')AS COLUMN_SORT
FROM @XMLPARSER.nodes('//SPEC') tab(col)
OPEN ATTRIBUTE_CURSOR 
FETCH NEXT FROM ATTRIBUTE_CURSOR INTO @ATTRIBUTE_NAME,@ATTRIBUTE_ID,@ATTRIBUTE_TYPE,@ATTRIBUTE_VALUE,@ATTRIBUTE_PUBLISH,@COLUMN_SORT
WHILE (@@FETCH_STATUS = 0)
BEGIN

SET @ATTRIBUTE_DATATYPE=NULL
	IF @ATTRIBUTE_ID<>0 AND @ATTRIBUTE_NAME IS NOT NULL
	BEGIN 
		IF ((SELECT COUNT(*) FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID)=0)
		BEGIN
				IF @ATTRIBUTE_TYPE>0
				BEGIN
					IF @ATTRIBUTE_TYPE=4
							BEGIN
								  SET @ATTRIBUTE_DATATYPE='NUMBER(13,6)'
							END 
							ELSE
							BEGIN
								  SET @ATTRIBUTE_DATATYPE='TEXT(MAX)'
							END
							IF @ATTRIBUTE_TYPE=4
							BEGIN
								  SET @ATTRIBUTE_DATAFORMAT=N'^[ 0-9a-zA-Z\\r\\n\\x20-\\x7E\\u0000-\\uFFFF]*$'
							END 
							ELSE
							BEGIN
								  SET @ATTRIBUTE_DATAFORMAT=N'^-{0,1}?\\d*\\.{0,1}\\d{0,6}$'
							END					 
				SET IDENTITY_INSERT TB_ATTRIBUTE ON
				INSERT INTO TB_ATTRIBUTE(ATTRIBUTE_ID,ATTRIBUTE_NAME,ATTRIBUTE_TYPE,ATTRIBUTE_DATATYPE,ATTRIBUTE_DATAFORMAT,CREATE_BY_DEFAULT,VALUE_REQUIRED,PUBLISH2PRINT,PUBLISH2WEB,PUBLISH2CDROM,PUBLISH2ODP,USE_PICKLIST,IS_CALCULATED)VALUES(@ATTRIBUTE_ID,@ATTRIBUTE_NAME,@ATTRIBUTE_TYPE,@ATTRIBUTE_DATATYPE,@ATTRIBUTE_DATAFORMAT,0,0,1,1,1,1,0,0)	
				SET IDENTITY_INSERT TB_ATTRIBUTE OFF
			END		
		END
	END	

		IF(SELECT COUNT(ATTRIBUTE_ID) FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID AND CATALOG_ID=@CATALOG_ID)=0
		INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID)VALUES(@CATALOG_ID,@ATTRIBUTE_ID)
		
		IF @ATTRIBUTE_TYPE IS NULL
		BEGIN
			SET @ATTRIBUTE_TYPE=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID)
		END 
		IF @ATTRIBUTE_DATATYPE IS NULL
		BEGIN
			SET @ATTRIBUTE_DATATYPE=(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID)
		END

	 IF  @ATTRIBUTE_TYPE=6 AND @FAMILY_ID!=0 AND @PRODUCT_ID!=0
	 BEGIN
       SET @PARTSKEYCOUNT=(SELECT COUNT(ATTRIBUTE_ID) FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID AND PRODUCT_ID=@PRODUCT_ID AND FAMILY_ID=@FAMILY_ID)
       IF @PARTSKEYCOUNT=0
       BEGIN
            INSERT INTO TB_PARTS_KEY(ATTRIBUTE_ID,PRODUCT_ID,FAMILY_ID,ATTRIBUTE_VALUE) VALUES(@ATTRIBUTE_ID,@PRODUCT_ID,@FAMILY_ID,@ATTRIBUTE_VALUE)
       END
       ELSE
       BEGIN
            UPDATE TB_PARTS_KEY SET ATTRIBUTE_VALUE=@ATTRIBUTE_VALUE  WHERE ATTRIBUTE_ID= @ATTRIBUTE_ID AND PRODUCT_ID=@PRODUCT_ID AND FAMILY_ID=@FAMILY_ID
       END  
       IF @ATTRIBUTE_PUBLISH='Y'
        BEGIN
             IF @COLUMN_SORT=0
             BEGIN
                  SET @COLUMN_SORT=(SELECT SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID AND FAMILY_ID=@FAMILY_ID)
                  IF @COLUMN_SORT=0
				  BEGIN
                       SET @COLUMN_SORT=(SELECT MAX(SORT_ORDER) FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=@PRODUCT_ID AND FAMILY_ID=@FAMILY_ID)
					   SET @COLUMN_SORT=(SELECT @COLUMN_SORT+1)                       
                  END
             END   
             IF @COLUMN_SORT!=0
             BEGIN  
				 IF(SELECT COUNT(ATTRIBUTE_ID) FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID AND PRODUCT_ID=@PRODUCT_ID AND FAMILY_ID=@FAMILY_ID) =0
				 BEGIN
					  INSERT INTO TB_PROD_FAMILY_ATTR_LIST (ATTRIBUTE_ID,PRODUCT_ID,FAMILY_ID,SORT_ORDER)VALUES(@ATTRIBUTE_ID,@PRODUCT_ID,@FAMILY_ID,@COLUMN_SORT)
				 END
				 ELSE
                 BEGIN
					 UPDATE TB_PROD_FAMILY_ATTR_LIST SET SORT_ORDER=@COLUMN_SORT WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID AND PRODUCT_ID=@PRODUCT_ID AND FAMILY_ID=@FAMILY_ID
				 END	
		     END
          END
	  END	
	ELSE IF @ATTRIBUTE_TYPE<6 AND @PRODUCT_ID!=0
	BEGIN 
       SET @PRODUCTSPECCOUNT=(SELECT COUNT(ATTRIBUTE_ID) FROM TB_PROD_SPECS WHERE PRODUCT_ID=@PRODUCT_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID)
       IF  SUBSTRING(@ATTRIBUTE_DATATYPE,1,1)!='N'
		BEGIN
			 IF @PRODUCTSPECCOUNT=0
			 BEGIN
			   INSERT INTO TB_PROD_SPECS(ATTRIBUTE_ID,PRODUCT_ID,STRING_VALUE,OBJECT_TYPE,[OBJECT_NAME])VALUES(@ATTRIBUTE_ID,@PRODUCT_ID,@ATTRIBUTE_VALUE,@OBJECT_TYPE,@OBJECT_NAME)       
			 END
			 ELSE IF @PRODUCTSPECCOUNT=1
			 BEGIN
			   UPDATE TB_PROD_SPECS SET STRING_VALUE=@ATTRIBUTE_VALUE,OBJECT_TYPE=@OBJECT_TYPE,[OBJECT_NAME]=@OBJECT_NAME WHERE PRODUCT_ID=@PRODUCT_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID
			 END 
		END
		ELSE
		BEGIN
			 IF @PRODUCTSPECCOUNT=0
			 BEGIN
			   INSERT INTO TB_PROD_SPECS(ATTRIBUTE_ID,PRODUCT_ID,NUMERIC_VALUE,OBJECT_TYPE,[OBJECT_NAME])VALUES(@ATTRIBUTE_ID,@PRODUCT_ID,CAST(@ATTRIBUTE_VALUE AS DECIMAL(19,6)),@OBJECT_TYPE,@OBJECT_NAME)       
			 END
			 ELSE IF @PRODUCTSPECCOUNT=1
			 BEGIN				
			   UPDATE TB_PROD_SPECS SET NUMERIC_VALUE=CAST(@ATTRIBUTE_VALUE AS DECIMAL(19,6)),OBJECT_TYPE=@OBJECT_TYPE,[OBJECT_NAME]=@OBJECT_NAME WHERE PRODUCT_ID=@PRODUCT_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID
			 END   
		END

        IF @ATTRIBUTE_PUBLISH='Y'
        BEGIN
             IF @COLUMN_SORT=0
             BEGIN
                  SET @COLUMN_SORT=(SELECT SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID AND FAMILY_ID=@FAMILY_ID)
                  IF @COLUMN_SORT=0
				  BEGIN
                       SET @COLUMN_SORT=(SELECT MAX(SORT_ORDER) FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=@PRODUCT_ID AND FAMILY_ID=@FAMILY_ID)
					   SET @COLUMN_SORT=(SELECT @COLUMN_SORT+1)                       
                  END
             END   
             IF @COLUMN_SORT!=0
             BEGIN  
				 IF(SELECT COUNT(ATTRIBUTE_ID) FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID AND PRODUCT_ID=@PRODUCT_ID AND FAMILY_ID=@FAMILY_ID) =0
				 BEGIN
					  INSERT INTO TB_PROD_FAMILY_ATTR_LIST (ATTRIBUTE_ID,PRODUCT_ID,FAMILY_ID,SORT_ORDER)VALUES(@ATTRIBUTE_ID,@PRODUCT_ID,@FAMILY_ID,@COLUMN_SORT)
				 END
				 ELSE
                 BEGIN
					 UPDATE TB_PROD_FAMILY_ATTR_LIST SET SORT_ORDER=@COLUMN_SORT WHERE ATTRIBUTE_ID=@ATTRIBUTE_ID AND PRODUCT_ID=@PRODUCT_ID AND FAMILY_ID=@FAMILY_ID
				 END	
		     END
          END         
    END
FETCH NEXT FROM ATTRIBUTE_CURSOR INTO @ATTRIBUTE_NAME,@ATTRIBUTE_ID,@ATTRIBUTE_TYPE,@ATTRIBUTE_VALUE,@ATTRIBUTE_PUBLISH,@COLUMN_SORT
END
CLOSE ATTRIBUTE_CURSOR
DEALLOCATE ATTRIBUTE_CURSOR
INSERT INTO #TEMPRESULT(PRODUCT_ID,CATALOG_ITEM_NO,STATUS)VALUES(@PRODUCT_ID,@CATALOG_ITEM_NO,'Updated')
COMMIT
END TRY
BEGIN CATCH
  
  IF @@TRANCOUNT > 0
     ROLLBACK
  
  SELECT @ErrMsg = ERROR_MESSAGE(),
         @ErrSeverity = ERROR_SEVERITY()
INSERT INTO #TEMPRESULT(PRODUCT_ID,CATALOG_ITEM_NO,STATUS)VALUES(@PRODUCT_ID,@CATALOG_ITEM_NO,@ErrMsg)

set @RESULTXML= (SELECT #TEMPRESULT.PRODUCT_ID "PRODUCT_ID",#TEMPRESULT.CATALOG_ITEM_NO "CATALOG_ITEM_NO",#TEMPRESULT.STATUS "STATUS" FROM #TEMPRESULT FOR XML path ('PRODUCT'), type)

END CATCH
FETCH NEXT FROM PRODUCT_CURSOR INTO @XMLPARSER
END
CLOSE PRODUCT_CURSOR
DEALLOCATE PRODUCT_CURSOR
SET @RESULTXML=(SELECT #TEMPRESULT.PRODUCT_ID "PRODUCT_ID",#TEMPRESULT.CATALOG_ITEM_NO "CATALOG_ITEM_NO",#TEMPRESULT.STATUS "STATUS" FROM #TEMPRESULT FOR XML path ('PRODUCT'), type)
UPDATE TB2WS_SYNCDATA SET SESSION_STATUS='Updated',SYNC_RESULT=@RESULTXML WHERE SESSION_ID=@SESSION_ID AND PACKET_ID=@PACKET_ID
COMMIT
END TRY
BEGIN CATCH
  
  IF @@TRANCOUNT > 0
     ROLLBACK

  
  
  SELECT @ErrMsg = ERROR_MESSAGE(),
         @ErrSeverity = ERROR_SEVERITY()
 
select @ErrMsg
END CATCH

	FETCH NEXT FROM XML_CURSOR INTO @MyXML,@PACKET_ID,@SESSION_ID
END
CLOSE XML_CURSOR
DEALLOCATE XML_CURSOR
EXEC sp_xml_removedocument @xmlHandle 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_2WS_PRODUCTFAMILYSPEC]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_2WS_PRODUCTFAMILYSPEC]
@CATALOGID INT=0, 
@FAMILYID INT=0,
@PRODUCTID INT=0,
@ATTRIBUTEID INT =0,
@ATTRIBUTENAME  NVARCHAR(100)=NULL,
@ATTRIBUTETYPE INT=0,
@ATTRIBUTEDATATYPE  NVARCHAR(50)=NULL,
@ATTRIBUTEVALUE NVARCHAR(MAX)=NULL,
@OBJECTTYPE NVARCHAR(50)=NULL,
@OBJECTNAME NVARCHAR(500)=NULL,
@ATTRIBUTEPUBLISH NVARCHAR(50)=NULL,
@ATTRIBUTESORTORDER INT=0
AS
BEGIN
DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
BEGIN TRY
 BEGIN TRANSACTION
DECLARE @FAMILYSPECCOUNT INT
DECLARE @PARTSKEYCOUNT INT
DECLARE @PRODUCTSPECCOUNT INT


IF @ATTRIBUTEID=0 AND @ATTRIBUTENAME IS NOT NULL
BEGIN
  IF (SELECT COUNT(ATTRIBUTE_ID) FROM TB_ATTRIBUTE WHERE ATTRIBUTE_NAME=@ATTRIBUTENAME)=0
  BEGIN
    SET @ATTRIBUTEID=(SELECT ATTRIBUTE_ID FROM TB_ATTRIBUTE WHERE ATTRIBUTE_NAME=@ATTRIBUTENAME)
  END

END
IF @ATTRIBUTEID!=0
BEGIN
	IF @CATALOGID>1 AND (SELECT COUNT(ATTRIBUTE_ID) FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID=@ATTRIBUTEID AND CATALOG_ID=@CATALOGID)=0
			  		 INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID)VALUES(@CATALOGID,@ATTRIBUTEID)
  IF @ATTRIBUTETYPE IS NULL
  BEGIN
	  SET @ATTRIBUTETYPE=(SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTEID)
  END 
  IF @ATTRIBUTEDATATYPE IS NULL
  BEGIN
	  SET @ATTRIBUTEDATATYPE=(SELECT ATTRIBUTE_DATATYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTEID)
  END
  IF @ATTRIBUTETYPE>6 AND @FAMILYID!=0
  BEGIN

		SET @FAMILYSPECCOUNT=(SELECT COUNT(ATTRIBUTE_ID) FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@FAMILYID AND ATTRIBUTE_ID=@ATTRIBUTEID)
		IF SUBSTRING(@ATTRIBUTEDATATYPE,1,1)!='N'
		BEGIN
			 IF @FAMILYSPECCOUNT=0
			 BEGIN
			   INSERT INTO TB_FAMILY_SPECS(ATTRIBUTE_ID,FAMILY_ID,STRING_VALUE,OBJECT_TYPE,[OBJECT_NAME])VALUES(@ATTRIBUTEID,@FAMILYID,@ATTRIBUTEVALUE,@OBJECTTYPE,@OBJECTNAME)       
			 END
			 ELSE IF @FAMILYSPECCOUNT=1
			 BEGIN
			   UPDATE TB_FAMILY_SPECS SET STRING_VALUE=@ATTRIBUTEVALUE,OBJECT_TYPE=@OBJECTTYPE,[OBJECT_NAME]=@OBJECTNAME WHERE FAMILY_ID=@FAMILYID AND ATTRIBUTE_ID=@ATTRIBUTEID
			 END 
		END
		ELSE
		BEGIN
			 IF @FAMILYSPECCOUNT=0
			 BEGIN
			   INSERT INTO TB_FAMILY_SPECS(ATTRIBUTE_ID,FAMILY_ID,NUMERIC_VALUE,OBJECT_TYPE,[OBJECT_NAME])VALUES(@ATTRIBUTEID,@FAMILYID,CAST(@ATTRIBUTEVALUE AS DECIMAL(19,6)),@OBJECTTYPE,@OBJECTNAME)       
			 END
			 ELSE IF @FAMILYSPECCOUNT=1
			 BEGIN
			   UPDATE TB_FAMILY_SPECS SET NUMERIC_VALUE=CAST(@ATTRIBUTEVALUE AS DECIMAL(19,6)),OBJECT_TYPE=@OBJECTTYPE,[OBJECT_NAME]=@OBJECTNAME WHERE FAMILY_ID=@FAMILYID AND ATTRIBUTE_ID=@ATTRIBUTEID
			 END   
		END 
  END 
  ELSE IF  @ATTRIBUTETYPE=6 AND @FAMILYID!=0 AND @PRODUCTID!=0
  BEGIN
       SET @PARTSKEYCOUNT=(SELECT COUNT(ATTRIBUTE_ID) FROM TB_PARTS_KEY WHERE ATTRIBUTE_ID=@ATTRIBUTEID AND PRODUCT_ID=@PRODUCTID AND FAMILY_ID=@FAMILYID)
       IF @PARTSKEYCOUNT=0
       BEGIN
            INSERT INTO TB_PARTS_KEY(ATTRIBUTE_ID,PRODUCT_ID,FAMILY_ID,ATTRIBUTE_VALUE) VALUES(@ATTRIBUTEID,@PRODUCTID,@FAMILYID,@ATTRIBUTEVALUE)
       END
       ELSE
       BEGIN
            UPDATE TB_PARTS_KEY SET ATTRIBUTE_VALUE=@ATTRIBUTEVALUE  WHERE ATTRIBUTE_ID= @ATTRIBUTEID AND PRODUCT_ID=@PRODUCTID AND FAMILY_ID=@FAMILYID
       END  
       IF @ATTRIBUTEPUBLISH='Y'
        BEGIN
             IF @ATTRIBUTESORTORDER=0
             BEGIN
                  SET @ATTRIBUTESORTORDER=(SELECT SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID=@ATTRIBUTEID AND FAMILY_ID=@FAMILYID)
                  IF @ATTRIBUTESORTORDER=0
				  BEGIN
                       SET @ATTRIBUTESORTORDER=(SELECT MAX(SORT_ORDER) FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=@PRODUCTID AND FAMILY_ID=@FAMILYID)
					   SET @ATTRIBUTESORTORDER=(SELECT @ATTRIBUTESORTORDER+1)                       
                  END
             END   
             IF @ATTRIBUTESORTORDER!=0
             BEGIN  
				 IF(SELECT COUNT(ATTRIBUTE_ID) FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID=@ATTRIBUTEID AND PRODUCT_ID=@PRODUCTID AND FAMILY_ID=@FAMILYID) =0
				 BEGIN
					  INSERT INTO TB_PROD_FAMILY_ATTR_LIST (ATTRIBUTE_ID,PRODUCT_ID,FAMILY_ID,SORT_ORDER)VALUES(@ATTRIBUTEID,@PRODUCTID,@FAMILYID,@ATTRIBUTESORTORDER)
				 END
				 ELSE
                 BEGIN
					 UPDATE TB_PROD_FAMILY_ATTR_LIST SET SORT_ORDER=@ATTRIBUTESORTORDER WHERE ATTRIBUTE_ID=@ATTRIBUTEID AND PRODUCT_ID=@PRODUCTID AND FAMILY_ID=@FAMILYID
				 END	
		     END
          END
  END
  ELSE IF @ATTRIBUTETYPE<6 AND @PRODUCTID!=0
  BEGIN 
       SET @PRODUCTSPECCOUNT=(SELECT COUNT(ATTRIBUTE_ID) FROM TB_PROD_SPECS WHERE PRODUCT_ID=@PRODUCTID AND ATTRIBUTE_ID=@ATTRIBUTEID)
       IF  SUBSTRING(@ATTRIBUTEDATATYPE,1,1)!='N'
		BEGIN
			 IF @PRODUCTSPECCOUNT=0
			 BEGIN
			   INSERT INTO TB_PROD_SPECS(ATTRIBUTE_ID,PRODUCT_ID,STRING_VALUE,OBJECT_TYPE,[OBJECT_NAME])VALUES(@ATTRIBUTEID,@PRODUCTID,@ATTRIBUTEVALUE,@OBJECTTYPE,@OBJECTNAME)       
			 END
			 ELSE IF @PRODUCTSPECCOUNT=1
			 BEGIN
			   UPDATE TB_PROD_SPECS SET STRING_VALUE=@ATTRIBUTEVALUE,OBJECT_TYPE=@OBJECTTYPE,[OBJECT_NAME]=@OBJECTNAME WHERE PRODUCT_ID=@PRODUCTID AND ATTRIBUTE_ID=@ATTRIBUTEID
			 END 
		END
		ELSE
		BEGIN

			 IF @PRODUCTSPECCOUNT=0
			 BEGIN
			   INSERT INTO TB_PROD_SPECS(ATTRIBUTE_ID,PRODUCT_ID,NUMERIC_VALUE,OBJECT_TYPE,[OBJECT_NAME])VALUES(@ATTRIBUTEID,@PRODUCTID,CAST(@ATTRIBUTEVALUE AS DECIMAL(19,6)),@OBJECTTYPE,@OBJECTNAME)       
			 END
			 ELSE IF @PRODUCTSPECCOUNT=1
			 BEGIN
			   UPDATE TB_PROD_SPECS SET NUMERIC_VALUE=CAST(@ATTRIBUTEVALUE AS DECIMAL(19,6)),OBJECT_TYPE=@OBJECTTYPE,[OBJECT_NAME]=@OBJECTNAME WHERE PRODUCT_ID=@PRODUCTID AND ATTRIBUTE_ID=@ATTRIBUTEID
			 END   
		END

        IF @ATTRIBUTEPUBLISH='Y'
        BEGIN
             IF @ATTRIBUTESORTORDER=0
             BEGIN
                  SET @ATTRIBUTESORTORDER=(SELECT SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID=@ATTRIBUTEID AND FAMILY_ID=@FAMILYID)
                  IF @ATTRIBUTESORTORDER=0
				  BEGIN
                       SET @ATTRIBUTESORTORDER=(SELECT MAX(SORT_ORDER) FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=@PRODUCTID AND FAMILY_ID=@FAMILYID)
					   SET @ATTRIBUTESORTORDER=(SELECT @ATTRIBUTESORTORDER+1)                       
                  END
             END   
             IF @ATTRIBUTESORTORDER!=0
             BEGIN  
				 IF(SELECT COUNT(ATTRIBUTE_ID) FROM TB_PROD_FAMILY_ATTR_LIST WHERE ATTRIBUTE_ID=@ATTRIBUTEID AND PRODUCT_ID=@PRODUCTID AND FAMILY_ID=@FAMILYID) =0
				 BEGIN
					  INSERT INTO TB_PROD_FAMILY_ATTR_LIST (ATTRIBUTE_ID,PRODUCT_ID,FAMILY_ID,SORT_ORDER)VALUES(@ATTRIBUTEID,@PRODUCTID,@FAMILYID,@ATTRIBUTESORTORDER)
				 END
				 ELSE
                 BEGIN
					 UPDATE TB_PROD_FAMILY_ATTR_LIST SET SORT_ORDER=@ATTRIBUTESORTORDER WHERE ATTRIBUTE_ID=@ATTRIBUTEID AND PRODUCT_ID=@PRODUCTID AND FAMILY_ID=@FAMILYID
				 END	
		     END
          END  
        END
    END  
COMMIT
END TRY
BEGIN CATCH

  IF @@TRANCOUNT > 0
     ROLLBACK

 
  
  SELECT @ErrMsg = ERROR_MESSAGE(),
         @ErrSeverity = ERROR_SEVERITY()

  
END CATCH
SELECT @ErrMsg AS 'Error Message',@ErrSeverity as 'Error Severity'
END
GO
/****** Object:  StoredProcedure [dbo].[STP_2WS_PRODUCT]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_2WS_PRODUCT] 
@CATALOGID INT=0,
@CATEGORYID NVARCHAR(50)='',
@FAMILYID INT=0,
@PRODUCTID INT=0,
@CATALOGITEMNO NVARCHAR(MAX)='',
@DUPLICATEITEMNO BIT=0,
@PRODUCTPUBLISH NVARCHAR(50)='',
@PRODUCTSORTORDER INT=0,
@ATTRIBUTEPUBLISH NVARCHAR(50)='',
@ATTRIBUTESORTORDER INT=0
AS
BEGIN
DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
BEGIN TRY
 BEGIN TRANSACTION
IF @CATALOGID>1 AND (SELECT COUNT(ATTRIBUTE_ID) FROM TB_CATALOG_ATTRIBUTES WHERE ATTRIBUTE_ID=1 AND CATALOG_ID=@CATALOGID)=0
			  		 INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID)VALUES(@CATALOGID,1)
     IF(SELECT COUNT(PRODUCT_ID) FROM TB_PRODUCT WHERE PRODUCT_ID=@PRODUCTID)=0
     BEGIN
          SET IDENTITY_INSERT TB_PRODUCT ON
		  INSERT INTO TB_PRODUCT(PRODUCT_ID,SINGLE_OR_KIT,CATEGORY_ID)VALUES(@PRODUCTID,1,@CATEGORYID)
          SET IDENTITY_INSERT TB_PRODUCT OFF
          INSERT INTO TB_PROD_SPECS(PRODUCT_ID,STRING_VALUE,ATTRIBUTE_ID)VALUES(@PRODUCTID,@CATALOGITEMNO,1)          
          
     END
     ELSE
     BEGIN
          IF LEN(@CATALOGITEMNO)>0
          BEGIN 
				UPDATE TB_PROD_SPECS SET STRING_VALUE=@CATALOGITEMNO WHERE PRODUCT_ID=@PRODUCTID AND ATTRIBUTE_ID=1
          END
     END 
 
      IF @PRODUCTPUBLISH='Y'
      SET @PRODUCTPUBLISH='1'

      IF @PRODUCTPUBLISH='N'
      SET @PRODUCTPUBLISH='0'

      IF ((SELECT COUNT(*) FROM TB_PROD_FAMILY WHERE FAMILY_ID=@FAMILYID AND PRODUCT_ID=@PRODUCTID)=0)
	  BEGIN           
			INSERT INTO TB_PROD_FAMILY(PRODUCT_ID,FAMILY_ID,SORT_ORDER,PUBLISH)VALUES(@PRODUCTID,@FAMILYID,@PRODUCTSORTORDER,CAST(@PRODUCTPUBLISH AS BIT))						
	  END
	  ELSE
	  BEGIN
			UPDATE TB_PROD_FAMILY SET SORT_ORDER=@PRODUCTSORTORDER,PUBLISH=CAST(@PRODUCTPUBLISH AS BIT) WHERE FAMILY_ID=@FAMILYID AND PRODUCT_ID=@PRODUCTID
	  END        
	  IF @PRODUCTPUBLISH ='1' AND ((SELECT COUNT(*) FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID=@CATALOGID AND PRODUCT_ID=@PRODUCTID)=0)
			INSERT INTO TB_CATALOG_PRODUCT(CATALOG_ID,PRODUCT_ID)VALUES(@CATALOGID,@PRODUCTID)
	  
IF @ATTRIBUTEPUBLISH='Y'
      BEGIN
           IF @ATTRIBUTESORTORDER>0
           BEGIN
                IF (SELECT COUNT(ATTRIBUTE_ID) FROM TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=@PRODUCTID AND ATTRIBUTE_ID=1 AND FAMILY_ID=@FAMILYID)=0
                BEGIN
					INSERT INTO TB_PROD_FAMILY_ATTR_LIST (PRODUCT_ID,ATTRIBUTE_ID,FAMILY_ID,SORT_ORDER)VALUES(@PRODUCTID,1,@FAMILYID,@ATTRIBUTESORTORDER)
                END
                ELSE
                BEGIN 
					UPDATE TB_PROD_FAMILY_ATTR_LIST SET SORT_ORDER=@ATTRIBUTESORTORDER WHERE PRODUCT_ID=@PRODUCTID AND ATTRIBUTE_ID=1 AND FAMILY_ID=@FAMILYID
                END 
           END
      END
      ELSE IF @ATTRIBUTEPUBLISH='N'
      BEGIN
            DELETE TB_PROD_FAMILY_ATTR_LIST WHERE PRODUCT_ID=@PRODUCTID AND ATTRIBUTE_ID=1 AND FAMILY_ID=@FAMILYID
      END
	  IF @PRODUCTSORTORDER=0
      BEGIN
           SET @PRODUCTSORTORDER=(SELECT MAX(SORT_ORDER) FROM TB_PROD_FAMILY WHERE FAMILY_ID=@FAMILYID)
           SET @PRODUCTSORTORDER=(@PRODUCTSORTORDER+1)
      END
COMMIT
END TRY
BEGIN CATCH
 
  IF @@TRANCOUNT > 0
     ROLLBACK

 
  
  SELECT @ErrMsg = ERROR_MESSAGE(),
         @ErrSeverity = ERROR_SEVERITY()

END CATCH
SELECT @ErrMsg AS 'Error Message',@ErrSeverity as 'Error Severity'	  
END
GO
/****** Object:  StoredProcedure [dbo].[STP_2WS_FAMILY]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_2WS_FAMILY] 
@CATALOGID INT =0, 
@CATEGORYID NVARCHAR(50)='', 
@FAMILYID INT =0,
@FAMILYNAME NVARCHAR(400),
@PARENTFAMILYID INT=0,
@PRODUCTTABLESTRUCTURE NVARCHAR(MAX),
@DISPLAYTABLEHEADER BIT=1,
@STATUS NVARCHAR(50),
@FOOTNOTES NVARCHAR(1000),
@FAMILYSORTORDER INT=0
AS
BEGIN
DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
BEGIN TRY
 BEGIN TRANSACTION
	DECLARE @FAMILYCOUNT INT
	DECLARE @CATEGORYCOUNT INT
	DECLARE @PARENTFAMILYCOUNT INT	
	DECLARE @RECORDSAFFECTED BIT
	DECLARE @SQLQUERY NVARCHAR(MAX)
	IF(@CATALOGID>1 AND LEN(@CATEGORYID)>0)
	BEGIN		
		IF(LEN(@FAMILYNAME)>0 AND @FAMILYID<>0)
		BEGIN
			SET @CATEGORYCOUNT=(SELECT COUNT(*) FROM TB_CATEGORY WHERE CATEGORY_ID = @CATEGORYID)
			IF(@CATEGORYCOUNT<>0)
			BEGIN
				IF(@PARENTFAMILYID=0)
				BEGIN
					
					  SET @FAMILYCOUNT=(SELECT COUNT (*) FROM TB_FAMILY WHERE (FAMILY_ID = @FAMILYID))	
					  IF(@FAMILYCOUNT=0)
						  BEGIN
							SET IDENTITY_INSERT TB_FAMILY ON
							INSERT INTO TB_FAMILY(FAMILY_ID,FAMILY_NAME, PARENT_FAMILY_ID, ROOT_FAMILY, CATEGORY_ID, STATUS) VALUES(@FAMILYID,@FAMILYNAME,@PARENTFAMILYID,1,@CATEGORYID,'CREATED')  							
							SET IDENTITY_INSERT TB_FAMILY OFF
							IF(@FAMILYSORTORDER=0)
							BEGIN								
								SET @FAMILYSORTORDER=(SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE (CATALOG_ID = @CATALOGID) AND (CATEGORY_ID=@CATEGORYID))
								IF @FAMILYSORTORDER IS NULL
								BEGIN
									SET @FAMILYSORTORDER=0
								END
								SET @FAMILYSORTORDER=@FAMILYSORTORDER+1
							END							
							INSERT INTO TB_CATALOG_FAMILY(CATALOG_ID, FAMILY_ID, SORT_ORDER, CATEGORY_ID) VALUES (@CATALOGID,@FAMILYID,@FAMILYSORTORDER,@CATEGORYID)
							
						  END
					  ELSE
							BEGIN
								SET @FAMILYCOUNT=(SELECT COUNT(*) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID=@CATALOGID AND CATEGORY_ID=@CATEGORYID AND FAMILY_ID=@FAMILYID)
								IF(@FAMILYSORTORDER=0)
								BEGIN
									SET @FAMILYSORTORDER=(SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE (CATALOG_ID = @CATALOGID) AND (CATEGORY_ID=@CATEGORYID))
									IF @FAMILYSORTORDER IS NULL
									BEGIN
										SET @FAMILYSORTORDER=0
									END
									SET @FAMILYSORTORDER=@FAMILYSORTORDER+1
								END
								IF @FAMILYCOUNT=1
								BEGIN	
									UPDATE TB_FAMILY SET FAMILY_NAME=@FAMILYNAME,PARENT_FAMILY_ID=@PARENTFAMILYID,ROOT_FAMILY=1,CATEGORY_ID=@CATEGORYID WHERE (FAMILY_ID=@FAMILYID)
									UPDATE TB_CATALOG_FAMILY SET CATEGORY_ID = @CATEGORYID WHERE (CATALOG_ID = @CATALOGID) AND (FAMILY_ID = @FAMILYID) 	
								END
								ELSE
								BEGIN
									INSERT INTO TB_CATALOG_FAMILY(CATALOG_ID, FAMILY_ID, SORT_ORDER, CATEGORY_ID) VALUES (@CATALOGID,@FAMILYID,@FAMILYSORTORDER,@CATEGORYID)
								END
								
							END			
				END
				ELSE IF(@PARENTFAMILYID>0)
				BEGIN
					
					SET @PARENTFAMILYCOUNT=(SELECT COUNT (*) FROM TB_FAMILY WHERE (FAMILY_ID = @PARENTFAMILYID))
					IF(@PARENTFAMILYCOUNT<>0)
					BEGIN
						SET @FAMILYCOUNT=(SELECT COUNT (*) FROM TB_FAMILY WHERE (FAMILY_ID = @FAMILYID))
						IF(@FAMILYCOUNT=0)
							BEGIN
								SET IDENTITY_INSERT TB_FAMILY ON
								INSERT INTO TB_FAMILY(FAMILY_ID,FAMILY_NAME, PARENT_FAMILY_ID, ROOT_FAMILY, CATEGORY_ID, STATUS) VALUES(@FAMILYID,@FAMILYNAME,@PARENTFAMILYID,0,@CATEGORYID,'CREATED')  
								SET IDENTITY_INSERT TB_FAMILY OFF								
								IF(@FAMILYSORTORDER=0)
								BEGIN									
									SET @FAMILYSORTORDER=(SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE (CATALOG_ID = @CATALOGID) AND (CATEGORY_ID=@CATEGORYID))
									IF @FAMILYSORTORDER IS NULL
									BEGIN
										SET @FAMILYSORTORDER=0
									END
									SET @FAMILYSORTORDER=@FAMILYSORTORDER+1
								END
								INSERT INTO TB_CATALOG_FAMILY(CATALOG_ID, FAMILY_ID, SORT_ORDER, CATEGORY_ID) VALUES (@CATALOGID,@FAMILYID,@FAMILYSORTORDER,@CATEGORYID)					
								IF(@FAMILYSORTORDER=0)
								BEGIN									
									SET @FAMILYSORTORDER=(SELECT MAX(SORT_ORDER) FROM TB_SUBFAMILY WHERE FAMILY_ID=@PARENTFAMILYID)
									IF @FAMILYSORTORDER IS NULL
									BEGIN
										SET @FAMILYSORTORDER=0
									END
									SET @FAMILYSORTORDER=@FAMILYSORTORDER+1
								END
								INSERT INTO TB_SUBFAMILY(FAMILY_ID,SUBFAMILY_ID,SORT_ORDER) VALUES(@PARENTFAMILYID,@FAMILYID,@FAMILYSORTORDER)
								
							END
						ELSE
							BEGIN
								SET @FAMILYCOUNT=(SELECT COUNT(*) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID=@CATALOGID AND CATEGORY_ID=@CATEGORYID AND FAMILY_ID=@FAMILYID)
								IF(@FAMILYSORTORDER=0)
								BEGIN
									SET @FAMILYSORTORDER=(SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE (CATALOG_ID = @CATALOGID) AND (CATEGORY_ID=@CATEGORYID))
									IF @FAMILYSORTORDER IS NULL
									BEGIN
										SET @FAMILYSORTORDER=0
									END
									SET @FAMILYSORTORDER=@FAMILYSORTORDER+1
								END
								IF @FAMILYCOUNT=1
								BEGIN	
									UPDATE TB_FAMILY SET FAMILY_NAME=@FAMILYNAME,PARENT_FAMILY_ID=@PARENTFAMILYID,ROOT_FAMILY=0,CATEGORY_ID=@CATEGORYID WHERE (FAMILY_ID=@FAMILYID)
									UPDATE TB_CATALOG_FAMILY SET CATEGORY_ID = @CATEGORYID WHERE (CATALOG_ID = @CATALOGID) AND (FAMILY_ID = @FAMILYID) 	
								END
								ELSE
								BEGIN
									INSERT INTO TB_CATALOG_FAMILY(CATALOG_ID, FAMILY_ID, SORT_ORDER, CATEGORY_ID) VALUES (@CATALOGID,@FAMILYID,@FAMILYSORTORDER,@CATEGORYID)
								END
							END
					END
					
				END
			END
			ELSE
			BEGIN
					
					SELECT @CATEGORYCOUNT AS 'CATEGORY_COUNT'
			END
		END
	END
	ELSE IF(LEN(@CATEGORYID)=0)
	BEGIN
		
		SELECT @CATEGORYID
	END
	ELSE 
	BEGIN
	
		SELECT @CATALOGID
	END

    SET @FAMILYCOUNT=(SELECT COUNT (*) FROM TB_FAMILY WHERE (FAMILY_ID = @FAMILYID))
	IF(@FAMILYCOUNT>0)
	BEGIN
		SET @SQLQUERY='UPDATE TB_FAMILY SET'
		IF LEN(@FOOTNOTES)>0 OR @FOOTNOTES IS NULL
				BEGIN
					IF(@FOOTNOTES IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' FOOT_NOTES=NULL'+','					
					ELSE
					SET @SQLQUERY=@SQLQUERY+' FOOT_NOTES='''+@FOOTNOTES+''','
				END
		IF LEN(@STATUS)>0 OR @STATUS IS NULL
				BEGIN
					IF(@STATUS IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' STATUS=NULL'+','					
					ELSE
					SET @SQLQUERY=@SQLQUERY+' STATUS='''+@STATUS+''','
				END
		IF LEN(@PRODUCTTABLESTRUCTURE)>0 OR @PRODUCTTABLESTRUCTURE IS NULL
				BEGIN
					IF(@PRODUCTTABLESTRUCTURE IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' PRODUCT_TABLE_STRUCTURE=NULL'+','					
					ELSE
					SET @SQLQUERY=@SQLQUERY+' PRODUCT_TABLE_STRUCTURE='''+@PRODUCTTABLESTRUCTURE+''','
				END
		IF LEN(@DISPLAYTABLEHEADER)>0 OR @DISPLAYTABLEHEADER IS NULL
				BEGIN
					IF(@DISPLAYTABLEHEADER IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' DISPLAY_TABLE_HEADER=1'+','					
					ELSE
					SET @SQLQUERY=@SQLQUERY+' DISPLAY_TABLE_HEADER='+CAST(@DISPLAYTABLEHEADER AS NVARCHAR(2))+','
				END
		IF(@SQLQUERY<>'UPDATE TB_FAMILY SET')
				BEGIN
					SET @SQLQUERY=(SELECT SUBSTRING(@SQLQUERY,0,LEN(@SQLQUERY)))	
					SET @SQLQUERY=@SQLQUERY+' WHERE FAMILY_ID='+CAST(@FAMILYID AS NVARCHAR(MAX))
					EXEC SP_EXECUTESQL @SQLQUERY
				END
		
	END	
COMMIT
END TRY
BEGIN CATCH

  IF @@TRANCOUNT > 0
     ROLLBACK
  
  SELECT @ErrMsg = ERROR_MESSAGE(),
         @ErrSeverity = ERROR_SEVERITY()

END CATCH
SELECT @ErrMsg AS 'Error Message',@ErrSeverity as 'Error Severity'
END
GO
/****** Object:  StoredProcedure [dbo].[STP_2WS_CATEGORY]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_2WS_CATEGORY] 
@CATALOGID INT =0, 
@CATEGORYID NVARCHAR(50)='', 
@CATEGORYNAME NVARCHAR(500)='', 
@PARENTCATEGORY NVARCHAR(50)='0',
@SHORTDESC NVARCHAR(500)='',
@IMAGEFILE NVARCHAR(500)='', 
@IMAGETYPE NVARCHAR(10)='', 
@IMAGENAME NVARCHAR(255)='', 
@IMAGEFILE2 NVARCHAR(500)='', 
@IMAGETYPE2 NVARCHAR(10)='', 
@IMAGENAME2 NVARCHAR(255)='', 
@CUSTOMNUMBER1 DECIMAL(19,4)=NULL,
@CUSTOMNUMBER2 DECIMAL(19,4)=NULL,
@CUSTOMNUMBER3 DECIMAL(19,4)=NULL,
@CUSTOMTEXT1 NVARCHAR(500)='',
@CUSTOMTEXT2 NVARCHAR(500)='',
@CUSTOMTEXT3 NVARCHAR(500)='',
@CATEGORYSORTORDER INT=0
AS
BEGIN
DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
BEGIN TRY
 BEGIN TRANSACTION
DECLARE @CATEGORYCOUNT INT
DECLARE @SQLQUERY NVARCHAR(MAX)
DECLARE @RECORDSAFFECTED BIT	
		
		SET @CATEGORYCOUNT=0		
		SET @SQLQUERY=''
		SET @RECORDSAFFECTED=0			
		IF @PARENTCATEGORY<>'0' AND LEN(@PARENTCATEGORY)>0
			BEGIN
				SET @CATEGORYCOUNT=0		
				SET @CATEGORYCOUNT=(SELECT COUNT(*) FROM TB_CATEGORY WHERE CATEGORY_ID=@PARENTCATEGORY)
				IF(@CATEGORYCOUNT>0)
				BEGIN
					SET @CATEGORYCOUNT=0							
					SET @CATEGORYCOUNT=(SELECT COUNT(*) FROM TB_CATEGORY WHERE CATEGORY_ID=@CATEGORYID)
					IF @CATEGORYCOUNT>0
						BEGIN
							UPDATE TB_CATEGORY SET CATEGORY_NAME=@CATEGORYNAME,PARENT_CATEGORY=@PARENTCATEGORY WHERE (CATEGORY_ID = @CATEGORYID)
							SET @RECORDSAFFECTED=1
						END
					ELSE
						BEGIN
							INSERT INTO TB_CATEGORY(CATEGORY_ID, CATEGORY_NAME, PARENT_CATEGORY) VALUES(@CATEGORYID,@CATEGORYNAME,@PARENTCATEGORY) 
							SET @RECORDSAFFECTED=1
							
							
						END
				END 
				ELSE
					BEGIN						
						SET @RECORDSAFFECTED=0
					
					END
			END
		ELSE IF(@PARENTCATEGORY='0' OR @PARENTCATEGORY='')
			BEGIN				
				SET @PARENTCATEGORY='0'		
					SET @CATEGORYCOUNT=0		
					SET @CATEGORYCOUNT=(SELECT COUNT(*) FROM TB_CATEGORY WHERE CATEGORY_ID=@CATEGORYID)					
					IF @CATEGORYCOUNT>0
						BEGIN
							UPDATE TB_CATEGORY SET CATEGORY_NAME=@CATEGORYNAME,PARENT_CATEGORY=@PARENTCATEGORY WHERE (CATEGORY_ID = @CATEGORYID)
							SET @RECORDSAFFECTED=1
						END
					ELSE
						BEGIN
							INSERT INTO TB_CATEGORY(CATEGORY_ID, CATEGORY_NAME, PARENT_CATEGORY) VALUES(@CATEGORYID,@CATEGORYNAME,@PARENTCATEGORY) 
							SET @RECORDSAFFECTED=1							
						END
			END	
			
			SET @CATEGORYCOUNT=0		
			SET @CATEGORYCOUNT=(SELECT COUNT(*) FROM TB_CATEGORY WHERE CATEGORY_ID=@CATEGORYID)				
			IF @CATEGORYCOUNT>0
			BEGIN
				SET @SQLQUERY='UPDATE TB_CATEGORY SET'
				IF LEN(@SHORTDESC)>0 OR @SHORTDESC IS NULL
				BEGIN
					IF(@SHORTDESC IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' SHORT_DESC=NULL'+','					
					ELSE	
					SET @SQLQUERY=@SQLQUERY+' SHORT_DESC='''+@SHORTDESC+''','
				END
				IF LEN(@IMAGEFILE)>0 OR @IMAGEFILE IS NULL
				BEGIN
					IF(@IMAGEFILE IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' IMAGE_FILE=NULL'+','					
					ELSE
					SET @SQLQUERY=@SQLQUERY+' IMAGE_FILE='''+@IMAGEFILE+''','
				END
				IF LEN(@IMAGETYPE)>0 OR @IMAGETYPE IS NULL
				BEGIN
					IF(@IMAGETYPE IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' IMAGE_TYPE=NULL'+','					
					ELSE
					SET @SQLQUERY=@SQLQUERY+' IMAGE_TYPE='''+@IMAGETYPE+''','
				END
				IF LEN(@IMAGENAME)>0 OR @IMAGENAME IS NULL
				BEGIN
					IF(@IMAGENAME IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' IMAGE_NAME=NULL'+','					
					ELSE
					SET @SQLQUERY=@SQLQUERY+' IMAGE_NAME='''+@IMAGENAME+''','
				END
				IF LEN(@IMAGENAME2)>0 OR @IMAGENAME2 IS NULL
				BEGIN
					IF(@IMAGENAME2 IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' IMAGE_NAME2=NULL'+','					
					ELSE					
					SET @SQLQUERY=@SQLQUERY+' IMAGE_NAME2='''+@IMAGENAME2+''','
				END
				IF LEN(@IMAGEFILE2)>0 OR @IMAGEFILE2 IS NULL
				BEGIN
					IF(@IMAGEFILE2 IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' IMAGE_FILE2=NULL'+','					
					ELSE						
					SET @SQLQUERY=@SQLQUERY+' IMAGE_FILE2='''+@IMAGEFILE2+''','
				END
				IF LEN(@IMAGETYPE2)>0 OR @IMAGETYPE2 IS NULL
				BEGIN
					IF(@IMAGETYPE2 IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' IMAGE_TYPE2=NULL'+','					
					ELSE						
					SET @SQLQUERY=@SQLQUERY+' IMAGE_TYPE2='''+@IMAGETYPE2+''','
				END
				IF LEN(@CUSTOMNUMBER1)>0 OR @CUSTOMNUMBER1 IS NULL
				BEGIN					
					IF(@CUSTOMNUMBER1 IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' CUSTOM_NUM_FIELD1=NULL'+','					
					ELSE
					BEGIN
					IF(@CUSTOMNUMBER1<>0)
					SET @SQLQUERY=@SQLQUERY+' CUSTOM_NUM_FIELD1='''+@CUSTOMNUMBER1+''','					
					END
				END
				IF LEN(@CUSTOMNUMBER2)>0 OR @CUSTOMNUMBER2 IS NULL
				BEGIN					
					IF(@CUSTOMNUMBER2 IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' CUSTOM_NUM_FIELD2=NULL'+','					
					ELSE
					BEGIN
					IF(@CUSTOMNUMBER2<>0)
					SET @SQLQUERY=@SQLQUERY+' CUSTOM_NUM_FIELD2='''+@CUSTOMNUMBER2+''','					
					END
				END
				IF LEN(@CUSTOMNUMBER3)>0 OR @CUSTOMNUMBER3 IS NULL
				BEGIN		
					IF(@CUSTOMNUMBER3 IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' CUSTOM_NUM_FIELD3=NULL'+','					
					ELSE
					BEGIN
					IF(@CUSTOMNUMBER3<>0)
					SET @SQLQUERY=@SQLQUERY+' CUSTOM_NUM_FIELD3='''+@CUSTOMNUMBER3+''','					
					END
				END
				IF LEN(@CUSTOMTEXT1)>0 OR @CUSTOMTEXT1 IS NULL
				BEGIN	
					IF(@CUSTOMTEXT1 IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' CUSTOM_TEXT_FIELD1=NULL'+','					
					ELSE					
					SET @SQLQUERY=@SQLQUERY+' CUSTOM_TEXT_FIELD1='''+@CUSTOMTEXT1+''','
				END
				IF LEN(@CUSTOMTEXT2)>0 OR @CUSTOMTEXT2 IS NULL
				BEGIN	
					IF(@CUSTOMTEXT2 IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' CUSTOM_TEXT_FIELD2=NULL'+','					
					ELSE				
					SET @SQLQUERY=@SQLQUERY+' CUSTOM_TEXT_FIELD2='''+@CUSTOMTEXT2+''','
				END
				IF LEN(@CUSTOMTEXT3)>0 OR @CUSTOMTEXT3 IS NULL
				BEGIN	
					IF(@CUSTOMTEXT3 IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' CUSTOM_TEXT_FIELD3=NULL'+','					
					ELSE				
					SET @SQLQUERY=@SQLQUERY+' CUSTOM_TEXT_FIELD3='''+@CUSTOMTEXT3+''','
				END
				IF(@SQLQUERY<>'UPDATE TB_CATEGORY SET')
				BEGIN
					SET @SQLQUERY=(SELECT SUBSTRING(@SQLQUERY,0,LEN(@SQLQUERY)))	
					SET @SQLQUERY=@SQLQUERY+' WHERE CATEGORY_ID='''+@CATEGORYID+''''					
					
					EXEC SP_EXECUTESQL @SQLQUERY
				END
			END		
		IF(@RECORDSAFFECTED>0)
		BEGIN
			SET @CATEGORYCOUNT=0
			SET @CATEGORYCOUNT=(SELECT COUNT(*) FROM TB_CATALOG_SECTIONS WHERE (CATALOG_ID = @CATALOGID) AND (CATEGORY_ID = @CATEGORYID))			
			IF(@CATEGORYCOUNT<=0)
			BEGIN
				IF(@CATEGORYSORTORDER=0)
				BEGIN
					SET @CATEGORYSORTORDER=(SELECT MAX(SORT_ORDER) FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID=@CATALOGID)
					IF @CATEGORYSORTORDER IS NULL
					BEGIN
						SET @CATEGORYSORTORDER=0
					END
					SET @CATEGORYSORTORDER=@CATEGORYSORTORDER+1
				END
				INSERT INTO TB_CATALOG_SECTIONS(CATALOG_ID,CATEGORY_ID,SORT_ORDER) VALUES(@CATALOGID,@CATEGORYID, @CATEGORYSORTORDER)
			END 
		END
	COMMIT
END TRY
BEGIN CATCH

  IF @@TRANCOUNT > 0
     ROLLBACK


  
  SELECT @ErrMsg = ERROR_MESSAGE(),
         @ErrSeverity = ERROR_SEVERITY()


END CATCH
SELECT @ErrMsg AS 'Error Message',@ErrSeverity as 'Error Severity' 
END
GO
/****** Object:  StoredProcedure [dbo].[STP_2WS_CATALOG]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_2WS_CATALOG] 
@CATALOGID INT =0, 
@CATALOGNAME NVARCHAR(100)='', 
@VERSION NVARCHAR(50)='', 
@DESCRIPTION NVARCHAR(500)='',
@FAMILYFILTER NVARCHAR(max)='',
@PRODUCTFILTER NVARCHAR(max)=''
AS
BEGIN
DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
BEGIN TRY
BEGIN TRANSACTION
DECLARE @CATALOGCOUNT INT
DECLARE @SQLQUERY NVARCHAR(MAX)
IF(@CATALOGID >0 AND LEN(@CATALOGNAME)>0)
	BEGIN
          IF EXISTS (SELECT CATALOG_ID FROM TB_CATALOG WHERE CATALOG_ID=@CATALOGID )
			BEGIN
				SET @SQLQUERY='UPDATE TB_CATALOG SET'				
				IF LEN(@CATALOGNAME)>0 AND @CATALOGID!=1
				BEGIN
					SET @SQLQUERY=@SQLQUERY+ ' CATALOG_NAME='''+@CATALOGNAME+''',' 					
				END
					
				IF LEN(@VERSION)>0 OR @VERSION IS NULL 
				BEGIN
					IF(@VERSION IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' VERSION=NULL'+','					
					ELSE					
					SET @SQLQUERY=@SQLQUERY+ ' VERSION='''+@VERSION+''',' 		
				END
	
				IF LEN(@DESCRIPTION)>0 OR @DESCRIPTION IS NULL
				BEGIN
					IF(@DESCRIPTION IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' DESCRIPTION=NULL'+','					
					ELSE	
					SET @SQLQUERY=@SQLQUERY+ ' DESCRIPTION='''+@DESCRIPTION+''',' 					
				END
	
				IF LEN(@PRODUCTFILTER)>0 OR @PRODUCTFILTER IS NULL
				BEGIN
					IF(@PRODUCTFILTER IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' PRODUCT_FILTERS=NULL'+','					
					ELSE	
					SET @SQLQUERY=@SQLQUERY+ ' PRODUCT_FILTERS='''+@PRODUCTFILTER+''',' 					
				END
	
				IF LEN(@FAMILYFILTER)>0 OR @FAMILYFILTER IS NULL
				BEGIN
					IF(@FAMILYFILTER IS NULL)
					SET @SQLQUERY=@SQLQUERY+ ' FAMILY_FILTERS=NULL'+','					
					ELSE	
					SET @SQLQUERY=@SQLQUERY+ ' FAMILY_FILTERS='''+@FAMILYFILTER+''',' 					
				END	
			
				IF @SQLQUERY<>'UPDATE TB_CATALOG SET'
				BEGIN
					SET @SQLQUERY=(SELECT SUBSTRING(@SQLQUERY,0,LEN(@SQLQUERY)))	
					SET @SQLQUERY=@SQLQUERY+' WHERE CATALOG_ID='+CAST(@CATALOGID AS NVARCHAR(MAX))				
					EXEC SP_EXECUTESQL @SQLQUERY
				END
			END
			ELSE  
			BEGIN
				SET IDENTITY_INSERT TB_CATALOG ON
					INSERT INTO TB_CATALOG(CATALOG_ID,CATALOG_NAME,VERSION,DESCRIPTION,PRODUCT_FILTERS,FAMILY_FILTERS)VALUES(@CATALOGID,@CATALOGNAME,@VERSION,@DESCRIPTION,@PRODUCTFILTER,@FAMILYFILTER)	
				SET IDENTITY_INSERT TB_CATALOG OFF
			END           
	END
COMMIT
END TRY
BEGIN CATCH

  IF @@TRANCOUNT > 0
     ROLLBACK
  
  SELECT @ErrMsg = ERROR_MESSAGE(),
         @ErrSeverity = ERROR_SEVERITY()

 
END CATCH
SELECT @ErrMsg AS 'Error Message',@ErrSeverity as 'Error Severity'
END
GO
/****** Object:  StoredProcedure [dbo].[STP_2WS_ATTRIBUTE]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_2WS_ATTRIBUTE]
@ATTRIBUTEID INT=0,
@ATTRIBUTENAME NVARCHAR(100)='',
@ATTRIBUTETYPE INT=0,
@ATTRIBUTEDATATYPE NVARCHAR(50)='',
@ATTRIBUTEDATAFORMAT NVARCHAR(MAX) ='',
@ATTRIBUTEDATARULE NVARCHAR(MAX) ='',
@CREATEBYDEFAULT NVARCHAR(MAX) ='',
@VALUEREQUIRED NVARCHAR(MAX) ='',
@STYLENAME NVARCHAR(100)='',
@STYLEFORMAT NVARCHAR(1000)='',
@DEFAULTVALUE NVARCHAR(MAX) ='',
@PUBLISH2PRINT NVARCHAR(MAX) ='',
@PUBLISH2WEB NVARCHAR(MAX) ='',
@PUBLISH2CDROM NVARCHAR(MAX) ='',
@PUBLISH2ODP NVARCHAR(MAX) ='',
@USEPICKLIST NVARCHAR(MAX) ='',
@PICKLISTNAME NVARCHAR(50)=NULL,
@ATTRIBUTECALCFORMULA NVARCHAR(MAX) ='',
@ISCALCULATED NVARCHAR(MAX) =''
AS
BEGIN
DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
BEGIN TRY
 BEGIN TRANSACTION
	DECLARE @QUERYSTR NVARCHAR(MAX)
     IF  LEN(@ATTRIBUTENAME)!=0 AND @ATTRIBUTEID=0
	 BEGIN
        IF @ATTRIBUTETYPE>0
		BEGIN
			  IF LEN(@ATTRIBUTEDATATYPE)=0
			  BEGIN
					IF @ATTRIBUTETYPE=4
					BEGIN
						  SET @ATTRIBUTEDATATYPE='NUMBER(13,6)'
					END 
					ELSE
					BEGIN
						  SET @ATTRIBUTEDATATYPE='TEXT(MAX)'
					END
			  END
			  IF LEN(@ATTRIBUTEDATAFORMAT)=0
			  BEGIN
					IF @ATTRIBUTEDATAFORMAT=4
					BEGIN
						  SET @ATTRIBUTEDATAFORMAT=N'^[ 0-9a-zA-Z\\r\\n\\x20-\\x7E\\u0000-\\uFFFF]*$'
					END 
					ELSE
					BEGIN
						  SET @ATTRIBUTEDATAFORMAT=N'^-{0,1}?\\d*\\.{0,1}\\d{0,6}$'
					END
			  END
			IF @CREATEBYDEFAULT IS NULL
			BEGIN
				 SET @CREATEBYDEFAULT=0
			END
			IF @VALUEREQUIRED IS NULL
			BEGIN
				 SET @VALUEREQUIRED=0
			END
			IF @PUBLISH2PRINT IS NULL
			BEGIN
				 SET @PUBLISH2PRINT=1
			END
			IF @PUBLISH2WEB IS NULL
			BEGIN
				 SET @PUBLISH2WEB=1
			END
			IF @PUBLISH2CDROM IS NULL
			BEGIN
				 SET @PUBLISH2CDROM=1
			END
			IF @PUBLISH2ODP IS NULL
			BEGIN
				 SET @PUBLISH2ODP=1
			END
			IF @USEPICKLIST IS NULL
			BEGIN
				 SET @USEPICKLIST=0
			END
			IF @ISCALCULATED IS NULL
			BEGIN
				 SET @ISCALCULATED=0
			END              
            IF (SELECT COUNT(ATTRIBUTE_ID) FROM TB_ATTRIBUTE WHERE ATTRIBUTE_NAME=@ATTRIBUTENAME)=0 
            BEGIN
			  INSERT INTO TB_ATTRIBUTE(ATTRIBUTE_NAME,ATTRIBUTE_TYPE,ATTRIBUTE_DATATYPE,ATTRIBUTE_DATAFORMAT,ATTRIBUTE_DATARULE,CREATE_BY_DEFAULT,VALUE_REQUIRED,STYLE_NAME,STYLE_FORMAT,DEFAULT_VALUE,PUBLISH2PRINT,PUBLISH2WEB,PUBLISH2CDROM,PUBLISH2ODP,USE_PICKLIST,PICKLIST_NAME,ATTRIBUTE_CALC_FORMULA,IS_CALCULATED)VALUES(@ATTRIBUTENAME,@ATTRIBUTETYPE,@ATTRIBUTEDATATYPE,@ATTRIBUTEDATAFORMAT,@ATTRIBUTEDATARULE,@CREATEBYDEFAULT,@VALUEREQUIRED,@STYLENAME,@STYLEFORMAT,@DEFAULTVALUE,@PUBLISH2PRINT,@PUBLISH2WEB,@PUBLISH2CDROM,@PUBLISH2ODP,@USEPICKLIST,@PICKLISTNAME,@ATTRIBUTECALCFORMULA,@ISCALCULATED)
			END  
			SET @ATTRIBUTEID=(SELECT ATTRIBUTE_ID FROM TB_ATTRIBUTE WHERE ATTRIBUTE_NAME=@ATTRIBUTENAME)			
		END 

     END 
     IF  LEN(@ATTRIBUTENAME)=0 AND @ATTRIBUTEID!=0
     BEGIN

          IF(SELECT COUNT(ATTRIBUTE_ID) FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTEID)!=1
          BEGIN
                SET @ATTRIBUTENAME=(SELECT ATTRIBUTE_NAME FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTEID)
          END
     END
	 ELSE IF LEN(@ATTRIBUTENAME)!=0 AND @ATTRIBUTEID!=0
	  BEGIN
		  IF(SELECT COUNT(ATTRIBUTE_NAME) FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID=@ATTRIBUTEID)=0
		  BEGIN
				IF @ATTRIBUTETYPE>0
				BEGIN
					  IF LEN(@ATTRIBUTEDATATYPE)=0
					  BEGIN
							IF @ATTRIBUTETYPE=4
							BEGIN
								  SET @ATTRIBUTEDATATYPE='NUMBER(13,6)'
							END 
							ELSE
							BEGIN
								  SET @ATTRIBUTEDATATYPE='TEXT(MAX)'
							END
					  END
					  IF LEN(@ATTRIBUTEDATAFORMAT)=0
					  BEGIN
							IF @ATTRIBUTEDATAFORMAT=4
							BEGIN
								  SET @ATTRIBUTEDATAFORMAT=N'^[ 0-9a-zA-Z\\r\\n\\x20-\\x7E\\u0000-\\uFFFF]*$'
							END 
							ELSE
							BEGIN
								  SET @ATTRIBUTEDATAFORMAT=N'^-{0,1}?\\d*\\.{0,1}\\d{0,6}$'
							END
					  END
					IF @CREATEBYDEFAULT IS NULL
					BEGIN
						 SET @CREATEBYDEFAULT=0
					END
					IF @VALUEREQUIRED IS NULL
					BEGIN
						 SET @VALUEREQUIRED=0
					END
					IF @PUBLISH2PRINT IS NULL
					BEGIN
						 SET @PUBLISH2PRINT=1
					END
					IF @PUBLISH2WEB IS NULL
					BEGIN
						 SET @PUBLISH2WEB=1
					END
					IF @PUBLISH2CDROM IS NULL
					BEGIN
						 SET @PUBLISH2CDROM=1
					END
					IF @PUBLISH2ODP IS NULL
					BEGIN
						 SET @PUBLISH2ODP=1
					END
					IF @USEPICKLIST IS NULL
					BEGIN
						 SET @USEPICKLIST=0
					END
					IF @ISCALCULATED IS NULL
					BEGIN
						 SET @ISCALCULATED=0
					END
                      SET IDENTITY_INSERT TB_ATTRIBUTE ON
					  INSERT INTO TB_ATTRIBUTE(ATTRIBUTE_ID,ATTRIBUTE_NAME,ATTRIBUTE_TYPE,ATTRIBUTE_DATATYPE,ATTRIBUTE_DATAFORMAT,ATTRIBUTE_DATARULE,CREATE_BY_DEFAULT,VALUE_REQUIRED,STYLE_NAME,STYLE_FORMAT,DEFAULT_VALUE,PUBLISH2PRINT,PUBLISH2WEB,PUBLISH2CDROM,PUBLISH2ODP,USE_PICKLIST,PICKLIST_NAME,ATTRIBUTE_CALC_FORMULA,IS_CALCULATED)VALUES(@ATTRIBUTEID,@ATTRIBUTENAME,@ATTRIBUTETYPE,@ATTRIBUTEDATATYPE,@ATTRIBUTEDATAFORMAT,@ATTRIBUTEDATARULE,@CREATEBYDEFAULT,@VALUEREQUIRED,@STYLENAME,@STYLEFORMAT,@DEFAULTVALUE,@PUBLISH2PRINT,@PUBLISH2WEB,@PUBLISH2CDROM,@PUBLISH2ODP,@USEPICKLIST,@PICKLISTNAME,@ATTRIBUTECALCFORMULA,@ISCALCULATED)	
					  SET IDENTITY_INSERT TB_ATTRIBUTE OFF
					
					  	
				END 

		  END
		  ELSE
		  BEGIN
               SET @QUERYSTR='UPDATE TB_ATTRIBUTE SET '
               IF LEN(@ATTRIBUTENAME)>0
               BEGIN
               SET @QUERYSTR=(@QUERYSTR+'ATTRIBUTE_NAME='''+@ATTRIBUTENAME+''',') 
               END 
               IF @ATTRIBUTETYPE>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'ATTRIBUTE_TYPE='+CAST(@ATTRIBUTETYPE AS NVARCHAR(MAX))+',')
               END 
               IF LEN(@ATTRIBUTEDATATYPE)>0 OR @ATTRIBUTEDATATYPE IS NULL
               BEGIN
					IF @ATTRIBUTEDATATYPE IS NULL
					BEGIN  
                    SET @QUERYSTR=@QUERYSTR+ ' ATTRIBUTE_DATATYPE=NULL'+','
                    END 
					ELSE
					BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'ATTRIBUTE_DATATYPE='''+@ATTRIBUTEDATATYPE+''',')
					END
               END  
			   IF LEN(@ATTRIBUTEDATAFORMAT)>0 OR @ATTRIBUTEDATAFORMAT IS NULL
               BEGIN
					IF @ATTRIBUTEDATAFORMAT IS NULL
					BEGIN  
                    SET @QUERYSTR=@QUERYSTR+ ' ATTRIBUTE_DATAFORMAT=NULL'+','
                    END 
					ELSE
					BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'ATTRIBUTE_DATAFORMAT='''+@ATTRIBUTEDATAFORMAT+''',')
					END
               END  
               IF LEN(@ATTRIBUTEDATARULE)>0 OR @ATTRIBUTEDATARULE IS NULL
               BEGIN
					IF @ATTRIBUTEDATARULE IS NULL
					BEGIN  
                    SET @QUERYSTR=@QUERYSTR+ ' ATTRIBUTE_DATARULE=NULL'+','
                    END 
					ELSE
					BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'ATTRIBUTE_DATARULE='''+@ATTRIBUTEDATARULE+''',')
					END
               END  
               IF @CREATEBYDEFAULT IS NULL
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'CREATE_BY_DEFAULT=0,')
               END 
			   ELSE IF LEN(@CREATEBYDEFAULT)>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'CREATE_BY_DEFAULT='+@CREATEBYDEFAULT+',')
               END  
               IF @VALUEREQUIRED IS NULL
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'VALUE_REQUIRED=0,')
               END
			   ELSE IF LEN(@VALUEREQUIRED)>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'VALUE_REQUIRED='+@VALUEREQUIRED+',')
               END    
               IF LEN(@STYLENAME)>0 OR @STYLENAME IS NULL
               BEGIN
					IF @STYLENAME IS NULL
					BEGIN  
                    SET @QUERYSTR=@QUERYSTR+ ' STYLE_NAME=NULL'+','
                    END 
					ELSE
					BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'STYLE_NAME='''+@STYLENAME+''',')
					END
               END  
               IF  LEN(@STYLEFORMAT)>0 OR @STYLEFORMAT IS NULL
               BEGIN
					IF @STYLEFORMAT IS NULL
					BEGIN  
                    SET @QUERYSTR=@QUERYSTR+ ' STYLE_FORMAT=NULL'+','
                    END 
					ELSE
					BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'STYLE_FORMAT='''+@STYLEFORMAT+''',')
					END
               END  
               IF  LEN(@DEFAULTVALUE)>0 OR @DEFAULTVALUE IS NULL
               BEGIN
					IF @DEFAULTVALUE IS NULL
					BEGIN  
                    SET @QUERYSTR=@QUERYSTR+ ' DEFAULT_VALUE=NULL'+','
                    END 
					ELSE
					BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'DEFAULT_VALUE='''+@DEFAULTVALUE+''',')
                    END
               END  
               IF @USEPICKLIST IS NULL
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'USE_PICKLIST=0,')
               END               
			   ELSE IF LEN(@USEPICKLIST)>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'USE_PICKLIST='+@USEPICKLIST +',')
               END                              
               IF LEN(@PICKLISTNAME)>0 OR @PICKLISTNAME IS NULL
               BEGIN 
					IF @PICKLISTNAME IS NULL
					BEGIN  
                    SET @QUERYSTR=@QUERYSTR+ ' PICKLIST_NAME=NULL'+','
                    END 
					ELSE
					BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'PICKLIST_NAME='''+@PICKLISTNAME+''',')
					END
               END
               IF @PUBLISH2PRINT IS NULL
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'PUBLISH2PRINT=NULL,')
               END
			   ELSE IF LEN(@PUBLISH2PRINT)>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'PUBLISH2PRINT='+@PUBLISH2PRINT +',')
               END
			   IF @PUBLISH2WEB IS NULL
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'PUBLISH2WEB=NULL,')
               END
			   ELSE IF LEN(@PUBLISH2WEB)>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'PUBLISH2WEB='+@PUBLISH2WEB +',')
               END
               IF @PUBLISH2CDROM IS NULL
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'PUBLISH2CDROM=NULL,')
               END  
			   ELSE IF LEN(@PUBLISH2CDROM)>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'PUBLISH2CDROM='+@PUBLISH2CDROM +',')
               END  
			   IF @PUBLISH2ODP IS NULL
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'PUBLISH2ODP=1,')
               END 
			   ELSE IF LEN(@PUBLISH2ODP)>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'PUBLISH2ODP='+@PUBLISH2ODP +',')
               END  
			   IF @ATTRIBUTECALCFORMULA IS NULL
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'ATTRIBUTE_CALC_FORMULA=NULL,')
               END
			   ELSE IF LEN(@ATTRIBUTECALCFORMULA)>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'ATTRIBUTE_CALC_FORMULA='''+@ATTRIBUTECALCFORMULA +''',')
               END   
			   IF @ISCALCULATED IS NULL
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'IS_CALCULATED=0,')
               END 
			   ELSE IF LEN(@ISCALCULATED)>0
               BEGIN
                    SET @QUERYSTR=(@QUERYSTR+'IS_CALCULATED='+@ISCALCULATED +',')
               END                 
				IF @QUERYSTR<>'UPDATE TB_ATTRIBUTE SET'
				BEGIN
				SET @QUERYSTR=(SELECT SUBSTRING(@QUERYSTR,0,LEN(@QUERYSTR)))
				SET @QUERYSTR=@QUERYSTR+' WHERE ATTRIBUTE_ID='+CAST(@ATTRIBUTEID AS NVARCHAR(MAX))
				EXEC SP_EXECUTESQL @QUERYSTR
				END
		  END
	 END     
COMMIT
END TRY
BEGIN CATCH
 
  IF @@TRANCOUNT > 0
     ROLLBACK


  
  SELECT @ErrMsg = ERROR_MESSAGE(),
         @ErrSeverity = ERROR_SEVERITY()

 
END CATCH
SELECT @ErrMsg AS 'Error Message',@ErrSeverity as 'Error Severity'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Test2]    Script Date: 07/26/2012 17:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Test2](@INDX INT)
as
DECLARE @CATID INT=0
DECLARE @CATNME VARCHAR(MAX)=''
DECLARE @CATEID VARCHAR(MAX)=''
DECLARE @CATENME VARCHAR(MAX)=''
DECLARE @FCHK VARCHAR(MAX)=''
DECLARE @PCHK VARCHAR(MAX)=''
DECLARE @PID DECIMAL=0
DECLARE @FID DECIMAL=0
DECLARE @FIMG1 VARCHAR(MAX)=''
DECLARE @PFID DECIMAL=0
DECLARE @SFID DECIMAL=0
DECLARE @FNME VARCHAR(MAX)=''
DECLARE @PIDCOL VARCHAR(MAX)=''
DECLARE @STR VARCHAR(MAX)=''
DECLARE @STR2 VARCHAR(MAX)=''
DECLARE @STR3 VARCHAR(MAX)=''
DECLARE @STR4 VARCHAR(MAX)=''
DECLARE @STR5 VARCHAR(MAX)=''
DECLARE @PSTR VARCHAR(MAX)=''
DECLARE @VAL VARCHAR(MAX)=''
DECLARE @VAL2 VARCHAR(MAX)=''
DECLARE @CNME VARCHAR(MAX)=''
DECLARE @CSPL VARCHAR(MAX)=''
DECLARE @FSPL VARCHAR(MAX)=''
DECLARE @CVAL VARCHAR(MAX)=''
DECLARE @CVAL2 VARCHAR(MAX)=''
DECLARE @QUERY NVARCHAR(MAX)=''
DECLARE @FINS NVARCHAR(MAX)=''
DECLARE @FINS2 VARCHAR(MAX)=''
DECLARE @PCOL VARCHAR(MAX)=''
DECLARE @CNT INT=0
DECLARE @FLG INT=0
DECLARE @FLG2 INT=0
DECLARE @FLG3 DECIMAL=0
DECLARE @FLG4 DECIMAL=0
DECLARE @FLG5 DECIMAL=0
DECLARE @FLG6 DECIMAL=0
DECLARE @CFLG INT=0
DECLARE @PFLG INT=0
DECLARE @CCNT INT=0
DECLARE @CNTFLG INT=0
DECLARE @LCHK INT=0
DECLARE @NUM DECIMAL=0
DECLARE @NUM2 VARCHAR(MAX)=''
----------------
--DELETE FROM TEMPNIH
--EXEC UPDATE_NEED 'HC106',2
--SELECT * FROM TEMPNIH
----------------------
--SET @CNT = (select  COUNT(*) from TB_PROD_SPECS tpS,TEMPNIH tn
--where tn.PRODUCT_ID=tpS.PRODUCT_ID)
-------------------------------------
--DECLARE @A DECIMAL=0
--DECLARE @B VARCHAR(MAX)=''
----DECLARE @C INT=0
--DECLARE SAMP CURSOR FOR
--select distinct(PRODUCT_ID) AS PRODUCT_ID from TEMPNIH where PRODUCT_ID<>0 order by PRODUCT_ID
--OPEN SAMP
----PRINT 'TEST'
--WHILE @@FETCH_STATUS=0
--	BEGIN
--		--SET @C = @C+1
--		FETCH NEXT FROM SAMP INTO @A
--		SET @B=@B + CONVERT(VARCHAR(MAX), @A) + ',';
--		--PRINT 'TEST'
--		--PRINT @B
--	END
--	--PRINT @B
--	SET @B = SUBSTRING(@B,1,LEN(@B)-1)
--CLOSE SAMP
--DEALLOCATE SAMP
---------------------------------------------
IF (@INDX=1)
BEGIN
	SET @CNT = (select  COUNT(*) from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
	where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
	PRODUCT_ID IN (25787,25788,25788,25789,25790,25791,25792,25793,33427,33428,33429,33430,33431,33432,33433,25794,25795,25796,25797,25798,25799,25800,25801,25808,25802,25809,25803,25810,25804,25811,25805,25812,25806,25813,25807,25814,25815,25822,25816,25823,25817,25824,25818,25825,25819,25826,25820,25827,25821,25828))
END
ELSE IF (@INDX=2)
BEGIN
	SET @CNT = (select  COUNT(*) from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
	where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
	PRODUCT_ID IN (25913,25914,25915,25916,33470,33471,33472,33473,25920,25921,25922,25923,109650,74527,109651,25927,25924,25928,25925,25929,25930,25934,25931,25935,25932,25936,25933,25937))
END
ELSE IF (@INDX=3)
BEGIN
	SET @CNT = (select  COUNT(*) from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
	where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
	PRODUCT_ID IN (25973,25974,25975,33443,33444,33445,25976,25977,25978,25979,25982,25980,25983,25981,25984))
END
ELSE IF (@INDX=4)
BEGIN
	SET @CNT = (select  COUNT(*) from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
	where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
	PRODUCT_ID IN (25986,25987,25988,33446,33447,33448,25991,25992,25993,25994,25997,25995,25998,25996,25999))
END

--1)25787,25788,25788,25789,25790,25791,25792,25793,33427,33428,33429,33430,33431,33432,33433,25794,25795,25796,25797,25798,25799,25800,25801,25808,25802,25809,25803,25810,25804,25811,25805,25812,25806,25813,25807,25814,25815,25822,25816,25823,25817,25824,25818,25825,25819,25826,25820,25827,25821,25828
--2)25913,25914,25915,25916,33470,33471,33472,33473,25920,25921,25922,25923,109650,74527,109651,25927,25924,25928,25925,25929,25930,25934,25931,25935,25932,25936,25933,25937
--3)25973,25974,25975,33443,33444,33445,25976,25977,25978,25979,25982,25980,25983,25981,25984
--4)25986,25987,25988,33446,33447,33448,25991,25992,25993,25994,25997,25995,25998,25996,25999
--SET @CNT = (select  COUNT(*) from TB_PROD_SPECS tps,TB_ATTRIBUTE ta,
--TB_PROD_FAMILY tpf,TB_CATEGORY tb,TB_FAMILY tf,TB_FAMILY_SPECS tfs,TB_CATALOG tc where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID 
--and tps.PRODUCT_ID=tpf.PRODUCT_ID and tf.FAMILY_ID=tpf.FAMILY_ID and tf.PARENT_FAMILY_ID<>0
--and tf.CATEGORY_ID=tb.CATEGORY_ID and tc.CATALOG_ID=2 and tb.CATEGORY_ID='HC058' and tf.FAMILY_ID=tfs.FAMILY_ID)
--PRINT @CNT

--select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID from TB_PROD_SPECS tpS,TEMPNIH tn,TB_ATTRIBUTE ta
--where tn.PRODUCT_ID=tpS.PRODUCT_ID AND tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID ORDER BY tps.PRODUCT_ID,ta.ATTRIBUTE_NAME ASC
IF (@INDX=1)
BEGIN
	DECLARE REP CURSOR FOR 
	select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID,tps.NUMERIC_VALUE from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
	where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
	PRODUCT_ID IN (25787,25788,25788,25789,25790,25791,25792,25793,33427,33428,33429,33430,33431,33432,33433,25794,25795,25796,25797,25798,25799,25800,25801,25808,25802,25809,25803,25810,25804,25811,25805,25812,25806,25813,25807,25814,25815,25822,25816,25823,25817,25824,25818,25825,25819,25826,25820,25827,25821,25828) ORDER BY tps.PRODUCT_ID,ta.ATTRIBUTE_NAME ASC
END
ELSE IF (@INDX=2)
BEGIN
	DECLARE REP CURSOR FOR 
	select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID,tps.NUMERIC_VALUE from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
	where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
	PRODUCT_ID IN (25913,25914,25915,25916,33470,33471,33472,33473,25920,25921,25922,25923,109650,74527,109651,25927,25924,25928,25925,25929,25930,25934,25931,25935,25932,25936,25933,25937) ORDER BY tps.PRODUCT_ID,ta.ATTRIBUTE_NAME ASC
END
ELSE IF (@INDX=3)
BEGIN
	DECLARE REP CURSOR FOR 
	select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID,tps.NUMERIC_VALUE from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
	where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
	PRODUCT_ID IN (25973,25974,25975,33443,33444,33445,25976,25977,25978,25979,25982,25980,25983,25981,25984) ORDER BY tps.PRODUCT_ID,ta.ATTRIBUTE_NAME ASC
END
ELSE IF (@INDX=4)
BEGIN
	DECLARE REP CURSOR FOR 
	select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID,tps.NUMERIC_VALUE from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
	where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
	PRODUCT_ID IN (25986,25987,25988,33446,33447,33448,25991,25992,25993,25994,25997,25995,25998,25996,25999) ORDER BY tps.PRODUCT_ID,ta.ATTRIBUTE_NAME ASC
END
--25787,25788,25788,25789,25790,25791,25792,25793,33427,33428,33429,33430,33431,33432,33433,25794,25795,25796,25797,25798,25799,25800,25801,25808,25802,25809,25803,25810,25804,25811,25805,25812,25806,25813,25807,25814,25815,25822,25816,25823,25817,25824,25818,25825,25819,25826,25820,25827,25821,25828
--34844,34852,34860,34868,34876,34884,34900,34908,34932,199711,33601,33648,47241,34007
--161871,161926,162115,200163,71563
--select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID from TB_PROD_SPECS tps,TB_ATTRIBUTE ta,
--TB_PROD_FAMILY tpf,TB_CATEGORY tb,TB_FAMILY tf,TB_FAMILY_SPECS tfs,TB_CATALOG tc where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID 
--and tps.PRODUCT_ID=tpf.PRODUCT_ID and tf.FAMILY_ID=tpf.FAMILY_ID and tf.PARENT_FAMILY_ID<>0
--and tf.CATEGORY_ID=tb.CATEGORY_ID and tc.CATALOG_ID=2 and tb.CATEGORY_ID='HC058' and tf.FAMILY_ID=tfs.FAMILY_ID  ORDER BY tps.PRODUCT_ID,ta.ATTRIBUTE_NAME ASC
OPEN REP
--FETCH NEXT FROM REP INTO @STR

	WHILE (@CNT > @FLG)
					
		BEGIN
			SET @FLG=@FLG + 1
			SET @FLG2=0
			SET @FLG5=0
			--PRINT @FLG2
			--FETCH NEXT FROM REP INTO @STR,@VAL,@PID,@FID,@SFID,@FNME,@CATEID,@CATENME,@CATID,@CATNME,@FIMG1
			FETCH NEXT FROM REP INTO @STR,@VAL,@PID,@NUM
			
			--PRINT @STR
			--PRINT @VAL
			--SET @CFLG=0
			IF (@PIDCOL='')
				BEGIN
					SET @FCHK=@PID
					SET @PIDCOL=@PIDCOL + CONVERT(VARCHAR(MAX), @PID) + ','
					--PRINT @PIDCOL
				END
			ELSE IF(@FCHK <> CONVERT(VARCHAR(MAX), @PID))
				BEGIN
					--PRINT @CFLG
					
					SET @CFLG=1
					IF (@CNTFLG>@FLG6)
						BEGIN
							WHILE (@FLG6 < @CNTFLG)
								BEGIN
									--PRINT @FLG6
									SET @FLG6 = @FLG6 + 1
									SET @CVAL = @CVAL + '''' + '-' + '''' +','
									SET @PSTR = @PSTR + @FCHK + ','
								END
						END
					SET @FLG6=0
					SET @PFLG=0
					SET @CVAL2=''
					SET @CNTFLG =(SELECT COUNT(*) FROM dbo.Split( @CNME,',' ))
					--PRINT @CNTFLG
					--PRINT @PCHK
					SET @CVAL=@CVAL+@PCHK
					--print @cval
					SET @PCHK=''
					SET @FCHK=@PID
					SET @PIDCOL=@PIDCOL + CONVERT(VARCHAR(MAX), @PID) + ','
					--PRINT @PIDCOL
				END
			ELSE IF(@FLG=@CNT AND @CNTFLG>@FLG6)
				BEGIN
				--print @FLG
					SET @CFLG=1
					--SET @FLG6 = @FLG6 - 1
					--SET @PSTR = @PSTR + CONVERT(VARCHAR(MAX), @PID) + ','
					--SET @PSTR = @PSTR + CONVERT(VARCHAR(MAX), @PID) + ','
					SET @VAL=(Select REPLACE(@VAL,',',''))
					IF (@VAL is NULL OR @VAL='')
						BEGIN
							SET @PCHK=@PCHK + '''' + '-' + '''' + ','
						END
					ELSE
						BEGIN
							SET @PCHK=@PCHK + '''' + @VAL + '''' + ','
						END
					--PRINT @CVAL
					--PRINT @FLG6
					--PRINT @CNTFLG
					IF (@CNTFLG>@FLG6)
						BEGIN
							IF (@CNTFLG-@FLG6 <> 1)
								BEGIN
									WHILE (@FLG6 < @CNTFLG)
										BEGIN
											--PRINT @FLG6
											SET @FLG6 = @FLG6 + 1
											SET @CVAL = @CVAL + '''' + '-' + '''' +','
											SET @PSTR = @PSTR + @FCHK + ','
										END
									SET @CVAL=@CVAL+@PCHK
								END
							ELSE
								BEGIN
									SET @CVAL=@CVAL+@PCHK
									SET @PSTR = @PSTR + @FCHK + ','
								END
						END
					SET @LCHK=1
					--print @pstr
					SET @FLG6=0
					SET @CNTFLG =(SELECT COUNT(*) FROM dbo.Split( @CNME,',' ))
					--PRINT @CNTFLG
					--PRINT @PCHK
					--print @cval
					SET @PCHK=''
					SET @FCHK=@PID
					--SET @PIDCOL=@PIDCOL + CONVERT(VARCHAR(MAX), @PID) + ','
				END
				
			--PRINT
			---------------------------------
					
					
			
			---------------------
			--IF (@CFLG=0)
			--	BEGIN
			--		DECLARE PCHK CURSOR FOR
			--		select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
			--		where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND PRODUCT_ID IN (@PID) ORDER BY tps.PRODUCT_ID,ta.ATTRIBUTE_NAME ASC
			--		OPEN PCHK
			--		WHILE @@FETCH_STATUS=0
			--			BEGIN
			--				PRINT ''
			--			END
			--	END
			-------------
			
			DECLARE CHK CURSOR FOR
			SELECT strval FROM dbo.Split( @CSPL,',' )
			OPEN CHK
			WHILE @@FETCH_STATUS=0  	
				BEGIN
					FETCH NEXT FROM CHK INTO @STR2
					
					IF (@STR2=(Select dbo.ReplaceSpecialChars(@STR,'_')))
						BEGIN
							--print @STR2
							--PRINT @FLG2
							SET @FLG5=@FLG5+1
							SET @FLG2=1
							--PRINT @FLG5
							BREAK
						END
					ELSE
						BEGIN
							SET @FLG5 = @FLG5 + 1
						END
					--ELSE IF(@CFLG=1)
					--	BEGIN
					--		SET @CVAL = @CVAL + '''' + '*' + '''' +','
					--		SET @PSTR = @PSTR + CONVERT(VARCHAR(MAX), @PID) + ','
					--	END
				END
			CLOSE CHK
			DEALLOCATE CHK
			
			
			IF (@STR LIKE '%[^a-zA-Z0-9]%' AND @FLG2=0)
				BEGIN
					--SET @STR2=@STR
					set @STR=(Select dbo.ReplaceSpecialChars(@STR,'_'))
					SET @CNME=@CNME + @STR + ' VARCHAR(MAX)' + ','
					SET @CSPL=@CSPL + @STR + ','
					
					
					IF (@CFLG=0)
					BEGIN
						SET @PSTR = @PSTR + CONVERT(VARCHAR(MAX), @PID) + ','
						--IF (@STR='CFM' or @STR='CAPACITY__BTUH_')
						--	BEGIN
						--		SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
						--		IF (@NUM2 is NULL OR @NUM2='')
						--			BEGIN
						--				SET @CVAL = @CVAL + '''' + '-' + '''' +','
						--			END
						--		ELSE
						--			BEGIN
						--				SET @CVAL = @CVAL + '''' + @NUM2 + '''' +','
						--			END
						--	END
						--ELSE
						--	BEGIN
								SET @VAL=(Select REPLACE(@VAL,',',''))
								IF (@VAL is NULL OR @VAL='')
									BEGIN
										SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
										SET @CVAL = @CVAL + '''' + @NUM2 + '''' +','
										--SET @CVAL = @CVAL + '''' + '-' + '''' +','
									END
								ELSE
									BEGIN
										SET @CVAL = @CVAL + '''' + @VAL + '''' +','
									END
							--END
					END
				END
			ELSE IF(@FLG2=0)
				BEGIN
					--SET @STR2=@STR
					SET @CNME=@CNME + @STR + ' VARCHAR(MAX)' + ','
					SET @CSPL=@CSPL + @STR + ','
					
					IF (@CFLG=0)
					BEGIN
						SET @PSTR = @PSTR + CONVERT(VARCHAR(MAX), @PID) + ','
						--IF (@STR='CFM' OR @STR='CAPACITY__BTUH_')
						--	BEGIN
						--		SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
						--		IF (@NUM2 is NULL OR @NUM2='')
						--			BEGIN
						--				SET @CVAL = @CVAL + '''' + '-' + '''' +','
						--			END
						--		ELSE
						--			BEGIN
						--				SET @CVAL = @CVAL + '''' + @NUM2 + '''' +','
						--			END
						--	END
						--ELSE
						--	BEGIN
								SET @VAL=(Select REPLACE(@VAL,',',''))
								IF (@VAL is NULL OR @VAL='')
									BEGIN
										SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
										SET @CVAL = @CVAL + '''' + @NUM2 + '''' +','
										--SET @CVAL = @CVAL + '''' + '-' + '''' +','
									END
								ELSE
									BEGIN
										SET @CVAL = @CVAL + '''' + @VAL + '''' +','
									END
							--END
					END
				END
			--ELSE
				
			IF(@CFLG=0 OR @CFLG=1)
				BEGIN
					--PRINT @CFLG
					--PRINT @FLG2
					IF (@CFLG=0 AND @FLG2=1)
						BEGIN
							SET @PSTR = @PSTR + CONVERT(VARCHAR(MAX), @PID) + ','
							--IF (@STR='CFM' OR @STR='CAPACITY__BTUH_')
							--	BEGIN
							--		SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
							--		IF (@NUM2 is NULL OR @NUM2='')
							--			BEGIN
							--				SET @CVAL = @CVAL + '''' + '-' + '''' +','
							--			END
							--		ELSE
							--			BEGIN
							--				SET @CVAL = @CVAL + '''' + @NUM2 + '''' +','
							--			END
							--	END
							--ELSE
							--	BEGIN
									SET @VAL=(Select REPLACE(@VAL,',',''))
									
									IF (@VAL is NULL OR @VAL='')
										BEGIN
											SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
											SET @CVAL = @CVAL + '''' + @NUM2 + '''' +','
											--SET @CVAL = @CVAL + '''' + '-' + '''' +','
										END
									ELSE
										BEGIN
											SET @CVAL = @CVAL + '''' + @VAL + '''' +','
										END
								--END
						END
					ELSE IF (@FLG2=0 AND @CFLG=1 AND @LCHK=0)
						BEGIN
							--PRINT 'TEST1'
							--SET @FLG6 = @FLG6 + 1
							--SET @CVAL = @CVAL + '''' + '-' + '''' +','
							--print @val
							SET @PSTR = @PSTR + CONVERT(VARCHAR(MAX), @PID) + ','
							--IF (@STR='CFM' OR @STR='CAPACITY__BTUH_')
							--	BEGIN
							--		SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
							--		IF (@NUM2 is NULL OR @NUM2='')
							--			BEGIN
							--				SET @CVAL = @CVAL + '''' + '-' + '''' +','
							--			END
							--		ELSE
							--			BEGIN
							--				SET @CVAL = @CVAL + '''' + @NUM2 + '''' +','
							--			END
							--	END
							--ELSE
							--	BEGIN
									SET @VAL=(Select REPLACE(@VAL,',',''))
									IF (@VAL is NULL OR @VAL='')
										BEGIN
											SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
											SET @PCHK=@PCHK + '''' + @NUM2 + '''' +','
											--SET @PCHK=@PCHK + '''' + '-' + '''' + ','
										END
									ELSE
										BEGIN
											SET @PCHK=@PCHK + '''' + @VAL + '''' + ','
										END
								--END	
						END
					ELSE IF (@FLG2=1 AND @CFLG=1 AND @LCHK=0)
						BEGIN
							--PRINT 'TEST2'
							WHILE(@FLG5 > @FLG6)
								BEGIN
									SET @FLG6 = @FLG6 + 1
									IF (@FLG5=@FLG6)
										BEGIN
											--PRINT @FLG6
											--PRINT @VAL
											SET @PSTR = @PSTR + CONVERT(VARCHAR(MAX), @PID) + ','
											--IF (@STR='CFM' OR @STR='CAPACITY__BTUH_')
											--	BEGIN
											--		SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
											--		IF (@NUM2 is NULL OR @NUM2='')
											--			BEGIN
											--				SET @CVAL = @CVAL + '''' + '-' + '''' +','
											--			END
											--		ELSE
											--			BEGIN
											--				SET @CVAL = @CVAL + '''' + @NUM2 + '''' +','
											--			END
											--	END
											--ELSE
											--	BEGIN
													SET @VAL=(Select REPLACE(@VAL,',',''))
													IF (@VAL is NULL OR @VAL='')
														BEGIN
															--SET @PCHK='''' + '-' + '''' + ',' + @PCHK
															SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
															SET @CVAL = @CVAL + '''' + @NUM2 + '''' +','
														END
													ELSE
														BEGIN
															--SET @PCHK='''' + @VAL + '''' + ',' + @PCHK
															SET @CVAL = @CVAL + '''' + @VAL + '''' +','
														END
												--END
										END
									ELSE
										BEGIN
											SET @PSTR = @PSTR + CONVERT(VARCHAR(MAX), @PID) + ','
											SET @CVAL = @CVAL + '''' + '-' + '''' +','
										END
								END
						END
					
				END
		END
			CLOSE REP
			DEALLOCATE REP
			--PRINT @CNME
			PRINT @CVAL
			--SET @CNT =(SELECT COUNT(*) FROM dbo.Split( @CVAL,',' ))
			--PRINT @CNT
			SET @CNT =(SELECT COUNT(*) FROM dbo.Split( @CNME,',' ))
			--PRINT @CNT
			IF (@CNT > 0)
			BEGIN
				SET @CNME = @CNME + 'PRODUCT_ID VARCHAR(MAX)' + ','
				SET @CNME = SUBSTRING(@CNME,1,LEN(@CNME)-1)
				SET @CVAL = SUBSTRING(@CVAL,1,LEN(@CVAL)-1)
				--SET @PSTR=SUBSTRING(@PSTR,1,LEN(@PSTR)-1)
				--PRINT @CVAL
				IF OBJECT_ID('tempdb..##TEMP') IS NOT NULL
					BEGIN
						DROP TABLE ##TEMP
						SET @QUERY = 'CREATE TABLE ##TEMP('+ @CNME + ')'
					END
				ELSE
					BEGIN
						SET @QUERY = 'CREATE TABLE ##TEMP('+ @CNME + ')'
					END
				
				EXEC(@QUERY)
				--SET @CNME=@CNME + ','
				--PRINT @PIDCOL
				--PRINT @PSTR
				DECLARE @FLG7 DECIMAL = (SELECT COUNT(*) FROM dbo.Split( @PIDCOL,',' ))
				--PRINT @FLG7
				
				DECLARE PIDCOL CURSOR FOR
				SELECT * FROM dbo.Split( @PIDCOL,',' )
				OPEN PIDCOL
				--WHILE @@FETCH_STATUS=0  	
				WHILE (@FLG7>0)
					BEGIN
						--SET @FLG7=@FLG7-1
						--PRINT 'TEST'
						IF (@PSTR='')
							BEGIN
								--PRINT 'TEST'
								BREAK
							END
						FETCH NEXT FROM PIDCOL INTO @STR2
						--PRINT @STR2
						DECLARE PSTR CURSOR FOR
						SELECT * FROM dbo.Split( @PSTR,',' )
						OPEN PSTR
						WHILE @@FETCH_STATUS=0  	
							BEGIN
								FETCH NEXT FROM PSTR INTO @STR3
								---------------------------------
								--PRINT @STR3
								IF (@STR2=@STR3)
									BEGIN
										--print @STR3
										--PRINT @CVAL
										------------------------
										SET @PSTR=SUBSTRING(@PSTR,LEN(@STR3)+2,LEN(@PSTR))
										--PRINT @PSTR
										IF (@PSTR='')
											BEGIN
											------------SUMA
												IF (@CVAL<>'')
													BEGIN
														--PRINT @CVAL
														SET @FINS=@FINS + @CVAL + ','
													END
												SET @FLG3  = (SELECT COUNT(*) FROM dbo.Split( @CNME,',' ))
												SET @FLG4  = (SELECT COUNT(*) FROM dbo.Split( @FINS,',' ))
												--PRINT @CNME
												--PRINT @FLG3
												--PRINT @FLG4
												
												--PRINT '-----------'
												IF (@FLG3=@FLG4)
													BEGIN
														--PRINT '-----'
														--DECLARE @FLG5 DECIMAL = (SELECT COUNT(*) FROM dbo.Split( @FINS,',' ))
														--PRINT @FLG5
														SET @FINS=SUBSTRING(@FINS,1,LEN(@FINS)-1)
														--PRINT @FINS
														SET @FINS=@FINS + ',' + '''' + @STR2 + ''''
														SET @QUERY = 'INSERT INTO ##TEMP VALUES(' + @FINS +')'
														EXEC (@QUERY)
													END
												ELSE
													BEGIN
														WHILE (@FLG3>@FLG4)
															BEGIN
																SET @FINS=@FINS + '''' + '-' + '''' + ','
																--PRINT @FINS
																SET @FLG4 = @FLG4 + 1
															END
														--PRINT @FINS
														--DECLARE @FLG5 DECIMAL = (SELECT COUNT(*) FROM dbo.Split( @FINS,',' ))
														--PRINT @FLG5
														SET @FINS=SUBSTRING(@FINS,1,LEN(@FINS)-1)
														--PRINT @FINS
														SET @FINS=@FINS + ',' + '''' + @STR2 + ''''
														SET @QUERY = 'INSERT INTO ##TEMP VALUES(' + @FINS +')'
														EXEC (@QUERY)
													END
												SET @FINS=''
												SET @FINS2=''
												BREAK
											
											
											------------SUMA
												--PRINT  @FINS
												--BREAK
											END
										DECLARE FINS CURSOR FOR
										SELECT * FROM dbo.Split( @CVAL,',' )
										OPEN FINS
										WHILE @@FETCH_STATUS=0  	
											BEGIN
												FETCH NEXT FROM FINS INTO @STR4
												---------------------------------
												--PRINT @STR4
												
												SET @FINS=@FINS + @STR4 + ','
												--SET @FINS2=@FINS2 + '''' + @STR4 + '''' + ','
												SET @CVAL=SUBSTRING(@CVAL,LEN(@STR4)+2,LEN(@CVAL))
												--PRINT @FINS2
												BREAK
											END
										CLOSE FINS
										DEALLOCATE FINS
										---------------------------------
									END
								ELSE
									BEGIN
										--PRINT @FINS
										--PRINT @PSTR
										SET @FLG3  = (SELECT COUNT(*) FROM dbo.Split( @CNME,',' ))
										SET @FLG4  = (SELECT COUNT(*) FROM dbo.Split( @FINS,',' ))
										--PRINT @FLG4
										--PRINT '-----------'
										IF (@FLG3=@FLG4)
											BEGIN
												--PRINT '-----'
												--PRINT @FINS
												SET @FINS=SUBSTRING(@FINS,1,LEN(@FINS)-1)
												SET @FINS=@FINS + ',' + '''' + @STR2 + ''''
												SET @QUERY = 'INSERT INTO ##TEMP VALUES(' + @FINS +')'
												EXEC (@QUERY)
											END
										ELSE
											BEGIN
												WHILE (@FLG3>@FLG4)
													BEGIN
														SET @FINS=@FINS + '''' + '-' + '''' + ','
														SET @FLG4 = @FLG4 + 1
													END
												--DECLARE @FLG6 DECIMAL = (SELECT COUNT(*) FROM dbo.Split( @FINS,',' ))
												--PRINT @FLG6
												SET @FINS=SUBSTRING(@FINS,1,LEN(@FINS)-1)
												SET @FINS=@FINS + ',' + '''' + @STR2 + ''''
												--PRINT @FINS
												--PRINT @CVAL
												
												SET @QUERY = 'INSERT INTO ##TEMP VALUES(' + @FINS +')'
												EXEC (@QUERY)
											END
										SET @FINS=''
										SET @FINS2=''
										BREAK
									END
							END
						CLOSE PSTR
						DEALLOCATE PSTR
					END
				CLOSE PIDCOL
				DEALLOCATE PIDCOL
				--PRINT @CVAL
				--SET @QUERY = 'INSERT INTO ##TEMP VALUES(' + @CVAL +')'
				--PRINT @QUERY
				--DECLARE @FLG4 DECIMAL = (SELECT COUNT(*) FROM dbo.Split( @PIDCOL,',' ))
				--PRINT @PIDCOL
				--PRINT @FLG4
				--SELECT * FROM dbo.Split( @CVAL,',' )
				--EXEC (@QUERY)
				--SELECT @CATID AS CATALOG_ID,* FROM ##TEMP
				--DECLARE @CATALOG_ID VARCHAR(MAX) = '2'
				--DECLARE @CATALOG_NAME VARCHAR(MAX) = 'Bohn'
				--DECLARE @CATEGORY_ID VARCHAR(MAX) = 'HC007'
				--DECLARE @CATEGORY_NAME VARCHAR(MAX)='Unit Coolers'
				--DECLARE @SUBCATID_L1 VARCHAR(MAX)='HC009'
				--DECLARE @SUBCATNAME_L1 VARCHAR(MAX)='Walk-In Unit Coolers'
				--DECLARE @SUBCATID_L2 VARCHAR(MAX)='HC106'
				--DECLARE @SUBCATNAME_L2 VARCHAR(MAX)='Medium Profile'
				--DECLARE @FAMILY_ID VARCHAR(MAX)='467'
				--DECLARE @FAMILY_NAME VARCHAR(MAX)='Performance & Specification Data'
				--DECLARE @SUBFAMILY_ID VARCHAR(MAX)='468'
				--DECLARE @SUBFAMILY_NAME VARCHAR(MAX)='Performance  Data – 60 Hz'
				--DECLARE @CFM VARCHAR(MAX)='8800'
				--DECLARE @Capacity__BTUH_ VARCHAR(MAX)='60000'
				--DECLARE @Comments VARCHAR(MAX)=''
				
				
				--SELECT @CATALOG_ID AS CATALOG_ID,@CATALOG_NAME AS CATALOG_NAME,@CATEGORY_ID AS CATEGORY_ID,
				--@CATEGORY_NAME AS CATEGORY_NAME,@SUBCATID_L1 AS SUBCATID_L1,@SUBCATNAME_L1 AS SUBCATNAME_L1,
				--@SUBCATID_L2 AS SUBCATID_L2,@SUBCATNAME_L2 AS SUBCATNAME_L2,@FAMILY_ID AS FAMILY_ID,
				--@FAMILY_NAME AS FAMILY_NAME,@SUBFAMILY_ID AS SUBFAMILY_ID,@SUBFAMILY_NAME AS SUBFAMILY_NAME,
				--@CFM AS CFM,@Capacity__BTUH_ AS Capacity__BTUH_,@Comments as Comments,
				--SELECT tmp.*,tm.* FROM ##TEMP tmp,TEMPNIH tm where tm.PRODUCT_ID=tmp.PRODUCT_ID
				--SELECT * FROM ##TEMP2
				IF(@INDX<>0)
					BEGIN
						IF OBJECT_ID('tempdb..##TEMP2') IS NOT NULL
							BEGIN
								DROP TABLE ##TEMP2
								SET @QUERY = 'SELECT tm.*,tfs.STRING_VALUE as Family_Image1 into ##TEMP2 FROM TEMPNIH tm
								left outer join TB_FAMILY_SPECS tfs on tfs.FAMILY_ID=tm.SUBFAMILY_ID 
								and tfs.OBJECT_TYPE=' + '''' + 'jpg' + ''''
								EXEC (@QUERY)
							END
						ELSE
							BEGIN
								SET @QUERY = 'SELECT tm.*,tfs.STRING_VALUE as Family_Image1 into ##TEMP2 FROM TEMPNIH tm
								left outer join TB_FAMILY_SPECS tfs on tfs.FAMILY_ID=tm.SUBFAMILY_ID 
								and tfs.OBJECT_TYPE=' + '''' + 'jpg' + ''''
								EXEC (@QUERY)
							END
					END
			END
GO
/****** Object:  StoredProcedure [dbo].[SP_Test]    Script Date: 07/26/2012 17:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Test]
@str1 varchar(MAX)='',
@str2 varchar(MAX)='',
@str3 varchar(MAX)='',
@str4 varchar(MAX)='',
@str5 varchar(MAX)='',
@str6 int=0,
@str7 varchar(MAX)='',
@str8 int=0

as
set @str1=(select CATEGORY_NAME from TB_CATEGORY where CATEGORY_ID='HC007')

set @str2=(select CATEGORY_NAME from TB_CATEGORY where CATEGORY_ID='HC067')

set @str3=(select FAMILY_NAME from TB_FAMILY where FAMILY_ID=287)

set @str4=(select STRING_VALUE from TB_FAMILY_SPECS where FAMILY_ID=288)

 set @str5=(select STRING_VALUE as 'No__of_Fans' from TB_PROD_SPECS
where ATTRIBUTE_ID in (113) and PRODUCT_ID=25787)

set @str6=(select NUMERIC_VALUE as 'CFM' from TB_PROD_SPECS
where ATTRIBUTE_ID in (258) and PRODUCT_ID=25787)

set @str7=(select STRING_VALUE as 'Rating_Point__F' from TB_PROD_SPECS
where ATTRIBUTE_ID in (333) and PRODUCT_ID=25787)

set @str8=(select NUMERIC_VALUE as 'Capacity__BTUH_' from TB_PROD_SPECS
where ATTRIBUTE_ID in (463) and PRODUCT_ID=25787)

create table #temp (CATEGORY_NAME varchar(MAX),SUBCATNAME_L1 varchar(MAX),FAMILY_NAME varchar(MAX),Comments varchar(MAX),No__of_Fans varchar(MAX),CFM int,Rating_Point__F varchar(MAX),Capacity__BTUH_ int)

insert into #temp values(@str1,@str2,@str3,@str4,@str5,@str6,@str7,@str8)

select * from #temp
GO
/****** Object:  StoredProcedure [dbo].[SP_SAMP_FAM]    Script Date: 07/26/2012 17:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_SAMP_FAM]
as
DECLARE @FCHK VARCHAR(MAX)=''
DECLARE @PID DECIMAL=0
DECLARE @STR VARCHAR(MAX)=''
DECLARE @STR2 VARCHAR(MAX)=''
DECLARE @VAL VARCHAR(MAX)=''
DECLARE @CNME VARCHAR(MAX)=''
DECLARE @CSPL VARCHAR(MAX)=''
DECLARE @CVAL VARCHAR(MAX)=''
DECLARE @QUERY NVARCHAR(MAX)=''
DECLARE @CNT INT=0
DECLARE @CNT2 INT=0
DECLARE @FLG INT=0
DECLARE @FLG2 INT=0
DECLARE @TFLG INT=0
DECLARE @NUM DECIMAL=0
DECLARE @NUM2 VARCHAR(MAX)=''
DECLARE @TPID DECIMAL=0
DECLARE @PSTR VARCHAR(MAX)=''
DECLARE @CT INT=0

	BEGIN
		SELECT DISTINCT(FAMILY_ID),SUBFAMILY_ID INTO ##FTMP from TEMPNIH where FAMILY_ID<>0 order by FAMILY_ID
		
		--SET @CT = (SELECT COUNT(DISTINCT SUBFAMILY_ID) FROM TEMPNIH WHERE SUBFAMILY_ID<>0)
		
		--DROP TABLE ##FSAMP
		
		--INSERT INTO ##FTMP(FAMILY_ID) SELECT DISTINCT(SUBFAMILY_ID) AS FAMILY_ID FROM TEMPNIH WHERE SUBFAMILY_ID<>0 ORDER BY FAMILY_ID
		

		SET @QUERY = 'select  DISTINCT(ta.ATTRIBUTE_NAME) INTO ##FAM from TB_FAMILY_SPECS tfs,TB_ATTRIBUTE ta
		where tfs.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
		(FAMILY_ID IN (SELECT FAMILY_ID FROM ##FTMP) OR FAMILY_ID IN (SELECT SUBFAMILY_ID FROM ##FTMP))'
		EXEC (@QUERY)

		SET @CNT =(select  COUNT(*) from ##FAM)
		SET @CNME = 'FAMILY_ID VARCHAR(MAX)' + ','+'SUBFAMILY_ID VARCHAR(MAX)' + ','
		
		DECLARE REP2 CURSOR FOR 
		SELECT ATTRIBUTE_NAME FROM ##FAM
		OPEN REP2
			WHILE (@CNT > @FLG)
				BEGIN
					SET @FLG=@FLG + 1
					FETCH NEXT FROM REP2 INTO @STR
					SET @CNME =@CNME + (Select dbo.ReplaceSpecialChars(@STR,'_')) + ' VARCHAR(MAX) NULL' + ','
				END
		CLOSE REP2
		DEALLOCATE REP2
		DROP TABLE ##FAM
		-------------------------------------------
		IF OBJECT_ID('tempdb..##FSAMP') IS NOT NULL
			BEGIN
				DROP TABLE ##FSAMP
				SET @QUERY = 'CREATE TABLE ##FSAMP('+ @CNME + ')'
				EXEC(@QUERY)
			END
		ELSE 
			BEGIN
				SET @QUERY = 'CREATE TABLE ##FSAMP('+ @CNME + ')'
				EXEC(@QUERY)
			END

		SET @QUERY = 'INSERT INTO ##FSAMP(FAMILY_ID,SUBFAMILY_ID) SELECT FAMILY_ID,SUBFAMILY_ID from ##FTMP WHERE FAMILY_ID<>0 ORDER BY FAMILY_ID'
		EXEC (@QUERY)
		-------------------------

		--SET @CNT =(select  COUNT(*) from ##FSAMP)
		SET @CNT = (select COUNT(*) from tempdb.sys.columns where object_id = object_id('tempdb..##FSAMP'))
		--DROP TABLE ##FSAMP
		
		------------------------------
		
		SET @QUERY = 'select  ta.ATTRIBUTE_NAME,tfs.STRING_VALUE,tfs.FAMILY_ID,tfs.NUMERIC_VALUE INTO ##FAM from TB_FAMILY_SPECS tfs,
		TB_ATTRIBUTE ta	where tfs.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND (FAMILY_ID IN (SELECT FAMILY_ID FROM ##FTMP)
		OR FAMILY_ID IN (SELECT SUBFAMILY_ID FROM ##FTMP))'
		EXEC (@QUERY)
		
		DROP TABLE ##FTMP
		
		SET @FLG=0
		DECLARE COL CURSOR FOR 
		select name from tempdb.sys.columns where object_id = object_id('tempdb..##FSAMP');
		OPEN COL
			WHILE (@CNT >= @FLG)
				BEGIN
					SET @FLG=@FLG + 1
					FETCH NEXT FROM COL INTO @STR
					
						SET @QUERY = 'update ##FSAMP SET ' + @STR + '= F.String_Value from ##FAM F
								 where (F.FAMILY_ID = ##FSAMP.FAMILY_ID OR F.FAMILY_ID =##FSAMP.SUBFAMILY_ID) AND ##FSAMP.'+ @STR + ' IS NULL AND F.Numeric_Value IS NULL
								 AND + (Select dbo.ReplaceSpecialChars(F.ATTRIBUTE_NAME,' + '''' + '_' + '''' + '))'+ '=' + '''' + @STR + ''''
						EXEC (@QUERY)
				
						IF (@@ROWCOUNT=0)
							BEGIN
								SET @QUERY = 'update ##FSAMP SET ' + @STR + '= F.Numeric_Value from ##FAM F
											 where (F.FAMILY_ID = ##FSAMP.FAMILY_ID OR F.FAMILY_ID =##FSAMP.SUBFAMILY_ID) AND ##FSAMP.'+ @STR + ' IS NULL AND F.String_Value IS NULL
											 AND + (Select dbo.ReplaceSpecialChars(F.ATTRIBUTE_NAME,' + '''' + '_' + '''' + '))'+ '=' + '''' + @STR + ''''
								EXEC (@QUERY)
							END
						
				END
		CLOSE COL
		DEALLOCATE COL
		DROP TABLE ##FAM
		--SELECT * FROM ##FSAMP
	END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_InsertProductAttributes]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_InsertProductAttributes] (@ATTRIBUTE_ID int ,@CATALOG_ID int ,@FAMILY_ID INT,@PRODUCTID int ,@SORT_ORDER INT, @RETURNVALUE INT OUTPUT )

AS
BEGIN 

DECLARE @PRODUCT_ID INT 

DECLARE @ATTRIBUTE_TYPE INT

DECLARE @CNT INT 

declare @productexists INT 

 
SELECT DISTINCT PRODUCT_ID INTO #TEMPATTRIBUTE FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID 

DECLARE CURSOR_PROD_ATTRIBUTES_LIST CURSOR FOR 

SELECT PRODUCT_ID FROM #TEMPATTRIBUTE 

OPEN CURSOR_PROD_ATTRIBUTES_LIST

FETCH NEXT FROM CURSOR_PROD_ATTRIBUTES_LIST INTO @PRODUCT_ID 

WHILE @@FETCH_STATUS = 0

BEGIN 

	IF EXISTS(SELECT ATTRIBUTE_ID FROM TB_PROD_FAMILY_ATTR_LIsT WHERE FAMILY_ID = @FAMILY_ID  AND ATTRIBUTE_ID = @ATTRIBUTE_ID AND PRODUCT_ID=@PRODUCT_ID)
	BEGIN 
		SET @CNT =1
		PRINT ' EXIST IN ATTR LIST '
	END 

		ELSE

	BEGIN 
		SET @CNT = 0
		PRINT 'DOESNT EXIST IN ATTTR LIST '
		INSERT INTO TB_PROD_FAMILY_ATTR_LIsT(FAMILY_ID,PRODUCT_ID,ATTRIBUTE_ID,SORT_ORDER)VALUES(@FAMILY_ID,@PRODUCT_ID,@ATTRIBUTE_ID,@SORT_ORDER)
	END
 FETCH NEXT FROM CURSOR_PROD_ATTRIBUTES_LIST INTO @PRODUCT_ID 
END
CLOSE CURSOR_PROD_ATTRIBUTES_LIST 

DEALLOCATE CURSOR_PROD_ATTRIBUTES_LIST 
set @RETURNVALUE = @CNT

/*--IF (@CNT = 0 )--*/

BEGIN 

SET @ATTRIBUTE_TYPE = ( SELECT ATTRIBUTE_TYPE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID)

SELECT DISTINCT PRODUCT_ID INTO #TEMPATTRIBUTES FROM TB_PROD_FAMILY WHERE FAMILY_ID = @FAMILY_ID and PRODUCT_ID= @PRODUCTID

DECLARE CURSOR_PROD_ATTRIBUTES CURSOR FOR 

SELECT PRODUCT_ID FROM #TEMPATTRIBUTES 

OPEN CURSOR_PROD_ATTRIBUTES

FETCH NEXT FROM CURSOR_PROD_ATTRIBUTES INTO @PRODUCT_ID 

WHILE @@FETCH_STATUS = 0

BEGIN 

SET @productexists=0


if (@ATTRIBUTE_TYPE<>6)

begin 

IF EXISTS(SELECT attribute_id FROM TB_PROD_specs WHERE product_id = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID)

BEGIN 

SET @productexists =1

PRINT 'IN PROD SPECS EXIST '

END 

ELSE

BEGIN 

SET @productexists = 0

PRINT 'DOES NOT EXIST IN TB_PROD_SPECS '

END 

END 

ELSE

BEGIN 

IF EXISTS(SELECT attribute_id FROM TB_PARTS_KEY WHERE product_id = @PRODUCT_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID AND FAMILY_ID =@FAMILY_ID )

BEGIN 

SET @productexists =1

PRINT 'EXIST IN PARTS KEY '

END 

ELSE

BEGIN 

SET @productexists = 0

PRINT 'DOESNOT EXIST IN PARTS KEY '

END 

END 


if (@productexists=0)

BEGIN 

IF (@ATTRIBUTE_TYPE =1)

BEGIN

INSERT INTO TB_PROD_SPECS(PRODUCT_ID , ATTRIBUTE_ID) VALUES(@PRODUCT_ID, @ATTRIBUTE_ID)

END 

ELSE IF (@ATTRIBUTE_TYPE= 6)

BEGIN 

INSERT INTO TB_PARTS_KEY (PRODUCT_ID,ATTRIBUTE_ID,FAMILY_ID )VALUES (@PRODUCT_ID, @ATTRIBUTE_ID ,@FAMILY_ID)

END 

ELSE IF (@ATTRIBUTE_TYPE= 4)

BEGIN

INSERT INTO TB_PROD_SPECS(PRODUCT_ID , ATTRIBUTE_ID) VALUES(@PRODUCT_ID, @ATTRIBUTE_ID)

END 

ELSE IF (@ATTRIBUTE_TYPE= 3)

BEGIN

INSERT INTO TB_PROD_SPECS(PRODUCT_ID , ATTRIBUTE_ID) VALUES(@PRODUCT_ID, @ATTRIBUTE_ID)

END 

END


FETCH NEXT FROM CURSOR_PROD_ATTRIBUTES INTO @PRODUCT_ID 

END 

CLOSE CURSOR_PROD_ATTRIBUTES 

DEALLOCATE CURSOR_PROD_ATTRIBUTES 

END 
UPDATE TB_PROD_FAMILY_ATTR_LIST SET SORT_ORDER = @SORT_ORDER where  FAMILY_ID = @FAMILY_ID AND ATTRIBUTE_ID = @ATTRIBUTE_ID
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_InsertFamilyTableStructure]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_InsertFamilyTableStructure]
@FAMILYID INT,
@CATALOGID INT,
@CATEGORYID NVARCHAR(500),
@STRUCTURENAME NVARCHAR(500),
@TABLETYPE NVARCHAR(12),
@ISDEFAULT BIT
AS
BEGIN
DECLARE @STRUCTBUILDER NVARCHAR(MAX)
CREATE TABLE #TEMPSTRUCTURE
(    
	AttrID varchar(10),
	[Merge] varchar(10),
	[Level] varchar(10),
	SORT_ORDER int
)
IF (LEN(@STRUCTURENAME)=0 AND LEN(@CATEGORYID)>0)
BEGIN
    
	IF ((SELECT COUNT(*) FROM TB_FAMILY_TABLE_STRUCTURE WHERE FAMILY_ID=@FAMILYID AND CATALOG_ID=@CATALOGID)=0)
	BEGIN

		WHILE (@CATALOGID>=1)
		BEGIN
			INSERT INTO #TEMPSTRUCTURE (AttrID,[Merge],[Level],SORT_ORDER)SELECT DISTINCT 'Attr:'+convert(nvarchar,TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID),'unchecked' as [Merge],'0' as [Level],SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST,TB_FAMILY,TB_CATALOG_ATTRIBUTES WHERE TB_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID
			AND TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=@FAMILYID AND TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID=TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND TB_CATALOG_ATTRIBUTES.CATALOG_ID=@CATALOGID ORDER BY SORT_ORDER
			SET @STRUCTBUILDER=CONVERT(NVARCHAR(MAX),
			(SELECT 
				#TEMPSTRUCTURE.AttrID "LeftRowField/@AttrID",
				#TEMPSTRUCTURE.[Merge] "LeftRowField/@Merge",
				#TEMPSTRUCTURE.[Level] "LeftRowField/@Level" 
				FROM #TEMPSTRUCTURE
				FOR XML PATH(''),  TYPE ))
			if @STRUCTBUILDER is null
			SET @STRUCTBUILDER=''
			SET @STRUCTBUILDER=@STRUCTBUILDER+CONVERT(NVARCHAR(MAX),
			(SELECT  1 AS Tag,NULL AS Parent,''as 'null!1!SummaryGroupField!Element',''as 'null!1!TableGroupField!Element',''as 'null!1!PlaceHolderText!cdata','True' as 'null!1!DisplayRowHeader!Element','False'as 'null!1!DisplayColumnHeader!Element',
			'False' as 'null!1!DisplaySummaryHeader!Element','False' as 'null!1!VerticalTable!Element',''as 'null!1!PivotHeaderText!cdata',''as 'null!1!MergeRowHeader!Element',''as 'null!1!MergeSummaryFields!Element' from tb_family where family_id=@FAMILYID for xml EXPLICIT))		 
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'<null>','')
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'</null>','')
			SET @STRUCTBUILDER=(N'<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable">'+ @STRUCTBUILDER+ N'</TradingBell>')	

				INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME,IS_DEFAULT)VALUES(@CATALOGID,@FAMILYID,@STRUCTBUILDER,'Default Layout',1)

			IF(@CATALOGID=1)
			BREAK
			IF(@CATALOGID!=1)
			SET @CATALOGID=1
		END
		DELETE #TEMPSTRUCTURE
	END
END
ELSE IF(LEN(@STRUCTURENAME)<>0 AND LEN(@CATEGORYID)<>0)
BEGIN
   
	IF(@TABLETYPE='Horizontal')
	BEGIN
			INSERT INTO #TEMPSTRUCTURE (AttrID,[Merge],[Level],SORT_ORDER)SELECT DISTINCT 'Attr:'+convert(nvarchar,TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID),'unchecked' as [Merge],'0' as [Level],SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST,TB_FAMILY,TB_CATALOG_ATTRIBUTES WHERE TB_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID
			AND TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=@FAMILYID AND TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID=TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND TB_CATALOG_ATTRIBUTES.CATALOG_ID=@CATALOGID ORDER BY SORT_ORDER
			SET @STRUCTBUILDER=CONVERT(NVARCHAR(MAX),
			(SELECT 
				#TEMPSTRUCTURE.AttrID "LeftRowField/@AttrID",
				#TEMPSTRUCTURE.[Merge] "LeftRowField/@Merge",
				#TEMPSTRUCTURE.[Level] "LeftRowField/@Level" 
				FROM #TEMPSTRUCTURE
				FOR XML PATH(''),  TYPE ))
			if @STRUCTBUILDER is null
			SET @STRUCTBUILDER=''
			SET @STRUCTBUILDER=@STRUCTBUILDER+CONVERT(NVARCHAR(MAX),
			(SELECT  1 AS Tag,NULL AS Parent,''as 'null!1!SummaryGroupField!Element',''as 'null!1!TableGroupField!Element',''as 'null!1!PlaceHolderText!cdata','True' as 'null!1!DisplayRowHeader!Element','False'as 'null!1!DisplayColumnHeader!Element',
			'False' as 'null!1!DisplaySummaryHeader!Element','False' as 'null!1!VerticalTable!Element',''as 'null!1!PivotHeaderText!cdata',''as 'null!1!MergeRowHeader!Element',''as 'null!1!MergeSummaryFields!Element' from tb_family where family_id=@FAMILYID for xml EXPLICIT))		 
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'<null>','')
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'</null>','')
			SET @STRUCTBUILDER=(N'<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable">'+ @STRUCTBUILDER+ N'</TradingBell>')	

				INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME,IS_DEFAULT)VALUES(@CATALOGID,@FAMILYID,@STRUCTBUILDER,@STRUCTURENAME,@ISDEFAULT)
	END
	ELSE IF(@TABLETYPE='Vertical')
	BEGIN
			INSERT INTO #TEMPSTRUCTURE (AttrID,[Merge],[Level],SORT_ORDER)SELECT DISTINCT 'Attr:'+convert(nvarchar,TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID),'unchecked' as [Merge],'0' as [Level],SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST,TB_FAMILY,TB_CATALOG_ATTRIBUTES WHERE TB_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID
			AND TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=@FAMILYID AND TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID=TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND TB_CATALOG_ATTRIBUTES.CATALOG_ID=@CATALOGID ORDER BY SORT_ORDER
			SET @STRUCTBUILDER=CONVERT(NVARCHAR(MAX),
			(SELECT 
				#TEMPSTRUCTURE.AttrID "LeftRowField/@AttrID",
				#TEMPSTRUCTURE.[Merge] "LeftRowField/@Merge",
				#TEMPSTRUCTURE.[Level] "LeftRowField/@Level" 
				FROM #TEMPSTRUCTURE
				FOR XML PATH(''),  TYPE ))
			if @STRUCTBUILDER is null
			SET @STRUCTBUILDER=''
		  SET @STRUCTBUILDER=@STRUCTBUILDER+CONVERT(NVARCHAR(MAX),
		 (SELECT  1 AS Tag,NULL AS Parent,''as 'null!1!SummaryGroupField!Element',''as 'null!1!TableGroupField!Element',''as 'null!1!PlaceHolderText!cdata',case display_table_header when 1 then 'True' when 0 then 'False'end as 'null!1!DisplayRowHeader!Element','False'as 'null!1!DisplayColumnHeader!Element',
		 'False' as 'null!1!DisplaySummaryHeader!Element','True' as 'null!1!VerticalTable!Element',''as 'null!1!PivotHeaderText!cdata',''as 'null!1!MergeRowHeader!Element',''as 'null!1!MergeSummaryFields!Element' from tb_family where family_id=@FAMILYID for xml EXPLICIT))
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'<null>','')
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'</null>','')
			SET @STRUCTBUILDER=(N'<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable">'+ @STRUCTBUILDER+ N'</TradingBell>')	

				INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME,IS_DEFAULT)VALUES(@CATALOGID,@FAMILYID,@STRUCTBUILDER,@STRUCTURENAME,@ISDEFAULT)

	END
	ELSE IF(@TABLETYPE='SuperTable')
	BEGIN
	SET @STRUCTBUILDER='<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable"><SummaryGroupField></SummaryGroupField><TableGroupField></TableGroupField><PlaceHolderText><![CDATA[]]></PlaceHolderText><DisplayRowHeader>True</DisplayRowHeader><DisplayColumnHeader>False</DisplayColumnHeader><DisplaySummaryHeader>False</DisplaySummaryHeader><VerticalTable>False</VerticalTable><PivotHeaderText><![CDATA[]]></PivotHeaderText><MergeRowHeader></MergeRowHeader><MergeSummaryFields></MergeSummaryFields></TradingBell>'
	INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME,IS_DEFAULT)VALUES(@CATALOGID,@FAMILYID,@STRUCTBUILDER,@STRUCTURENAME,@ISDEFAULT)
	END
END
ELSE IF(LEN(@STRUCTURENAME)=0 AND LEN(@CATEGORYID)=0)
BEGIN
IF(@TABLETYPE='Horizontal')
	BEGIN
            
			INSERT INTO #TEMPSTRUCTURE (AttrID,[Merge],[Level],SORT_ORDER)SELECT DISTINCT 'Attr:'+convert(nvarchar,TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID),'unchecked' as [Merge],'0' as [Level],SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST,TB_FAMILY,TB_CATALOG_ATTRIBUTES WHERE TB_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID
			AND TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=@FAMILYID AND TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID=TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND TB_CATALOG_ATTRIBUTES.CATALOG_ID=@CATALOGID ORDER BY SORT_ORDER
			SET @STRUCTBUILDER=CONVERT(NVARCHAR(MAX),
			(SELECT 
				#TEMPSTRUCTURE.AttrID "LeftRowField/@AttrID",
				#TEMPSTRUCTURE.[Merge] "LeftRowField/@Merge",
				#TEMPSTRUCTURE.[Level] "LeftRowField/@Level" 
				FROM #TEMPSTRUCTURE
				FOR XML PATH(''),  TYPE ))
			if @STRUCTBUILDER is null
			SET @STRUCTBUILDER=''
			SET @STRUCTBUILDER=@STRUCTBUILDER+CONVERT(NVARCHAR(MAX),
			(SELECT  1 AS Tag,NULL AS Parent,''as 'null!1!SummaryGroupField!Element',''as 'null!1!TableGroupField!Element',''as 'null!1!PlaceHolderText!cdata','True' as 'null!1!DisplayRowHeader!Element','False'as 'null!1!DisplayColumnHeader!Element',
			'False' as 'null!1!DisplaySummaryHeader!Element','False' as 'null!1!VerticalTable!Element',''as 'null!1!PivotHeaderText!cdata',''as 'null!1!MergeRowHeader!Element',''as 'null!1!MergeSummaryFields!Element' from tb_family where family_id=@FAMILYID for xml EXPLICIT))		 
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'<null>','')
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'</null>','')
			SET @STRUCTBUILDER=(N'<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable">'+ @STRUCTBUILDER+ N'</TradingBell>')	

				UPDATE TB_FAMILY_TABLE_STRUCTURE SET FAMILY_TABLE_STRUCTURE=@STRUCTBUILDER WHERE IS_DEFAULT=1 AND CATALOG_ID=@CATALOGID AND FAMILY_ID=@FAMILYID
	END
	ELSE IF(@TABLETYPE='Vertical')
	BEGIN
			INSERT INTO #TEMPSTRUCTURE (AttrID,[Merge],[Level],SORT_ORDER)SELECT DISTINCT 'Attr:'+convert(nvarchar,TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID),'unchecked' as [Merge],'0' as [Level],SORT_ORDER FROM TB_PROD_FAMILY_ATTR_LIST,TB_FAMILY,TB_CATALOG_ATTRIBUTES WHERE TB_FAMILY.FAMILY_ID=TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID
			AND TB_PROD_FAMILY_ATTR_LIST.FAMILY_ID=@FAMILYID AND TB_CATALOG_ATTRIBUTES.ATTRIBUTE_ID=TB_PROD_FAMILY_ATTR_LIST.ATTRIBUTE_ID AND TB_CATALOG_ATTRIBUTES.CATALOG_ID=@CATALOGID ORDER BY SORT_ORDER
			SET @STRUCTBUILDER=CONVERT(NVARCHAR(MAX),
			(SELECT 
				#TEMPSTRUCTURE.AttrID "LeftRowField/@AttrID",
				#TEMPSTRUCTURE.[Merge] "LeftRowField/@Merge",
				#TEMPSTRUCTURE.[Level] "LeftRowField/@Level" 
				FROM #TEMPSTRUCTURE
				FOR XML PATH(''),  TYPE ))
			if @STRUCTBUILDER is null
			SET @STRUCTBUILDER=''
		  SET @STRUCTBUILDER=@STRUCTBUILDER+CONVERT(NVARCHAR(MAX),
		 (SELECT  1 AS Tag,NULL AS Parent,''as 'null!1!SummaryGroupField!Element',''as 'null!1!TableGroupField!Element',''as 'null!1!PlaceHolderText!cdata',case display_table_header when 1 then 'True' when 0 then 'False'end as 'null!1!DisplayRowHeader!Element','False'as 'null!1!DisplayColumnHeader!Element',
		 'False' as 'null!1!DisplaySummaryHeader!Element','True' as 'null!1!VerticalTable!Element',''as 'null!1!PivotHeaderText!cdata',''as 'null!1!MergeRowHeader!Element',''as 'null!1!MergeSummaryFields!Element' from tb_family where family_id=@FAMILYID for xml EXPLICIT))
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'<null>','')
			SET @STRUCTBUILDER=replace(@STRUCTBUILDER,'</null>','')
			SET @STRUCTBUILDER=(N'<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable">'+ @STRUCTBUILDER+ N'</TradingBell>')	
             
				UPDATE TB_FAMILY_TABLE_STRUCTURE SET FAMILY_TABLE_STRUCTURE=@STRUCTBUILDER WHERE IS_DEFAULT=1 AND CATALOG_ID=@CATALOGID AND FAMILY_ID=@FAMILYID

	END
END
DROP TABLE #TEMPSTRUCTURE
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_InsertFamily]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_InsertFamily]
@FAMILY_NAME NVARCHAR(400),
@CATEGORY_ID NVARCHAR(50),
@PARENT_FAMILY_ID INT,
@ROOT_FAMILY TINYINT,
@STATUS NVARCHAR(50),
@CATALOG_ID INT
AS
DECLARE @NEW_FAMILY_ID INT
DECLARE @ATTRIBUTE_ID INT 
DECLARE @ATTRIBUTE_TYPE INT 
DECLARE @STRING_VALUE VARCHAR(MAX)
 declare @sortorder int 


INSERT INTO TB_FAMILY(FAMILY_NAME,CATEGORY_ID,PARENT_FAMILY_ID,ROOT_FAMILY,STATUS,CREATED_USER,MODIFIED_USER)
VALUES(@FAMILY_NAME,@CATEGORY_ID,@PARENT_FAMILY_ID,@ROOT_FAMILY,@STATUS,SYSTEM_USER,SYSTEM_USER)


IF(@PARENT_FAMILY_ID!=0)
BEGIN
	if ((SELECT MAX(SORT_ORDER)+1 FROM TB_SUBFAMILY where FAMILY_ID= @PARENT_FAMILY_ID )  is null )
	begin 
		set @sortorder=1
	end 
	else
	begin 
		set	@sortorder =(SELECT MAX(SORT_ORDER)+1 FROM TB_SUBFAMILY where FAMILY_ID= @PARENT_FAMILY_ID   )
	end 
END
SET @NEW_FAMILY_ID = SCOPE_IDENTITY()
IF(@PARENT_FAMILY_ID!=0)
BEGIN
INSERT INTO TB_SUBFAMILY(FAMILY_ID,SUBFAMILY_ID,SORT_ORDER)VALUES(@PARENT_FAMILY_ID,@NEW_FAMILY_ID,@sortorder)
END


if ((SELECT MAX(SORT_ORDER)+1 FROM TB_CATALOG_FAMILY where catalog_id = @catalog_id and category_id = @category_id  )  is null )
begin 
set @sortorder=1
end 
else
begin 
set @sortorder =(SELECT MAX(SORT_ORDER)+1 FROM TB_CATALOG_FAMILY where catalog_id = @catalog_id and category_id = @category_id   )
end 


if (@catalog_id<>1)
begin 
INSERT INTO TB_CATALOG_FAMILY SELECT
@CATALOG_ID,@NEW_FAMILY_ID , @sortorder , @CATEGORY_ID ,SYSTEM_USER,{ FN NOW()},SYSTEM_USER,{ FN NOW()} 
end 


DECLARE    CURSOR_ATTRIBUTES  CURSOR  for 
SELECT TA.ATTRIBUTE_ID , TA.ATTRIBUTE_TYPE FROM TB_ATTRIBUTE  TA , TB_CATALOG_ATTRIBUTES TCA WHERE  TA.CREATE_BY_DEFAULT = 1 AND TA.ATTRIBUTE_ID = TCA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID 
AND TA.ATTRIBUTE_TYPE IN (7, 9)
OPEN CURSOR_ATTRIBUTES   
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO  @ATTRIBUTE_ID  , @ATTRIBUTE_TYPE
		WHILE @@FETCH_STATUS = 0
		BEGIN 
		
		SET @STRING_VALUE =( SELECT  DEFAULT_VALUE FROM TB_ATTRIBUTE WHERE ATTRIBUTE_ID = @ATTRIBUTE_ID) 
		IF (@ATTRIBUTE_TYPE=7)
		BEGIN
		INSERT INTO TB_FAMILY_SPECS  VALUES  (	@STRING_VALUE  ,  @NEW_FAMILY_ID  , @ATTRIBUTE_ID , 0 , '  '  , '  '  , SYSTEM_USER   , GETDATE() , SYSTEM_USER , GETDATE() )
		END 
		IF (@ATTRIBUTE_TYPE=9)
		BEGIN
		INSERT INTO TB_FAMILY_SPECS  VALUES  (	@STRING_VALUE  ,  @NEW_FAMILY_ID  , @ATTRIBUTE_ID , 0 , '  '  , '  '  , SYSTEM_USER   , GETDATE() , SYSTEM_USER , GETDATE() )
		END 
		FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO  @ATTRIBUTE_ID ,@ATTRIBUTE_TYPE
		END 
CLOSE CURSOR_ATTRIBUTES 
DEALLOCATE CURSOR_ATTRIBUTES




SELECT @NEW_FAMILY_ID
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_FLATXMLTREE]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_FLATXMLTREE]( @CATALOG_ID INT,@FAMILY_ID INT,@ALLOW_DUPLICATES NVARCHAR(10),@PRODUCTIDS NVARCHAR(MAX))
AS
BEGIN  

		DECLARE  @ATTRIBUTE_ID INT ,@PRODUCT_ID INT, @SUBFAMILY_ID INT, @ATTRIBUTE_NAME NVARCHAR(2000)  
		DECLARE @ATTRTYPE INT , @ATTRIBUTE_VALUE NVARCHAR(MAX) , @SORT_ORDER INT , @TEMP NVARCHAR(MAX)
		DECLARE  @SQL NVARCHAR(MAX), @COUNTER INT, @SUBFAMILY INT
		DECLARE @ATTRIBUTE_TYPE AS INT
		DECLARE @STRING_VALUE AS NVARCHAR(MAX)
		DECLARE @NUMERIC_VALUE AS DECIMAL(19,6)
		DECLARE @XMLVALUE AS NVARCHAR(MAX)
		DECLARE @ROW_SORT_ORDER AS INT
		DECLARE @COLUMN_SORT_ORDER AS INT
		DECLARE @ITEMNO NVARCHAR(MAX)
		DECLARE @PRODUCTPUBLISH INT


		SELECT DISTINCT FT.CATALOG_ID,TB_CATALOG.CATALOG_NAME,FT.CATEGORY_ID, FT.CATEGORY_NAME, FT.category_MD, FT.sc1_id,FT.sc1_Name,FT.sc1_MD ,FT.sc2_id,FT.sc2_Name,FT.sc2_MD,FT.sc3_id,FT.sc3_Name,FT.sc3_MD,FT.sc4_id,FT.sc4_Name,FT.sc4_MD, FT.FAMILY_ID, FT.FAMILY_NAME,FT.FAMILY_SORT,FT.FAMILY_MD, FT.subfamily_id,FT.SUBFAMILY_NAME,FT.SUBFAMILY_MD, FT.SUBFAMILY_SORT INTO #FLATTREETABLE 
				FROM [VIEW_CATALOGSTUDIO5_FAMILYPRODUCTSTREE] AS FT,TB_CATALOG where ft.catalog_id=@CATALOG_ID AND FT.CATALOG_ID=TB_CATALOG.CATALOG_ID and ((ft.family_id=@FAMILY_ID and ft.SUBfamily_id is null)  or ft.SUBfamily_id=@FAMILY_ID)

		SELECT CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME INTO #TEMPFAMILYSTRUCTURE FROM TB_FAMILY_TABLE_STRUCTURE WHERE CATALOG_ID=@CATALOG_ID AND FAMILY_ID=@FAMILY_ID AND IS_DEFAULT=1
	
		SET @XMLVALUE=' '
		SELECT * INTO #PRODUCTATTR FROM [PRODUCTATTR](@CATALOG_ID,@FAMILY_ID)	ORDER BY ROW_SORT_ORDER
		SELECT @SQL =' DELETE #PRODUCTATTR WHERE PRODUCT_ID NOT IN('+@PRODUCTIDS+')'
		EXEC (@SQL)

		CREATE TABLE #PRODUCTXML
		(
		PRODUCT_ID INT,
		XMLVALUE NVARCHAR(MAX),
		ROW_SORT_ORDER INT,
		PRODUCT_PUBLISH NVARCHAR(2)		
		)
		
		DECLARE  CURSOR_PRODUCT  CURSOR  FOR 
		SELECT DISTINCT PRODUCT_ID FROM #PRODUCTATTR
		OPEN CURSOR_PRODUCT   
				FETCH NEXT FROM CURSOR_PRODUCT INTO @PRODUCT_ID
				WHILE @@FETCH_STATUS = 0
				BEGIN 
								DECLARE  CURSOR_ATTRIBUTE  CURSOR  FOR 
								SELECT ATTRIBUTE_ID,ATTRIBUTE_NAME,ATTRIBUTE_TYPE,STRING_VALUE,NUMERIC_VALUE,ROW_SORT_ORDER,COLUMN_SORT_ORDER,PRODUCT_PUBLISH  FROM #PRODUCTATTR WHERE PRODUCT_ID=@PRODUCT_ID ORDER BY COLUMN_SORT_ORDER
								OPEN CURSOR_ATTRIBUTE   
								FETCH NEXT FROM CURSOR_ATTRIBUTE INTO @ATTRIBUTE_ID, @ATTRIBUTE_NAME,@ATTRIBUTE_TYPE,@STRING_VALUE,@NUMERIC_VALUE,@ROW_SORT_ORDER,@COLUMN_SORT_ORDER,@PRODUCTPUBLISH 
								WHILE @@FETCH_STATUS = 0
								BEGIN 
									IF(@ATTRIBUTE_TYPE=1 OR @ATTRIBUTE_TYPE=6)
									BEGIN
										IF (@ATTRIBUTE_ID=1)
										BEGIN
											 IF @COLUMN_SORT_ORDER IS NULL
											 BEGIN
												  SET @ITEMNO=CONVERT(NVARCHAR(MAX),(SELECT '0' "@COLUMN_SORT",'N' "@PUBLISH",@ATTRIBUTE_TYPE "@ATTRIBUTE_TYPE"	,@STRING_VALUE 						
												  for xml path ('CATALOG_ITEM_NO'),  type ))
											 END
											 ELSE
											 BEGIN
												  SET @ITEMNO=CONVERT(NVARCHAR(MAX),(SELECT @COLUMN_SORT_ORDER "@COLUMN_SORT",'Y' "@PUBLISH"	,@ATTRIBUTE_TYPE "@ATTRIBUTE_TYPE"	,@STRING_VALUE				
												  for xml path ('CATALOG_ITEM_NO'),  type ))
											 END		
								
										END
										ELSE
										BEGIN
											 IF @COLUMN_SORT_ORDER IS NULL
											 BEGIN
												  SET @XMLVALUE=@XMLVALUE+CONVERT(NVARCHAR(MAX),(SELECT @ATTRIBUTE_ID "@ATTRIBUTE_ID",'0' "@COLUMN_SORT",'N' "@PUBLISH",@ATTRIBUTE_NAME "ATTRIBUTE_NAME",	
												  @STRING_VALUE "ATTRIBUTE_VALUE",@ATTRIBUTE_TYPE "ATTRIBUTE_TYPE" 					
												  for xml path ('SPEC'),  type ))
											 END
											 ELSE
											 BEGIN
												  SET @XMLVALUE=@XMLVALUE+CONVERT(NVARCHAR(MAX),(select @ATTRIBUTE_ID "@ATTRIBUTE_ID",@COLUMN_SORT_ORDER "@COLUMN_SORT",'Y' "@PUBLISH",
												  @ATTRIBUTE_NAME "ATTRIBUTE_NAME",	
												  @STRING_VALUE "ATTRIBUTE_VALUE",@ATTRIBUTE_TYPE "ATTRIBUTE_TYPE" 								
												  for xml path ('SPEC'),  type ))
											 END
										END
								
									END	
									ELSE
									BEGIN
										 IF @COLUMN_SORT_ORDER IS NULL
										 BEGIN
												SET @XMLVALUE=@XMLVALUE+CONVERT(NVARCHAR(MAX),(SELECT @ATTRIBUTE_ID "@ATTRIBUTE_ID",'0' "@COLUMN_SORT",'N' "@PUBLISH",@ATTRIBUTE_NAME "ATTRIBUTE_NAME",	
												@NUMERIC_VALUE "ATTRIBUTE_VALUE",@ATTRIBUTE_TYPE "ATTRIBUTE_TYPE"  					
												for xml path ('SPEC'),  type ))
										 END
										 ELSE
										 BEGIN
												SET @XMLVALUE=@XMLVALUE+CONVERT(NVARCHAR(MAX),(select @ATTRIBUTE_ID "@ATTRIBUTE_ID",@COLUMN_SORT_ORDER "@COLUMN_SORT",'Y' "@PUBLISH",
												@ATTRIBUTE_NAME "ATTRIBUTE_NAME",	
												@NUMERIC_VALUE "ATTRIBUTE_VALUE",@ATTRIBUTE_TYPE "ATTRIBUTE_TYPE"  				
												for xml path ('SPEC'), type )) 
										 END	
									END	

								FETCH NEXT FROM CURSOR_ATTRIBUTE  INTO @ATTRIBUTE_ID, @ATTRIBUTE_NAME,@ATTRIBUTE_TYPE,@STRING_VALUE,@NUMERIC_VALUE,@ROW_SORT_ORDER,@COLUMN_SORT_ORDER,@PRODUCTPUBLISH 
								END 
								CLOSE CURSOR_ATTRIBUTE 
								DEALLOCATE CURSOR_ATTRIBUTE 	
								SET @XMLVALUE=@ITEMNO+@XMLVALUE	
								SET @XMLVALUE=REPLACE (@XMLVALUE,'''','''''')			
								IF(@PRODUCTPUBLISH=1)
								BEGIN
								SELECT @SQL ='INSERT INTO #PRODUCTXML(PRODUCT_ID,XMLVALUE,ROW_SORT_ORDER,PRODUCT_PUBLISH)VALUES('+convert(nVARCHAR(100),@PRODUCT_ID)+','''+@XMLVALUE+''','+convert(nVARCHAR(100),@ROW_SORT_ORDER)+',''Y'')'
								END
								ELSE
								BEGIN
								SELECT @SQL ='INSERT INTO #PRODUCTXML(PRODUCT_ID,XMLVALUE,ROW_SORT_ORDER,PRODUCT_PUBLISH)VALUES('+convert(nVARCHAR(100),@PRODUCT_ID)+','''+@XMLVALUE+''','+convert(nVARCHAR(100),@ROW_SORT_ORDER)+',''N'')'
								END
								EXEC (@SQL)
								SET @XMLVALUE=' '
								SET @ITEMNO=' '
				FETCH NEXT FROM CURSOR_PRODUCT  INTO @PRODUCT_ID
				END 
				CLOSE CURSOR_PRODUCT 
				DEALLOCATE CURSOR_PRODUCT 

	
	select 
    #FLATTREETABLE.Catalog_Id "Catalog/Catalog_Id",
	 #FLATTREETABLE.Catalog_Name  "Catalog/Catalog_Name",
	 #FLATTREETABLE.CATEGORY_ID   "Category/CATEGORY_ID",
     #FLATTREETABLE.CATEGORY_NAME   "Category/CATEGORY_NAME",
     #FLATTREETABLE.sc1_id   "Category/SUBCAT_L1",
	 #FLATTREETABLE.sc1_Name   "Category/SUBCATNAME_L1",
	 #FLATTREETABLE.sc2_id   "Category/SUBCAT_L2",
	 #FLATTREETABLE.sc2_Name   "Category/SUBCATNAME_L2",
	 #FLATTREETABLE.sc3_id   "Category/SUBCAT_L3",
	 #FLATTREETABLE.sc3_Name   "Category/SUBCATNAME_L3",
	 #FLATTREETABLE.sc4_id   "Category/SUBCAT_L4",
	 #FLATTREETABLE.sc4_Name   "Category/SUBCATNAME_L4",
	( 
		select		
		#FLATTREETABLE.FAMILY_ID "FAMILY_NAME/@FAMILY_ID",		
		#FLATTREETABLE.FAMILY_SORT "FAMILY_NAME/@SORT",		
		 #FLATTREETABLE.FAMILY_NAME   "FAMILY_NAME",
		#FLATTREETABLE.SubFamily_ID "SUBFAMILY_NAME/@FAMILY_ID",
		#FLATTREETABLE.SUBFAMILY_SORT "SUBFAMILY_NAME/@SORT",
		 #FLATTREETABLE.SubFamily_Name   "SUBFAMILY_NAME",
		 #TEMPFAMILYSTRUCTURE.STRUCTURE_NAME "FAMILY_TABLE_STRUCTURE/@STRUCTURE_NAME",
         #TEMPFAMILYSTRUCTURE.FAMILY_TABLE_STRUCTURE "FAMILY_TABLE_STRUCTURE",
    (
			select	
			A.ATTRIBUTE_ID "@ATTRIBUTE_ID",
			 A.ATTRIBUTE_NAME    "ATTRIBUTE_NAME",	
			 FS.STRING_VALUE     "ATTRIBUTE_VALUE",
			A.ATTRIBUTE_TYPE "ATTRIBUTE_TYPE"
			from
			TB_FAMILY_SPECS FS,TB_ATTRIBUTE A,TB_CATALOG_ATTRIBUTES TCA
			WHERE A.ATTRIBUTE_ID=FS.ATTRIBUTE_ID AND Family_ID=@FAMILY_ID AND TCA.ATTRIBUTE_ID=FS.ATTRIBUTE_ID AND TCA.CATALOG_ID=@CATALOG_ID
			for xml path ('SPEC'),  type	
	)
		
	from
    #FLATTREETABLE, #TEMPFAMILYSTRUCTURE 
	for xml path ('FAMILY'), type
	
),
(
	SELECT PRODUCT_ID "@PRODUCT_ID",
	ROW_SORT_ORDER "@ROW_SORT",PRODUCT_PUBLISH "@PUBLISH",@ALLOW_DUPLICATES "@ALLOW_DUPLICATES",
	CONVERT(XML,XMLVALUE) FROM #PRODUCTXML 
	for xml path ('PRODUCT'), root('PRODUCTS'), type
)
   
 from
    #FLATTREETABLE

 for xml path (''), root('tradingbell2ws_productpacket'), type

		
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SAMP]    Script Date: 07/26/2012 17:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_SAMP]
as
DECLARE @STR VARCHAR(MAX)=''
DECLARE @STR2 VARCHAR(MAX)=''
DECLARE @CNME VARCHAR(MAX)=''
DECLARE @QUERY NVARCHAR(MAX)=''
DECLARE @CNT INT=0
DECLARE @CNT2 INT=0
DECLARE @FLG INT=0
DECLARE @CT INT=0
SET @CT = (select COUNT(*) from TEMPNIH)
IF (@CT <> 0)
	BEGIN
		--SELECT DISTINCT(PRODUCT_ID) AS PRODUCT_ID INTO ##SAMP from TEMPNIH where PRODUCT_ID<>0 order by PRODUCT_ID
		--SET @CT = (select COUNT(*) from ##SAMP where PRODUCT_ID<>0)
		--DROP TABLE ##SAMP

		SET @QUERY = 'select  DISTINCT(ta.ATTRIBUTE_NAME) INTO ##SAMP from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
		where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
		PRODUCT_ID IN (select distinct(PRODUCT_ID) AS PRODUCT_ID from TEMPNIH where PRODUCT_ID<>0)'
		EXEC (@QUERY)

		SET @CNT =(select  COUNT(*) from ##SAMP)
		SET @CNME = 'PRODUCT_ID VARCHAR(450) NOT NULL PRIMARY KEY' + ','
		
		DECLARE REP2 CURSOR FOR 
		SELECT ATTRIBUTE_NAME FROM ##SAMP
		OPEN REP2
			WHILE (@CNT > @FLG)
				BEGIN
					SET @FLG=@FLG + 1
					FETCH NEXT FROM REP2 INTO @STR
					IF (ISNUMERIC(SUBSTRING(@STR,1,1))<>1 AND SUBSTRING(@STR,1,1)<>'-')
						BEGIN
							SET @CNME =@CNME + (Select dbo.ReplaceSpecialChars(@STR,'_')) + ' VARCHAR(MAX) NULL' + ','
						END
					ELSE
						BEGIN
							--print SUBSTRING(@STR,1,1)
							print @str
							SET @CNME =@CNME + '_' + (Select dbo.ReplaceSpecialChars(@STR,'_')) + ' VARCHAR(MAX) NULL' + ','
						END
				END
		CLOSE REP2
		DEALLOCATE REP2
		DROP TABLE ##SAMP
		--PRINT @CNME
		-------------------------------------------
		IF OBJECT_ID('tempdb..##PSAMP') IS NOT NULL
			BEGIN
				DROP TABLE ##PSAMP
				SET @QUERY = 'CREATE TABLE ##PSAMP('+ @CNME + ')'
				EXEC(@QUERY)
			END
		ELSE 
			BEGIN
				SET @QUERY = 'CREATE TABLE ##PSAMP('+ @CNME + ')'
				EXEC(@QUERY)
			END

		SET @QUERY = 'INSERT INTO ##PSAMP(PRODUCT_ID) select distinct(PRODUCT_ID) AS PRODUCT_ID from TEMPNIH where PRODUCT_ID<>0 ORDER BY PRODUCT_ID'
		EXEC (@QUERY)
		-------------------------

		--SET @CNT =(select  COUNT(*) from ##PSAMP)
		SET @CNT = (select COUNT(*) from tempdb.sys.columns where object_id = object_id('tempdb..##PSAMP'))
		
		------------------------------
		
		SET @QUERY = 'select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID,tps.NUMERIC_VALUE INTO ##SAMP from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
		where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
		PRODUCT_ID IN (select distinct(PRODUCT_ID) AS PRODUCT_ID from TEMPNIH where PRODUCT_ID<>0)'
		EXEC (@QUERY)
		
				
		SET @FLG=0
		DECLARE COL CURSOR FOR 
		select name from tempdb.sys.columns where object_id = object_id('tempdb..##PSAMP');
		OPEN COL
			WHILE (@CNT >= @FLG)
				BEGIN
					SET @FLG=@FLG + 1
					FETCH NEXT FROM COL INTO @STR
					
						SET @QUERY = 'update ##PSAMP SET ' + @STR + '= S.String_Value from ##SAMP S
								 where S.Product_ID = ##PSAMP.Product_ID AND ##PSAMP.'+ @STR + ' IS NULL AND S.Numeric_Value IS NULL
								 AND + (Select dbo.ReplaceSpecialChars(S.ATTRIBUTE_NAME,' + '''' + '_' + '''' + '))'+ '=' + '''' + @STR + ''''
						EXEC (@QUERY)
						
						IF (@@ROWCOUNT=0)
							BEGIN
								SET @QUERY = 'update ##PSAMP SET ' + @STR + '= S.Numeric_Value from ##SAMP S
											 where S.Product_ID = ##PSAMP.Product_ID AND ##PSAMP.'+ @STR + ' IS NULL AND S.String_Value IS NULL
											 AND + (Select dbo.ReplaceSpecialChars(S.ATTRIBUTE_NAME,' + '''' + '_' + '''' + '))'+ '=' + '''' + @STR + ''''
								EXEC (@QUERY)
							END
						
				END
		CLOSE COL
		DEALLOCATE COL
		--SELECT * FROM ##PSAMP
		
		IF OBJECT_ID('tempdb..##FRES') IS NOT NULL
			BEGIN
				DROP TABLE ##FRES
				SET @QUERY = 'SELECT tmp.*,tm.CATALOG_ID,tm.CATALOG_NAME,tm.CATEGORY_ID,tm.CATEGORY_NAME,tm.SUBCATID_L1,
							 tm.SUBCATNAME_L1,tm.SUBCATID_L2,tm.SUBCATNAME_L2,tm.SUBCATID_L3,tm.SUBCATNAME_L3,tm.SUBCATID_L4,
							 tm.SUBCATNAME_L4,tm.FAMILY_ID,tm.FAMILY_NAME,tm.SUBFAMILY_ID,tm.SUBFAMILY_NAME INTO ##FRES
							 FROM ##PSAMP tmp FULL JOIN TEMPNIH tm ON tm.PRODUCT_ID=tmp.PRODUCT_ID'
				EXEC (@QUERY)
			END
		ELSE
			BEGIN
				SET @QUERY = 'SELECT tmp.*,tm.CATALOG_ID,tm.CATALOG_NAME,tm.CATEGORY_ID,tm.CATEGORY_NAME,tm.SUBCATID_L1,
							 tm.SUBCATNAME_L1,tm.SUBCATID_L2,tm.SUBCATNAME_L2,tm.SUBCATID_L3,tm.SUBCATNAME_L3,tm.SUBCATID_L4,
							 tm.SUBCATNAME_L4,tm.FAMILY_ID,tm.FAMILY_NAME,tm.SUBFAMILY_ID,tm.SUBFAMILY_NAME INTO ##FRES
							 FROM ##PSAMP tmp FULL JOIN TEMPNIH tm ON tm.PRODUCT_ID=tmp.PRODUCT_ID'
				EXEC (@QUERY)
			END
		---------------------------------------------
		DROP TABLE ##SAMP
		EXEC SP_SAMP_FAM
		DELETE FROM TEMPNIH
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_WEBPRODLST]    Script Date: 07/26/2012 17:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_WEBPRODLST](@SESS_ID VARCHAR(MAX))
as

DECLARE @PSESS_ID VARCHAR(MAX)='##P' + @SESS_ID
DECLARE @TSESS_ID VARCHAR(MAX)='##T' + @SESS_ID
DECLARE @FSESS_ID VARCHAR(MAX)='##F' + @SESS_ID
DECLARE @CSESS_ID VARCHAR(MAX)='##C' + @SESS_ID
SET @SESS_ID ='##' + @SESS_ID
DECLARE @STR VARCHAR(MAX)=''
DECLARE @STR2 VARCHAR(MAX)=''
DECLARE @CNME VARCHAR(MAX)=''
DECLARE @CTYP VARCHAR(MAX)=''
DECLARE @QUERY NVARCHAR(MAX)=''
DECLARE @CNT INT=0
DECLARE @CNT2 INT=0
DECLARE @FLG INT=0
DECLARE @CT INT=0
DECLARE @ParmDefinition nvarchar(500);
--------------------------
		SET @QUERY = 'select  DISTINCT(ta.ATTRIBUTE_NAME),ATTRIBUTE_DATATYPE INTO '+ @TSESS_ID +' from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
		where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
		PRODUCT_ID IN (select distinct(PRODUCT_ID) AS PRODUCT_ID from ' + @SESS_ID + ' where PRODUCT_ID<>0)'
		EXEC (@QUERY)

		SET @QUERY ='SELECT @retvalOUT = COUNT(*) FROM '+ @TSESS_ID
		SET @ParmDefinition = '@retvalOUT int OUTPUT';
		EXEC sp_executesql @QUERY, @ParmDefinition, @retvalOUT=@CNT OUTPUT;
		
		SET @CNME = 'PRODUCT_ID VARCHAR(450) NOT NULL PRIMARY KEY' + ','
		SET @QUERY = 'DECLARE REP2 CURSOR FOR SELECT ATTRIBUTE_NAME,ATTRIBUTE_DATATYPE FROM ' + @TSESS_ID
		EXEC sp_executesql @QUERY
		
		OPEN REP2
			WHILE (@CNT > @FLG)
				BEGIN
					SET @FLG=@FLG + 1
					FETCH NEXT FROM REP2 INTO @STR,@STR2
					
					IF (ISNUMERIC(SUBSTRING(@STR,1,1))<>1 AND SUBSTRING(@STR,1,1)<>'-')
						BEGIN
							SET @CNME =@CNME + (Select dbo.ReplaceSpecialChars(@STR,'_')) + ' VARCHAR(MAX) NULL' + ','
							SET @CTYP =@CTYP + @STR2 + '.'
						END
					ELSE
						BEGIN
							SET @CNME =@CNME + '_' + (Select dbo.ReplaceSpecialChars(@STR,'_')) + ' VARCHAR(MAX) NULL' + ','
							SET @CTYP =@CTYP + @STR2 + '.'
						END
				END
		CLOSE REP2
		DEALLOCATE REP2
		SET @QUERY = 'DROP TABLE ' + @TSESS_ID
		EXEC (@QUERY)
		-------------------------------------------
		IF OBJECT_ID('tempdb..'+@PSESS_ID) IS NOT NULL
			BEGIN
				SET @QUERY = 'DROP TABLE ' + @PSESS_ID
				SET @QUERY = 'CREATE TABLE ' + @PSESS_ID +'('+ @CNME + ')'
				EXEC(@QUERY)
			END
		ELSE 
			BEGIN
				SET @QUERY = 'CREATE TABLE ' + @PSESS_ID +'('+ @CNME + ')'
				EXEC(@QUERY)
			END

		SET @QUERY = 'INSERT INTO ' + @PSESS_ID +'(PRODUCT_ID) select distinct(PRODUCT_ID) AS PRODUCT_ID from ' + @SESS_ID +' where PRODUCT_ID<>0 ORDER BY PRODUCT_ID'
		EXEC (@QUERY)
		-------------------------
		SET @CNT = (select COUNT(*) from tempdb.sys.columns where object_id = object_id('tempdb..'+@PSESS_ID))
		------------------------------
		
		SET @QUERY = 'SELECT * INTO ' + @CSESS_ID + ' FROM dbo.Split(' + '''' + @CTYP + '''' +','+''''+'.'+'''' +')'
		EXEC (@QUERY)
		
		SET @CTYP = ''
		
		SET @QUERY = 'select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID,tps.NUMERIC_VALUE INTO '+ @TSESS_ID +' from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
		where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
		PRODUCT_ID IN (select distinct(PRODUCT_ID) AS PRODUCT_ID from '+ @SESS_ID +' where PRODUCT_ID<>0)'
		EXEC (@QUERY)
		
		SET @FLG=0
		DECLARE COL CURSOR FOR 
		select name from tempdb.sys.columns where object_id = object_id('tempdb..'+@PSESS_ID);
		OPEN COL
		FETCH NEXT FROM COL INTO @STR
			WHILE (@CNT >= @FLG)
				BEGIN
					SET @FLG=@FLG + 1
					FETCH NEXT FROM COL INTO @STR
					
						SET @QUERY ='SELECT @retvalOUT=(SELECT TOP(1) strval FROM '+ @CSESS_ID+')'
						SET @ParmDefinition = '@retvalOUT VARCHAR(MAX) OUTPUT';
						EXEC sp_executesql @QUERY, @ParmDefinition, @retvalOUT=@CTYP OUTPUT;
						
						IF (SUBSTRING(@CTYP,1,1)='T')
							BEGIN
								SET @QUERY = 'update '+ @PSESS_ID +' SET ' + @STR + '= replace(replace(S.STRING_VALUE,'+''''+'<bol>'+''''+','+''''+''''+'),'+''''+'</bol>'+''''+','+''''+''''+') from ' +@TSESS_ID+' S
										 where S.Product_ID ='+ @PSESS_ID+'.Product_ID AND ' +@PSESS_ID+'.'+ @STR + ' IS NULL AND S.String_Value <>' + '''' + '''' +
										 ' AND ' + '(Select dbo.ReplaceSpecialChars(S.ATTRIBUTE_NAME,' + '''' + '_' + '''' + '))'+ '=' + '''' + @STR + ''''
								EXEC (@QUERY)
							END
						ELSE	
							BEGIN	
								SET @QUERY = 'update '+ @PSESS_ID +' SET ' + @STR + '= CONVERT(DECIMAL(10,0),S.Numeric_Value) from ' +@TSESS_ID+' S
								 where S.Product_ID ='+ @PSESS_ID+'.Product_ID AND ' +@PSESS_ID+'.'+ @STR + ' IS NULL AND ' +
								  + '(Select dbo.ReplaceSpecialChars(S.ATTRIBUTE_NAME,' + '''' + '_' + '''' + '))'+ '=' + '''' + @STR + ''''
								EXEC (@QUERY)
							END
						
						SET @QUERY ='DELETE TOP(1) FROM '+ @CSESS_ID
						EXEC (@QUERY)
				END
		CLOSE COL
		DEALLOCATE COL
		
		IF OBJECT_ID('tempdb..'+@FSESS_ID) IS NOT NULL
			BEGIN
				SET @QUERY = 'DROP TABLE ' + @FSESS_ID
				EXEC (@QUERY)
				SET @QUERY = 'SELECT tmp.*,tm.CATALOG_ID,tm.CATALOG_NAME,tm.CATEGORY_ID,tm.CATEGORY_NAME,tm.SUBCATID_L1,
							 tm.SUBCATNAME_L1,tm.SUBCATID_L2,tm.SUBCATNAME_L2,tm.SUBCATID_L3,tm.SUBCATNAME_L3,tm.SUBCATID_L4,
							 tm.SUBCATNAME_L4,tm.FAMILY_ID,tm.FAMILY_NAME,tm.SUBFAMILY_ID,tm.SUBFAMILY_NAME INTO ' + @FSESS_ID +
							 ' FROM '+ @PSESS_ID + ' tmp FULL JOIN '+ @SESS_ID+ ' tm ON tm.PRODUCT_ID=tmp.PRODUCT_ID'
				EXEC (@QUERY)
			END
		ELSE
			BEGIN
				SET @QUERY = 'SELECT tmp.*,tm.CATALOG_ID,tm.CATALOG_NAME,tm.CATEGORY_ID,tm.CATEGORY_NAME,tm.SUBCATID_L1,
							 tm.SUBCATNAME_L1,tm.SUBCATID_L2,tm.SUBCATNAME_L2,tm.SUBCATID_L3,tm.SUBCATNAME_L3,tm.SUBCATID_L4,
							 tm.SUBCATNAME_L4,tm.FAMILY_ID,tm.FAMILY_NAME,tm.SUBFAMILY_ID,tm.SUBFAMILY_NAME INTO ' + @FSESS_ID +
							 ' FROM '+ @PSESS_ID + ' tmp FULL JOIN '+ @SESS_ID+ ' tm ON tm.PRODUCT_ID=tmp.PRODUCT_ID'
				EXEC (@QUERY)
			END
		---------------------------------------------
		
		SET @SESS_ID = SUBSTRING(@SESS_ID,3,LEN(@SESS_ID)-2)
		EXEC SP_WEBFAMLST @SESS_ID
		
		SET @QUERY = 'DROP TABLE ##' + @SESS_ID
		EXEC (@QUERY)
		
		SET @QUERY = 'DROP TABLE ' + @PSESS_ID
		EXEC (@QUERY)
		
		SET @QUERY = 'DROP TABLE ' + @TSESS_ID
		EXEC (@QUERY)
		
		SET @QUERY = 'DROP TABLE ' + @CSESS_ID
		EXEC (@QUERY)
GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT]    Script Date: 07/26/2012 17:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_REPORT]
as
DECLARE @FCHK VARCHAR(MAX)=''
DECLARE @PID DECIMAL=0
DECLARE @STR VARCHAR(MAX)=''
DECLARE @STR2 VARCHAR(MAX)=''
DECLARE @VAL VARCHAR(MAX)=''
DECLARE @CNME VARCHAR(MAX)=''
DECLARE @CSPL VARCHAR(MAX)=''
DECLARE @CVAL VARCHAR(MAX)=''
DECLARE @QUERY NVARCHAR(MAX)=''
DECLARE @CNT INT=0
DECLARE @CNT2 INT=0
DECLARE @FLG INT=0
DECLARE @FLG2 INT=0
DECLARE @TFLG INT=0
DECLARE @NUM DECIMAL=0
DECLARE @NUM2 VARCHAR(MAX)=''
----------------
--DELETE FROM TEMPHEATCRAFT
--EXEC UPDATE_NEED 'HC073',2
--SELECT * FROM TEMPHEATCRAFT
--------------------
--SET @CNT = (select  COUNT(*) from TB_PROD_SPECS tpS,TEMPHEATCRAFT tn
--where tn.PRODUCT_ID=tpS.PRODUCT_ID)
-----------------------------------
DECLARE @TPID DECIMAL=0
DECLARE @PSTR VARCHAR(MAX)=''
DECLARE @CT INT=0
SET @CT = (select COUNT(*) from TEMPHEATCRAFT)
IF (@CT <> 0)
BEGIN
SELECT DISTINCT(PRODUCT_ID) AS PRODUCT_ID INTO ##TMP from TEMPHEATCRAFT where PRODUCT_ID<>0 order by PRODUCT_ID
SET @CT = (select COUNT(*) from ##TMP where PRODUCT_ID<>0)
DROP TABLE ##TMP
DECLARE PROD CURSOR FOR
select distinct(PRODUCT_ID) AS PRODUCT_ID from TEMPHEATCRAFT where PRODUCT_ID<>0 order by PRODUCT_ID
OPEN PROD

WHILE (@CT > 0)
	BEGIN
		SET @CT = @CT - 1
		FETCH NEXT FROM PROD INTO @TPID
		SET @PSTR=@PSTR + CONVERT(VARCHAR(MAX), @TPID) + ',';
	END
	SET @PSTR = SUBSTRING(@PSTR,1,LEN(@PSTR)-1)
CLOSE PROD
DEALLOCATE PROD
------------------------------------------------------------------------------------------
SET @QUERY = 'select  COUNT(*) AS CNT INTO ##TMPCNT from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
PRODUCT_ID IN (' + @PSTR + ')'
EXEC (@QUERY)

SET @CNT =(SELECT CNT FROM ##TMPCNT)
DROP TABLE ##TMPCNT
---------------------------------------------
---------------------------------------------
--PRINT @PSTR
SET @QUERY = 'select  ta.ATTRIBUTE_NAME,tps.STRING_VALUE,tps.PRODUCT_ID,tps.NUMERIC_VALUE INTO ##TMP from TB_PROD_SPECS tps,TB_ATTRIBUTE ta
where tps.ATTRIBUTE_ID = ta.ATTRIBUTE_ID AND 
PRODUCT_ID IN (' + @PSTR + ') ORDER BY tps.PRODUCT_ID,ta.ATTRIBUTE_NAME ASC'
EXEC (@QUERY)
----------------------------------------------------------------------------------
DECLARE REP CURSOR FOR 
SELECT ATTRIBUTE_NAME,STRING_VALUE,PRODUCT_ID,NUMERIC_VALUE FROM ##TMP
OPEN REP
	WHILE (@CNT > @FLG)
		BEGIN
			SET @FLG=@FLG + 1
			SET @FLG2=0
			
			FETCH NEXT FROM REP INTO @STR,@VAL,@PID,@NUM
			
			IF (@TFLG=0)
				BEGIN
					SET @TFLG=1
					SET @CNME = 'PRODUCT_ID VARCHAR(MAX)'
					SET @CVAL = CONVERT(VARCHAR(MAX), @PID)
					
					IF OBJECT_ID('tempdb..##PTEMP') IS NOT NULL
						BEGIN
							DROP TABLE ##PTEMP
							SET @QUERY = 'CREATE TABLE ##PTEMP('+ @CNME + ')'
							EXEC(@QUERY)
							SET @QUERY = 'INSERT INTO ##PTEMP VALUES(' + @CVAL +')'
							EXEC (@QUERY)
						END
					ELSE
						BEGIN
							SET @QUERY = 'CREATE TABLE ##PTEMP('+ @CNME + ')'
							EXEC(@QUERY)
							SET @QUERY = 'INSERT INTO ##PTEMP VALUES(' + @CVAL +')'
							EXEC (@QUERY)
						END
						SET @CNME=''
						SET @CVAL=''
				END
				
			IF (@FCHK='')
				BEGIN
					SET @FCHK=@PID
				END
			ELSE IF(@FCHK <> CONVERT(VARCHAR(MAX), @PID))
				BEGIN
					SET @CNT2 =(SELECT COUNT(*) FROM dbo.Split( @CSPL,',' ))
					--print @cnt2
					SET @CVAL ='''' + CONVERT(VARCHAR(MAX), @PID) + '''' +','
					WHILE (@CNT2>0)
						BEGIN
							SET @CNT2=@CNT2-1
							SET @CVAL = @CVAL + '''' + '-' + '''' + ','
						END
					SET @CVAL = SUBSTRING(@CVAL,1,LEN(@CVAL)-1)
					--print @cval
					SET @QUERY = 'INSERT INTO ##PTEMP VALUES(' + @CVAL +')'
					EXEC (@QUERY)
					SET @FCHK=@PID
				END
			---------------------------------------------	
			DECLARE CHK CURSOR FOR
			SELECT strval FROM dbo.Split( @CSPL,',' )
			OPEN CHK
			WHILE @@FETCH_STATUS=0  	
				BEGIN
					FETCH NEXT FROM CHK INTO @STR2
					IF (@STR2=(Select dbo.ReplaceSpecialChars(@STR,'_')))
						BEGIN
							SET @FLG2=1
							BREAK
						END
				END
			CLOSE CHK
			DEALLOCATE CHK
			--------------------------------------------
			IF (@FLG2=0)
				BEGIN
					--PRINT @STR
					set @STR=(Select dbo.ReplaceSpecialChars(@STR,'_'))
					SET @CSPL=@CSPL + @STR + ','
					SET @QUERY='ALTER TABLE ##PTEMP ADD ['+ @STR + ']  VARCHAR(MAX) NULL'
					EXEC(@QUERY)
					SET @VAL=(Select REPLACE(@VAL,',',''))
					IF (@VAL is NULL OR @VAL='')
						BEGIN
							SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
							IF (@NUM2 IS NULL OR @NUM2 = '')
								BEGIN
									SET @CVAL = '''' + '-' + ''''
								END
							ELSE
								BEGIN
									SET @CVAL = '''' + @NUM2 + ''''
								END
						END
					ELSE
						BEGIN
							SET @CVAL = '''' + @VAL + ''''
						END
					--PRINT @CVAL
					SET @QUERY='UPDATE  ##PTEMP SET [' + @STR + ']=' + @CVAL + ' WHERE PRODUCT_ID=' + CONVERT(VARCHAR(MAX),@PID)
					EXEC (@QUERY)
				END
			ELSE IF (@FLG2=1)
				BEGIN
					SET @STR=(Select dbo.ReplaceSpecialChars(@STR,'_'))
					SET @VAL=(Select REPLACE(@VAL,',',''))
					IF (@VAL is NULL OR @VAL='')
						BEGIN
							SET @NUM2=(Select REPLACE(CONVERT(VARCHAR(MAX),@NUM),',',''))
							IF (@NUM2 IS NULL OR @NUM2 = '')
								BEGIN
									SET @CVAL = '''' + '-' + ''''
								END
							ELSE
								BEGIN
									SET @CVAL = '''' + @NUM2 + ''''
								END
						END
					ELSE
						BEGIN
							SET @CVAL = '''' + @VAL + ''''
						END
					SET @QUERY='UPDATE  ##PTEMP SET [' + @STR + ']=' + @CVAL + ' WHERE PRODUCT_ID=' + CONVERT(VARCHAR(MAX),@PID)
					EXEC (@QUERY)
				END
		END
		CLOSE REP
		DEALLOCATE REP
		DROP TABLE ##TMP
		--SELECT * FROM ##PTEMP
		IF OBJECT_ID('tempdb..##RES') IS NOT NULL
			BEGIN
				DROP TABLE ##RES
				SET @QUERY = 'SELECT tmp.*,tm.CATALOG_ID,tm.CATALOG_NAME,tm.CATEGORY_ID,tm.CATEGORY_NAME,tm.SUBCATID_L1,
							 tm.SUBCATNAME_L1,tm.SUBCATID_L2,tm.SUBCATNAME_L2,tm.SUBCATID_L3,tm.SUBCATNAME_L3,tm.SUBCATID_L4,
							 tm.SUBCATNAME_L4,tm.FAMILY_ID,tm.FAMILY_NAME,tm.SUBFAMILY_ID,tm.SUBFAMILY_NAME INTO ##RES
							 FROM ##PTEMP tmp FULL JOIN TEMPHEATCRAFT tm ON tm.PRODUCT_ID=tmp.PRODUCT_ID'
				EXEC (@QUERY)
			END
		ELSE
			BEGIN
				SET @QUERY = 'SELECT tmp.*,tm.CATALOG_ID,tm.CATALOG_NAME,tm.CATEGORY_ID,tm.CATEGORY_NAME,tm.SUBCATID_L1,
							 tm.SUBCATNAME_L1,tm.SUBCATID_L2,tm.SUBCATNAME_L2,tm.SUBCATID_L3,tm.SUBCATNAME_L3,tm.SUBCATID_L4,
							 tm.SUBCATNAME_L4,tm.FAMILY_ID,tm.FAMILY_NAME,tm.SUBFAMILY_ID,tm.SUBFAMILY_NAME INTO ##RES
							 FROM ##PTEMP tmp FULL JOIN TEMPHEATCRAFT tm ON tm.PRODUCT_ID=tmp.PRODUCT_ID'
				EXEC (@QUERY)
			END
		
		EXEC SP_REPORT_FAM
		DELETE FROM TEMPHEATCRAFT
	END	
	ELSE
		BEGIN
			RETURN 1
		END
GO
/****** Object:  UserDefinedFunction [dbo].[Preview Product Specification]    Script Date: 07/26/2012 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Preview Product Specification](@catalog_id int,@category_id nvarchar(max))
returns table
as
return (
select ProductAttribute.* from [Preview Product Attribute](@catalog_id,@category_id) as ProductAttribute )
GO
/****** Object:  UserDefinedFunction [dbo].[Product Specification]    Script Date: 07/26/2012 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Product Specification](@catalog_id int)
returns table
as
return (
select ProductAttribute.* from [Product Attribute](@catalog_id) as ProductAttribute )
GO
/****** Object:  UserDefinedFunction [dbo].[Preview Family Attachment]    Script Date: 07/26/2012 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Preview Family Attachment](@catalog_id int,@category_id as nvarchar(max))
returns table
as
return (SELECT * FROM [Preview Family Description](@catalog_id,@category_id) WHERE ATTRIBUTE_TYPE=9
)
GO
/****** Object:  UserDefinedFunction [dbo].[Family Attachment]    Script Date: 07/26/2012 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Family Attachment](@catalog_id int)
returns table
as
return (SELECT * FROM [Family Description](@catalog_id) WHERE ATTRIBUTE_TYPE=9
)
GO
/****** Object:  UserDefinedFunction [dbo].[Category_Function_top]    Script Date: 07/26/2012 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Category_Function_top](@CATALOG_ID int,@CATEGORY_ID nvarchar(500)) returns table as 
return ( WITH CATEGORYTABLE 
( CATALOG_ID,CATALOG_NAME,CATEGORY_ID,CATEGORY_NAME,PARENT_CATEGORY,SHORT_DESC,IMAGE_FILE,IMAGE_TYPE,
IMAGE_NAME, IMAGE_NAME2,IMAGE_FILE2,IMAGE_TYPE2,SORT_ORDER,CUSTOM_TEXT_FIELD1,CUSTOM_TEXT_FIELD2,
CUSTOM_TEXT_FIELD3, CUSTOM_NUM_FIELD1,CUSTOM_NUM_FIELD2,CUSTOM_NUM_FIELD3, 
CATALOG_CREATED_USER,CATALOG_CREATED_DATE,CATALOG_MODIFIED_USER,CATALOG_MODIFIED_DATE, 
CATEGORY_CREATED_USER,CATEGORY_CREATED_DATE,CATEGORY_MODIFIED_USER,CATEGORY_MODIFIED_DATE,HIERARCHY_LEVEL ) 
 AS ( SELECT  CATALOG_ID,CATALOG_NAME,CATEGORY_ID,CATEGORY_NAME,PARENT_CATEGORY,SHORT_DESC,IMAGE_FILE,IMAGE_TYPE,
IMAGE_NAME, IMAGE_NAME2,IMAGE_FILE2,IMAGE_TYPE2,SORT_ORDER,CUSTOM_TEXT_FIELD1,CUSTOM_TEXT_FIELD2,
CUSTOM_TEXT_FIELD3, CUSTOM_NUM_FIELD1,CUSTOM_NUM_FIELD2,CUSTOM_NUM_FIELD3, 
CATALOG_CREATED_USER,CATALOG_CREATED_DATE,CATALOG_MODIFIED_USER,CATALOG_MODIFIED_DATE,
 CATEGORY_CREATED_USER,CATEGORY_CREATED_DATE,CATEGORY_MODIFIED_USER,CATEGORY_MODIFIED_DATE,
0 AS HIERARCHY_LEVEL FROM CATEGORY(@CATALOG_ID) WHERE CATEGORY_ID=@CATEGORY_ID AND CATALOG_ID=@CATALOG_ID 
UNION ALL 
SELECT   A.CATALOG_ID,A.CATALOG_NAME,A.CATEGORY_ID,A.CATEGORY_NAME,A.PARENT_CATEGORY,A.SHORT_DESC,A.IMAGE_FILE,A.
IMAGE_TYPE,A.IMAGE_NAME, A.IMAGE_NAME2,A.IMAGE_FILE2,A.IMAGE_TYPE2,A.SORT_ORDER,A.CUSTOM_TEXT_FIELD1,
A.CUSTOM_TEXT_FIELD2,A.CUSTOM_TEXT_FIELD3, A.CUSTOM_NUM_FIELD1,A.CUSTOM_NUM_FIELD2,A.CUSTOM_NUM_FIELD3,
A.CATALOG_CREATED_USER,A.CATALOG_CREATED_DATE,A.CATALOG_MODIFIED_USER,A.CATALOG_MODIFIED_DATE,
 A.CATEGORY_CREATED_USER,A.CATEGORY_CREATED_DATE,A.CATEGORY_MODIFIED_USER,A.CATEGORY_MODIFIED_DATE,
B.HIERARCHY_LEVEL + 1 AS HIERARCHY_LEVEL  FROM CATEGORY(@CATALOG_ID) as A INNER JOIN CATEGORYTABLE B ON A.CATEGORY_ID=B.PARENT_CATEGORY AND A.CATALOG_ID=B.CATALOG_ID    ) SELECT * FROM CATEGORYTABLE )
GO
/****** Object:  UserDefinedFunction [dbo].[Category_Function]    Script Date: 07/26/2012 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Category_Function](@CATALOG_ID int,@CATEGORY_ID nvarchar(500)) returns table as 
return ( WITH CATEGORYTABLE 
( CATALOG_ID,CATALOG_NAME,CATEGORY_ID,CATEGORY_NAME,PARENT_CATEGORY,SHORT_DESC,IMAGE_FILE,IMAGE_TYPE,
IMAGE_NAME, IMAGE_NAME2,IMAGE_FILE2,IMAGE_TYPE2,SORT_ORDER,CUSTOM_TEXT_FIELD1,CUSTOM_TEXT_FIELD2,
CUSTOM_TEXT_FIELD3, CUSTOM_NUM_FIELD1,CUSTOM_NUM_FIELD2,CUSTOM_NUM_FIELD3, 
CATALOG_CREATED_USER,CATALOG_CREATED_DATE,CATALOG_MODIFIED_USER,CATALOG_MODIFIED_DATE, 
CATEGORY_CREATED_USER,CATEGORY_CREATED_DATE,CATEGORY_MODIFIED_USER,CATEGORY_MODIFIED_DATE,HIERARCHY_LEVEL ) 
 AS ( SELECT  CATALOG_ID,CATALOG_NAME,CATEGORY_ID,CATEGORY_NAME,PARENT_CATEGORY,SHORT_DESC,IMAGE_FILE,IMAGE_TYPE,
IMAGE_NAME, IMAGE_NAME2,IMAGE_FILE2,IMAGE_TYPE2,SORT_ORDER,CUSTOM_TEXT_FIELD1,CUSTOM_TEXT_FIELD2,
CUSTOM_TEXT_FIELD3, CUSTOM_NUM_FIELD1,CUSTOM_NUM_FIELD2,CUSTOM_NUM_FIELD3, 
CATALOG_CREATED_USER,CATALOG_CREATED_DATE,CATALOG_MODIFIED_USER,CATALOG_MODIFIED_DATE,
 CATEGORY_CREATED_USER,CATEGORY_CREATED_DATE,CATEGORY_MODIFIED_USER,CATEGORY_MODIFIED_DATE,
0 AS HIERARCHY_LEVEL FROM CATEGORY(@CATALOG_ID) WHERE CATEGORY_ID=@CATEGORY_ID AND CATALOG_ID=@CATALOG_ID 
UNION ALL 
SELECT   A.CATALOG_ID,A.CATALOG_NAME,A.CATEGORY_ID,A.CATEGORY_NAME,A.PARENT_CATEGORY,A.SHORT_DESC,A.IMAGE_FILE,A.
IMAGE_TYPE,A.IMAGE_NAME, A.IMAGE_NAME2,A.IMAGE_FILE2,A.IMAGE_TYPE2,A.SORT_ORDER,A.CUSTOM_TEXT_FIELD1,
A.CUSTOM_TEXT_FIELD2,A.CUSTOM_TEXT_FIELD3, A.CUSTOM_NUM_FIELD1,A.CUSTOM_NUM_FIELD2,A.CUSTOM_NUM_FIELD3,
A.CATALOG_CREATED_USER,A.CATALOG_CREATED_DATE,A.CATALOG_MODIFIED_USER,A.CATALOG_MODIFIED_DATE,
 A.CATEGORY_CREATED_USER,A.CATEGORY_CREATED_DATE,A.CATEGORY_MODIFIED_USER,A.CATEGORY_MODIFIED_DATE,
B.HIERARCHY_LEVEL + 1 AS HIERARCHY_LEVEL  FROM CATEGORY(@CATALOG_ID) as A INNER JOIN CATEGORYTABLE B ON A.PARENT_CATEGORY=B.CATEGORY_ID AND A.CATALOG_ID=B.CATALOG_ID    ) SELECT * FROM CATEGORYTABLE )
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_NavigatorInsertCategories]    Script Date: 07/26/2012 17:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[STP_CATALOGSTUDIO5_NavigatorInsertCategories](@CATALOG_ID INT ,@PARENT_ID NVARCHAR(20))
AS
BEGIN  
		DECLARE @ITEMCOUNT  INT , @TEMP_CATEGORYID NVARCHAR(20) , @SQL NVARCHAR(4000),@TEMP_FAMILYID NVARCHAR(20), @TEMP_PARENT_CATEGORY NVARCHAR(20)

		
		
		IF((SELECT MAX(SORT_ORDER) FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID AND CATEGORY_ID IN (SELECT CATEGORY_ID FROM TB_CATEGORY WHERE PARENT_CATEGORY = @PARENT_ID )) IS NULL)
		BEGIN
		SET @ITEMCOUNT = 0
		END
		ELSE
		BEGIN
		SET @ITEMCOUNT = (SELECT MAX(SORT_ORDER) FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID AND CATEGORY_ID IN (SELECT CATEGORY_ID FROM TB_CATEGORY WHERE PARENT_CATEGORY = @PARENT_ID ))
		END
		
		DECLARE CURSOR_CATEGORYS CURSOR LOCAL  FOR  
		SELECT CATEGORY_ID FROM TB_CATEGORY WHERE PARENT_CATEGORY = @PARENT_ID
		ORDER BY CATEGORY_NAME ASC 
		
		OPEN CURSOR_CATEGORYS   
		FETCH NEXT FROM CURSOR_CATEGORYS INTO @TEMP_CATEGORYID
		WHILE @@FETCH_STATUS = 0
		BEGIN
		
		SET @ITEMCOUNT = @ITEMCOUNT + 1
		
		IF((SELECT COUNT(*) FROM TB_CATEGORY WHERE PARENT_CATEGORY = @TEMP_CATEGORYID AND CATEGORY_ID NOT IN (SELECT CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID) ) > 0)
		BEGIN
			EXEC STP_CATALOGSTUDIO5_NavigatorInsertCategories @CATALOG_ID ,@TEMP_CATEGORYID
		END
		
		IF((SELECT COUNT(CATEGORY_ID) FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID AND CATEGORY_ID = @TEMP_CATEGORYID) = 0)
		BEGIN
		INSERT INTO TB_CATALOG_SECTIONS(CATALOG_ID,CATEGORY_ID,SORT_ORDER) VALUES(@CATALOG_ID,@TEMP_CATEGORYID,@ITEMCOUNT) 
		END

		DECLARE CURSOR_FAMILY  CURSOR LOCAL  FOR  
		SELECT FAMILY_ID,CATEGORY_ID FROM TB_FAMILY WHERE PARENT_FAMILY_ID = '0' AND CATEGORY_ID = @TEMP_CATEGORYID
		ORDER BY FAMILY_NAME ASC 
		
		OPEN CURSOR_FAMILY   
		FETCH NEXT FROM CURSOR_FAMILY INTO @TEMP_FAMILYID, @TEMP_PARENT_CATEGORY
		WHILE @@FETCH_STATUS = 0
		BEGIN 

		IF((SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID AND FAMILY_ID IN (SELECT FAMILY_ID FROM TB_FAMILY WHERE CATEGORY_ID = @TEMP_CATEGORYID)) IS NULL)
		BEGIN
		SET @ITEMCOUNT = 0
		END
		ELSE
		BEGIN
		SET @ITEMCOUNT = (SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID AND FAMILY_ID IN (SELECT FAMILY_ID FROM TB_FAMILY WHERE CATEGORY_ID = @TEMP_CATEGORYID))
		END		
													
		SET @ITEMCOUNT =  @ITEMCOUNT + 1
		
		IF((SELECT COUNT(FAMILY_ID) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID AND FAMILY_ID = @TEMP_FAMILYID) = 0)
		BEGIN
		INSERT INTO TB_CATALOG_FAMILY(CATALOG_ID,FAMILY_ID,SORT_ORDER,CATEGORY_ID) VALUES(@CATALOG_ID,@TEMP_FAMILYID,@ITEMCOUNT,@TEMP_PARENT_CATEGORY)
		END			

		EXEC STP_CATALOGSTUDIO5_NavigatorInsertFamilies @CATALOG_ID ,@TEMP_FAMILYID
			
		FETCH NEXT FROM CURSOR_FAMILY INTO @TEMP_FAMILYID, @TEMP_PARENT_CATEGORY 
		END
			CLOSE CURSOR_FAMILY
			DEALLOCATE CURSOR_FAMILY

		
		FETCH NEXT FROM CURSOR_CATEGORYS INTO @TEMP_CATEGORYID 
		END
		CLOSE CURSOR_CATEGORYS
		
		DEALLOCATE CURSOR_CATEGORYS
END
GO
/****** Object:  StoredProcedure [dbo].[SP_WEBCATEGORY]    Script Date: 07/26/2012 17:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_WEBCATEGORY](@CATEGORY_ID1 AS NVARCHAR(50),@CATALOGID VARCHAR(MAX),@SESS_ID VARCHAR(MAX))
AS 
BEGIN
DECLARE @CATEGORY_ID2 VARCHAR(MAX)= '''' + @CATEGORY_ID1 + ''''
DECLARE @QUERY VARCHAR(MAX)='';
DECLARE @MAXHIERARCHY INT;
DECLARE @Family_ID INT;
DECLARE @CATEGORYID NVARCHAR(100);
SET @CATEGORYID= (SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1);
SET @SESS_ID = '##' + @SESS_ID

SET @QUERY = 'CREATE TABLE '+ @SESS_ID+'(
	[CATALOG_ID] [int] NULL,
	[CATALOG_NAME] [nvarchar](100) NULL,
	[CATEGORY_ID] [nvarchar](500) NULL,
	[CATEGORY_NAME] [nvarchar](500) NULL,
	[SUBCATID_L1] [nvarchar](50) NULL,
	[SUBCATNAME_L1] [nvarchar](500) NULL,
	[SUBCATID_L2] [nvarchar](50) NULL,
	[SUBCATNAME_L2] [nvarchar](500) NULL,
	[SUBCATID_L3] [nvarchar](50) NULL,
	[SUBCATNAME_L3] [nvarchar](500) NULL,
	[SUBCATID_L4] [nvarchar](50) NULL,
	[SUBCATNAME_L4] [nvarchar](500) NULL,
	[FAMILY_ID] [int] NULL,
	[FAMILY_NAME] [nvarchar](400) NULL,
	[SUBFAMILY_ID] [int] NULL,
	[SUBFAMILY_NAME] [nvarchar](max) NULL,
	[PRODUCT_ID] [int] NULL
)'
EXEC (@QUERY)

IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
BEGIN
SET @QUERY ='insert into '+ @SESS_ID +
 ' Select  F.CATALOG_ID,c.CATALOG_NAME,'+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+',F1.PARENT_FAMILY_ID,'+''''+''''+',F.FAMILY_ID,F1.FAMILY_NAME,T.PRODUCT_ID From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID='+@CATEGORY_ID2+ ' and F.CATALOG_ID='+@CATALOGID+' and PARENT_FAMILY_ID >0'
 EXEC(@QUERY)
 END
IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)

BEGIN
SET @QUERY ='insert into ' + @SESS_ID +
' Select F.CATALOG_ID,c.CATALOG_NAME,'+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+',F.FAMILY_ID,F1.FAMILY_NAME,'+''''+''''+','+''''+''''+',T.PRODUCT_ID From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c  where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID='+@CATEGORY_ID2 +' and F.CATALOG_ID='+@CATALOGID+' and PARENT_FAMILY_ID = 0'
  EXEC(@QUERY)
END
IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
BEGIN
 SET @QUERY ='insert into '+ @SESS_ID+
' Select F.CATALOG_ID,c.CATALOG_NAME,'+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+',F.FAMILY_ID,'+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+' From TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c  where F.FAMILY_ID=F1.FAMILY_ID  AND 
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID='+@CATEGORY_ID2+' and F.CATALOG_ID='+@CATALOGID+' and PARENT_FAMILY_ID = 0 ' +
'EXCEPT 
  Select F.CATALOG_ID,c.CATALOG_NAME,'+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+',F1.PARENT_FAMILY_ID,'+''''+''''+','+''''+''''+','+''''+''''+','+''''+''''+' From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID='+@CATEGORY_ID2+' and F.CATALOG_ID='+@CATALOGID+' and PARENT_FAMILY_ID >0'
  EXEC(@QUERY)
END

IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
  BEGIN
	SET @MAXHIERARCHY =(SELECT MAX(HIERARCHY_LEVEL) FROM Category_Function_top(@CATALOGID,@CATEGORYID))
	DECLARE @CATEGORY_ID nvarchar(100)
	DECLARE @CATEGORY_NAME NVARCHAR(100)
 DECLARE @HIERARCHY_LEVEL INT
 DECLARE @UPDAT CURSOR 
 SET @UPDAT = CURSOR FOR
 SELECT CATEGORY_ID,CATEGORY_NAME,HIERARCHY_LEVEL from Category_Function_top(@CATALOGID,@CATEGORYID)
 OPEN @UPDAT
 FETCH NEXT
 FROM @UPDAT INTO @CATEGORY_ID,@CATEGORY_NAME,@HIERARCHY_LEVEL
 WHILE @@FETCH_STATUS=0
  BEGIN
 IF(@MAXHIERARCHY=4)
   BEGIN 
	IF @HIERARCHY_LEVEL=0
		 SET @QUERY ='update ' +@SESS_ID+' SET SUBCATID_L4='+''''+@CATEGORY_ID+''''+' ,SUBCATNAME_L4='+''''+@CATEGORY_NAME+''''
		 EXEC(@QUERY)
	IF @HIERARCHY_LEVEL=1
		SET @QUERY ='update ' + @SESS_ID+' SET SUBCATID_L3='+''''+@CATEGORY_ID+''''+' ,SUBCATNAME_L3='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	IF @HIERARCHY_LEVEL=2
		SET @QUERY ='update ' +@SESS_ID+' SET SUBCATID_L2='+''''+@CATEGORY_ID+''''+',SUBCATNAME_L2='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY) 
	IF @HIERARCHY_LEVEL=3
		SET @QUERY ='update '+ @SESS_ID+' SET SUBCATID_L1='+''''+@CATEGORY_ID+''''+',SUBCATNAME_L1='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY) 
	IF @HIERARCHY_LEVEL=4
		SET @QUERY ='update '+ @SESS_ID+' SET CATEGORY_ID='+''''+@CATEGORY_ID+''''+',CATEGORY_NAME='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY) 
  END
 IF(@MAXHIERARCHY=3)
   BEGIN
	IF @HIERARCHY_LEVEL=0
		SET @QUERY ='update '+ @SESS_ID+' SET SUBCATID_L3='+''''+@CATEGORY_ID+''''+ ',SUBCATNAME_L3='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	IF @HIERARCHY_LEVEL=1
		SET @QUERY ='update '+ @SESS_ID+' SET SUBCATID_L2='+''''+@CATEGORY_ID+''''+',SUBCATNAME_L2='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	IF @HIERARCHY_LEVEL=2
		SET @QUERY ='update '+ @SESS_ID+' SET SUBCATID_L1='+''''+@CATEGORY_ID+''''+',SUBCATNAME_L1='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	IF @HIERARCHY_LEVEL=3
		SET @QUERY ='update '+ @SESS_ID+' SET CATEGORY_ID='+''''+@CATEGORY_ID+''''+',CATEGORY_NAME='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	END
 IF(@MAXHIERARCHY=2)		
	BEGIN
	IF @HIERARCHY_LEVEL=0
		SET @QUERY ='update '+ @SESS_ID+' SET SUBCATID_L2='+''''+@CATEGORY_ID+''''+',SUBCATNAME_L2='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	IF @HIERARCHY_LEVEL=1
		SET @QUERY ='update ' +@SESS_ID+' SET SUBCATID_L1='+''''+@CATEGORY_ID+''''+',SUBCATNAME_L1='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	IF @HIERARCHY_LEVEL=2
		SET @QUERY ='update '+ @SESS_ID+' SET CATEGORY_ID='+''''+@CATEGORY_ID+''''+',CATEGORY_NAME='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	END
 IF(@MAXHIERARCHY=1)
	BEGIN	
	IF @HIERARCHY_LEVEL=0
		SET @QUERY ='update '+ @SESS_ID+' SET SUBCATID_L1='+''''+@CATEGORY_ID+''''+',SUBCATNAME_L1='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	IF @HIERARCHY_LEVEL=1
		SET @QUERY ='update '+ @SESS_ID+' SET CATEGORY_ID='+''''+@CATEGORY_ID+''''+',CATEGORY_NAME='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	END	
 IF(@MAXHIERARCHY=0)	
	BEGIN 
	IF @HIERARCHY_LEVEL=0
		SET @QUERY ='update '+ @SESS_ID+' SET CATEGORY_ID='+''''+@CATEGORY_ID+''''+',CATEGORY_NAME='+''''+@CATEGORY_NAME+''''
		EXEC(@QUERY)
	 END		
FETCH NEXT 
FROM @UPDAT INTO  @CATEGORY_ID,@CATEGORY_NAME,@HIERARCHY_LEVEL
   END
CLOSE @UPDAT
DEALLOCATE @UPDAT

SET @QUERY ='UPDATE '+  @SESS_ID+' SET  FAMILY_NAME = TF.FAMILY_NAME FROM TB_FAMILY TF
						WHERE TF.FAMILY_ID='+ @SESS_ID+ '.FAMILY_ID'
EXEC(@QUERY)	

END
ELSE
  PRINT 'NO CATEGORY_ID'
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_NEED]    Script Date: 07/26/2012 17:40:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPDATE_NEED](@CATEGORY_ID1 AS NVARCHAR(50),@CATALOGID INT)
AS 
BEGIN
DECLARE @MAXHIERARCHY INT;
DECLARE @Family_ID INT;
DECLARE @CATEGORYID NVARCHAR(100);
SET @CATEGORYID= (SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1);
IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
BEGIN
insert into TEMPNIH
 Select  F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F1.PARENT_FAMILY_ID,'',F.FAMILY_ID,F1.FAMILY_NAME,T.PRODUCT_ID From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID >0 --AND T.PRODUCT_ID IN (SELECT PRODUCT_ID FROM TBWC_PRODUCT_LOOKUP WHERE PRODUCT_ID=@PID)
 
 insert into TEMPNIH
 Select  F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F1.PARENT_FAMILY_ID,'',F.FAMILY_ID,F1.FAMILY_NAME,T.PRODUCT_ID From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID >0 --AND T.PRODUCT_ID IN (SELECT SUBPRODUCT_ID FROM TBWC_PRODUCT_LOOKUP WHERE PRODUCT_ID=@PID)
 END
IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
BEGIN
insert into TEMPNIH
Select F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F.FAMILY_ID,F1.FAMILY_NAME,'','',T.PRODUCT_ID From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c  where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID = 0 --AND T.PRODUCT_ID IN (SELECT PRODUCT_ID FROM TBWC_PRODUCT_LOOKUP WHERE PRODUCT_ID=@PID)
 
 insert into TEMPNIH
Select F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F.FAMILY_ID,F1.FAMILY_NAME,'','',T.PRODUCT_ID From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c  where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID = 0 --AND T.PRODUCT_ID IN (SELECT SUBPRODUCT_ID FROM TBWC_PRODUCT_LOOKUP WHERE PRODUCT_ID=@PID)
END
IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
BEGIN
 insert into TEMPNIH
Select F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F.FAMILY_ID,'','','',''  From TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c  where F.FAMILY_ID=F1.FAMILY_ID  AND 
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID = 0
EXCEPT 
  Select F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F1.PARENT_FAMILY_ID,'','','','' From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID >0 --AND T.PRODUCT_ID IN (SELECT PRODUCT_ID FROM TBWC_PRODUCT_LOOKUP WHERE PRODUCT_ID=@PID)

END

IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
  BEGIN
	SET @MAXHIERARCHY =(SELECT MAX(HIERARCHY_LEVEL) FROM Category_Function_top(@CATALOGID,@CATEGORYID))
	DECLARE @CATEGORY_ID nvarchar(100)
	DECLARE @CATEGORY_NAME NVARCHAR(100)
 DECLARE @HIERARCHY_LEVEL INT
 DECLARE @UPDAT CURSOR 
 SET @UPDAT = CURSOR FOR
 SELECT CATEGORY_ID,CATEGORY_NAME,HIERARCHY_LEVEL from Category_Function_top(@CATALOGID,@CATEGORYID)
 OPEN @UPDAT
 FETCH NEXT
 FROM @UPDAT INTO @CATEGORY_ID,@CATEGORY_NAME,@HIERARCHY_LEVEL
 WHILE @@FETCH_STATUS=0
  BEGIN
 IF(@MAXHIERARCHY=4)
   BEGIN 
	IF @HIERARCHY_LEVEL=0
		update TEMPNIH SET SUBCATID_L4=@CATEGORY_ID ,SUBCATNAME_L4=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=1
		update TEMPNIH SET SUBCATID_L3=@CATEGORY_ID ,SUBCATNAME_L3=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=2
		update TEMPNIH SET SUBCATID_L2=@CATEGORY_ID,SUBCATNAME_L2=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=3
		update TEMPNIH SET SUBCATID_L1=@CATEGORY_ID,SUBCATNAME_L1=@CATEGORY_NAME
	IF @HIERARCHY_LEVEL=4
		update TEMPNIH SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME 
  END
 IF(@MAXHIERARCHY=3)
   BEGIN
	IF @HIERARCHY_LEVEL=0
		update TEMPNIH SET SUBCATID_L3=@CATEGORY_ID ,SUBCATNAME_L3=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=1
		update TEMPNIH SET SUBCATID_L2=@CATEGORY_ID,SUBCATNAME_L2=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=2
		update TEMPNIH SET SUBCATID_L1=@CATEGORY_ID,SUBCATNAME_L1=@CATEGORY_NAME
	IF @HIERARCHY_LEVEL=3
		update TEMPNIH SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME
	END
 IF(@MAXHIERARCHY=2)		
	BEGIN
	IF @HIERARCHY_LEVEL=0
		update TEMPNIH SET SUBCATID_L2=@CATEGORY_ID,SUBCATNAME_L2=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=1
		update TEMPNIH SET SUBCATID_L1=@CATEGORY_ID,SUBCATNAME_L1=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=2
		update TEMPNIH SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME 
	END
 IF(@MAXHIERARCHY=1)
	BEGIN	
	IF @HIERARCHY_LEVEL=0
		update TEMPNIH SET SUBCATID_L1=@CATEGORY_ID,SUBCATNAME_L1=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=1
		update TEMPNIH SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME 
	END	
 IF(@MAXHIERARCHY=0)	
	BEGIN 
	IF @HIERARCHY_LEVEL=0
		update TEMPNIH SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME 
	 END		
FETCH NEXT 
FROM @UPDAT INTO  @CATEGORY_ID,@CATEGORY_NAME,@HIERARCHY_LEVEL
   END
CLOSE @UPDAT
DEALLOCATE @UPDAT
DECLARE @QUERY VARCHAR(MAX)='UPDATE  TEMPNIH SET  FAMILY_NAME = TF.FAMILY_NAME FROM TB_FAMILY TF
						WHERE TF.FAMILY_ID=TEMPNIH.FAMILY_ID'
EXEC(@QUERY)	
END
ELSE
  PRINT 'NO CATEGORY_ID'
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CATALOGSTUDIO5_NavigatorUpdate]    Script Date: 07/26/2012 17:40:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CATALOGSTUDIO5_NavigatorUpdate](@CATALOG_ID INT,@CATEGORY_ID NVARCHAR(50),@ITEM_ID NVARCHAR(20), @ITEMTYPE NVARCHAR(20), @ACTION  NVARCHAR(100))
AS
BEGIN  

DECLARE @ITEMCOUNT  INT , @TEMP_CATEGORYID NVARCHAR(50), @TEMP_FAMILYID INT, @TEMP_PARENT_CATEGORY NVARCHAR(50),@TEMP_PARENTID NVARCHAR(50), @CNT INT,@PRODUCT_ID INT,@ATTRIBUTE_ID INT

IF ((UPPER(@ACTION)='INSERT'))
BEGIN  

IF ((UPPER(@ITEMTYPE)='CATEGORY'))
BEGIN  

SET @TEMP_PARENTID = (SELECT PARENT_CATEGORY FROM TB_CATEGORY WHERE CATEGORY_ID = @CATEGORY_ID)

IF((SELECT MAX(SORT_ORDER) FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID AND CATEGORY_ID IN (SELECT CATEGORY_ID FROM TB_CATEGORY WHERE PARENT_CATEGORY = @TEMP_PARENTID )) IS NULL)
BEGIN
SET @ITEMCOUNT = 0
END
ELSE
BEGIN
SET @ITEMCOUNT = (SELECT MAX(SORT_ORDER) FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID AND CATEGORY_ID IN (SELECT CATEGORY_ID FROM TB_CATEGORY WHERE PARENT_CATEGORY = @TEMP_PARENTID ))
END

SET @ITEMCOUNT =  @ITEMCOUNT + 1

INSERT INTO TB_CATALOG_SECTIONS(CATALOG_ID,CATEGORY_ID,SORT_ORDER) VALUES(@CATALOG_ID,@CATEGORY_ID,@ITEMCOUNT)
      
END

IF ((UPPER(@ITEMTYPE)='FAMILY'))
BEGIN 

SET @TEMP_PARENTID = (SELECT PARENT_FAMILY_ID FROM TB_FAMILY WHERE FAMILY_ID = @ITEM_ID)
SET @TEMP_PARENT_CATEGORY = (SELECT CATEGORY_ID FROM TB_FAMILY WHERE FAMILY_ID = @ITEM_ID)


if(@TEMP_PARENTID = 0)
		BEGIN
			IF((SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID AND FAMILY_ID IN (SELECT FAMILY_ID FROM TB_FAMILY WHERE CATEGORY_ID = @TEMP_PARENT_CATEGORY )) IS NULL)
			BEGIN
			SET @ITEMCOUNT = 0
			END
			ELSE
			BEGIN
			SET @ITEMCOUNT = (SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID AND FAMILY_ID IN (SELECT FAMILY_ID FROM TB_FAMILY WHERE CATEGORY_ID = @TEMP_PARENT_CATEGORY ))
			END
		END
ELSE
		BEGIN
			IF((SELECT MAX(TB_SUBFAMILY.SORT_ORDER) FROM TB_SUBFAMILY INNER JOIN
			TB_CATALOG_FAMILY ON TB_SUBFAMILY.SUBFAMILY_ID = TB_CATALOG_FAMILY.FAMILY_ID
			WHERE TB_CATALOG_FAMILY.CATALOG_ID = @CATALOG_ID AND TB_SUBFAMILY.SUBFAMILY_ID IN (SELECT SUBFAMILY_ID FROM TB_SUBFAMILY WHERE FAMILY_ID = @TEMP_PARENTID)) IS NULL)
			BEGIN
			SET @ITEMCOUNT = 0
			END
			ELSE

			BEGIN
			SET @ITEMCOUNT = (SELECT MAX(TB_SUBFAMILY.SORT_ORDER) FROM TB_SUBFAMILY INNER JOIN
			TB_CATALOG_FAMILY ON TB_SUBFAMILY.SUBFAMILY_ID = TB_CATALOG_FAMILY.FAMILY_ID
			WHERE TB_CATALOG_FAMILY.CATALOG_ID = @CATALOG_ID AND TB_SUBFAMILY.SUBFAMILY_ID IN (SELECT SUBFAMILY_ID FROM TB_SUBFAMILY WHERE FAMILY_ID = @TEMP_PARENTID))
		END
END

SET @ITEMCOUNT =  @ITEMCOUNT + 1
SET @TEMP_PARENT_CATEGORY = (SELECT CATEGORY_ID FROM TB_FAMILY WHERE FAMILY_ID = @ITEM_ID)

	IF(@TEMP_PARENTID = 0)
	BEGIN
	INSERT INTO TB_CATALOG_FAMILY(CATALOG_ID,FAMILY_ID,SORT_ORDER,CATEGORY_ID) VALUES(@CATALOG_ID,@ITEM_ID,@ITEMCOUNT,@TEMP_PARENT_CATEGORY)
	INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME,IS_DEFAULT) VALUES(@CATALOG_ID,@ITEM_ID,'<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable"><SummaryGroupField></SummaryGroupField><TableGroupField></TableGroupField><PlaceHolderText><![CDATA[]]></PlaceHolderText><DisplayRowHeader>True</DisplayRowHeader><DisplayColumnHeader>False</DisplayColumnHeader><DisplaySummaryHeader>False</DisplaySummaryHeader><VerticalTable>False</VerticalTable><PivotHeaderText><![CDATA[]]></PivotHeaderText><MergeRowHeader></MergeRowHeader><MergeSummaryFields></MergeSummaryFields></TradingBell>','Default Layout',1)
	END 
	ELSE
	BEGIN
	INSERT INTO TB_CATALOG_FAMILY(CATALOG_ID,FAMILY_ID,SORT_ORDER,CATEGORY_ID) VALUES(@CATALOG_ID,@ITEM_ID,@ITEMCOUNT,@TEMP_PARENT_CATEGORY)
	INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME,IS_DEFAULT) VALUES(@CATALOG_ID,@ITEM_ID,'<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable"><SummaryGroupField></SummaryGroupField><TableGroupField></TableGroupField><PlaceHolderText><![CDATA[]]></PlaceHolderText><DisplayRowHeader>True</DisplayRowHeader><DisplayColumnHeader>False</DisplayColumnHeader><DisplaySummaryHeader>False</DisplaySummaryHeader><VerticalTable>False</VerticalTable><PivotHeaderText><![CDATA[]]></PivotHeaderText><MergeRowHeader></MergeRowHeader><MergeSummaryFields></MergeSummaryFields></TradingBell>','Default Layout',1)
	UPDATE TB_SUBFAMILY SET SORT_ORDER = @ITEMCOUNT WHERE FAMILY_ID = @TEMP_PARENTID AND SUBFAMILY_ID = @ITEM_ID
	END
    
				DECLARE CURSOR3 CURSOR FOR 
				SELECT ATTRIBUTE_ID FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@ITEM_ID
				OPEN CURSOR3
				FETCH NEXT FROM CURSOR3 INTO @ATTRIBUTE_ID
				WHILE @@FETCH_STATUS=0
				BEGIN
					IF NOT EXISTS (SELECT CATALOG_ID,ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@CATALOG_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID)
 					BEGIN	
						INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID) VALUES(@CATALOG_ID,@ATTRIBUTE_ID)
					END
					FETCH NEXT FROM CURSOR3 INTO @ATTRIBUTE_ID
				END
				CLOSE CURSOR3
				DEALLOCATE CURSOR3  

	DECLARE CURSOR1 CURSOR FOR 
	SELECT PRODUCT_ID FROM TB_PROD_FAMILY WHERE FAMILY_ID=@ITEM_ID
	OPEN CURSOR1
	FETCH NEXT FROM CURSOR1 INTO @PRODUCT_ID
	WHILE @@FETCH_STATUS=0
	BEGIN
		IF NOT EXISTS (SELECT CATALOG_ID ,PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID=@CATALOG_ID AND PRODUCT_ID=@PRODUCT_ID)
		BEGIN
			INSERT INTO TB_CATALOG_PRODUCT(CATALOG_ID,PRODUCT_ID) VALUES(@CATALOG_ID,@PRODUCT_ID)
		END
				DECLARE CURSOR2 CURSOR FOR 
				SELECT ATTRIBUTE_ID FROM TB_PROD_SPECS WHERE PRODUCT_ID=@PRODUCT_ID
				OPEN CURSOR2
				FETCH NEXT FROM CURSOR2 INTO @ATTRIBUTE_ID
				WHILE @@FETCH_STATUS=0
				BEGIN
					IF NOT EXISTS (SELECT CATALOG_ID,ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@CATALOG_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID)
 					BEGIN	
						INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID) VALUES(@CATALOG_ID,@ATTRIBUTE_ID)
					END
					FETCH NEXT FROM CURSOR2 INTO @ATTRIBUTE_ID
				END
				CLOSE CURSOR2
				DEALLOCATE CURSOR2  
		
		FETCH NEXT FROM CURSOR1 INTO @PRODUCT_ID
	END
	CLOSE CURSOR1
	DEALLOCATE CURSOR1   

DECLARE CURSOR6 CURSOR FOR 
	SELECT PRODUCT_ID FROM TB_PROD_FAMILY WHERE FAMILY_ID=@ITEM_ID
	OPEN CURSOR6
	FETCH NEXT FROM CURSOR6 INTO @PRODUCT_ID
	WHILE @@FETCH_STATUS=0
	BEGIN		
				DECLARE CURSOR7 CURSOR FOR 
				SELECT ATTRIBUTE_ID FROM TB_PARTS_KEY WHERE FAMILY_ID=@ITEM_ID AND PRODUCT_ID=@PRODUCT_ID
				OPEN CURSOR7
				FETCH NEXT FROM CURSOR7 INTO @ATTRIBUTE_ID
				WHILE @@FETCH_STATUS=0
				BEGIN
					IF NOT EXISTS (SELECT CATALOG_ID,ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@CATALOG_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID)
 					BEGIN	
						INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID) VALUES(@CATALOG_ID,@ATTRIBUTE_ID)
					END
					FETCH NEXT FROM CURSOR7 INTO @ATTRIBUTE_ID
				END
				CLOSE CURSOR7
				DEALLOCATE CURSOR7  
		
		FETCH NEXT FROM CURSOR6 INTO @PRODUCT_ID
	END
	CLOSE CURSOR6
	DEALLOCATE CURSOR6     

END
END

IF ((UPPER(@ACTION)='INSERTALL'))
BEGIN

		IF((SELECT MAX(SORT_ORDER) FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID AND CATEGORY_ID IN (SELECT CATEGORY_ID FROM TB_CATEGORY WHERE PARENT_CATEGORY = '0'  )) IS NULL)
		BEGIN
		SET @ITEMCOUNT = 0
		END
		ELSE
		BEGIN
		SET @ITEMCOUNT = (SELECT MAX(SORT_ORDER) FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID AND CATEGORY_ID IN (SELECT CATEGORY_ID FROM TB_CATEGORY WHERE PARENT_CATEGORY = '0'  ))
		END

		SET @ITEMCOUNT =  @ITEMCOUNT + 1
		
		IF((SELECT COUNT(@ITEM_ID) FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID AND CATEGORY_ID = @CATEGORY_ID) = 0)
		BEGIN
		INSERT INTO TB_CATALOG_SECTIONS(CATALOG_ID,CATEGORY_ID,SORT_ORDER) VALUES(@CATALOG_ID,@CATEGORY_ID,@ITEMCOUNT)
		END
		
		EXEC STP_CATALOGSTUDIO5_NavigatorInsertCategories @CATALOG_ID ,@CATEGORY_ID
				
		DECLARE CURSOR_FAMILY  CURSOR LOCAL  FOR  
		SELECT FAMILY_ID,CATEGORY_ID FROM TB_FAMILY WHERE PARENT_FAMILY_ID = '0' AND CATEGORY_ID = @CATEGORY_ID
		ORDER BY FAMILY_NAME ASC 
		
		OPEN CURSOR_FAMILY   
		FETCH NEXT FROM CURSOR_FAMILY INTO @TEMP_FAMILYID, @TEMP_PARENT_CATEGORY
		WHILE @@FETCH_STATUS = 0
		BEGIN

		IF((SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID AND FAMILY_ID IN (SELECT FAMILY_ID FROM TB_FAMILY WHERE CATEGORY_ID = @TEMP_PARENT_CATEGORY)) IS NULL)
		BEGIN
		SET @ITEMCOUNT = 0
		END
		ELSE
		BEGIN
		SET @ITEMCOUNT = (SELECT MAX(SORT_ORDER) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID AND FAMILY_ID IN (SELECT FAMILY_ID FROM TB_FAMILY WHERE CATEGORY_ID = @TEMP_PARENT_CATEGORY))
		END		
													
		SET @ITEMCOUNT =  @ITEMCOUNT + 1
		
		IF((SELECT COUNT(FAMILY_ID) FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID AND FAMILY_ID = @TEMP_FAMILYID) = 0)
		BEGIN
		INSERT INTO TB_CATALOG_FAMILY(CATALOG_ID,FAMILY_ID,SORT_ORDER,CATEGORY_ID) VALUES(@CATALOG_ID,@TEMP_FAMILYID,@ITEMCOUNT,@TEMP_PARENT_CATEGORY)
		INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME,IS_DEFAULT) VALUES(@CATALOG_ID,@TEMP_FAMILYID,'<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable"><SummaryGroupField></SummaryGroupField><TableGroupField></TableGroupField><PlaceHolderText><![CDATA[]]></PlaceHolderText><DisplayRowHeader>True</DisplayRowHeader><DisplayColumnHeader>False</DisplayColumnHeader><DisplaySummaryHeader>False</DisplaySummaryHeader><VerticalTable>False</VerticalTable><PivotHeaderText><![CDATA[]]></PivotHeaderText><MergeRowHeader></MergeRowHeader><MergeSummaryFields></MergeSummaryFields></TradingBell>','Default Layout',1)

				DECLARE CURSOR3 CURSOR FOR 
				SELECT ATTRIBUTE_ID FROM TB_FAMILY_SPECS WHERE FAMILY_ID=@TEMP_FAMILYID
				OPEN CURSOR3
				FETCH NEXT FROM CURSOR3 INTO @ATTRIBUTE_ID
				WHILE @@FETCH_STATUS=0
				BEGIN
					IF NOT EXISTS (SELECT CATALOG_ID,ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@CATALOG_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID)
 					BEGIN	
						INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID) VALUES(@CATALOG_ID,@ATTRIBUTE_ID)
					END
					FETCH NEXT FROM CURSOR3 INTO @ATTRIBUTE_ID
				END
				CLOSE CURSOR3
				DEALLOCATE CURSOR3  

	DECLARE CURSOR1 CURSOR FOR 
	SELECT PRODUCT_ID FROM TB_PROD_FAMILY WHERE FAMILY_ID=@TEMP_FAMILYID
	OPEN CURSOR1
	FETCH NEXT FROM CURSOR1 INTO @PRODUCT_ID
	WHILE @@FETCH_STATUS=0
	BEGIN
		IF NOT EXISTS (SELECT CATALOG_ID ,PRODUCT_ID FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID=@CATALOG_ID AND PRODUCT_ID=@PRODUCT_ID)
		BEGIN
			INSERT INTO TB_CATALOG_PRODUCT(CATALOG_ID,PRODUCT_ID) VALUES(@CATALOG_ID,@PRODUCT_ID)
		END
				DECLARE CURSOR2 CURSOR FOR 
				SELECT ATTRIBUTE_ID FROM TB_PROD_SPECS WHERE PRODUCT_ID=@PRODUCT_ID
				OPEN CURSOR2
				FETCH NEXT FROM CURSOR2 INTO @ATTRIBUTE_ID
				WHILE @@FETCH_STATUS=0
				BEGIN
					IF NOT EXISTS (SELECT CATALOG_ID,ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@CATALOG_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID)
 					BEGIN	
						INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID) VALUES(@CATALOG_ID,@ATTRIBUTE_ID)
					END
					FETCH NEXT FROM CURSOR2 INTO @ATTRIBUTE_ID
				END
				CLOSE CURSOR2
				DEALLOCATE CURSOR2  
	FETCH NEXT FROM CURSOR1 INTO @PRODUCT_ID
	END
	CLOSE CURSOR1
	DEALLOCATE CURSOR1  

DECLARE CURSOR6_1 CURSOR FOR 
	SELECT PRODUCT_ID FROM TB_PROD_FAMILY WHERE FAMILY_ID=@TEMP_FAMILYID
	OPEN CURSOR6_1
	FETCH NEXT FROM CURSOR6_1 INTO @PRODUCT_ID
	WHILE @@FETCH_STATUS=0
	BEGIN		
				DECLARE CURSOR7_1 CURSOR FOR 
				SELECT ATTRIBUTE_ID FROM TB_PARTS_KEY WHERE FAMILY_ID=@TEMP_FAMILYID AND PRODUCT_ID=@PRODUCT_ID
				OPEN CURSOR7
				FETCH NEXT FROM CURSOR7_1 INTO @ATTRIBUTE_ID
				WHILE @@FETCH_STATUS=0
				BEGIN
					IF NOT EXISTS (SELECT CATALOG_ID,ATTRIBUTE_ID FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID=@CATALOG_ID AND ATTRIBUTE_ID=@ATTRIBUTE_ID)
 					BEGIN	
						INSERT INTO TB_CATALOG_ATTRIBUTES(CATALOG_ID,ATTRIBUTE_ID) VALUES(@CATALOG_ID,@ATTRIBUTE_ID)
					END
					FETCH NEXT FROM CURSOR7_1 INTO @ATTRIBUTE_ID
				END
				CLOSE CURSOR7_1
				DEALLOCATE CURSOR7  
		
		FETCH NEXT FROM CURSOR6_1 INTO @PRODUCT_ID
	END
	CLOSE CURSOR6_1
	DEALLOCATE CURSOR6_1 

		END			
		
		EXEC STP_CATALOGSTUDIO5_NavigatorInsertFamilies @CATALOG_ID ,@TEMP_FAMILYID
			
		FETCH NEXT FROM CURSOR_FAMILY INTO @TEMP_FAMILYID, @TEMP_PARENT_CATEGORY 
		END
			CLOSE CURSOR_FAMILY
			DEALLOCATE CURSOR_FAMILY

END

IF ((UPPER(@ACTION)='REMOVEALL'))
BEGIN   

DELETE FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID = @CATALOG_ID

DELETE FROM TB_CATALOG_FAMILY WHERE CATALOG_ID = @CATALOG_ID

DELETE FROM TB_CATALOG_PRODUCT WHERE CATALOG_ID = @CATALOG_ID

DELETE FROM TB_CATALOG_ATTRIBUTES WHERE CATALOG_ID = @CATALOG_ID AND ATTRIBUTE_ID <> 1

END

END
GO
/****** Object:  StoredProcedure [dbo].[CATALOG_HIERARCHY]    Script Date: 07/26/2012 17:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATALOG_HIERARCHY](@CATEGORY_ID1 AS NVARCHAR(50),@CATALOGID INT)
AS 
BEGIN
DECLARE @MAXHIERARCHY INT;
DECLARE @Family_ID INT;
DECLARE @CATEGORYID NVARCHAR(100);
SET @CATEGORYID= (SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1);
IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
BEGIN
insert into TEMPHEATCRAFT
 Select  F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F1.PARENT_FAMILY_ID,'',F.FAMILY_ID,F1.FAMILY_NAME,T.PRODUCT_ID From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID >0
 END
IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
BEGIN
insert into TEMPHEATCRAFT
Select F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F.FAMILY_ID,F1.FAMILY_NAME,'','',T.PRODUCT_ID From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c  where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID = 0
END
IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
BEGIN
 insert into TEMPHEATCRAFT
Select F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F.FAMILY_ID,'','','',''  From TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c  where F.FAMILY_ID=F1.FAMILY_ID  AND 
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID = 0 
EXCEPT 
  Select F.CATALOG_ID,c.CATALOG_NAME,'','','','','','','','','','',F1.PARENT_FAMILY_ID,'','','','' From TB_PROD_FAMILY T,TB_CATALOG_FAMILY F,TB_FAMILY F1,TB_CATALOG c where F.FAMILY_ID=F1.FAMILY_ID  AND  T.FAMILY_ID=F.FAMILY_ID AND
 F.CATALOG_ID=c.CATALOG_ID AND F.CATEGORY_ID=@CATEGORY_ID1 and F.CATALOG_ID=@CATALOGID and PARENT_FAMILY_ID >0
 
END

IF EXISTS(SELECT Distinct CATEGORY_ID FROM TB_CATALOG_FAMILY WHERE CATEGORY_ID=@CATEGORY_ID1)
  BEGIN
	SET @MAXHIERARCHY =(SELECT MAX(HIERARCHY_LEVEL) FROM Category_Function_top(@CATALOGID,@CATEGORYID))
	DECLARE @CATEGORY_ID nvarchar(100)
	DECLARE @CATEGORY_NAME NVARCHAR(100)
 DECLARE @HIERARCHY_LEVEL INT
 DECLARE @UPDAT CURSOR 
 SET @UPDAT = CURSOR FOR
 SELECT CATEGORY_ID,CATEGORY_NAME,HIERARCHY_LEVEL from Category_Function_top(@CATALOGID,@CATEGORYID)
 OPEN @UPDAT
 FETCH NEXT
 FROM @UPDAT INTO @CATEGORY_ID,@CATEGORY_NAME,@HIERARCHY_LEVEL
 WHILE @@FETCH_STATUS=0
  BEGIN
 IF(@MAXHIERARCHY=4)
   BEGIN 
	IF @HIERARCHY_LEVEL=0
		update TEMPHEATCRAFT SET SUBCATID_L4=@CATEGORY_ID ,SUBCATNAME_L4=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=1
		update TEMPHEATCRAFT SET SUBCATID_L3=@CATEGORY_ID ,SUBCATNAME_L3=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=2
		update TEMPHEATCRAFT SET SUBCATID_L2=@CATEGORY_ID,SUBCATNAME_L2=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=3
		update TEMPHEATCRAFT SET SUBCATID_L1=@CATEGORY_ID,SUBCATNAME_L1=@CATEGORY_NAME
	IF @HIERARCHY_LEVEL=4
		update TEMPHEATCRAFT SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME 
  END
 IF(@MAXHIERARCHY=3)
   BEGIN
	IF @HIERARCHY_LEVEL=0
		update TEMPHEATCRAFT SET SUBCATID_L3=@CATEGORY_ID ,SUBCATNAME_L3=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=1
		update TEMPHEATCRAFT SET SUBCATID_L2=@CATEGORY_ID,SUBCATNAME_L2=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=2
		update TEMPHEATCRAFT SET SUBCATID_L1=@CATEGORY_ID,SUBCATNAME_L1=@CATEGORY_NAME
	IF @HIERARCHY_LEVEL=3
		update TEMPHEATCRAFT SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME
	END
 IF(@MAXHIERARCHY=2)		
	BEGIN
	IF @HIERARCHY_LEVEL=0
		update TEMPHEATCRAFT SET SUBCATID_L2=@CATEGORY_ID,SUBCATNAME_L2=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=1
		update TEMPHEATCRAFT SET SUBCATID_L1=@CATEGORY_ID,SUBCATNAME_L1=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=2
		update TEMPHEATCRAFT SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME 
	END
 IF(@MAXHIERARCHY=1)
	BEGIN	
	IF @HIERARCHY_LEVEL=0
		update TEMPHEATCRAFT SET SUBCATID_L1=@CATEGORY_ID,SUBCATNAME_L1=@CATEGORY_NAME 
	IF @HIERARCHY_LEVEL=1
		update TEMPHEATCRAFT SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME 
	END	
 IF(@MAXHIERARCHY=0)	
	BEGIN 
	IF @HIERARCHY_LEVEL=0
		update TEMPHEATCRAFT SET CATEGORY_ID=@CATEGORY_ID,CATEGORY_NAME=@CATEGORY_NAME 
	 END		
FETCH NEXT 
FROM @UPDAT INTO  @CATEGORY_ID,@CATEGORY_NAME,@HIERARCHY_LEVEL
   END
CLOSE @UPDAT
DEALLOCATE @UPDAT
DECLARE @QUERY VARCHAR(MAX)='UPDATE  TEMPHEATCRAFT SET  FAMILY_NAME = TF.FAMILY_NAME FROM TB_FAMILY TF
						WHERE TF.FAMILY_ID=TEMPHEATCRAFT.FAMILY_ID'
EXEC(@QUERY)	
END
ELSE
  PRINT 'NO CATEGORY_ID'
END
GO
/****** Object:  StoredProcedure [dbo].[STP_CUSTOM_REPORT]    Script Date: 07/26/2012 17:40:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CUSTOM_REPORT](@CATALOG_ID INT=2,@CATEGORY_ID varchar(MAX)='HC067')
AS
BEGIN
DECLARE @ATTR_ID INT
DECLARE @PROD_ID INT
DECLARE @CAT_ID NVARCHAR(50)
DECLARE @FAM_ID INT
DECLARE @FAM_NAME NVARCHAR(400) 
DECLARE @CAT_COUNT INT
DECLARE @ATTRIBUTE_ID INT
DECLARE @ATTRIBUTE_NAME NVARCHAR(100)
DECLARE @ATTRIBUTE_TYPE INT
DECLARE @ALT_QUERY NVARCHAR(MAX)
DECLARE @UPD_QUERY NVARCHAR(MAX)

SELECT @ATTR_ID=ATTRIBUTE_ID FROM TB_ATTRIBUTE WHERE ATTRIBUTE_NAME LIKE 'Cat #'
CREATE TABLE #TMP_PROD_CAT(PRODUCT_ID INT,CATEGORY_ID NVARCHAR(50),FAMILY_ID INT,FAMILY_NAME NVARCHAR(400))
INSERT INTO #TMP_PROD_CAT(PRODUCT_ID,CATEGORY_ID,FAMILY_ID,FAMILY_NAME)
	SELECT	DISTINCT TPS.PRODUCT_ID,TCF.CATEGORY_ID,TCF.FAMILY_ID,TF.FAMILY_NAME 
		FROM TB_PROD_SPECS TPS,TB_PROD_FAMILY TPF,TB_CATALOG_PRODUCT TCP,TB_CATALOG_FAMILY TCF,TB_FAMILY TF
		WHERE ATTRIBUTE_ID=@ATTR_ID AND TPF.PRODUCT_ID=TPS.PRODUCT_ID AND TCP.PRODUCT_ID=TPF.PRODUCT_ID
		AND TCF.FAMILY_ID=TPF.FAMILY_ID AND TCF.CATALOG_ID=@CATALOG_ID AND TF.FAMILY_ID=TPF.FAMILY_ID
		AND TCP.CATALOG_ID=@CATALOG_ID and TF.CATEGORY_ID=@CATEGORY_ID 
		
CREATE INDEX #IDX_TMP_PROD_CAT ON #TMP_PROD_CAT(PRODUCT_ID,CATEGORY_ID,FAMILY_ID)		
			
CREATE TABLE #TMP_CUSTOM_REPORT_PRODUCT
	(
	PRODUCT_ID INT,
	CATEGORY_ID NVARCHAR(MAX),
	CATEGORY_NAME NVARCHAR(MAX),
	SUBCATID_L1 NVARCHAR(MAX),
	SUBCATNAME_L1 NVARCHAR(MAX),
	SUBCATID_L2 NVARCHAR(MAX),
	SUBCATNAME_L2 NVARCHAR(MAX),
	SUBCATID_L3 NVARCHAR(MAX),
	SUBCATNAME_L3 NVARCHAR(MAX),
	FAMILY_ID INT,
	FAMILY_NAME NVARCHAR(MAX),
	--[VENDOR #] NVARCHAR(500),
	--SUPPLIER NVARCHAR(500),
	--MANUFACTURER NVARCHAR(500)
)
CREATE INDEX #IDX_TMP_CUSTOM_REPORT_PRODUCT ON #TMP_CUSTOM_REPORT_PRODUCT(PRODUCT_ID,FAMILY_ID)

DECLARE CURCATPRODUCT CURSOR FOR 
SELECT * FROM #TMP_PROD_CAT
OPEN CURCATPRODUCT
FETCH NEXT FROM CURCATPRODUCT INTO @PROD_ID,@CAT_ID,@FAM_ID,@FAM_NAME
WHILE @@FETCH_STATUS=0  	
BEGIN
INSERT INTO #TMP_CUSTOM_REPORT_PRODUCT(PRODUCT_ID,FAMILY_ID,FAMILY_NAME)VALUES(@PROD_ID,@FAM_ID,@FAM_NAME)

SELECT * INTO #TMP_CAT FROM
(SELECT	CATALOG_ID,CATALOG_NAME,CATEGORY_ID,CATEGORY_NAME,PARENT_CATEGORY,HIERARCHY_LEVEL 
	FROM CATEGORY_FUNCTION_TOP(@CATALOG_ID,@CAT_ID)) A
			
SELECT @CAT_COUNT=MAX(HIERARCHY_LEVEL)FROM #TMP_CAT
		IF 	@CAT_COUNT=3
		BEGIN			
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET CATEGORY_ID=TC.CATEGORY_ID,CATEGORY_NAME=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=3 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET SUBCATID_L1=TC.CATEGORY_ID,SUBCATNAME_L1=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=2 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET SUBCATID_L2=TC.CATEGORY_ID,SUBCATNAME_L2=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=1 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET SUBCATID_L3=TC.CATEGORY_ID,SUBCATNAME_L3=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=0 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
							
		END
		ELSE IF @CAT_COUNT=2
		BEGIN
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET CATEGORY_ID=TC.CATEGORY_ID,CATEGORY_NAME=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=2 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET SUBCATID_L1=TC.CATEGORY_ID,SUBCATNAME_L1=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=1 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET SUBCATID_L2=TC.CATEGORY_ID,SUBCATNAME_L2=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=0 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
		END
		ELSE IF @CAT_COUNT=1
		BEGIN
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET CATEGORY_ID=TC.CATEGORY_ID,CATEGORY_NAME=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=1 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET SUBCATID_L1=TC.CATEGORY_ID,SUBCATNAME_L1=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=0 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
		END
		ELSE IF @CAT_COUNT=0
		BEGIN
UPDATE #TMP_CUSTOM_REPORT_PRODUCT SET CATEGORY_ID=TC.CATEGORY_ID,CATEGORY_NAME=TC.CATEGORY_NAME FROM #TMP_CAT TC
					WHERE TC.HIERARCHY_LEVEL=0 AND PRODUCT_ID=@PROD_ID AND FAMILY_ID=@FAM_ID
		END	
DROP TABLE #TMP_CAT	
FETCH NEXT FROM CURCATPRODUCT INTO @PROD_ID,@CAT_ID,@FAM_ID,@FAM_NAME
END
CLOSE CURCATPRODUCT
DEALLOCATE CURCATPRODUCT


DECLARE CURFAMATTR CURSOR FOR
SELECT	DISTINCT TFS.ATTRIBUTE_ID,UPPER(ATTRIBUTE_NAME),ATTRIBUTE_TYPE FROM TB_FAMILY_SPECS TFS,TB_ATTRIBUTE TA,#TMP_PROD_CAT TPC 
			WHERE TFS.FAMILY_ID=TPC.FAMILY_ID AND TFS.ATTRIBUTE_ID=TA.ATTRIBUTE_ID 
	OPEN CURFAMATTR
	FETCH NEXT FROM CURFAMATTR INTO @ATTRIBUTE_ID,@ATTRIBUTE_NAME,@ATTRIBUTE_TYPE
	WHILE @@FETCH_STATUS=0  
	BEGIN
			IF @ATTRIBUTE_TYPE=4
			BEGIN			
SET @ALT_QUERY='ALTER TABLE #TMP_CUSTOM_REPORT_PRODUCT ADD ['+ @ATTRIBUTE_NAME + ']  DECIMAL(19,6)'
				EXEC(@ALT_QUERY)
SET @UPD_QUERY='UPDATE  #TMP_CUSTOM_REPORT_PRODUCT SET [' + @ATTRIBUTE_NAME + ']=TFS.NUMERIC_VALUE FROM TB_FAMILY_SPECS TFS
						WHERE TFS.FAMILY_ID=#TMP_CUSTOM_REPORT_PRODUCT.FAMILY_ID AND TFS.ATTRIBUTE_ID=' + CAST(@ATTRIBUTE_ID AS NVARCHAR)
				EXEC(@UPD_QUERY)					
			END
			ELSE
			BEGIN			
SET @ALT_QUERY='ALTER TABLE #TMP_CUSTOM_REPORT_PRODUCT ADD ['+ @ATTRIBUTE_NAME + '] NVARCHAR(4000)'
				EXEC(@ALT_QUERY)
SET @UPD_QUERY='UPDATE  #TMP_CUSTOM_REPORT_PRODUCT SET [' + @ATTRIBUTE_NAME + ']='''';UPDATE  #TMP_CUSTOM_REPORT_PRODUCT SET [' + @ATTRIBUTE_NAME + ']=TFS.STRING_VALUE FROM TB_FAMILY_SPECS TFS
						WHERE TFS.FAMILY_ID=#TMP_CUSTOM_REPORT_PRODUCT.FAMILY_ID AND TFS.ATTRIBUTE_ID=' + CAST(@ATTRIBUTE_ID AS NVARCHAR)
				EXEC(@UPD_QUERY)			
			END
	FETCH NEXT FROM CURFAMATTR INTO @ATTRIBUTE_ID,@ATTRIBUTE_NAME,@ATTRIBUTE_TYPE
	END
	CLOSE CURFAMATTR
	DEALLOCATE CURFAMATTR

		
/* product level*/
		
	DECLARE CURPRODATTR CURSOR FOR
SELECT	DISTINCT TPS.ATTRIBUTE_ID,UPPER(ATTRIBUTE_NAME),ATTRIBUTE_TYPE FROM TB_PROD_SPECS TPS,TB_ATTRIBUTE TA,#TMP_PROD_CAT TPC 
			WHERE TPS.PRODUCT_ID=TPC.PRODUCT_ID AND TPS.ATTRIBUTE_ID=TA.ATTRIBUTE_ID 
	OPEN CURPRODATTR
	FETCH NEXT FROM CURPRODATTR INTO @ATTRIBUTE_ID,@ATTRIBUTE_NAME,@ATTRIBUTE_TYPE
	WHILE @@FETCH_STATUS=0  
	BEGIN
			IF @ATTRIBUTE_TYPE=4
			BEGIN			
SET @ALT_QUERY='ALTER TABLE #TMP_CUSTOM_REPORT_PRODUCT ADD ['+ @ATTRIBUTE_NAME + ']  DECIMAL(19,6)'
				EXEC(@ALT_QUERY)
SET @UPD_QUERY='UPDATE  #TMP_CUSTOM_REPORT_PRODUCT SET [' + @ATTRIBUTE_NAME + ']=TPS.NUMERIC_VALUE FROM TB_PROD_SPECS TPS
						WHERE TPS.PRODUCT_ID=#TMP_CUSTOM_REPORT_PRODUCT.PRODUCT_ID AND TPS.ATTRIBUTE_ID=' + CAST(@ATTRIBUTE_ID AS NVARCHAR)
				EXEC(@UPD_QUERY)					
			END
			ELSE
			BEGIN			
SET @ALT_QUERY='ALTER TABLE #TMP_CUSTOM_REPORT_PRODUCT ADD ['+ @ATTRIBUTE_NAME + '] NVARCHAR(500)'
				EXEC(@ALT_QUERY)
SET @UPD_QUERY='UPDATE  #TMP_CUSTOM_REPORT_PRODUCT SET [' + @ATTRIBUTE_NAME + ']='''';UPDATE  #TMP_CUSTOM_REPORT_PRODUCT SET [' + @ATTRIBUTE_NAME + ']=TPS.STRING_VALUE FROM TB_PROD_SPECS TPS
						WHERE TPS.PRODUCT_ID=#TMP_CUSTOM_REPORT_PRODUCT.PRODUCT_ID AND TPS.ATTRIBUTE_ID=' + CAST(@ATTRIBUTE_ID AS NVARCHAR)
				EXEC(@UPD_QUERY)			
			END
	FETCH NEXT FROM CURPRODATTR INTO @ATTRIBUTE_ID,@ATTRIBUTE_NAME,@ATTRIBUTE_TYPE
	END
	CLOSE CURPRODATTR
	DEALLOCATE CURPRODATTR



DROP TABLE #TMP_PROD_CAT
SELECT @CATALOG_ID AS CATALOG_ID,(SELECT CATALOG_NAME FROM TB_CATALOG WHERE CATALOG_ID=@CATALOG_ID) AS CATALOG_NAME,* FROM #TMP_CUSTOM_REPORT_PRODUCT ORDER BY PRODUCT_ID
DROP TABLE #TMP_CUSTOM_REPORT_PRODUCT
END
GO
/****** Object:  Default [DEFAULT_ONE_940789782]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  CONSTRAINT [DEFAULT_ONE_940789782]  DEFAULT ((1)) FOR [ATTRIBUTE_TYPE]
GO
/****** Object:  Default [DEFAULT_ONE_386737093]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  CONSTRAINT [DEFAULT_ONE_386737093]  DEFAULT ((1)) FOR [CREATE_BY_DEFAULT]
GO
/****** Object:  Default [DEFAULT_ZERO_510391787]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  CONSTRAINT [DEFAULT_ZERO_510391787]  DEFAULT ((0)) FOR [VALUE_REQUIRED]
GO
/****** Object:  Default [DEFAULT_ONE_909133444]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  CONSTRAINT [DEFAULT_ONE_909133444]  DEFAULT ((1)) FOR [PUBLISH2PRINT]
GO
/****** Object:  Default [DEFAULT_ONE_1933032377]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  CONSTRAINT [DEFAULT_ONE_1933032377]  DEFAULT ((1)) FOR [PUBLISH2WEB]
GO
/****** Object:  Default [DEFAULT_ONE_1245592963]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  CONSTRAINT [DEFAULT_ONE_1245592963]  DEFAULT ((1)) FOR [PUBLISH2CDROM]
GO
/****** Object:  Default [DEFAULT_ONE_2127055944]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  CONSTRAINT [DEFAULT_ONE_2127055944]  DEFAULT ((1)) FOR [PUBLISH2ODP]
GO
/****** Object:  Default [DEFAULT_ZERO_794243394]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  CONSTRAINT [DEFAULT_ZERO_794243394]  DEFAULT ((0)) FOR [USE_PICKLIST]
GO
/****** Object:  Default [DEFAULT_ZERO_1059874059]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  CONSTRAINT [DEFAULT_ZERO_1059874059]  DEFAULT ((0)) FOR [IS_CALCULATED]
GO
/****** Object:  Default [DF__TB_ATTRIB__CREAT__382F5661]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_ATTRIB__CREAT__39237A9A]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_ATTRIB__MODIF__3A179ED3]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_ATTRIB__MODIF__3B0BC30C]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_ATTRIBUTE] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_CAMPAI__CREAT__2BC97F7C]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CAMPAIGN_DETAILS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CAMPAI__CREAT__2CBDA3B5]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CAMPAIGN_DETAILS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CAMPAI__MODIF__2DB1C7EE]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CAMPAIGN_DETAILS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CAMPAI__MODIF__2EA5EC27]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CAMPAIGN_DETAILS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_CAMPAI__CREAT__73501C2F]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CAMPAIGN_RUN] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CAMPAI__CREAT__74444068]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CAMPAIGN_RUN] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CAMPAI__MODIF__753864A1]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CAMPAIGN_RUN] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CAMPAI__MODIF__762C88DA]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CAMPAIGN_RUN] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__1E6F845E]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__1F63A897]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__2057CCD0]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__214BF109]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__4865BE2A]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_ATTRIBUTES] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__4959E263]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_ATTRIBUTES] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__4A4E069C]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_ATTRIBUTES] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__4B422AD5]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_ATTRIBUTES] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__09746778]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_FAMILY] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__0A688BB1]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_FAMILY] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__0B5CAFEA]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_FAMILY] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__0C50D423]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_FAMILY] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__1A9EF37A]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_PRODUCT] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__1B9317B3]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_PRODUCT] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__1C873BEC]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_PRODUCT] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__1D7B6025]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_PRODUCT] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__00DF2177]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_SECTIONS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__01D345B0]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_SECTIONS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__02C769E9]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_SECTIONS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__03BB8E22]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_SECTIONS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__16CE6296]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_USER] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__CREAT__17C286CF]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_USER] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__18B6AB08]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_USER] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CATALO__MODIF__19AACF41]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATALOG_USER] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DEFAULT_ZERO_1047458264]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATEGORY] ADD  CONSTRAINT [DEFAULT_ZERO_1047458264]  DEFAULT ((0)) FOR [PARENT_CATEGORY]
GO
/****** Object:  Default [DF__TB_CATEGO__CREAT__05A3D694]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATEGORY] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CATEGO__CREAT__0697FACD]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATEGORY] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CATEGO__MODIF__078C1F06]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATEGORY] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CATEGO__MODIF__0880433F]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CATEGORY] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_COUNTR__CREAT__6F7F8B4B]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_COUNTRY] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_COUNTR__CREAT__7073AF84]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_COUNTRY] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_COUNTR__MODIF__7167D3BD]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_COUNTRY] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_COUNTR__MODIF__725BF7F6]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_COUNTRY] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_CUSTOM__CREAT__7DCDAAA2]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOM_TAGS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CUSTOM__CREAT__7EC1CEDB]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOM_TAGS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CUSTOM__MODIF__7FB5F314]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOM_TAGS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CUSTOM__MODIF__00AA174D]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOM_TAGS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DEFAULT_ZERO_99413384]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOMER] ADD  CONSTRAINT [DEFAULT_ZERO_99413384]  DEFAULT ((0)) FOR [CUSTOMER_DONT_CALL]
GO
/****** Object:  Default [DEFAULT_ZERO_1955959751]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOMER] ADD  CONSTRAINT [DEFAULT_ZERO_1955959751]  DEFAULT ((0)) FOR [CUSTOMER_SUSPEND_CALLING]
GO
/****** Object:  Default [DEFAULT_ZERO_68358009]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOMER] ADD  CONSTRAINT [DEFAULT_ZERO_68358009]  DEFAULT ((0)) FOR [CUSTOMER_DONT_MAIL]
GO
/****** Object:  Default [DF__TB_CUSTOM__CREAT__79FD19BE]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOMER] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_CUSTOM__CREAT__7AF13DF7]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOMER] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_CUSTOM__MODIF__7BE56230]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOMER] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_CUSTOM__MODIF__7CD98669]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_CUSTOMER] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DEFAULT_ZERO_1128152070]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY] ADD  CONSTRAINT [DEFAULT_ZERO_1128152070]  DEFAULT ((0)) FOR [PARENT_FAMILY_ID]
GO
/****** Object:  Default [DEFAULT_ONE_494496362]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY] ADD  CONSTRAINT [DEFAULT_ONE_494496362]  DEFAULT ((1)) FOR [ROOT_FAMILY]
GO
/****** Object:  Default [DEFAULT_ONE_585365487]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY] ADD  CONSTRAINT [DEFAULT_ONE_585365487]  DEFAULT ((1)) FOR [DISPLAY_TABLE_HEADER]
GO
/****** Object:  Default [DEFAULT_CATEGORY_1315191876]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY] ADD  CONSTRAINT [DEFAULT_CATEGORY_1315191876]  DEFAULT ('GC') FOR [CATEGORY_ID]
GO
/****** Object:  Default [DF__TB_FAMILY__CREAT__67DE6983]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_FAMILY__CREAT__68D28DBC]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_FAMILY__MODIF__69C6B1F5]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_FAMILY__MODIF__6ABAD62E]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_FAMILY__CREAT__589C25F3]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY_SPECS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_FAMILY__CREAT__59904A2C]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY_SPECS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_FAMILY__MODIF__5A846E65]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY_SPECS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_FAMILY__MODIF__5B78929E]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY_SPECS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF_TB_FAMILY_TABLE_STRUCTURE_CREATED_USER]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY_TABLE_STRUCTURE] ADD  CONSTRAINT [DF_TB_FAMILY_TABLE_STRUCTURE_CREATED_USER]  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF_TB_FAMILY_TABLE_STRUCTURE_CREATED_DATE]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY_TABLE_STRUCTURE] ADD  CONSTRAINT [DF_TB_FAMILY_TABLE_STRUCTURE_CREATED_DATE]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF_TB_FAMILY_TABLE_STRUCTURE_MODIFIED_USER]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY_TABLE_STRUCTURE] ADD  CONSTRAINT [DF_TB_FAMILY_TABLE_STRUCTURE_MODIFIED_USER]  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF_TB_FAMILY_TABLE_STRUCTURE_MODIFIED_DATE]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FAMILY_TABLE_STRUCTURE] ADD  CONSTRAINT [DF_TB_FAMILY_TABLE_STRUCTURE_MODIFIED_DATE]  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_FUNCTI__CREAT__603D47BB]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FUNCTION] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_FUNCTI__CREAT__61316BF4]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FUNCTION] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_FUNCTI__MODIF__6225902D]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FUNCTION] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_FUNCTI__MODIF__6319B466]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_FUNCTION] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_GLYPHS__CREAT__093F5D4E]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_GLYPHS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_GLYPHS__CREAT__0A338187]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_GLYPHS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_GLYPHS__MODIF__0B27A5C0]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_GLYPHS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_GLYPHS__MODIF__0C1BC9F9]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_GLYPHS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_OPTION__CREAT__056ECC6A]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_OPTIONS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_OPTION__CREAT__0662F0A3]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_OPTIONS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_OPTION__MODIF__075714DC]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_OPTIONS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_OPTION__MODIF__084B3915]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_OPTIONS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_PARTS___CREAT__5006DFF2]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PARTS_KEY] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PARTS___CREAT__50FB042B]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PARTS_KEY] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PARTS___MODIF__51EF2864]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PARTS_KEY] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PARTS___MODIF__52E34C9D]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PARTS_KEY] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_PICKLI__CREAT__44952D46]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PICKLIST] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PICKLI__CREAT__4589517F]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PICKLIST] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PICKLI__MODIF__467D75B8]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PICKLIST] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PICKLI__MODIF__477199F1]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PICKLIST] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DEFAULT_ZERO_778316327]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY] ADD  CONSTRAINT [DEFAULT_ZERO_778316327]  DEFAULT ((0)) FOR [SORT_ORDER]
GO
/****** Object:  Default [DEFAULT_ONE_1684105857]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY] ADD  CONSTRAINT [DEFAULT_ONE_1684105857]  DEFAULT ((1)) FOR [PUBLISH]
GO
/****** Object:  Default [DF__TB_PROD_F__CREAT__0F2D40CE]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PROD_F__CREAT__10216507]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PROD_F__MODIF__11158940]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PROD_F__MODIF__1209AD79]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DEFAULT_ZERO_1906458966]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY_ATTR_LIST] ADD  CONSTRAINT [DEFAULT_ZERO_1906458966]  DEFAULT ((0)) FOR [SORT_ORDER]
GO
/****** Object:  Default [DF__TB_PROD_F__CREAT__40C49C62]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY_ATTR_LIST] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PROD_F__CREAT__41B8C09B]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY_ATTR_LIST] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PROD_F__MODIF__42ACE4D4]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY_ATTR_LIST] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PROD_F__MODIF__43A1090D]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_FAMILY_ATTR_LIST] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_PROD_S__CREAT__12FDD1B2]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_SPECS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PROD_S__CREAT__13F1F5EB]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_SPECS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PROD_S__MODIF__14E61A24]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_SPECS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PROD_S__MODIF__15DA3E5D]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROD_SPECS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DEFAULT_ZERO_2017873191]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT] ADD  CONSTRAINT [DEFAULT_ZERO_2017873191]  DEFAULT ((0)) FOR [SINGLE_OR_KIT]
GO
/****** Object:  Default [DEFAULT_CATEGORY_1464876781]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT] ADD  CONSTRAINT [DEFAULT_CATEGORY_1464876781]  DEFAULT ('GC') FOR [CATEGORY_ID]
GO
/****** Object:  Default [DF__TB_PRODUC__CREAT__27F8EE98]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PRODUC__CREAT__28ED12D1]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PRODUC__MODIF__29E1370A]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PRODUC__MODIF__2AD55B43]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_PRODUC__CREAT__7849DB76]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT_KIT] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PRODUC__CREAT__793DFFAF]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT_KIT] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PRODUC__MODIF__7A3223E8]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT_KIT] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PRODUC__MODIF__7B264821]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PRODUCT_KIT] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_PROJEC__CREAT__22401542]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PROJEC__CREAT__2334397B]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PROJEC__MODIF__24285DB4]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PROJEC__MODIF__251C81ED]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DEFAULT_ZERO_1467030880]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT_SECTION_DETAILS] ADD  CONSTRAINT [DEFAULT_ZERO_1467030880]  DEFAULT ((0)) FOR [SORT_ORDER]
GO
/****** Object:  Default [DF__TB_PROJEC__CREAT__54CB950F]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT_SECTION_DETAILS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PROJEC__CREAT__55BFB948]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT_SECTION_DETAILS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PROJEC__MODIF__56B3DD81]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT_SECTION_DETAILS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PROJEC__MODIF__57A801BA]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT_SECTION_DETAILS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_PROJEC__CREAT__74794A92]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT_SECTIONS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_PROJEC__CREAT__756D6ECB]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT_SECTIONS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_PROJEC__MODIF__76619304]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT_SECTIONS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_PROJEC__MODIF__7755B73D]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_PROJECT_SECTIONS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_READON__CREAT__3BFFE745]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_READONLY_ATTRIBUTES] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_READON__CREAT__3CF40B7E]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_READONLY_ATTRIBUTES] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_READON__MODIF__3DE82FB7]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_READONLY_ATTRIBUTES] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_READON__MODIF__3EDC53F0]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_READONLY_ATTRIBUTES] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_REPORT__CREAT__1D4655FB]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_REPORTS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_REPORT__CREAT__1E3A7A34]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_REPORTS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_REPORT__MODIF__1F2E9E6D]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_REPORTS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_REPORT__MODIF__2022C2A6]    Script Date: 07/26/2012 17:39:31 ******/
ALTER TABLE [dbo].[TB_REPORTS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_ROLE__CREATED__70A8B9AE]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_ROLE] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_ROLE__CREATED__719CDDE7]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_ROLE] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_ROLE__MODIFIE__72910220]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_ROLE] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_ROLE__MODIFIE__73852659]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_ROLE] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_ROLE_F__CREAT__5C6CB6D7]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_ROLE_FUNCTIONS] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_ROLE_F__CREAT__5D60DB10]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_ROLE_FUNCTIONS] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_ROLE_F__MODIF__5E54FF49]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_ROLE_FUNCTIONS] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_ROLE_F__MODIF__5F492382]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_ROLE_FUNCTIONS] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_STATE__CREATE__6BAEFA67]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_STATE] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_STATE__CREATE__6CA31EA0]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_STATE] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_STATE__MODIFI__6D9742D9]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_STATE] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_STATE__MODIFI__6E8B6712]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_STATE] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_SUBFAM__CREAT__4C364F0E]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_SUBFAMILY] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_SUBFAM__CREAT__4D2A7347]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_SUBFAMILY] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_SUBFAM__MODIF__4E1E9780]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_SUBFAMILY] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_SUBFAM__MODIF__4F12BBB9]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_SUBFAMILY] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_SUPPLI__CREAT__1975C517]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_SUPPLIER] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_SUPPLI__CREAT__1A69E950]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_SUPPLIER] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_SUPPLI__MODIF__1B5E0D89]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_SUPPLIER] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_SUPPLI__MODIF__1C5231C2]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_SUPPLIER] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_TASK__CREATED__15A53433]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_TASK] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_TASK__CREATED__1699586C]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_TASK] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_TASK__MODIFIE__178D7CA5]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_TASK] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_TASK__MODIFIE__1881A0DE]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_TASK] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_TEMPLA__CREAT__11D4A34F]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_TEMPLATE] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_TEMPLA__CREAT__12C8C788]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_TEMPLATE] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_TEMPLA__MODIF__13BCEBC1]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_TEMPLATE] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_TEMPLA__MODIF__14B10FFA]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_TEMPLATE] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_UOM__CREATED___6CD828CA]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_UOM] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_UOM__CREATED___6DCC4D03]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_UOM] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_UOM__MODIFIED__6EC0713C]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_UOM] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_UOM__MODIFIED__6FB49575]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_UOM] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_UOM_CO__CREAT__690797E6]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_UOM_CONV_TABLE] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_UOM_CO__CREAT__69FBBC1F]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_UOM_CONV_TABLE] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_UOM_CO__MODIF__6AEFE058]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_UOM_CONV_TABLE] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_UOM_CO__MODIF__6BE40491]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_UOM_CONV_TABLE] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DEFAULT_ACTIVE_USER_1907530338]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_USER] ADD  CONSTRAINT [DEFAULT_ACTIVE_USER_1907530338]  DEFAULT ('ACTIVE') FOR [STATUS]
GO
/****** Object:  Default [DF__TB_USER__CREATED__7D0E9093]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_USER] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_USER__CREATED__7E02B4CC]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_USER] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_USER__MODIFIE__7EF6D905]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_USER] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_USER__MODIFIE__7FEAFD3E]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_USER] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TB_USER_R__CREAT__65370702]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_USER_ROLE] ADD  DEFAULT (suser_sname()) FOR [CREATED_USER]
GO
/****** Object:  Default [DF__TB_USER_R__CREAT__662B2B3B]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_USER_ROLE] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TB_USER_R__MODIF__671F4F74]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_USER_ROLE] ADD  DEFAULT (suser_sname()) FOR [MODIFIED_USER]
GO
/****** Object:  Default [DF__TB_USER_R__MODIF__681373AD]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TB_USER_ROLE] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF_TBWC_PACKAGE_RECORD_ID]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TBW_PACKAGE] ADD  CONSTRAINT [DF_TBWC_PACKAGE_RECORD_ID]  DEFAULT (newid()) FOR [RECORD_ID]
GO
/****** Object:  Default [DF__TBWC_INVE__QTY_A__0D0FEE32]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TBWC_INVENTORY] ADD  DEFAULT ((0)) FOR [QTY_AVAIL]
GO
/****** Object:  Default [DF__TBWC_INVE__CREAT__0E04126B]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TBWC_INVENTORY] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
/****** Object:  Default [DF__TBWC_INVE__MODIF__0EF836A4]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TBWC_INVENTORY] ADD  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
/****** Object:  Default [DF__TBWC_INVE__IS_SH__0FEC5ADD]    Script Date: 07/26/2012 17:39:32 ******/
ALTER TABLE [dbo].[TBWC_INVENTORY] ADD  DEFAULT ((0)) FOR [IS_SHIPPING]
GO
