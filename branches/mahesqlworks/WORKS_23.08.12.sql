/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [Id]
      ,[Name]
  FROM [Test_Mahe].[dbo].[aa]
  
  insert into aa values('mahasd e'),('arund asd')

insert into aa (Name) 
output inserted.Id into bb
output inserted.Id
select Name from aa where id in (11,12)


insert into cc (fk_id) 
select gg.Id from 
(
insert into aa(Name)
output inserted.Id
select Name from aa where id in (11,12)
)gg

insert into aa exec sp_executesql N'select Name from aa where id in (11,12)' 

insert into cc exec sp_executesql N'insert into aa (Name) 
output inserted.Id into bb
output inserted.Id
select Name from aa where id in (11,12)' 


select * from aa
select * from bb
select * from cc