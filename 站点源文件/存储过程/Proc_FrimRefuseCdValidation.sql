create proc Proc_FrimRefuseCdValidation
(
@id int
)
as
update tb_validationstate
set cdstate=1
where tb_validationstate.frimsupporttabid=@id and cdstate=2