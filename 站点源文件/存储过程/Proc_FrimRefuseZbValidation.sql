create proc Proc_FrimRefuseZbValidation
(
@id int
)
as
update tb_validationstate
set zbstate=1
where tb_validationstate.frimsupporttabid=@id and zbstate=2