create proc Proc_StuWaitForApply
(
@owner int
)
as
select sa.id,sa.eventname,fs.money,sa.frimsupporttabid,fs.owner,fb.username from tb_frimbasicinfo fb,tb_frimsupportinfo fs,tb_stuapplysupporttab sa
where sa.owner=@owner and sa.state=0 and fs.state=0 and sa.frimsupporttabid=fs.id and fs.owner=fb.id