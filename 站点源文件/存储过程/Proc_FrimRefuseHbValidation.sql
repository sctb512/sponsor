create proc Proc_FrimRefuseHbValidation
(
@id int
)
as
update tb_validationstate
set hbstate=1
where tb_validationstate.frimsupporttabid=@id and hbstate=2