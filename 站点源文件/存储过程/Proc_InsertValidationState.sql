create proc Proc_InsertValidationState
(
/*学生申请赞助表的id*/
@id int
)
as
insert into tb_validationstate(qsstate,cdstate,hbstate,hfstate,zbstate,jpstate,wlstate,bkstate,frimsupporttabid)
select isqs,iscd,ishb,ishf,iszb,isjp,iswl,isbk,tb_frimsupportinfo.id from tb_frimsupportinfo,tb_stuapplysupporttab where tb_stuapplysupporttab.id=@id and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id