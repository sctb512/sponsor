create proc Proc_UpdateStuPassword
(
@id int,
@newpassword nvarchar(50)
)
as
update tb_studentinfo
set password=@newpassword
where id=@id