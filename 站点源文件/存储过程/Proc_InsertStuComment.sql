create proc Proc_InsertStuComment
(
@score int,
@commenttext nvarchar(MAX),
@commenttime nvarchar(MAX),
@stuapplysupportid int
)
as
insert into tb_stucomment(score,commenttext,commenttime,stuapplysupportid,frimid)
select
@score,
@commenttext,
@commenttime,
@stuapplysupportid,
(select tb_frimsupportinfo.owner from tb_stuapplysupporttab,tb_frimsupportinfo where tb_stuapplysupporttab.id=@stuapplysupportid and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id)

