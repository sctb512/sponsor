create proc Proc_UpdateValidationComplete
(
@id int
)
as
update tb_frimsupportinfo
 set state=2
 where tb_frimsupportinfo.id=@id and state=1

 update tb_stuapplysupporttab
 set state=3
 where tb_stuapplysupporttab.frimsupporttabid=@id and state=1