create proc Proc_IsAlreadyComment
(
@id int
)
as
if exists (select * from tb_stucomment where stuapplysupportid=@id)
return 100
else
return -100