create proc Proc_InsertCdFileValidation
(
@id int,
@filepath nvarchar(MAX)
)
as
insert into tb_cdfilevalidation(fileurl ,validationstateid) select @filepath,(select tb_validationstate.id from tb_validationstate
where tb_validationstate.frimsupporttabid=@id)

update tb_validationstate
set cdstate=2
where frimsupporttabid=@id