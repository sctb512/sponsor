create proc Proc_FrimAgreeZbValidation
(
@id int
)
as
update tb_validationstate
set zbstate=3
where tb_validationstate.frimsupporttabid=@id and zbstate=2