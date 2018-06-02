create proc Proc_UpdateFrimBasic
(
@id int,
@username nvarchar(50),
@boss nvarchar(50),
@location nvarchar(50),
@address nvarchar(MAX),
@frimtype nvarchar(50),
@phonenum nvarchar(50),
@qq nvarchar(50),
@jingdu nvarchar(MAX),
@weidu nvarchar(MAX)
)
as
update tb_frimbasicinfo
set username=@username,location=@location,address=@address,frimtype=@frimtype,phonenum=@phonenum,qq=@qq,jingdu=@jingdu,weidu=@weidu
where id=@id