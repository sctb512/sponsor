create proc Proc_InsertHbFileValidation
(
@id int,
@filepath nvarchar(MAX)
)
as
insert into tb_hbfilevalidation(fileurl ,validationstateid) select @filepath,(select tb_validationstate.id from tb_validationstate
where tb_validationstate.frimsupporttabid=@id)

update tb_validationstate
set hbstate=2
where frimsupporttabid=@id