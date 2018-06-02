create proc Proc_GetCommentPageInfo
(
@id int
)
as
select eventname,eventdate,username from tb_stuapplysupporttab,tb_frimbasicinfo,tb_frimsupportinfo
where tb_stuapplysupporttab.id=@id and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id and tb_frimsupportinfo.owner=tb_frimbasicinfo.id