create proc Proc_InsertJpFileValidation
(
@id int,
@filepath nvarchar(MAX)
)
as
insert into tb_jpfilevalidation(fileurl ,validationstateid) select @filepath,(select tb_validationstate.id from tb_validationstate
where tb_validationstate.frimsupporttabid=@id)

update tb_validationstate
set jpstate=2
where frimsupporttabid=@id