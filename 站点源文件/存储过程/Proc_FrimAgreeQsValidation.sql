create proc Proc_FrimAgreeQsValidation
(
@id int
)
as
update tb_validationstate
set qsstate=3
where tb_validationstate.frimsupporttabid=@id and qsstate=2