

CREATE TABLE [CustomerTable]

(

RowID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,

CustomerKey INT,

CustomerName NVARCHAR(50) NOT NULL,

UserName NVARCHAR(25) NOT NULL,

Password NVARCHAR(25) NOT NULL

)



CREATE TABLE CustomerToInsertTable

(

CustomerID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,

CustomerName NVARCHAR(50) NOT NULL,

UserName NVARCHAR(25) NOT NULL,

Password NVARCHAR(25) NOT NULL,

InsertedIdentityValue INT NULL

)






INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES ('Windell L.', '1108', '14117')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Rad', '1114', '8927')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Charles F.', '1127', '12287')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Andrew R.', '1128', '9605')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Steven R.', '1191', '8420')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Robert', '1200', '18971')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Ronald F.', '1205', '13730')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Deidra', '1209', '9902')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Rena', '1264', '9611')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Ann L', '1290', '9548')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Robert', '1302', '9083')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Jerry H.', '1313', '14735')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password)VALUES('Joan', '1322', '10211')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password) VALUES('Mark', '1355', '10028')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password)VALUES('Terry', '1358', '8564')

INSERT INTO CustomerToInsertTable(CustomerName, UserName, Password)VALUES('Bret', '1373', '10067')








INSERT [CustomerTable](CustomerKey, CustomerName, UserName, Password)

SELECT TOP 5 CustomerID, CustomerName, UserName, Password

FROM CustomerToInsertTable ORDER BY CustomerID







--Declare Temp Table @InsertedRows

DECLARE @InsertedRows TABLE (RowID INT, CustomerKey INT, CustomerName NVARCHAR(50) )

--Insert Non existing rows in CustomerTable From CustomerToInsertTable

INSERT CustomerTable (CustomerKey, CustomerName, UserName, Password)

OUTPUT inserted.RowID,

inserted.CustomerKey,

inserted.CustomerName

INTO @InsertedRows

SELECT CustomerID, CustomerName, UserName,Password

FROM CustomerToInsertTable AS CIT

WHERE NOT EXISTS (SELECT 1 FROM CustomerTable WHERE CustomerKey = CIT.CustomerID)



--Get the new rows inserted

SELECT * FROM @InsertedRows

--Update CustomerToInsertTable

UPDATE CustomerToInsertTable

SET InsertedIdentityValue = IR.RowID

FROM CustomerToInsertTable CIT

JOIN @InsertedRows IR ON IR.CustomerKey = CIT.CustomerID