SELECT * FROM TB_CATALOG_SECTIONS
SELECT SORT_ORDER FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID=2 AND CATALOG_ID<>1 AND CATEGORY_ID=N'2wsdemo0205'
SELECT	MAX(SORT_ORDER) AS SORT_ORDER FROM TB_CATEGORY, TB_CATALOG_SECTIONS,TB_CATALOG 
	WHERE TB_CATALOG_SECTIONS.CATEGORY_ID = TB_CATEGORY.CATEGORY_ID 
		AND TB_CATALOG.CATALOG_ID=TB_CATALOG_SECTIONS.CATALOG_ID 
		AND TB_CATALOG_SECTIONS.CATALOG_ID=2 
		AND TB_CATEGORY.CATEGORY_ID<>N'2wsdemo0205'

UPDATE TB_CATALOG_SECTIONS SET SORT_ORDER=2119 WHERE CATALOG_ID=2 AND CATALOG_ID<>1 AND CATEGORY_ID=N'2wsdemo0205'

UPDATE TB_CATEGORY SET PARENT_CATEGORY= 'MMC001' WHERE Category_id = 'SUBMMC001'
SELECT * FROM TB_CATEGORY WHERE Category_id = 'SUBMMC001'
SELECT CATALOG_ID,CATEGORY_ID FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID<>2 AND CATALOG_ID<>1 AND CATEGORY_ID=N'SUBMMC001'


SELECT	MAX(TB_CATALOG_SECTIONS.SORT_ORDER) AS SORT_ORDER FROM	TB_CATEGORY, TB_CATALOG_SECTIONS,TB_CATALOG 
	WHERE TB_CATALOG_SECTIONS.CATEGORY_ID = TB_CATEGORY.CATEGORY_ID 
		AND TB_CATALOG.CATALOG_ID=TB_CATALOG_SECTIONS.CATALOG_ID 
		AND TB_CATEGORY.PARENT_CATEGORY=N'MMC001' 
		AND TB_CATALOG_SECTIONS.CATALOG_ID=2 
		AND TB_CATEGORY.CATEGORY_ID<>N'SUBMMC001'

UPDATE TB_CATALOG_SECTIONS SET SORT_ORDER=1 WHERE CATALOG_ID=2 AND CATALOG_ID<>1 AND CATEGORY_ID=N'SUBMMC001'
SELECT * FROM TB_CATALOG_SECTIONS WHERE CATALOG_ID=2 AND CATALOG_ID<>1 AND CATEGORY_ID=N'SUBMMC001'

SELECT * FROM TB_CATEGORY
---------Cut
UPDATE TB_CATEGORY SET PARENT_CATEGORY= 'MMC001' WHERE Category_id = 'SUBMMC001'
SELECT catalog_id,category_id from tb_catalog_sections where catalog_id<>2 and catalog_id<>1 and category_id=N'SUBMMC001'
SELECT	MAX(TB_CATALOG_SECTIONS.SORT_ORDER) AS SORT_ORDER FROM	TB_CATEGORY, TB_CATALOG_SECTIONS,TB_CATALOG WHERE	TB_CATALOG_SECTIONS.CATEGORY_ID = TB_CATEGORY.CATEGORY_ID AND TB_CATALOG.CATALOG_ID=TB_CATALOG_SECTIONS.CATALOG_ID AND TB_CATEGORY.PARENT_CATEGORY=N'MMC001' AND TB_CATALOG_SECTIONS.CATALOG_ID=2 AND TB_CATEGORY.CATEGORY_ID<>N'SUBMMC001'
UPDATE tb_catalog_sections SET SORT_ORDER=1 where catalog_id=2 and catalog_id<>1 and category_id=N'SUBMMC001'


-------------------------------------------------------------------------------------------------------------------------

UPDATE TB_CATALOG_FAMILY SET CATEGORY_ID =N'SUBMMC001' WHERE FAMILY_ID =966229 AND CATALOG_ID=2
SELECT * FROM TB_CATALOG_FAMILY 
SELECT * FROM TB_SUBFAMILY
SELECT * FROM TB_FAMILY

UPDATE TB_FAMILY SET PARENT_FAMILY_ID = 0, ROOT_FAMILY = 1 WHERE FAMILY_ID = 5444555
sp_helptext STP_CATALOGSTUDIO5_InsertFamily

  
CREATE PROCEDURE [STP_CATALOGSTUDIO5_InsertFamily]  
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
  set @sortorder =(SELECT MAX(SORT_ORDER)+1 FROM TB_SUBFAMILY where FAMILY_ID= @PARENT_FAMILY_ID   )  
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
  INSERT INTO TB_FAMILY_SPECS  VALUES  ( @STRING_VALUE  ,  @NEW_FAMILY_ID  , @ATTRIBUTE_ID , 0 , '  '  , '  '  , SYSTEM_USER   , GETDATE() , SYSTEM_USER , GETDATE() )  
  END   
  IF (@ATTRIBUTE_TYPE=9)  
  BEGIN  
  INSERT INTO TB_FAMILY_SPECS  VALUES  ( @STRING_VALUE  ,  @NEW_FAMILY_ID  , @ATTRIBUTE_ID , 0 , '  '  , '  '  , SYSTEM_USER   , GETDATE() , SYSTEM_USER , GETDATE() )  
  END   
  FETCH NEXT FROM CURSOR_ATTRIBUTES  INTO  @ATTRIBUTE_ID ,@ATTRIBUTE_TYPE  
  END   
CLOSE CURSOR_ATTRIBUTES   
DEALLOCATE CURSOR_ATTRIBUTES  
  
  
  
  
SELECT @NEW_FAMILY_ID  
  
select * from TB_FAMILY_SPECS







