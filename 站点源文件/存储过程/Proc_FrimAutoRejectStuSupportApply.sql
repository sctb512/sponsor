create proc Proc_FrimAutoRejectStuSupportApply
(
@id int
)
as
if exists(select * from tb_stuapplysupporttab,tb_frimsupportinfo where tb_frimsupportinfo.id=@id and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id and tb_stuapplysupporttab.state=0)
update tb_stuapplysupporttab
set state=2
from
tb_stuapplysupporttab,tb_frimsupportinfo
where tb_frimsupportinfo.id=@id and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id and tb_stuapplysupporttab.state=0