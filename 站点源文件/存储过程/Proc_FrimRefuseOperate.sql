create proc Proc_FrimRefuseOperate
(
@id int
)
as
update tb_stuapplysupporttab
set state=2
where id=@id