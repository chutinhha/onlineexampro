CREATE PROCEDURE spx_ImportFromExcel03
    @SheetName varchar(20),
    @FilePath varchar(100),
    @HDR varchar(3),
    @TableName varchar(50)
AS
BEGIN
    DECLARE @SQL nvarchar(1000)
           
    IF OBJECT_ID (@TableName,'U') IS NOT NULL
      SET @SQL = 'INSERT INTO ' + @TableName + ' SELECT * FROM OPENDATASOURCE'
    ELSE
      SET @SQL = 'SELECT * INTO ' + @TableName + ' FROM OPENDATASOURCE'
 
    SET @SQL = @SQL + '(''Microsoft.Jet.OLEDB.4.0'',''Data Source='
    SET @SQL = @SQL + @FilePath + ';Extended Properties=''''Excel 8.0;HDR='
    SET @SQL = @SQL + @HDR + ''''''')...['
    SET @SQL = @SQL + @SheetName + ']'
    EXEC sp_executesql @SQL
END
GO
sp_helptext sp_configure

spx_ImportFromExcel03 'Sheet1$','D:\Sample Import Excel.xls','Yes','TBLTEST'

sp_configure 'Show Advanced Options', 1;
RECONFIGURE;
GO
sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE;
GO
master.dbo.sp_configure 'OLE Automation Procedures', 1;
Reconfigure
Exec
master.dbo.sp_configure 'Agent XPs', 1;
Reconfigure
Go
icacls C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp /grant Mahendran:(R,W)

SELECT * FROM OPENROWSET('Microsoft.Jet.OLEDB.4.0',
  'Excel 8.0;Database=D:\Sample Import Excel.xls', [Sheet1$])
-----------------------------------------------------------------
time taked 00:00:05
-----------------------------------------------------------------
SELECT * INTO TBLTEST1 FROM OPENROWSET('Microsoft.Jet.OLEDB.4.0',
'Excel 8.0;Database=D:\Sample Import Excel.xls', [Sheet1$])

-----------------------------------------------------------------
time taked 00:00:09
-----------------------------------------------------------------
INSERT INTO TBLTEST1 SELECT * FROM OPENROWSET('Microsoft.Jet.OLEDB.4.0',
'Excel 8.0;Database=D:\Sample Import Excel.xls', [Sheet1$])


SELECT * FROM TBLTEST1





SELECT * FROM OPENDATASOURCE('Microsoft.Jet.OLEDB.4.0',
  'Data Source=D:\Sample Import Excel.xls;Extended Properties=Excel 8.0')...[Sheet1$]

SELECT * FROM TBLTEST

master.dbo.sp_configure 'show advanced options', 1
Reconfigure
Exec
master.dbo.sp_configure 'Ad Hoc Distributed Queries',0
Reconfigure
Exec
master.dbo.sp_configure 'Ole Automation Procedures', 0;
Reconfigure
Go

CREATE TABLE TBLTEST
(
 CATALOG_NAME VARCHAR(MAX)
,CATEGORY_NAME VARCHAR(MAX)
,SUBCATID_L1 VARCHAR(MAX)
,SUBCATNAME_L1 VARCHAR(MAX)
,SUBCATID_L2 VARCHAR(MAX)
,SUBCATNAME_L2 VARCHAR(MAX)
,SUBCATID_L3 VARCHAR(MAX)
,SUBCATNAME_L3 VARCHAR(MAX)
,SUBCATID_L4 VARCHAR(MAX)
,SUBCATNAME_L4 VARCHAR(MAX)
,FAMILY_NAME VARCHAR(MAX)
,CATALOG_ITEM_NO VARCHAR(MAX)
,Product_Description VARCHAR(MAX)
,Manufacturer VARCHAR(MAX)
,Cylinder_Style VARCHAR(MAX)
,Action VARCHAR(MAX)
,Rod_Type VARCHAR(MAX)
,Bore_Size VARCHAR(MAX)
,Stroke VARCHAR(MAX)
,Mounting VARCHAR(MAX)
,Magnet VARCHAR(MAX)
,Auto_Switch VARCHAR(MAX)
,Number_of_Auto_Switches VARCHAR(MAX)
,Lead_Wire_Length VARCHAR(MAX)
,Made_to_Order_Option VARCHAR(MAX)
,Cushion VARCHAR(MAX)
,Rod_End_Thread VARCHAR(MAX)
,Port_Type VARCHAR(MAX)
,Rod_Boot VARCHAR(MAX)
,Product_Image_1 VARCHAR(MAX)
)