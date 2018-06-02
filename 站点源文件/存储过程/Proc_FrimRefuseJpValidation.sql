create proc Proc_FrimRefuseJpValidation
(
@id int
)
as
update tb_validationstate
set jpstate=1
where tb_validationstate.frimsupporttabid=@id and jpstate=2