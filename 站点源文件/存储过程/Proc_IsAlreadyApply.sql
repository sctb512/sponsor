create proc Proc_IsAlreadyApply
(
@id int,
@frimid int
)
as
if exists(select * from tb_stuapplysupporttab where frimsupporttabid=@frimid and owner=@id and state=0)
return 100
else
return -100