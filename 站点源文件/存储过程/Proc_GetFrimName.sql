create proc Proc_GetFrimName
(
@username nvarchar (50)
)
as
select * from tb_frimbasicinfo
where username=@username