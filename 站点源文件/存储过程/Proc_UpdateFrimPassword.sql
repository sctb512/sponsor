create proc Proc_UpdateFrimPassword
(
@id int,
@newpassword nvarchar(50)
)
as
update tb_frimbasicinfo
set password=@newpassword
where id=@id