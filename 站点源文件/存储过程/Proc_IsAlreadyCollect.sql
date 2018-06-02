create proc Proc_IsAlreadyCollect
(
@owner int,
@frimid int
)
as
if exists (select * from tb_stucollection where owner=@owner and frimid=@frimid)
return 100
else
return -100