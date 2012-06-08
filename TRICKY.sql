use test

SELECT GETDATE()

SELECT DATEPART(YYYY,GETDATE())
SELECT DATEPART(DD,GETDATE())
SELECT DATEPART(MM,GETDATE())

SELECT DATENAME(mm,GETDATE())
SELECT DATENAME(dw,GETDATE())
SELECT DATENAME(wk,GETDATE())

SELECT DATEpart(dw,GETDATE())

SELECT DATEADD(DAY,10,GETDATE())

SELECT DATEDIFF(DAY,'2012-01-25','2013-01-25')

SELECT CONVERT(VARCHAR(500),GETDATE())


declare @de varchar(23)='23/09/2011'
select CONVERT(datetime,@de,104)
select * from Photo_OrderSummaryDetail
select coalesce(EditOption,imageurl) from Photo_OrderSummaryDetail
select ISNULL(EditOption,imageurl) from Photo_OrderSummaryDetail


DECLARE @VAR VARCHAR(10) = null
SELECT ISNULL(@VAR,0)
select coalesce(@var,0)

DECLARE @VAR VARCHAR(10) = NULL
DECLARE @VAR1 VARCHAR(10) = null
SELECT COALESCE(@VAR,@VAR1,9)


SELECT * FROM Emp

SELECT COUNT(*) AS COUN FROM EMP

SELECT ROWS FROM SYSINDEXES WHERE id=OBJECT_ID('Photo_OrderSummaryDetail') AND indid<2

declare @name varchar(50)
declare c1 cursor for select imageurl from Photo_OrderSummaryDetail
open c1
fetch next from c1 into @name
while(@@FETCH_STATUS=0)
begin
print @name
fetch next from c1 into @name
end
close c1
deallocate c1


create trigger tr_tes on  EMP
after insert
as
begin
DECLARE @PK INT
SELECT @PK=PK FROM INSERTED
print @PK
end

create trigger tr_tes on  EMP
after  insert
as
begin
DECLARE @PK INT
SELECT @PK=PK FROM INSERTED
print @PK
end

INSERT INTO Emp VALUES(1,1,1,1,NULL,GETDATE(),GETDATE())

SELECT * FROM tes

create procedure sp_tes @name varchar(50),@sal bigint,@id int output
as
begin
insert into tes values(@name,@sal)
select @id=SCOPE_IDENTITY()
end



select *  from Photo_OrderSummaryDetail

select SCOPE_IDENTITY() from Photo_OrderSummaryDetail
select @@IDENTITY from Photo_OrderSummaryDetail
select IDENT_current('Photo_OrderSummaryDetail')-- from Photo_OrderSummaryDetail
sp_help Photo_OrderSummaryDetail
declare @no int  
exec sp_tes 'gowri',23000,@no output
print @no


select * from EMPLOYEE_TEST


SELECT ROW_NUMBER() OVER(ORDER BY PK) AS ROW,PK FROM Photo_OrderSummaryDetail



SELECT * FROM EMPLOYEE_DETAILS ORDER BY SALARY


SELECT *, RESULT=CASE WHEN ADDRESS IS NOT NULL THEN ADDRESS ELSE ENAME END FROM EMPLOYEE_DETAILS


SELECT * FROM EMPLOYEE_DETAILS WHERE CHARINDEX('S',ENAME)=0

SELECT DISTINCT A.SALARY FROM EMPLOYEE_DETAILS A WHERE 3=(SELECT COUNT(B.SALARY) FROM EMPLOYEE_DETAILS B WHERE A.SALARY<B.SALARY)


SELECT * FROM TES

UPDATE TES SET NAME='ARUN',SAL=12000 WHERE ID=16


;WITH CTE
AS
(
SELECT ROW_NUMBER() OVER (PARTITION BY NAME , SAL ORDER BY ID) AS ROW ,* FROM TES
)
SELECT * FROM CTE WHERE ROW>1


SELECT COUNT(*) AS ROW ,NAME,SAL FROM TES GROUP BY SAL,NAME HAVING COUNT(*)> 1



SELECT * FROM SALES
SELECT * FROM SALESQTY


SELECT PID,NAME,PQTY,SQTY, PQTY-SQTY AS BALANCE FROM (

SELECT SA.PID,SA.NAME,SUM(SA.PQTY) AS PQTY,SUM(SQ.SQTY) AS SQTY FROM SALES SA LEFT JOIN SALESQTY SQ ON SA.PID=SQ.PID GROUP BY SA.PID,SA.NAME


) AS SECTABLE



select * from SALESQTY

SELECT * FROM (SELECT  ROW_NUMBER() OVER(PARTITION BY PID ORDER BY PID) AS ROW,* FROM SALESQTY) AS SECTBL WHERE ROW=2


SELECT COUNT(PID) AS COUN, PID FROM SALESQTY GROUP BY PID

DECLARE @intFlag INT
SET @intFlag = 1
WHILE (@intFlag <=5)
BEGIN
PRINT @intFlag
SET @intFlag = @intFlag + 1
END

declare @i int=1
declare @count int
declare @id int
declare @name varchar(23)
declare @sal bigint
select @count=count(1) from job
while(@i<=@count)
begin 
select top(@i) @id=id,@name=jobname,@sal=avgsalary from job
print @id 
print @name
print @sal
set @i=@i+1
end 

select * from emp where pk in (select decode(mod(pk,2),0,pk, null) from emp)



select * from SALES a where not exists (select * from SALESQTY b where a.PID = b.PID)

select * from SALES where PID not in (select PID from SALESQTY)



SELECT * FROM emp WHERE PK%2=0

SELECT * FROM emp WHERE PK%2=1


SELECT * FROM (SELECT * , ROW_NUMBER() OVER(ORDER BY pk) AS ROW FROM emp) AS SECTBL WHERE ROW%2=1


(Select * from emp) Intersect (Select * from emp)

(Select * from emp) UNION (Select * from emp)



select * into emp6 from (select * from emp where 1=2)a

select * from emp6


select * from job except select top ((select count(1) from job)-2)* from job

select top 2 id,jobname,avgsalary from (select *,row_number() 
over (order by id,jobname,avgsalary)as ran from job)a order by ran desc




select *,case 
                   when Avgsalary >11000 and  Avgsalary<14000 then 'grade B'
                    when Avgsalary >5000 and  Avgsalary<10000 then 'grade c'
                    when  Avgsalary>14000 and  Avgsalary<20000 then 'grade A'
                     else 'grade d'
                    end  as grade from job
                    


select * from emp1


CREATE TABLE TES_TABLE(NAME VARCHAR(100))           

INSERT INTO TES_TABLE VALUES('A,A,A,B,B,C,C,C,C,D,E,E,E,F,F,F,F,G,G,G,H')
SELECT * FROM TES_TABLE
OUTPUT: A,B,C,D,E,F,G,H


DECLARe @Var1 VARCHAR(100)
SELECT @Var1 = Name FROM TES_TABLE Td
SELECT @Var1
SELECT DISTINCT * FROM dbo.[fnTableFromCSV](@Var1,',')

SP_HELPTEXT [fnTableFromCSV]



SELECT * FROM JOB

--cte
;WITH CBE AS (
SELECT ROW_NUMBER() OVER(PARTITION BY ID,JOBNAME,AVGSALARY ORDER BY ID) AS ROW,* FROM JOB
) 
DELETE FROM CBE WHERE ROW >1

