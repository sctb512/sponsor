create proc Proc_FrimAgreeCdValidation
(
@id int
)
as
update tb_validationstate
set cdstate=3
where tb_validationstate.frimsupporttabid=@id and cdstate=2