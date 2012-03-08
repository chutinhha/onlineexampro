
create table OnlineRegistration
(
UserId bigint identity(1,1) primary key,
Name nvarchar(100),
Mobile bigint,
Email nvarchar(100),
Date datetime
)

create table OnlineCategory
(
CategoryId bigint identity(1,1) primary key,
Category nvarchar(100)
)

create table OnlineResult
(
ResultId bigint identity(1,1) primary key,
FK_UserId bigint,
Mark int,
FK_MarkId bigint,
constraint OnlineReg_UserId_FK foreign key(FK_UserId) references OnlineRegistration(UserId),
constraint OnlineCategory_MarkId_FK foreign key(FK_MarkId) references OnlineCategory(CategoryId)
)

create table OnlineQuestion
(
QuestionId bigint identity(1,1) primary key,
Question nvarchar(500),
FK_Answer bigint,
FK_Category bigint,
constraint FK_Category_OnlineCategory foreign key(FK_Category) references OnlineCategory(CategoryId)
)

create table OnlineOptions
(
OptionId bigint primary key identity(1,1),
OptionName nvarchar(500),
OptionType int,
FK_QuestionId bigint,
constraint FK_QuestionId_OnlineQuestion foreign key(FK_QuestionId) references OnlineQuestion(QuestionId)
)

alter table OnlineQuestion 
add 
constraint FK_Answer_OnlineOptions foreign key(FK_Answer) references OnlineOptions(OptionId)

