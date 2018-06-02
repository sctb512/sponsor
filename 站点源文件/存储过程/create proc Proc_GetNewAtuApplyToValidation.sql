create proc Proc_GetOldAtuApplyToValidation
(
@id int
)
as
select tb_frimsupportinfo.id,eventname,money,tb_stuapplysupporttab.owner,tb_studentinfo.username from tb_frimsupportinfo,tb_stuapplysupporttab,tb_studentinfo,tb_validationstate
where tb_frimsupportinfo.owner=@id and tb_frimsupportinfo.state=1 and tb_stuapplysupporttab.state=1 and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id and tb_stuapplysupporttab.owner=tb_studentinfo.id
and (qsstate!=1 and cdstate!=1 and hfstate!=1 and hbstate!=1 and zbstate!=1 and jpstate!=1 and wlstate!=1 and bkstate!=1)