SELECT TABLE_NAME,COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME LIKE '%FAMILY_NAME%'
SELECT * FROM TB_CATALOG
SELECT * FROM TB_CATEGORY
SELECT * FROM TB_FAMILY
INSERT INTO TB_CATALOG(CATALOG_NAME,CATALOG_ID) SELECT DISTINCT(CATALOG_NAME)CATALOG_NAME,21 FROM OPENROWSET('Microsoft.Jet.OLEDB.4.0',
'Excel 8.0;Database=D:\Sample Import Excel.xls', [Sheet1$])

INSERT INTO TB_CATEGORY(CATEGORY_NAME,CATEGORY_ID,PARENT_CATEGORY) 
SELECT DISTINCT(CATEGORY_NAME)CATEGORY_NAME,
('MAHE001')CATEGORY_ID,0 PARENT_CATEGORY
FROM TBLTEST1

INSERT INTO TB_CATEGORY(CATEGORY_NAME,CATEGORY_ID,PARENT_CATEGORY) 
SELECT DISTINCT(SUBCATNAME_L1)SUBCATNAME_L1,
(SUBCATID_L1)CATEGORY_ID,'MAHE001' PARENT_CATEGORY
FROM TBLTEST1

INSERT INTO TB_CATEGORY(CATEGORY_NAME,CATEGORY_ID,PARENT_CATEGORY) 
SELECT DISTINCT(SUBCATNAME_L2)SUBCATNAME_L2,
(SUBCATID_L2)CATEGORY_ID,'SE02-02' PARENT_CATEGORY
FROM TBLTEST1

INSERT INTO TB_CATEGORY(CATEGORY_NAME,CATEGORY_ID,PARENT_CATEGORY) 
SELECT DISTINCT(SUBCATNAME_L3)SUBCATNAME_L3,
(SUBCATID_L3)CATEGORY_ID,'SE02-02-01' PARENT_CATEGORY
FROM TBLTEST1

INSERT INTO TB_CATEGORY(CATEGORY_NAME,CATEGORY_ID,PARENT_CATEGORY) 
SELECT DISTINCT(SUBCATNAME_L4)SUBCATNAME_L4,
(SUBCATID_L4)CATEGORY_ID,'SE02-02-01-05' PARENT_CATEGORY
FROM TBLTEST1

SELECT * FROM TB_FAMILY
--DELETE TB_FAMILY WHERE CATEGORY_ID='MAHE001'
INSERT INTO TB_FAMILY(FAMILY_NAME,FAMILY_ID,PARENT_FAMILY_ID,ROOT_FAMILY,STATUS,DISPLAY_TABLE_HEADER,CATEGORY_ID) 
SELECT DISTINCT(FAMILY_NAME)FAMILY_NAME,
(SELECT (MAX(FAMILY_ID)+1) FROM TB_FAMILY),
0,1,'CREATED',1,'MAHE001'
FROM TBLTEST1
SELECT (MAX(FAMILY_ID)+1) FROM TB_FAMILY
SELECT ROW_NUMBER() OVER (ORDER BY FAMILY_ID ASC) FROM TB_FAMILY
SELECT DISTINCT(CATALOG_NAME) FROM OPENROWSET('Microsoft.Jet.OLEDB.4.0',
'Excel 8.0;Database=D:\Sample Import Excel.xls', [Sheet1$])
