create proc Proc_StuGetSelfComment
(
@id int
)
as
select tb_stucomment.id,tb_stucomment.score,commenttext,commenttime,username,eventname from tb_stucomment,tb_frimbasicinfo,tb_stuapplysupporttab
where tb_stuapplysupporttab.owner=@id and tb_stucomment.stuapplysupportid=tb_stuapplysupporttab.id and tb_stucomment.frimid=tb_frimbasicinfo.id