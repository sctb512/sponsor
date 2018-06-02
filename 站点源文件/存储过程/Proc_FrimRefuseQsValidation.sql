create proc Proc_FrimRefuseQsValidation
(
@id int
)
as
update tb_validationstate
set qsstate=1
where tb_validationstate.frimsupporttabid=@id and qsstate=2