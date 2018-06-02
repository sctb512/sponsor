create proc Proc_FrimGetSelfComment2
(
@id int
)
as
select tb_stucomment.id,tb_stucomment.score,commenttext,commenttime,tb_studentinfo.username,eventname,tb_stuapplysupporttab.frimsupporttabid from tb_stucomment,tb_stuapplysupporttab,tb_studentinfo
where tb_stucomment.frimid=@id and tb_stucomment.stuapplysupportid=tb_stuapplysupporttab.id and tb_stuapplysupporttab.owner=tb_studentinfo.id