create proc Proc_UpdateStuBasic
(
@id int,
@username nvarchar(50),
@school nvarchar(50),
@grade nvarchar(50),
@principal nvarchar(50),
@job nvarchar(50),
@phonenum nvarchar(50),
@qq nvarchar(50)
)
as
update tb_studentinfo
set username=@username,school=@school,grade=@grade,principal=@principal,job=@job,phonenum=@phonenum,qq=@qq
where id=@id