sp_helptext STP_CATALOGSTUDIO5_InsertFamily
sp_helptext STP_CATALOGSTUDIO5_productid
  
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
 SELECT DISTINCT TA.ATTRIBUTE_ID, TA.DEFAULT_VALUE  FROM TB_ATTRIBUTE TA, TB_CATALOG_ATTRIBUTES TCA  WHERE TA.CREATE_BY_DEFAULT = 1 AND TA.ATTRIBUTE_ID = TCA.ATTRIBUTE_ID AND TCA.CATALOG_ID = @CATALOG_ID   
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