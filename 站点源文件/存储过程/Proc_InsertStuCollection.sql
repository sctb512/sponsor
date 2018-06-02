create proc Proc_InsertStuCollection
(
@owner int,
@frimid int,
@adddate nvarchar(50)
)
as
insert into tb_stucollection(owner,frimid,adddate)
values(@owner,@frimid,@adddate)