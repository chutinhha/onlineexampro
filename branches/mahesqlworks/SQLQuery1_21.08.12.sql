INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME,IS_DEFAULT) 
	VALUES(1,1,'ae','Default Layout',1)
INSERT INTO TB_FAMILY_TABLE_STRUCTURE(CATALOG_ID,FAMILY_ID,FAMILY_TABLE_STRUCTURE,STRUCTURE_NAME,IS_DEFAULT) 
	VALUES(1,1,'1FDS','Default Layout',1)

SELECT * FROM	TB_FAMILY_TABLE_STRUCTURE

 SELECT tps.product_id  FROM TB_PROD_SPECS  tps  , tb_catalog_product tcp  
	WHERE tps.STRING_VALUE =  N'Test Product' AND tps.ATTRIBUTE_ID = 1  and tcp.catalog_id = 2



sp_helptext STP_CATALOGSTUDIO5_ProductId

UPDATE TB_FAMILY_TABLE_STRUCTURE 
SET FAMILY_TABLE_STRUCTURE = '<?xml version="1.0" encoding="utf-8"?><TradingBell TableType="SuperTable"><SummaryGroupField></SummaryGroupField><TableGroupField></TableGroupField><PlaceHolderText><![CDATA[]]></PlaceHolderText><DisplayRowHeader>True</DisplayRowHeader><DisplayColumnHeader>False</DisplayColumnHeader><DisplaySummaryHeader>False</DisplaySummaryHeader><VerticalTable>False</VerticalTable><PivotHeaderText><![CDATA[]]></PivotHeaderText><MergeRowHeader></MergeRowHeader><MergeSummaryFields></MergeSummaryFields></TradingBell>'
, IS_DEFAULT =1 WHERE CATALOG_ID=2 AND FAMILY_ID = 966232 AND IS_DEFAULT =1
















