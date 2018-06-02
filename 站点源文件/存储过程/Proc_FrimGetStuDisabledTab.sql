create proc Proc_FrimGetStuDisabledTab
(
@id int
)
as
select tb_frimsupportinfo.id,eventname,tb_stuapplysupporttab.owner,username,eventdate,money,frimsupporttabid from tb_frimsupportinfo,tb_stuapplysupporttab,tb_studentinfo
where tb_frimsupportinfo.owner=@id and tb_frimsupportinfo.state=2 and tb_stuapplysupporttab.state=3 and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id and tb_stuapplysupporttab.owner=tb_studentinfo.id