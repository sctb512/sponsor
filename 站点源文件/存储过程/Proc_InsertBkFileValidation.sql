create proc Proc_InsertBkFileValidation
(
@id int,
@filepath nvarchar(MAX)
)
as
insert into tb_bkfilevalidation(fileurl ,validationstateid) select @filepath,(select tb_validationstate.id from tb_validationstate
where tb_validationstate.frimsupporttabid=@id)

update tb_validationstate
set bkstate=2
where frimsupporttabid=@id