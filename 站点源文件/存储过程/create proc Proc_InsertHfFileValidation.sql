create proc Proc_InsertHfFileValidation
(
@id int,
@filepath nvarchar(MAX)
)
as
insert into tb_hffilevalidation(fileurl ,validationstateid) select @filepath,(select tb_validationstate.id from tb_validationstate
where tb_validationstate.frimsupporttabid=@id)

update tb_validationstate
set hfstate=2
where frimsupporttabid=@id