create proc Proc_InsertWlFileValidation
(
@id int,
@filepath nvarchar(MAX)
)
as
insert into tb_wlfilevalidation(fileurl ,validationstateid) select @filepath,(select tb_validationstate.id from tb_validationstate
where tb_validationstate.frimsupporttabid=@id)

update tb_validationstate
set wlstate=2
where frimsupporttabid=@id