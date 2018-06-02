create proc Pro_InsertStuBasic
(
@username nvarchar(50),
@password nvarchar(50),
@userpower int,
@school nvarchar(50),
@grade nvarchar(50),
@principal nvarchar(50),
@job nvarchar(50),
@phonenum nvarchar(50),
@qq nvarchar(50)
)
as
insert into tb_studentinfo(username,password,userpower,school,grade,principal,job,phonenum,qq)
values(@username,@password,@userpower,@school,@grade,@principal,@job,@phonenum,@qq)