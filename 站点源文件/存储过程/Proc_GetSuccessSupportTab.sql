create proc Proc_GetSuccessSupportTab
(
@owner int
)
as
select tb_stuapplysupporttab.id,eventname,tb_frimsupportinfo.money,tb_stuapplysupporttab.frimsupporttabid,tb_frimsupportinfo.owner,tb_frimbasicinfo.username from tb_stuapplysupporttab,tb_frimsupportinfo,tb_frimbasicinfo
where tb_stuapplysupporttab.owner=@owner and tb_stuapplysupporttab.state=3 and tb_frimsupportinfo.state=2 and tb_frimsupportinfo.owner=tb_frimbasicinfo.id and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id